package org.eclipse.jetty.util.security;

import java.io.Serializable;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class Constraint implements Serializable, Cloneable {
    public static final String ANY_ROLE = "*";
    public static final int DC_CONFIDENTIAL = 2;
    public static final int DC_FORBIDDEN = 3;
    public static final int DC_INTEGRAL = 1;
    public static final int DC_NONE = 0;
    public static final int DC_UNSET = -1;
    public static final String NONE = "NONE";
    public static final String __BASIC_AUTH = "BASIC";
    public static final String __CERT_AUTH = "CLIENT_CERT";
    public static final String __CERT_AUTH2 = "CLIENT-CERT";
    public static final String __DIGEST_AUTH = "DIGEST";
    public static final String __FORM_AUTH = "FORM";
    public static final String __NEGOTIATE_AUTH = "NEGOTIATE";
    public static final String __SPNEGO_AUTH = "SPNEGO";
    private String a;
    private String[] b;
    private int c = -1;
    private boolean d = false;
    private boolean e = false;

    public static boolean validateMethod(String str) {
        if (str == null) {
            return false;
        }
        String strTrim = str.trim();
        return strTrim.equals(__FORM_AUTH) || strTrim.equals(__BASIC_AUTH) || strTrim.equals(__DIGEST_AUTH) || strTrim.equals(__CERT_AUTH) || strTrim.equals(__CERT_AUTH2) || strTrim.equals(__SPNEGO_AUTH) || strTrim.equals(__NEGOTIATE_AUTH);
    }

    public Constraint() {
    }

    public Constraint(String str, String str2) {
        setName(str);
        setRoles(new String[]{str2});
    }

    public Object clone() {
        return super.clone();
    }

    public void setName(String str) {
        this.a = str;
    }

    public void setRoles(String[] strArr) {
        this.b = strArr;
        this.d = false;
        if (strArr != null) {
            int length = strArr.length;
            while (!this.d) {
                int i = length - 1;
                if (length > 0) {
                    this.d |= ANY_ROLE.equals(strArr[i]);
                    length = i;
                } else {
                    return;
                }
            }
        }
    }

    public boolean isAnyRole() {
        return this.d;
    }

    public String[] getRoles() {
        return this.b;
    }

    public boolean hasRole(String str) {
        if (this.d) {
            return true;
        }
        if (this.b != null) {
            int length = this.b.length;
            while (true) {
                int i = length - 1;
                if (length <= 0) {
                    break;
                }
                if (str.equals(this.b[i])) {
                    return true;
                }
                length = i;
            }
        }
        return false;
    }

    public void setAuthenticate(boolean z) {
        this.e = z;
    }

    public boolean getAuthenticate() {
        return this.e;
    }

    public boolean isForbidden() {
        return this.e && !this.d && (this.b == null || this.b.length == 0);
    }

    public void setDataConstraint(int i) {
        if (i < 0 || i > 2) {
            throw new IllegalArgumentException("Constraint out of range");
        }
        this.c = i;
    }

    public int getDataConstraint() {
        return this.c;
    }

    public boolean hasDataConstraint() {
        return this.c >= 0;
    }

    public String toString() {
        return "SC{" + this.a + "," + (this.d ? ANY_ROLE : this.b == null ? "-" : Arrays.asList(this.b).toString()) + "," + (this.c == -1 ? "DC_UNSET}" : this.c == 0 ? "NONE}" : this.c == 1 ? "INTEGRAL}" : "CONFIDENTIAL}");
    }
}
