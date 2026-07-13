package org.eclipse.jetty.util.ssl;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.InetAddress;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidParameterException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.Security;
import java.security.UnrecoverableKeyException;
import java.security.cert.CRL;
import java.security.cert.CertStore;
import java.security.cert.Certificate;
import java.security.cert.CollectionCertStoreParameters;
import java.security.cert.PKIXBuilderParameters;
import java.security.cert.X509CertSelector;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Set;
import javax.net.ssl.CertPathTrustManagerParameters;
import javax.net.ssl.KeyManager;
import javax.net.ssl.KeyManagerFactory;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.SSLServerSocket;
import javax.net.ssl.SSLServerSocketFactory;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509KeyManager;
import javax.net.ssl.X509TrustManager;
import org.eclipse.jetty.util.IO;
import org.eclipse.jetty.util.component.AbstractLifeCycle;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;
import org.eclipse.jetty.util.resource.Resource;
import org.eclipse.jetty.util.security.CertificateUtils;
import org.eclipse.jetty.util.security.CertificateValidator;
import org.eclipse.jetty.util.security.Password;

/* JADX INFO: loaded from: classes.dex */
public class SslContextFactory extends AbstractLifeCycle {
    public static final String DEFAULT_KEYMANAGERFACTORY_ALGORITHM;
    public static final String DEFAULT_KEYSTORE_PATH;
    public static final String DEFAULT_TRUSTMANAGERFACTORY_ALGORITHM;
    public static final String KEYPASSWORD_PROPERTY = "org.eclipse.jetty.ssl.keypassword";
    public static final String PASSWORD_PROPERTY = "org.eclipse.jetty.ssl.password";
    public static final TrustManager[] TRUST_ALL_CERTS = {new X509TrustManager() { // from class: org.eclipse.jetty.util.ssl.SslContextFactory.1
        @Override // javax.net.ssl.X509TrustManager
        public X509Certificate[] getAcceptedIssuers() {
            return new X509Certificate[0];
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
        }
    }};
    private static final Logger a = Log.getLogger((Class<?>) SslContextFactory.class);
    private boolean A;
    private int B;
    private String C;
    private boolean D;
    private boolean E;
    private String F;
    private KeyStore G;
    private KeyStore H;
    private boolean I;
    private int J;
    private int K;
    private SSLContext L;
    private boolean M;
    private final Set<String> b;
    private Set<String> c;
    private final Set<String> d;
    private Set<String> e;
    private String f;
    private String g;
    private String h;
    private InputStream i;
    private String j;
    private String k;
    private String l;
    private String m;
    private InputStream n;
    private boolean o;
    private boolean p;
    private boolean q;
    private transient Password r;
    private transient Password s;
    private transient Password t;
    private String u;
    private String v;
    private String w;
    private String x;
    private String y;
    private boolean z;

    static {
        DEFAULT_KEYMANAGERFACTORY_ALGORITHM = Security.getProperty("ssl.KeyManagerFactory.algorithm") == null ? "SunX509" : Security.getProperty("ssl.KeyManagerFactory.algorithm");
        DEFAULT_TRUSTMANAGERFACTORY_ALGORITHM = Security.getProperty("ssl.TrustManagerFactory.algorithm") == null ? "SunX509" : Security.getProperty("ssl.TrustManagerFactory.algorithm");
        DEFAULT_KEYSTORE_PATH = System.getProperty("user.home") + File.separator + ".keystore";
    }

    public SslContextFactory() {
        this.b = new LinkedHashSet();
        this.c = null;
        this.d = new LinkedHashSet();
        this.e = null;
        this.h = "JKS";
        this.m = "JKS";
        this.o = false;
        this.p = false;
        this.q = true;
        this.v = "TLS";
        this.x = DEFAULT_KEYMANAGERFACTORY_ALGORITHM;
        this.y = DEFAULT_TRUSTMANAGERFACTORY_ALGORITHM;
        this.B = -1;
        this.D = false;
        this.E = false;
        this.I = true;
        this.M = true;
    }

    public SslContextFactory(boolean z) {
        this.b = new LinkedHashSet();
        this.c = null;
        this.d = new LinkedHashSet();
        this.e = null;
        this.h = "JKS";
        this.m = "JKS";
        this.o = false;
        this.p = false;
        this.q = true;
        this.v = "TLS";
        this.x = DEFAULT_KEYMANAGERFACTORY_ALGORITHM;
        this.y = DEFAULT_TRUSTMANAGERFACTORY_ALGORITHM;
        this.B = -1;
        this.D = false;
        this.E = false;
        this.I = true;
        this.M = z;
    }

    public SslContextFactory(String str) {
        this.b = new LinkedHashSet();
        this.c = null;
        this.d = new LinkedHashSet();
        this.e = null;
        this.h = "JKS";
        this.m = "JKS";
        this.o = false;
        this.p = false;
        this.q = true;
        this.v = "TLS";
        this.x = DEFAULT_KEYMANAGERFACTORY_ALGORITHM;
        this.y = DEFAULT_TRUSTMANAGERFACTORY_ALGORITHM;
        this.B = -1;
        this.D = false;
        this.E = false;
        this.I = true;
        this.f = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.eclipse.jetty.util.component.AbstractLifeCycle
    public void doStart() throws Exception {
        TrustManager[] trustManagerArr;
        if (this.L == null) {
            if (this.G == null && this.i == null && this.f == null && this.H == null && this.n == null && this.k == null) {
                if (this.M) {
                    a.debug("No keystore or trust store configured.  ACCEPTING UNTRUSTED CERTIFICATES!!!!!", new Object[0]);
                    trustManagerArr = TRUST_ALL_CERTS;
                } else {
                    trustManagerArr = null;
                }
                SecureRandom secureRandom = this.w == null ? null : SecureRandom.getInstance(this.w);
                this.L = SSLContext.getInstance(this.v);
                this.L.init(null, trustManagerArr, secureRandom);
                return;
            }
            checkKeyStore();
            KeyStore keyStoreLoadKeyStore = loadKeyStore();
            KeyStore keyStoreLoadTrustStore = loadTrustStore();
            Collection<? extends CRL> collectionLoadCRL = loadCRL(this.C);
            if (this.z && keyStoreLoadKeyStore != null) {
                if (this.j == null) {
                    ArrayList list = Collections.list(keyStoreLoadKeyStore.aliases());
                    this.j = list.size() == 1 ? (String) list.get(0) : null;
                }
                Certificate certificate = this.j == null ? null : keyStoreLoadKeyStore.getCertificate(this.j);
                if (certificate == null) {
                    throw new Exception("No certificate found in the keystore" + (this.j == null ? "" : " for alias " + this.j));
                }
                CertificateValidator certificateValidator = new CertificateValidator(keyStoreLoadTrustStore, collectionLoadCRL);
                certificateValidator.setMaxCertPathLength(this.B);
                certificateValidator.setEnableCRLDP(this.D);
                certificateValidator.setEnableOCSP(this.E);
                certificateValidator.setOcspResponderURL(this.F);
                certificateValidator.validate(keyStoreLoadKeyStore, certificate);
            }
            KeyManager[] keyManagers = getKeyManagers(keyStoreLoadKeyStore);
            TrustManager[] trustManagers = getTrustManagers(keyStoreLoadTrustStore, collectionLoadCRL);
            SecureRandom secureRandom2 = this.w != null ? SecureRandom.getInstance(this.w) : null;
            this.L = this.u == null ? SSLContext.getInstance(this.v) : SSLContext.getInstance(this.v, this.u);
            this.L.init(keyManagers, trustManagers, secureRandom2);
            SSLEngine sSLEngineNewSslEngine = newSslEngine();
            a.info("Enabled Protocols {} of {}", Arrays.asList(sSLEngineNewSslEngine.getEnabledProtocols()), Arrays.asList(sSLEngineNewSslEngine.getSupportedProtocols()));
            if (a.isDebugEnabled()) {
                a.debug("Enabled Ciphers   {} of {}", Arrays.asList(sSLEngineNewSslEngine.getEnabledCipherSuites()), Arrays.asList(sSLEngineNewSslEngine.getSupportedCipherSuites()));
            }
        }
    }

    public String[] getExcludeProtocols() {
        return (String[]) this.b.toArray(new String[this.b.size()]);
    }

    public void setExcludeProtocols(String... strArr) {
        checkNotStarted();
        this.b.clear();
        this.b.addAll(Arrays.asList(strArr));
    }

    public void addExcludeProtocols(String... strArr) {
        checkNotStarted();
        this.b.addAll(Arrays.asList(strArr));
    }

    public String[] getIncludeProtocols() {
        return (String[]) this.c.toArray(new String[this.c.size()]);
    }

    public void setIncludeProtocols(String... strArr) {
        checkNotStarted();
        this.c = new LinkedHashSet(Arrays.asList(strArr));
    }

    public String[] getExcludeCipherSuites() {
        return (String[]) this.d.toArray(new String[this.d.size()]);
    }

    public void setExcludeCipherSuites(String... strArr) {
        checkNotStarted();
        this.d.clear();
        this.d.addAll(Arrays.asList(strArr));
    }

    public void addExcludeCipherSuites(String... strArr) {
        checkNotStarted();
        this.d.addAll(Arrays.asList(strArr));
    }

    public String[] getIncludeCipherSuites() {
        return (String[]) this.e.toArray(new String[this.e.size()]);
    }

    public void setIncludeCipherSuites(String... strArr) {
        checkNotStarted();
        this.e = new LinkedHashSet(Arrays.asList(strArr));
    }

    public String getKeyStorePath() {
        return this.f;
    }

    @Deprecated
    public String getKeyStore() {
        return this.f;
    }

    public void setKeyStorePath(String str) {
        checkNotStarted();
        this.f = str;
    }

    @Deprecated
    public void setKeyStore(String str) {
        checkNotStarted();
        this.f = str;
    }

    public String getKeyStoreProvider() {
        return this.g;
    }

    public void setKeyStoreProvider(String str) {
        checkNotStarted();
        this.g = str;
    }

    public String getKeyStoreType() {
        return this.h;
    }

    public void setKeyStoreType(String str) {
        checkNotStarted();
        this.h = str;
    }

    @Deprecated
    public InputStream getKeyStoreInputStream() {
        checkKeyStore();
        return this.i;
    }

    @Deprecated
    public void setKeyStoreInputStream(InputStream inputStream) {
        checkNotStarted();
        this.i = inputStream;
    }

    public String getCertAlias() {
        return this.j;
    }

    public void setCertAlias(String str) {
        checkNotStarted();
        this.j = str;
    }

    public String getTrustStore() {
        return this.k;
    }

    public void setTrustStore(String str) {
        checkNotStarted();
        this.k = str;
    }

    public String getTrustStoreProvider() {
        return this.l;
    }

    public void setTrustStoreProvider(String str) {
        checkNotStarted();
        this.l = str;
    }

    public String getTrustStoreType() {
        return this.m;
    }

    public void setTrustStoreType(String str) {
        checkNotStarted();
        this.m = str;
    }

    @Deprecated
    public InputStream getTrustStoreInputStream() {
        checkKeyStore();
        return this.n;
    }

    @Deprecated
    public void setTrustStoreInputStream(InputStream inputStream) {
        checkNotStarted();
        this.n = inputStream;
    }

    public boolean getNeedClientAuth() {
        return this.o;
    }

    public void setNeedClientAuth(boolean z) {
        checkNotStarted();
        this.o = z;
    }

    public boolean getWantClientAuth() {
        return this.p;
    }

    public void setWantClientAuth(boolean z) {
        checkNotStarted();
        this.p = z;
    }

    @Deprecated
    public boolean getValidateCerts() {
        return this.z;
    }

    public boolean isValidateCerts() {
        return this.z;
    }

    public void setValidateCerts(boolean z) {
        checkNotStarted();
        this.z = z;
    }

    public boolean isValidatePeerCerts() {
        return this.A;
    }

    public void setValidatePeerCerts(boolean z) {
        checkNotStarted();
        this.A = z;
    }

    public boolean isAllowRenegotiate() {
        return this.q;
    }

    public void setAllowRenegotiate(boolean z) {
        checkNotStarted();
        this.q = z;
    }

    public void setKeyStorePassword(String str) {
        checkNotStarted();
        this.r = Password.getPassword(PASSWORD_PROPERTY, str, null);
    }

    public void setKeyManagerPassword(String str) {
        checkNotStarted();
        this.s = Password.getPassword(KEYPASSWORD_PROPERTY, str, null);
    }

    public void setTrustStorePassword(String str) {
        checkNotStarted();
        this.t = Password.getPassword(PASSWORD_PROPERTY, str, null);
    }

    public String getProvider() {
        return this.u;
    }

    public void setProvider(String str) {
        checkNotStarted();
        this.u = str;
    }

    public String getProtocol() {
        return this.v;
    }

    public void setProtocol(String str) {
        checkNotStarted();
        this.v = str;
    }

    public String getSecureRandomAlgorithm() {
        return this.w;
    }

    public void setSecureRandomAlgorithm(String str) {
        checkNotStarted();
        this.w = str;
    }

    public String getSslKeyManagerFactoryAlgorithm() {
        return this.x;
    }

    public void setSslKeyManagerFactoryAlgorithm(String str) {
        checkNotStarted();
        this.x = str;
    }

    public String getTrustManagerFactoryAlgorithm() {
        return this.y;
    }

    public boolean isTrustAll() {
        return this.M;
    }

    public void setTrustAll(boolean z) {
        this.M = z;
    }

    public void setTrustManagerFactoryAlgorithm(String str) {
        checkNotStarted();
        this.y = str;
    }

    public String getCrlPath() {
        return this.C;
    }

    public void setCrlPath(String str) {
        checkNotStarted();
        this.C = str;
    }

    public int getMaxCertPathLength() {
        return this.B;
    }

    public void setMaxCertPathLength(int i) {
        checkNotStarted();
        this.B = i;
    }

    public SSLContext getSslContext() {
        if (!isStarted()) {
            throw new IllegalStateException(getState());
        }
        return this.L;
    }

    public void setSslContext(SSLContext sSLContext) {
        checkNotStarted();
        this.L = sSLContext;
    }

    protected KeyStore loadKeyStore() {
        if (this.G != null) {
            return this.G;
        }
        return getKeyStore(this.i, this.f, this.h, this.g, this.r == null ? null : this.r.toString());
    }

    protected KeyStore loadTrustStore() {
        if (this.H != null) {
            return this.H;
        }
        return getKeyStore(this.n, this.k, this.m, this.l, this.t == null ? null : this.t.toString());
    }

    @Deprecated
    protected KeyStore getKeyStore(InputStream inputStream, String str, String str2, String str3, String str4) {
        return CertificateUtils.getKeyStore(inputStream, str, str2, str3, str4);
    }

    protected Collection<? extends CRL> loadCRL(String str) {
        return CertificateUtils.loadCRL(str);
    }

    protected KeyManager[] getKeyManagers(KeyStore keyStore) throws NoSuchAlgorithmException, UnrecoverableKeyException, KeyStoreException {
        char[] charArray = null;
        if (keyStore == null) {
            return null;
        }
        KeyManagerFactory keyManagerFactory = KeyManagerFactory.getInstance(this.x);
        if (this.s != null) {
            charArray = this.s.toString().toCharArray();
        } else if (this.r != null) {
            charArray = this.r.toString().toCharArray();
        }
        keyManagerFactory.init(keyStore, charArray);
        KeyManager[] keyManagers = keyManagerFactory.getKeyManagers();
        if (this.j != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= keyManagers.length) {
                    break;
                }
                if (keyManagers[i2] instanceof X509KeyManager) {
                    keyManagers[i2] = new AliasedX509ExtendedKeyManager(this.j, (X509KeyManager) keyManagers[i2]);
                }
                i = i2 + 1;
            }
        }
        return keyManagers;
    }

    protected TrustManager[] getTrustManagers(KeyStore keyStore, Collection<? extends CRL> collection) throws NoSuchAlgorithmException, KeyStoreException, InvalidAlgorithmParameterException {
        if (keyStore == null) {
            return null;
        }
        if (this.A && this.y.equalsIgnoreCase("PKIX")) {
            PKIXBuilderParameters pKIXBuilderParameters = new PKIXBuilderParameters(keyStore, new X509CertSelector());
            pKIXBuilderParameters.setMaxPathLength(this.B);
            pKIXBuilderParameters.setRevocationEnabled(true);
            if (collection != null && !collection.isEmpty()) {
                pKIXBuilderParameters.addCertStore(CertStore.getInstance("Collection", new CollectionCertStoreParameters(collection)));
            }
            if (this.D) {
                System.setProperty("com.sun.security.enableCRLDP", "true");
            }
            if (this.E) {
                Security.setProperty("ocsp.enable", "true");
                if (this.F != null) {
                    Security.setProperty("ocsp.responderURL", this.F);
                }
            }
            TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(this.y);
            trustManagerFactory.init(new CertPathTrustManagerParameters(pKIXBuilderParameters));
            return trustManagerFactory.getTrustManagers();
        }
        TrustManagerFactory trustManagerFactory2 = TrustManagerFactory.getInstance(this.y);
        trustManagerFactory2.init(keyStore);
        return trustManagerFactory2.getTrustManagers();
    }

    public void checkKeyStore() {
        if (this.L == null) {
            if (this.G == null && this.i == null && this.f == null) {
                throw new IllegalStateException("SSL doesn't have a valid keystore");
            }
            if (this.H == null && this.n == null && this.k == null) {
                this.H = this.G;
                this.k = this.f;
                this.n = this.i;
                this.m = this.h;
                this.l = this.g;
                this.t = this.r;
                this.y = this.x;
            }
            if (this.i != null && this.i == this.n) {
                try {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    IO.copy(this.i, byteArrayOutputStream);
                    this.i.close();
                    this.i = new ByteArrayInputStream(byteArrayOutputStream.toByteArray());
                    this.n = new ByteArrayInputStream(byteArrayOutputStream.toByteArray());
                } catch (Exception e) {
                    throw new IllegalStateException(e);
                }
            }
        }
    }

    public String[] selectProtocols(String[] strArr, String[] strArr2) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        if (this.c != null) {
            for (String str : this.c) {
                if (Arrays.asList(strArr2).contains(str)) {
                    linkedHashSet.add(str);
                }
            }
        } else {
            linkedHashSet.addAll(Arrays.asList(strArr));
        }
        if (this.b != null) {
            linkedHashSet.removeAll(this.b);
        }
        return (String[]) linkedHashSet.toArray(new String[linkedHashSet.size()]);
    }

    public String[] selectCipherSuites(String[] strArr, String[] strArr2) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        if (this.e != null) {
            for (String str : this.e) {
                if (Arrays.asList(strArr2).contains(str)) {
                    linkedHashSet.add(str);
                }
            }
        } else {
            linkedHashSet.addAll(Arrays.asList(strArr));
        }
        if (this.d != null) {
            linkedHashSet.removeAll(this.d);
        }
        return (String[]) linkedHashSet.toArray(new String[linkedHashSet.size()]);
    }

    protected void checkNotStarted() {
        if (isStarted()) {
            throw new IllegalStateException("Cannot modify configuration when " + getState());
        }
    }

    public boolean isEnableCRLDP() {
        return this.D;
    }

    public void setEnableCRLDP(boolean z) {
        checkNotStarted();
        this.D = z;
    }

    public boolean isEnableOCSP() {
        return this.E;
    }

    public void setEnableOCSP(boolean z) {
        checkNotStarted();
        this.E = z;
    }

    public String getOcspResponderURL() {
        return this.F;
    }

    public void setOcspResponderURL(String str) {
        checkNotStarted();
        this.F = str;
    }

    public void setKeyStore(KeyStore keyStore) {
        checkNotStarted();
        this.G = keyStore;
    }

    public void setTrustStore(KeyStore keyStore) {
        checkNotStarted();
        this.H = keyStore;
    }

    public void setKeyStoreResource(Resource resource) {
        checkNotStarted();
        try {
            this.i = resource.getInputStream();
        } catch (IOException e) {
            throw new InvalidParameterException("Unable to get resource input stream for resource " + resource.toString());
        }
    }

    public void setTrustStoreResource(Resource resource) {
        checkNotStarted();
        try {
            this.n = resource.getInputStream();
        } catch (IOException e) {
            throw new InvalidParameterException("Unable to get resource input stream for resource " + resource.toString());
        }
    }

    public boolean isSessionCachingEnabled() {
        return this.I;
    }

    public void setSessionCachingEnabled(boolean z) {
        this.I = z;
    }

    public int getSslSessionCacheSize() {
        return this.J;
    }

    public void setSslSessionCacheSize(int i) {
        this.J = i;
    }

    public int getSslSessionTimeout() {
        return this.K;
    }

    public void setSslSessionTimeout(int i) {
        this.K = i;
    }

    public SSLServerSocket newSslServerSocket(String str, int i, int i2) {
        SSLServerSocketFactory serverSocketFactory = this.L.getServerSocketFactory();
        SSLServerSocket sSLServerSocket = (SSLServerSocket) (str == null ? serverSocketFactory.createServerSocket(i, i2) : serverSocketFactory.createServerSocket(i, i2, InetAddress.getByName(str)));
        if (getWantClientAuth()) {
            sSLServerSocket.setWantClientAuth(getWantClientAuth());
        }
        if (getNeedClientAuth()) {
            sSLServerSocket.setNeedClientAuth(getNeedClientAuth());
        }
        sSLServerSocket.setEnabledCipherSuites(selectCipherSuites(sSLServerSocket.getEnabledCipherSuites(), sSLServerSocket.getSupportedCipherSuites()));
        sSLServerSocket.setEnabledProtocols(selectProtocols(sSLServerSocket.getEnabledProtocols(), sSLServerSocket.getSupportedProtocols()));
        return sSLServerSocket;
    }

    public SSLSocket newSslSocket() {
        SSLSocket sSLSocket = (SSLSocket) this.L.getSocketFactory().createSocket();
        if (getWantClientAuth()) {
            sSLSocket.setWantClientAuth(getWantClientAuth());
        }
        if (getNeedClientAuth()) {
            sSLSocket.setNeedClientAuth(getNeedClientAuth());
        }
        sSLSocket.setEnabledCipherSuites(selectCipherSuites(sSLSocket.getEnabledCipherSuites(), sSLSocket.getSupportedCipherSuites()));
        sSLSocket.setEnabledProtocols(selectProtocols(sSLSocket.getEnabledProtocols(), sSLSocket.getSupportedProtocols()));
        return sSLSocket;
    }

    public SSLEngine newSslEngine(String str, int i) {
        SSLEngine sSLEngineCreateSSLEngine = isSessionCachingEnabled() ? this.L.createSSLEngine(str, i) : this.L.createSSLEngine();
        customize(sSLEngineCreateSSLEngine);
        return sSLEngineCreateSSLEngine;
    }

    public SSLEngine newSslEngine() {
        SSLEngine sSLEngineCreateSSLEngine = this.L.createSSLEngine();
        customize(sSLEngineCreateSSLEngine);
        return sSLEngineCreateSSLEngine;
    }

    public void customize(SSLEngine sSLEngine) {
        if (getWantClientAuth()) {
            sSLEngine.setWantClientAuth(getWantClientAuth());
        }
        if (getNeedClientAuth()) {
            sSLEngine.setNeedClientAuth(getNeedClientAuth());
        }
        sSLEngine.setEnabledCipherSuites(selectCipherSuites(sSLEngine.getEnabledCipherSuites(), sSLEngine.getSupportedCipherSuites()));
        sSLEngine.setEnabledProtocols(selectProtocols(sSLEngine.getEnabledProtocols(), sSLEngine.getSupportedProtocols()));
    }

    public String toString() {
        return String.format("%s@%x(%s,%s)", getClass().getSimpleName(), Integer.valueOf(hashCode()), this.f, this.k);
    }
}
