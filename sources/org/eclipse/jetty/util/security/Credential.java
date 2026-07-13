package org.eclipse.jetty.util.security;

import java.io.Serializable;
import java.security.MessageDigest;
import org.eclipse.jetty.util.TypeUtil;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes.dex */
public abstract class Credential implements Serializable {
    private static final Logger a = Log.getLogger((Class<?>) Credential.class);
    private static final long serialVersionUID = -7760551052768181572L;

    public abstract boolean check(Object obj);

    public static Credential getCredential(String str) {
        return str.startsWith(Crypt.__TYPE) ? new Crypt(str) : str.startsWith(MD5.__TYPE) ? new MD5(str) : new Password(str);
    }

    public static class Crypt extends Credential {
        public static final String __TYPE = "CRYPT:";
        private static final long serialVersionUID = -2027792997664744210L;
        private final String a;

        Crypt(String str) {
            this.a = str.startsWith(__TYPE) ? str.substring(__TYPE.length()) : str;
        }

        @Override // org.eclipse.jetty.util.security.Credential
        public boolean check(Object obj) {
            if (obj instanceof char[]) {
                obj = new String((char[]) obj);
            }
            if (!(obj instanceof String) && !(obj instanceof Password)) {
                Credential.a.warn("Can't check " + obj.getClass() + " against CRYPT", new Object[0]);
            }
            return this.a.equals(UnixCrypt.crypt(obj.toString(), this.a));
        }

        public static String crypt(String str, String str2) {
            return __TYPE + UnixCrypt.crypt(str2, str);
        }
    }

    public static class MD5 extends Credential {
        public static final String __TYPE = "MD5:";
        public static final Object __md5Lock = new Object();
        private static MessageDigest a = null;
        private static final long serialVersionUID = 5533846540822684240L;
        private final byte[] b;

        MD5(String str) {
            this.b = TypeUtil.parseBytes(str.startsWith(__TYPE) ? str.substring(__TYPE.length()) : str, 16);
        }

        public byte[] getDigest() {
            return this.b;
        }

        @Override // org.eclipse.jetty.util.security.Credential
        public boolean check(Object obj) {
            byte[] bArrDigest;
            try {
                Object str = obj instanceof char[] ? new String((char[]) obj) : obj;
                if ((str instanceof Password) || (str instanceof String)) {
                    synchronized (__md5Lock) {
                        if (a == null) {
                            a = MessageDigest.getInstance("MD5");
                        }
                        a.reset();
                        a.update(str.toString().getBytes("ISO-8859-1"));
                        bArrDigest = a.digest();
                    }
                    if (bArrDigest == null || bArrDigest.length != this.b.length) {
                        return false;
                    }
                    for (int i = 0; i < bArrDigest.length; i++) {
                        if (bArrDigest[i] != this.b[i]) {
                            return false;
                        }
                    }
                    return true;
                }
                if (str instanceof MD5) {
                    MD5 md5 = (MD5) str;
                    if (this.b.length != md5.b.length) {
                        return false;
                    }
                    for (int i2 = 0; i2 < this.b.length; i2++) {
                        if (this.b[i2] != md5.b[i2]) {
                            return false;
                        }
                    }
                    return true;
                }
                if (!(str instanceof Credential)) {
                    Credential.a.warn("Can't check " + str.getClass() + " against MD5", new Object[0]);
                    return false;
                }
                return ((Credential) str).check(this);
            } catch (Exception e) {
                Credential.a.warn(e);
                return false;
            }
        }

        public static String digest(String str) {
            byte[] bArrDigest;
            try {
                synchronized (__md5Lock) {
                    if (a == null) {
                        try {
                            a = MessageDigest.getInstance("MD5");
                        } catch (Exception e) {
                            Credential.a.warn(e);
                            return null;
                        }
                    }
                    a.reset();
                    a.update(str.getBytes("ISO-8859-1"));
                    bArrDigest = a.digest();
                }
                return __TYPE + TypeUtil.toString(bArrDigest, 16);
            } catch (Exception e2) {
                Credential.a.warn(e2);
                return null;
            }
        }
    }
}
