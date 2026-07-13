package org.eclipse.jetty.util.security;

import com.google.common.base.Ascii;
import java.io.IOException;
import java.util.Arrays;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;
import org.eclipse.jetty.util.security.Credential;

/* JADX INFO: loaded from: classes.dex */
public class Password extends Credential {
    public static final String __OBFUSCATE = "OBF:";
    private static final Logger a = Log.getLogger((Class<?>) Password.class);
    private static final long serialVersionUID = 5062906681431569445L;
    private String b;

    public Password(String str) {
        this.b = str;
        while (this.b != null && this.b.startsWith(__OBFUSCATE)) {
            this.b = deobfuscate(this.b);
        }
    }

    public String toString() {
        return this.b;
    }

    public String toStarString() {
        return "*****************************************************".substring(0, this.b.length());
    }

    @Override // org.eclipse.jetty.util.security.Credential
    public boolean check(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Password) && !(obj instanceof String)) {
            if (obj instanceof char[]) {
                return Arrays.equals(this.b.toCharArray(), (char[]) obj);
            }
            if (obj instanceof Credential) {
                return ((Credential) obj).check(this.b);
            }
            return false;
        }
        return obj.equals(this.b);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (obj instanceof Password) {
            Password password = (Password) obj;
            return password.b == this.b || (this.b != null && this.b.equals(password.b));
        }
        if (obj instanceof String) {
            return obj.equals(this.b);
        }
        return false;
    }

    public int hashCode() {
        return this.b == null ? super.hashCode() : this.b.hashCode();
    }

    public static String obfuscate(String str) {
        StringBuilder sb = new StringBuilder();
        byte[] bytes = str.getBytes();
        sb.append(__OBFUSCATE);
        for (int i = 0; i < bytes.length; i++) {
            byte b = bytes[i];
            byte b2 = bytes[str.length() - (i + 1)];
            String string = Integer.toString(((b + Ascii.DEL) - b2) + ((b + Ascii.DEL + b2) * 256), 36);
            switch (string.length()) {
                case 1:
                    sb.append('0');
                    sb.append('0');
                    sb.append('0');
                    sb.append(string);
                    break;
                case 2:
                    sb.append('0');
                    sb.append('0');
                    sb.append(string);
                    break;
                case 3:
                    sb.append('0');
                    sb.append(string);
                    break;
                default:
                    sb.append(string);
                    break;
            }
        }
        return sb.toString();
    }

    public static String deobfuscate(String str) {
        if (str.startsWith(__OBFUSCATE)) {
            str = str.substring(4);
        }
        byte[] bArr = new byte[str.length() / 2];
        int i = 0;
        int i2 = 0;
        while (i < str.length()) {
            int i3 = Integer.parseInt(str.substring(i, i + 4), 36);
            bArr[i2] = (byte) ((((i3 / 256) + (i3 % 256)) - 254) / 2);
            i += 4;
            i2++;
        }
        return new String(bArr, 0, i2);
    }

    public static Password getPassword(String str, String str2, String str3) {
        String property = System.getProperty(str, str2);
        if (property == null || property.length() == 0) {
            try {
                System.out.print(str + ((str3 == null || str3.length() <= 0) ? "" : " [dft]") + " : ");
                System.out.flush();
                byte[] bArr = new byte[512];
                int i = System.in.read(bArr);
                if (i > 0) {
                    property = new String(bArr, 0, i).trim();
                }
            } catch (IOException e) {
                a.warn(Log.EXCEPTION, e);
            }
            if (property == null || property.length() == 0) {
                property = str3;
            }
        }
        return new Password(property);
    }

    public static void main(String[] strArr) {
        if (strArr.length != 1 && strArr.length != 2) {
            System.err.println("Usage - java org.eclipse.jetty.security.Password [<user>] <password>");
            System.err.println("If the password is ?, the user will be prompted for the password");
            System.exit(1);
        }
        String str = strArr[strArr.length == 1 ? (char) 0 : (char) 1];
        Password password = new Password(str);
        System.err.println(password.toString());
        System.err.println(obfuscate(password.toString()));
        System.err.println(Credential.MD5.digest(str));
        if (strArr.length == 2) {
            System.err.println(Credential.Crypt.crypt(strArr[0], password.toString()));
        }
    }
}
