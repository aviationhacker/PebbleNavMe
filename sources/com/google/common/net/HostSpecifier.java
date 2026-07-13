package com.google.common.net;

import com.google.common.annotations.Beta;
import com.google.common.base.Preconditions;
import java.net.InetAddress;
import java.text.ParseException;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Beta
public final class HostSpecifier {
    private final String a;

    private HostSpecifier(String str) {
        this.a = str;
    }

    public static HostSpecifier fromValid(String str) {
        InetAddress inetAddressForString;
        HostAndPort hostAndPortFromString = HostAndPort.fromString(str);
        Preconditions.checkArgument(!hostAndPortFromString.hasPort());
        String hostText = hostAndPortFromString.getHostText();
        try {
            inetAddressForString = InetAddresses.forString(hostText);
        } catch (IllegalArgumentException e) {
            inetAddressForString = null;
        }
        if (inetAddressForString != null) {
            return new HostSpecifier(InetAddresses.toUriString(inetAddressForString));
        }
        InternetDomainName internetDomainNameFrom = InternetDomainName.from(hostText);
        if (internetDomainNameFrom.hasPublicSuffix()) {
            return new HostSpecifier(internetDomainNameFrom.toString());
        }
        String strValueOf = String.valueOf(hostText);
        throw new IllegalArgumentException(strValueOf.length() != 0 ? "Domain name does not have a recognized public suffix: ".concat(strValueOf) : new String("Domain name does not have a recognized public suffix: "));
    }

    public static HostSpecifier from(String str) throws ParseException {
        try {
            return fromValid(str);
        } catch (IllegalArgumentException e) {
            String strValueOf = String.valueOf(str);
            ParseException parseException = new ParseException(strValueOf.length() != 0 ? "Invalid host specifier: ".concat(strValueOf) : new String("Invalid host specifier: "), 0);
            parseException.initCause(e);
            throw parseException;
        }
    }

    public static boolean isValid(String str) {
        try {
            fromValid(str);
            return true;
        } catch (IllegalArgumentException e) {
            return false;
        }
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof HostSpecifier) {
            return this.a.equals(((HostSpecifier) obj).a);
        }
        return false;
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public String toString() {
        return this.a;
    }
}
