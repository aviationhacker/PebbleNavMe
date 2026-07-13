package org.eclipse.jetty.util.security;

import java.security.GeneralSecurityException;
import java.security.InvalidParameterException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.Security;
import java.security.cert.CRL;
import java.security.cert.CertPathBuilder;
import java.security.cert.CertPathValidator;
import java.security.cert.CertStore;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CollectionCertStoreParameters;
import java.security.cert.PKIXBuilderParameters;
import java.security.cert.X509CertSelector;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Enumeration;
import java.util.concurrent.atomic.AtomicLong;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes.dex */
public class CertificateValidator {
    private static final Logger a = Log.getLogger((Class<?>) CertificateValidator.class);
    private static AtomicLong b = new AtomicLong();
    private KeyStore c;
    private Collection<? extends CRL> d;
    private int e = -1;
    private boolean f = false;
    private boolean g = false;
    private String h;

    public CertificateValidator(KeyStore keyStore, Collection<? extends CRL> collection) {
        if (keyStore == null) {
            throw new InvalidParameterException("TrustStore must be specified for CertificateValidator.");
        }
        this.c = keyStore;
        this.d = collection;
    }

    public void validate(KeyStore keyStore) throws CertificateException {
        try {
            Enumeration<String> enumerationAliases = keyStore.aliases();
            while (enumerationAliases.hasMoreElements()) {
                validate(keyStore, enumerationAliases.nextElement());
            }
        } catch (KeyStoreException e) {
            throw new CertificateException("Unable to retrieve aliases from keystore", e);
        }
    }

    public String validate(KeyStore keyStore, String str) throws CertificateException {
        if (str == null) {
            return null;
        }
        try {
            validate(keyStore, keyStore.getCertificate(str));
            return str;
        } catch (KeyStoreException e) {
            a.debug(e);
            throw new CertificateException("Unable to validate certificate for alias [" + str + "]: " + e.getMessage(), e);
        }
    }

    public void validate(KeyStore keyStore, Certificate certificate) throws CertificateException {
        String str;
        KeyStoreException keyStoreException;
        if (certificate != null && (certificate instanceof X509Certificate)) {
            ((X509Certificate) certificate).checkValidity();
            try {
                if (keyStore == null) {
                    throw new InvalidParameterException("Keystore cannot be null");
                }
                String certificateAlias = keyStore.getCertificateAlias((X509Certificate) certificate);
                if (certificateAlias == null) {
                    try {
                        certificateAlias = "JETTY" + String.format("%016X", Long.valueOf(b.incrementAndGet()));
                        keyStore.setCertificateEntry(certificateAlias, certificate);
                    } catch (KeyStoreException e) {
                        str = certificateAlias;
                        keyStoreException = e;
                        a.debug(keyStoreException);
                        throw new CertificateException("Unable to validate certificate" + (str == null ? "" : " for alias [" + str + "]") + ": " + keyStoreException.getMessage(), keyStoreException);
                    }
                }
                Certificate[] certificateChain = keyStore.getCertificateChain(certificateAlias);
                if (certificateChain == null || certificateChain.length == 0) {
                    throw new IllegalStateException("Unable to retrieve certificate chain");
                }
                validate(certificateChain);
            } catch (KeyStoreException e2) {
                str = null;
                keyStoreException = e2;
            }
        }
    }

    public void validate(Certificate[] certificateArr) throws CertificateException {
        try {
            ArrayList arrayList = new ArrayList();
            for (Certificate certificate : certificateArr) {
                if (certificate != null) {
                    if (!(certificate instanceof X509Certificate)) {
                        throw new IllegalStateException("Invalid certificate type in chain");
                    }
                    arrayList.add((X509Certificate) certificate);
                }
            }
            if (arrayList.isEmpty()) {
                throw new IllegalStateException("Invalid certificate chain");
            }
            X509CertSelector x509CertSelector = new X509CertSelector();
            x509CertSelector.setCertificate((X509Certificate) arrayList.get(0));
            PKIXBuilderParameters pKIXBuilderParameters = new PKIXBuilderParameters(this.c, x509CertSelector);
            pKIXBuilderParameters.addCertStore(CertStore.getInstance("Collection", new CollectionCertStoreParameters(arrayList)));
            pKIXBuilderParameters.setMaxPathLength(this.e);
            pKIXBuilderParameters.setRevocationEnabled(true);
            if (this.d != null && !this.d.isEmpty()) {
                pKIXBuilderParameters.addCertStore(CertStore.getInstance("Collection", new CollectionCertStoreParameters(this.d)));
            }
            if (this.g) {
                Security.setProperty("ocsp.enable", "true");
            }
            if (this.f) {
                System.setProperty("com.sun.security.enableCRLDP", "true");
            }
            CertPathValidator.getInstance("PKIX").validate(CertPathBuilder.getInstance("PKIX").build(pKIXBuilderParameters).getCertPath(), pKIXBuilderParameters);
        } catch (GeneralSecurityException e) {
            a.debug(e);
            throw new CertificateException("Unable to validate certificate: " + e.getMessage(), e);
        }
    }

    public KeyStore getTrustStore() {
        return this.c;
    }

    public Collection<? extends CRL> getCrls() {
        return this.d;
    }

    public int getMaxCertPathLength() {
        return this.e;
    }

    public void setMaxCertPathLength(int i) {
        this.e = i;
    }

    public boolean isEnableCRLDP() {
        return this.f;
    }

    public void setEnableCRLDP(boolean z) {
        this.f = z;
    }

    public boolean isEnableOCSP() {
        return this.g;
    }

    public void setEnableOCSP(boolean z) {
        this.g = z;
    }

    public String getOcspResponderURL() {
        return this.h;
    }

    public void setOcspResponderURL(String str) {
        this.h = str;
    }
}
