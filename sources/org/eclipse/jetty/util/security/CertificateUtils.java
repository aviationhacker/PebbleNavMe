package org.eclipse.jetty.util.security;

import java.io.IOException;
import java.io.InputStream;
import java.security.KeyStore;
import java.security.cert.CRL;
import java.security.cert.CertificateFactory;
import java.util.Collection;
import org.eclipse.jetty.util.resource.Resource;

/* JADX INFO: loaded from: classes.dex */
public class CertificateUtils {
    /* JADX WARN: Finally extract failed */
    public static KeyStore getKeyStore(InputStream inputStream, String str, String str2, String str3, String str4) throws IOException {
        KeyStore keyStore;
        if (inputStream == null && str == null) {
            return null;
        }
        if (inputStream == null) {
            try {
                inputStream = Resource.newResource(str).getInputStream();
            } catch (Throwable th) {
                if (inputStream != null) {
                    inputStream.close();
                }
                throw th;
            }
        }
        if (str3 != null) {
            keyStore = KeyStore.getInstance(str2, str3);
        } else {
            keyStore = KeyStore.getInstance(str2);
        }
        keyStore.load(inputStream, str4 != null ? str4.toCharArray() : null);
        if (inputStream == null) {
            return keyStore;
        }
        inputStream.close();
        return keyStore;
    }

    public static Collection<? extends CRL> loadCRL(String str) throws Throwable {
        InputStream inputStream;
        Throwable th;
        Collection<? extends CRL> collectionGenerateCRLs = null;
        if (str != null) {
            try {
                inputStream = Resource.newResource(str).getInputStream();
                try {
                    collectionGenerateCRLs = CertificateFactory.getInstance("X.509").generateCRLs(inputStream);
                    if (inputStream != null) {
                        inputStream.close();
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                inputStream = null;
                th = th3;
            }
        }
        return collectionGenerateCRLs;
    }
}
