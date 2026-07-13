package org.apache.commons.lang3.text;

import java.util.Arrays;
import org.apache.commons.lang3.StringUtils;

/* JADX INFO: loaded from: classes.dex */
public abstract class StrMatcher {
    private static final StrMatcher a = new a(',');
    private static final StrMatcher b = new a('\t');
    private static final StrMatcher c = new a(' ');
    private static final StrMatcher d = new b(" \t\n\r\f".toCharArray());
    private static final StrMatcher e = new e();
    private static final StrMatcher f = new a('\'');
    private static final StrMatcher g = new a('\"');
    private static final StrMatcher h = new b("'\"".toCharArray());
    private static final StrMatcher i = new c();

    public abstract int isMatch(char[] cArr, int i2, int i3, int i4);

    public static StrMatcher commaMatcher() {
        return a;
    }

    public static StrMatcher tabMatcher() {
        return b;
    }

    public static StrMatcher spaceMatcher() {
        return c;
    }

    public static StrMatcher splitMatcher() {
        return d;
    }

    public static StrMatcher trimMatcher() {
        return e;
    }

    public static StrMatcher singleQuoteMatcher() {
        return f;
    }

    public static StrMatcher doubleQuoteMatcher() {
        return g;
    }

    public static StrMatcher quoteMatcher() {
        return h;
    }

    public static StrMatcher noneMatcher() {
        return i;
    }

    public static StrMatcher charMatcher(char c2) {
        return new a(c2);
    }

    public static StrMatcher charSetMatcher(char... cArr) {
        if (cArr == null || cArr.length == 0) {
            return i;
        }
        if (cArr.length == 1) {
            return new a(cArr[0]);
        }
        return new b(cArr);
    }

    public static StrMatcher charSetMatcher(String str) {
        if (str == null || str.length() == 0) {
            return i;
        }
        if (str.length() == 1) {
            return new a(str.charAt(0));
        }
        return new b(str.toCharArray());
    }

    public static StrMatcher stringMatcher(String str) {
        return StringUtils.isEmpty(str) ? i : new d(str);
    }

    protected StrMatcher() {
    }

    public int isMatch(char[] cArr, int i2) {
        return isMatch(cArr, i2, 0, cArr.length);
    }

    static final class b extends StrMatcher {
        private final char[] a;

        b(char[] cArr) {
            this.a = (char[]) cArr.clone();
            Arrays.sort(this.a);
        }

        @Override // org.apache.commons.lang3.text.StrMatcher
        public int isMatch(char[] cArr, int i, int i2, int i3) {
            return Arrays.binarySearch(this.a, cArr[i]) >= 0 ? 1 : 0;
        }
    }

    static final class a extends StrMatcher {
        private final char a;

        a(char c) {
            this.a = c;
        }

        @Override // org.apache.commons.lang3.text.StrMatcher
        public int isMatch(char[] cArr, int i, int i2, int i3) {
            return this.a == cArr[i] ? 1 : 0;
        }
    }

    static final class d extends StrMatcher {
        private final char[] a;

        d(String str) {
            this.a = str.toCharArray();
        }

        @Override // org.apache.commons.lang3.text.StrMatcher
        public int isMatch(char[] cArr, int i, int i2, int i3) {
            int length = this.a.length;
            if (i + length > i3) {
                return 0;
            }
            int i4 = 0;
            while (i4 < this.a.length) {
                if (this.a[i4] != cArr[i]) {
                    return 0;
                }
                i4++;
                i++;
            }
            return length;
        }
    }

    static final class c extends StrMatcher {
        c() {
        }

        @Override // org.apache.commons.lang3.text.StrMatcher
        public int isMatch(char[] cArr, int i, int i2, int i3) {
            return 0;
        }
    }

    static final class e extends StrMatcher {
        e() {
        }

        @Override // org.apache.commons.lang3.text.StrMatcher
        public int isMatch(char[] cArr, int i, int i2, int i3) {
            return cArr[i] <= ' ' ? 1 : 0;
        }
    }
}
