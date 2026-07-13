package com.google.common.net;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Ascii;
import com.google.common.base.CharMatcher;
import com.google.common.base.Joiner;
import com.google.common.base.Preconditions;
import com.google.common.base.Splitter;
import com.google.common.collect.ImmutableList;
import com.google.thirdparty.publicsuffix.PublicSuffixPatterns;
import java.util.List;
import javax.annotation.Nullable;
import org.apache.commons.lang3.ClassUtils;

/* JADX INFO: loaded from: classes.dex */
@Beta
@GwtCompatible
public final class InternetDomainName {
    private static final CharMatcher a = CharMatcher.anyOf(".。．｡");
    private static final Splitter b = Splitter.on(ClassUtils.PACKAGE_SEPARATOR_CHAR);
    private static final Joiner c = Joiner.on(ClassUtils.PACKAGE_SEPARATOR_CHAR);
    private static final CharMatcher g = CharMatcher.anyOf("-_");
    private static final CharMatcher h = CharMatcher.JAVA_LETTER_OR_DIGIT.or(g);
    private final String d;
    private final ImmutableList<String> e;
    private final int f;

    InternetDomainName(String str) {
        String lowerCase = Ascii.toLowerCase(a.replaceFrom(str, ClassUtils.PACKAGE_SEPARATOR_CHAR));
        lowerCase = lowerCase.endsWith(".") ? lowerCase.substring(0, lowerCase.length() - 1) : lowerCase;
        Preconditions.checkArgument(lowerCase.length() <= 253, "Domain name too long: '%s':", lowerCase);
        this.d = lowerCase;
        this.e = ImmutableList.copyOf(b.split(lowerCase));
        Preconditions.checkArgument(this.e.size() <= 127, "Domain has too many parts: '%s'", lowerCase);
        Preconditions.checkArgument(a(this.e), "Not a valid domain name: '%s'", lowerCase);
        this.f = a();
    }

    private int a() {
        int size = this.e.size();
        for (int i = 0; i < size; i++) {
            String strJoin = c.join(this.e.subList(i, size));
            if (!PublicSuffixPatterns.EXACT.containsKey(strJoin)) {
                if (PublicSuffixPatterns.EXCLUDED.containsKey(strJoin)) {
                    return i + 1;
                }
                if (a(strJoin)) {
                    return i;
                }
            } else {
                return i;
            }
        }
        return -1;
    }

    public static InternetDomainName from(String str) {
        return new InternetDomainName((String) Preconditions.checkNotNull(str));
    }

    private static boolean a(List<String> list) {
        int size = list.size() - 1;
        if (!a(list.get(size), true)) {
            return false;
        }
        for (int i = 0; i < size; i++) {
            if (!a(list.get(i), false)) {
                return false;
            }
        }
        return true;
    }

    private static boolean a(String str, boolean z) {
        if (str.length() < 1 || str.length() > 63) {
            return false;
        }
        if (!h.matchesAllOf(CharMatcher.ASCII.retainFrom(str)) || g.matches(str.charAt(0)) || g.matches(str.charAt(str.length() - 1))) {
            return false;
        }
        return (z && CharMatcher.DIGIT.matches(str.charAt(0))) ? false : true;
    }

    public ImmutableList<String> parts() {
        return this.e;
    }

    public boolean isPublicSuffix() {
        return this.f == 0;
    }

    public boolean hasPublicSuffix() {
        return this.f != -1;
    }

    public InternetDomainName publicSuffix() {
        if (hasPublicSuffix()) {
            return a(this.f);
        }
        return null;
    }

    public boolean isUnderPublicSuffix() {
        return this.f > 0;
    }

    public boolean isTopPrivateDomain() {
        return this.f == 1;
    }

    public InternetDomainName topPrivateDomain() {
        if (!isTopPrivateDomain()) {
            Preconditions.checkState(isUnderPublicSuffix(), "Not under a public suffix: %s", this.d);
            return a(this.f - 1);
        }
        return this;
    }

    public boolean hasParent() {
        return this.e.size() > 1;
    }

    public InternetDomainName parent() {
        Preconditions.checkState(hasParent(), "Domain '%s' has no parent", this.d);
        return a(1);
    }

    private InternetDomainName a(int i) {
        return from(c.join(this.e.subList(i, this.e.size())));
    }

    public InternetDomainName child(String str) {
        String str2 = (String) Preconditions.checkNotNull(str);
        String str3 = this.d;
        return from(new StringBuilder(String.valueOf(str2).length() + 1 + String.valueOf(str3).length()).append(str2).append(".").append(str3).toString());
    }

    public static boolean isValid(String str) {
        try {
            from(str);
            return true;
        } catch (IllegalArgumentException e) {
            return false;
        }
    }

    private static boolean a(String str) {
        String[] strArrSplit = str.split("\\.", 2);
        return strArrSplit.length == 2 && PublicSuffixPatterns.UNDER.containsKey(strArrSplit[1]);
    }

    public String toString() {
        return this.d;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof InternetDomainName) {
            return this.d.equals(((InternetDomainName) obj).d);
        }
        return false;
    }

    public int hashCode() {
        return this.d.hashCode();
    }
}
