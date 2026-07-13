package com.google.common.net;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.base.Strings;
import java.io.Serializable;
import javax.annotation.Nullable;
import javax.annotation.concurrent.Immutable;

/* JADX INFO: loaded from: classes.dex */
@Beta
@GwtCompatible
@Immutable
public final class HostAndPort implements Serializable {
    private static final long serialVersionUID = 0;
    private final String a;
    private final int b;
    private final boolean c;

    private HostAndPort(String str, int i, boolean z) {
        this.a = str;
        this.b = i;
        this.c = z;
    }

    public String getHostText() {
        return this.a;
    }

    public boolean hasPort() {
        return this.b >= 0;
    }

    public int getPort() {
        Preconditions.checkState(hasPort());
        return this.b;
    }

    public int getPortOrDefault(int i) {
        return hasPort() ? this.b : i;
    }

    public static HostAndPort fromParts(String str, int i) {
        Preconditions.checkArgument(a(i), "Port out of range: %s", Integer.valueOf(i));
        HostAndPort hostAndPortFromString = fromString(str);
        Preconditions.checkArgument(!hostAndPortFromString.hasPort(), "Host has a port: %s", str);
        return new HostAndPort(hostAndPortFromString.a, i, hostAndPortFromString.c);
    }

    public static HostAndPort fromHost(String str) {
        HostAndPort hostAndPortFromString = fromString(str);
        Preconditions.checkArgument(!hostAndPortFromString.hasPort(), "Host has a port: %s", str);
        return hostAndPortFromString;
    }

    public static HostAndPort fromString(String str) {
        boolean z;
        String strSubstring;
        int i;
        Preconditions.checkNotNull(str);
        String strSubstring2 = null;
        if (str.startsWith("[")) {
            String[] strArrA = a(str);
            strSubstring = strArrA[0];
            strSubstring2 = strArrA[1];
            z = false;
        } else {
            int iIndexOf = str.indexOf(58);
            if (iIndexOf >= 0 && str.indexOf(58, iIndexOf + 1) == -1) {
                strSubstring = str.substring(0, iIndexOf);
                strSubstring2 = str.substring(iIndexOf + 1);
                z = false;
            } else {
                z = iIndexOf >= 0;
                strSubstring = str;
            }
        }
        if (Strings.isNullOrEmpty(strSubstring2)) {
            i = -1;
        } else {
            Preconditions.checkArgument(!strSubstring2.startsWith("+"), "Unparseable port number: %s", str);
            try {
                int i2 = Integer.parseInt(strSubstring2);
                Preconditions.checkArgument(a(i2), "Port number out of range: %s", str);
                i = i2;
            } catch (NumberFormatException e) {
                String strValueOf = String.valueOf(str);
                throw new IllegalArgumentException(strValueOf.length() != 0 ? "Unparseable port number: ".concat(strValueOf) : new String("Unparseable port number: "));
            }
        }
        return new HostAndPort(strSubstring, i, z);
    }

    private static String[] a(String str) {
        Preconditions.checkArgument(str.charAt(0) == '[', "Bracketed host-port string must start with a bracket: %s", str);
        int iIndexOf = str.indexOf(58);
        int iLastIndexOf = str.lastIndexOf(93);
        Preconditions.checkArgument(iIndexOf > -1 && iLastIndexOf > iIndexOf, "Invalid bracketed host/port: %s", str);
        String strSubstring = str.substring(1, iLastIndexOf);
        if (iLastIndexOf + 1 == str.length()) {
            return new String[]{strSubstring, ""};
        }
        Preconditions.checkArgument(str.charAt(iLastIndexOf + 1) == ':', "Only a colon may follow a close bracket: %s", str);
        for (int i = iLastIndexOf + 2; i < str.length(); i++) {
            Preconditions.checkArgument(Character.isDigit(str.charAt(i)), "Port must be numeric: %s", str);
        }
        return new String[]{strSubstring, str.substring(iLastIndexOf + 2)};
    }

    public HostAndPort withDefaultPort(int i) {
        Preconditions.checkArgument(a(i));
        return (hasPort() || this.b == i) ? this : new HostAndPort(this.a, i, this.c);
    }

    public HostAndPort requireBracketsForIPv6() {
        Preconditions.checkArgument(!this.c, "Possible bracketless IPv6 literal: %s", this.a);
        return this;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof HostAndPort)) {
            return false;
        }
        HostAndPort hostAndPort = (HostAndPort) obj;
        return Objects.equal(this.a, hostAndPort.a) && this.b == hostAndPort.b && this.c == hostAndPort.c;
    }

    public int hashCode() {
        return Objects.hashCode(this.a, Integer.valueOf(this.b), Boolean.valueOf(this.c));
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(this.a.length() + 8);
        if (this.a.indexOf(58) >= 0) {
            sb.append('[').append(this.a).append(']');
        } else {
            sb.append(this.a);
        }
        if (hasPort()) {
            sb.append(':').append(this.b);
        }
        return sb.toString();
    }

    private static boolean a(int i) {
        return i >= 0 && i <= 65535;
    }
}
