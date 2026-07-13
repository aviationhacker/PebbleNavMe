package org.eclipse.jetty.util.ssl;

import java.net.Socket;
import java.security.Principal;
import java.security.PrivateKey;
import java.security.cert.X509Certificate;
import javax.net.ssl.X509KeyManager;

/* JADX INFO: loaded from: classes.dex */
public class AliasedX509KeyManager implements X509KeyManager {
    private String a;
    private X509KeyManager b;

    public AliasedX509KeyManager(String str, X509KeyManager x509KeyManager) {
        this.a = str;
        this.b = x509KeyManager;
    }

    @Override // javax.net.ssl.X509KeyManager
    public String chooseClientAlias(String[] strArr, Principal[] principalArr, Socket socket) {
        return this.a == null ? this.b.chooseClientAlias(strArr, principalArr, socket) : this.a;
    }

    @Override // javax.net.ssl.X509KeyManager
    public String chooseServerAlias(String str, Principal[] principalArr, Socket socket) {
        return this.a == null ? this.b.chooseServerAlias(str, principalArr, socket) : this.a;
    }

    @Override // javax.net.ssl.X509KeyManager
    public String[] getClientAliases(String str, Principal[] principalArr) {
        return this.b.getClientAliases(str, principalArr);
    }

    @Override // javax.net.ssl.X509KeyManager
    public String[] getServerAliases(String str, Principal[] principalArr) {
        return this.b.getServerAliases(str, principalArr);
    }

    @Override // javax.net.ssl.X509KeyManager
    public X509Certificate[] getCertificateChain(String str) {
        return this.b.getCertificateChain(str);
    }

    @Override // javax.net.ssl.X509KeyManager
    public PrivateKey getPrivateKey(String str) {
        return this.b.getPrivateKey(str);
    }
}
