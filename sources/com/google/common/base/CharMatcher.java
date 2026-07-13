package com.google.common.base;

import android.support.v4.internal.view.SupportMenu;
import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import defpackage.gu;
import defpackage.gw;
import java.util.Arrays;
import java.util.BitSet;
import javax.annotation.CheckReturnValue;

/* JADX INFO: loaded from: classes.dex */
@Beta
@GwtCompatible(emulated = true)
public abstract class CharMatcher implements Predicate<Character> {
    public static final CharMatcher WHITESPACE = whitespace();
    public static final CharMatcher BREAKING_WHITESPACE = breakingWhitespace();
    public static final CharMatcher ASCII = ascii();
    public static final CharMatcher DIGIT = digit();
    public static final CharMatcher JAVA_DIGIT = javaDigit();
    public static final CharMatcher JAVA_LETTER = javaLetter();
    public static final CharMatcher JAVA_LETTER_OR_DIGIT = javaLetterOrDigit();
    public static final CharMatcher JAVA_UPPER_CASE = javaUpperCase();
    public static final CharMatcher JAVA_LOWER_CASE = javaLowerCase();
    public static final CharMatcher JAVA_ISO_CONTROL = javaIsoControl();
    public static final CharMatcher INVISIBLE = invisible();
    public static final CharMatcher SINGLE_WIDTH = singleWidth();
    public static final CharMatcher ANY = any();
    public static final CharMatcher NONE = none();

    public abstract boolean matches(char c2);

    public static CharMatcher any() {
        return b.a;
    }

    public static CharMatcher none() {
        return x.a;
    }

    public static CharMatcher whitespace() {
        return ab.b;
    }

    public static CharMatcher breakingWhitespace() {
        return f.a;
    }

    public static CharMatcher ascii() {
        return d.a;
    }

    public static CharMatcher digit() {
        return g.a;
    }

    public static CharMatcher javaDigit() {
        return o.a;
    }

    public static CharMatcher javaLetter() {
        return q.a;
    }

    public static CharMatcher javaLetterOrDigit() {
        return r.a;
    }

    public static CharMatcher javaUpperCase() {
        return t.a;
    }

    public static CharMatcher javaLowerCase() {
        return s.a;
    }

    public static CharMatcher javaIsoControl() {
        return p.a;
    }

    public static CharMatcher invisible() {
        return k.a;
    }

    public static CharMatcher singleWidth() {
        return aa.a;
    }

    public static CharMatcher is(char c2) {
        return new l(c2);
    }

    public static CharMatcher isNot(char c2) {
        return new n(c2);
    }

    public static CharMatcher anyOf(CharSequence charSequence) {
        switch (charSequence.length()) {
            case 0:
                return none();
            case 1:
                return is(charSequence.charAt(0));
            case 2:
                return a(charSequence.charAt(0), charSequence.charAt(1));
            default:
                return new c(charSequence);
        }
    }

    public static CharMatcher noneOf(CharSequence charSequence) {
        return anyOf(charSequence).negate();
    }

    public static CharMatcher inRange(char c2, char c3) {
        return new j(c2, c3);
    }

    public static CharMatcher forPredicate(Predicate<? super Character> predicate) {
        return predicate instanceof CharMatcher ? (CharMatcher) predicate : new i(predicate);
    }

    protected CharMatcher() {
    }

    public CharMatcher negate() {
        return new v(this);
    }

    public CharMatcher and(CharMatcher charMatcher) {
        return new a(this, charMatcher);
    }

    public CharMatcher or(CharMatcher charMatcher) {
        return new y(this, charMatcher);
    }

    public CharMatcher precomputed() {
        return gu.a(this);
    }

    @GwtIncompatible("java.util.BitSet")
    public CharMatcher a() {
        String strConcat;
        BitSet bitSet = new BitSet();
        a(bitSet);
        int iCardinality = bitSet.cardinality();
        if (iCardinality * 2 <= 65536) {
            return a(iCardinality, bitSet, toString());
        }
        bitSet.flip(0, 65536);
        int i2 = 65536 - iCardinality;
        final String string = toString();
        if (string.endsWith(".negate()")) {
            strConcat = string.substring(0, string.length() - ".negate()".length());
        } else {
            String strValueOf = String.valueOf(string);
            String strValueOf2 = String.valueOf(".negate()");
            strConcat = strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf);
        }
        return new w(a(i2, bitSet, strConcat)) { // from class: com.google.common.base.CharMatcher.1
            @Override // com.google.common.base.CharMatcher.v, com.google.common.base.CharMatcher
            public String toString() {
                return string;
            }
        };
    }

    @GwtIncompatible("java.util.BitSet")
    private static CharMatcher a(int i2, BitSet bitSet, String str) {
        switch (i2) {
            case 0:
                return none();
            case 1:
                return is((char) bitSet.nextSetBit(0));
            case 2:
                char cNextSetBit = (char) bitSet.nextSetBit(0);
                return a(cNextSetBit, (char) bitSet.nextSetBit(cNextSetBit + 1));
            default:
                return a(i2, bitSet.length()) ? gw.a(bitSet, str) : new e(bitSet, str);
        }
    }

    @GwtIncompatible("SmallCharMatcher")
    private static boolean a(int i2, int i3) {
        return i2 <= 1023 && i3 > (i2 * 4) * 16;
    }

    @GwtIncompatible("java.util.BitSet")
    public void a(BitSet bitSet) {
        for (int i2 = SupportMenu.USER_MASK; i2 >= 0; i2--) {
            if (matches((char) i2)) {
                bitSet.set(i2);
            }
        }
    }

    public boolean matchesAnyOf(CharSequence charSequence) {
        return !matchesNoneOf(charSequence);
    }

    public boolean matchesAllOf(CharSequence charSequence) {
        for (int length = charSequence.length() - 1; length >= 0; length--) {
            if (!matches(charSequence.charAt(length))) {
                return false;
            }
        }
        return true;
    }

    public boolean matchesNoneOf(CharSequence charSequence) {
        return indexIn(charSequence) == -1;
    }

    public int indexIn(CharSequence charSequence) {
        return indexIn(charSequence, 0);
    }

    public int indexIn(CharSequence charSequence, int i2) {
        int length = charSequence.length();
        Preconditions.checkPositionIndex(i2, length);
        for (int i3 = i2; i3 < length; i3++) {
            if (matches(charSequence.charAt(i3))) {
                return i3;
            }
        }
        return -1;
    }

    public int lastIndexIn(CharSequence charSequence) {
        for (int length = charSequence.length() - 1; length >= 0; length--) {
            if (matches(charSequence.charAt(length))) {
                return length;
            }
        }
        return -1;
    }

    public int countIn(CharSequence charSequence) {
        int i2 = 0;
        for (int i3 = 0; i3 < charSequence.length(); i3++) {
            if (matches(charSequence.charAt(i3))) {
                i2++;
            }
        }
        return i2;
    }

    @CheckReturnValue
    public String removeFrom(CharSequence charSequence) {
        String string = charSequence.toString();
        int iIndexIn = indexIn(string);
        if (iIndexIn != -1) {
            char[] charArray = string.toCharArray();
            int i2 = 1;
            while (true) {
                while (true) {
                    iIndexIn++;
                    if (iIndexIn != charArray.length) {
                        if (matches(charArray[iIndexIn])) {
                            break;
                        }
                        charArray[iIndexIn - i2] = charArray[iIndexIn];
                    } else {
                        return new String(charArray, 0, iIndexIn - i2);
                    }
                }
                i2++;
            }
        } else {
            return string;
        }
    }

    @CheckReturnValue
    public String retainFrom(CharSequence charSequence) {
        return negate().removeFrom(charSequence);
    }

    @CheckReturnValue
    public String replaceFrom(CharSequence charSequence, char c2) {
        String string = charSequence.toString();
        int iIndexIn = indexIn(string);
        if (iIndexIn != -1) {
            char[] charArray = string.toCharArray();
            charArray[iIndexIn] = c2;
            for (int i2 = iIndexIn + 1; i2 < charArray.length; i2++) {
                if (matches(charArray[i2])) {
                    charArray[i2] = c2;
                }
            }
            return new String(charArray);
        }
        return string;
    }

    @CheckReturnValue
    public String replaceFrom(CharSequence charSequence, CharSequence charSequence2) {
        int i2 = 0;
        int length = charSequence2.length();
        if (length == 0) {
            return removeFrom(charSequence);
        }
        if (length == 1) {
            return replaceFrom(charSequence, charSequence2.charAt(0));
        }
        String string = charSequence.toString();
        int iIndexIn = indexIn(string);
        if (iIndexIn == -1) {
            return string;
        }
        int length2 = string.length();
        StringBuilder sb = new StringBuilder(((length2 * 3) / 2) + 16);
        do {
            sb.append((CharSequence) string, i2, iIndexIn);
            sb.append(charSequence2);
            i2 = iIndexIn + 1;
            iIndexIn = indexIn(string, i2);
        } while (iIndexIn != -1);
        sb.append((CharSequence) string, i2, length2);
        return sb.toString();
    }

    @CheckReturnValue
    public String trimFrom(CharSequence charSequence) {
        int length = charSequence.length();
        int i2 = 0;
        while (i2 < length && matches(charSequence.charAt(i2))) {
            i2++;
        }
        int i3 = length - 1;
        while (i3 > i2 && matches(charSequence.charAt(i3))) {
            i3--;
        }
        return charSequence.subSequence(i2, i3 + 1).toString();
    }

    @CheckReturnValue
    public String trimLeadingFrom(CharSequence charSequence) {
        int length = charSequence.length();
        for (int i2 = 0; i2 < length; i2++) {
            if (!matches(charSequence.charAt(i2))) {
                return charSequence.subSequence(i2, length).toString();
            }
        }
        return "";
    }

    @CheckReturnValue
    public String trimTrailingFrom(CharSequence charSequence) {
        for (int length = charSequence.length() - 1; length >= 0; length--) {
            if (!matches(charSequence.charAt(length))) {
                return charSequence.subSequence(0, length + 1).toString();
            }
        }
        return "";
    }

    @CheckReturnValue
    public String collapseFrom(CharSequence charSequence, char c2) {
        int length = charSequence.length();
        int i2 = 0;
        while (i2 < length) {
            char cCharAt = charSequence.charAt(i2);
            if (matches(cCharAt)) {
                if (cCharAt == c2 && (i2 == length - 1 || !matches(charSequence.charAt(i2 + 1)))) {
                    i2++;
                } else {
                    return a(charSequence, i2 + 1, length, c2, new StringBuilder(length).append(charSequence.subSequence(0, i2)).append(c2), true);
                }
            }
            i2++;
        }
        return charSequence.toString();
    }

    @CheckReturnValue
    public String trimAndCollapseFrom(CharSequence charSequence, char c2) {
        int length = charSequence.length();
        int i2 = length - 1;
        int i3 = 0;
        while (i3 < length && matches(charSequence.charAt(i3))) {
            i3++;
        }
        while (i2 > i3 && matches(charSequence.charAt(i2))) {
            i2--;
        }
        if (i3 == 0 && i2 == length - 1) {
            return collapseFrom(charSequence, c2);
        }
        return a(charSequence, i3, i2 + 1, c2, new StringBuilder((i2 + 1) - i3), false);
    }

    private String a(CharSequence charSequence, int i2, int i3, char c2, StringBuilder sb, boolean z2) {
        boolean z3 = z2;
        while (i2 < i3) {
            char cCharAt = charSequence.charAt(i2);
            if (matches(cCharAt)) {
                if (!z3) {
                    sb.append(c2);
                    z3 = true;
                }
            } else {
                sb.append(cCharAt);
                z3 = false;
            }
            i2++;
        }
        return sb.toString();
    }

    @Override // com.google.common.base.Predicate
    @Deprecated
    public boolean apply(Character ch) {
        return matches(ch.charValue());
    }

    public String toString() {
        return super.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String b(char c2) {
        char[] cArr = {'\\', 'u', 0, 0, 0, 0};
        for (int i2 = 0; i2 < 4; i2++) {
            cArr[5 - i2] = "0123456789ABCDEF".charAt(c2 & 15);
            c2 = (char) (c2 >> 4);
        }
        return String.copyValueOf(cArr);
    }

    static abstract class h extends CharMatcher {
        h() {
        }

        @Override // com.google.common.base.CharMatcher, com.google.common.base.Predicate
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.common.base.CharMatcher
        public final CharMatcher precomputed() {
            return this;
        }

        @Override // com.google.common.base.CharMatcher
        public CharMatcher negate() {
            return new w(this);
        }
    }

    public static abstract class u extends h {
        private final String a;

        protected u(String str) {
            this.a = (String) Preconditions.checkNotNull(str);
        }

        @Override // com.google.common.base.CharMatcher
        public final String toString() {
            return this.a;
        }
    }

    static class w extends v {
        w(CharMatcher charMatcher) {
            super(charMatcher);
        }

        @Override // com.google.common.base.CharMatcher
        public final CharMatcher precomputed() {
            return this;
        }
    }

    @GwtIncompatible("java.util.BitSet")
    static final class e extends u {
        private final BitSet a;

        private e(BitSet bitSet, String str) {
            super(str);
            this.a = bitSet.length() + 64 < bitSet.size() ? (BitSet) bitSet.clone() : bitSet;
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            return this.a.get(c);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.base.CharMatcher
        public void a(BitSet bitSet) {
            bitSet.or(this.a);
        }
    }

    static final class b extends u {
        static final b a = new b();

        private b() {
            super("CharMatcher.any()");
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            return true;
        }

        @Override // com.google.common.base.CharMatcher
        public int indexIn(CharSequence charSequence) {
            return charSequence.length() == 0 ? -1 : 0;
        }

        @Override // com.google.common.base.CharMatcher
        public int indexIn(CharSequence charSequence, int i) {
            int length = charSequence.length();
            Preconditions.checkPositionIndex(i, length);
            if (i == length) {
                return -1;
            }
            return i;
        }

        @Override // com.google.common.base.CharMatcher
        public int lastIndexIn(CharSequence charSequence) {
            return charSequence.length() - 1;
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matchesAllOf(CharSequence charSequence) {
            Preconditions.checkNotNull(charSequence);
            return true;
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matchesNoneOf(CharSequence charSequence) {
            return charSequence.length() == 0;
        }

        @Override // com.google.common.base.CharMatcher
        public String removeFrom(CharSequence charSequence) {
            Preconditions.checkNotNull(charSequence);
            return "";
        }

        @Override // com.google.common.base.CharMatcher
        public String replaceFrom(CharSequence charSequence, char c) {
            char[] cArr = new char[charSequence.length()];
            Arrays.fill(cArr, c);
            return new String(cArr);
        }

        @Override // com.google.common.base.CharMatcher
        public String replaceFrom(CharSequence charSequence, CharSequence charSequence2) {
            StringBuilder sb = new StringBuilder(charSequence.length() * charSequence2.length());
            for (int i = 0; i < charSequence.length(); i++) {
                sb.append(charSequence2);
            }
            return sb.toString();
        }

        @Override // com.google.common.base.CharMatcher
        public String collapseFrom(CharSequence charSequence, char c) {
            return charSequence.length() == 0 ? "" : String.valueOf(c);
        }

        @Override // com.google.common.base.CharMatcher
        public String trimFrom(CharSequence charSequence) {
            Preconditions.checkNotNull(charSequence);
            return "";
        }

        @Override // com.google.common.base.CharMatcher
        public int countIn(CharSequence charSequence) {
            return charSequence.length();
        }

        @Override // com.google.common.base.CharMatcher
        public CharMatcher and(CharMatcher charMatcher) {
            return (CharMatcher) Preconditions.checkNotNull(charMatcher);
        }

        @Override // com.google.common.base.CharMatcher
        public CharMatcher or(CharMatcher charMatcher) {
            Preconditions.checkNotNull(charMatcher);
            return this;
        }

        @Override // com.google.common.base.CharMatcher.h, com.google.common.base.CharMatcher
        public CharMatcher negate() {
            return none();
        }
    }

    static final class x extends u {
        static final x a = new x();

        private x() {
            super("CharMatcher.none()");
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            return false;
        }

        @Override // com.google.common.base.CharMatcher
        public int indexIn(CharSequence charSequence) {
            Preconditions.checkNotNull(charSequence);
            return -1;
        }

        @Override // com.google.common.base.CharMatcher
        public int indexIn(CharSequence charSequence, int i) {
            Preconditions.checkPositionIndex(i, charSequence.length());
            return -1;
        }

        @Override // com.google.common.base.CharMatcher
        public int lastIndexIn(CharSequence charSequence) {
            Preconditions.checkNotNull(charSequence);
            return -1;
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matchesAllOf(CharSequence charSequence) {
            return charSequence.length() == 0;
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matchesNoneOf(CharSequence charSequence) {
            Preconditions.checkNotNull(charSequence);
            return true;
        }

        @Override // com.google.common.base.CharMatcher
        public String removeFrom(CharSequence charSequence) {
            return charSequence.toString();
        }

        @Override // com.google.common.base.CharMatcher
        public String replaceFrom(CharSequence charSequence, char c) {
            return charSequence.toString();
        }

        @Override // com.google.common.base.CharMatcher
        public String replaceFrom(CharSequence charSequence, CharSequence charSequence2) {
            Preconditions.checkNotNull(charSequence2);
            return charSequence.toString();
        }

        @Override // com.google.common.base.CharMatcher
        public String collapseFrom(CharSequence charSequence, char c) {
            return charSequence.toString();
        }

        @Override // com.google.common.base.CharMatcher
        public String trimFrom(CharSequence charSequence) {
            return charSequence.toString();
        }

        @Override // com.google.common.base.CharMatcher
        public String trimLeadingFrom(CharSequence charSequence) {
            return charSequence.toString();
        }

        @Override // com.google.common.base.CharMatcher
        public String trimTrailingFrom(CharSequence charSequence) {
            return charSequence.toString();
        }

        @Override // com.google.common.base.CharMatcher
        public int countIn(CharSequence charSequence) {
            Preconditions.checkNotNull(charSequence);
            return 0;
        }

        @Override // com.google.common.base.CharMatcher
        public CharMatcher and(CharMatcher charMatcher) {
            Preconditions.checkNotNull(charMatcher);
            return this;
        }

        @Override // com.google.common.base.CharMatcher
        public CharMatcher or(CharMatcher charMatcher) {
            return (CharMatcher) Preconditions.checkNotNull(charMatcher);
        }

        @Override // com.google.common.base.CharMatcher.h, com.google.common.base.CharMatcher
        public CharMatcher negate() {
            return any();
        }
    }

    @VisibleForTesting
    static final class ab extends u {
        static final int a = Integer.numberOfLeadingZeros("\u2002\u3000\r\u0085\u200a\u2005\u2000\u3000\u2029\u000b\u3000\u2008\u2003\u205f\u3000\u1680\t \u2006\u2001  \f\u2009\u3000\u2004\u3000\u3000\u2028\n \u3000".length() - 1);
        static final ab b = new ab();

        ab() {
            super("CharMatcher.whitespace()");
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            return "\u2002\u3000\r\u0085\u200a\u2005\u2000\u3000\u2029\u000b\u3000\u2008\u2003\u205f\u3000\u1680\t \u2006\u2001  \f\u2009\u3000\u2004\u3000\u3000\u2028\n \u3000".charAt((48906 * c) >>> a) == c;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.base.CharMatcher
        @GwtIncompatible("java.util.BitSet")
        public void a(BitSet bitSet) {
            for (int i = 0; i < "\u2002\u3000\r\u0085\u200a\u2005\u2000\u3000\u2029\u000b\u3000\u2008\u2003\u205f\u3000\u1680\t \u2006\u2001  \f\u2009\u3000\u2004\u3000\u3000\u2028\n \u3000".length(); i++) {
                bitSet.set("\u2002\u3000\r\u0085\u200a\u2005\u2000\u3000\u2029\u000b\u3000\u2008\u2003\u205f\u3000\u1680\t \u2006\u2001  \f\u2009\u3000\u2004\u3000\u3000\u2028\n \u3000".charAt(i));
            }
        }
    }

    static final class f extends CharMatcher {
        static final CharMatcher a = new f();

        private f() {
        }

        @Override // com.google.common.base.CharMatcher, com.google.common.base.Predicate
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            switch (c) {
                case '\t':
                case '\n':
                case 11:
                case '\f':
                case '\r':
                case ' ':
                case 133:
                case 5760:
                case 8232:
                case 8233:
                case 8287:
                case 12288:
                    break;
                case 8199:
                    break;
                default:
                    if (c < 8192 || c > 8202) {
                    }
                    break;
            }
            return true;
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            return "CharMatcher.breakingWhitespace()";
        }
    }

    static final class d extends u {
        static final d a = new d();

        d() {
            super("CharMatcher.ascii()");
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            return c <= 127;
        }
    }

    static class z extends CharMatcher {
        private final String a;
        private final char[] b;
        private final char[] c;

        @Override // com.google.common.base.CharMatcher, com.google.common.base.Predicate
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        z(String str, char[] cArr, char[] cArr2) {
            this.a = str;
            this.b = cArr;
            this.c = cArr2;
            Preconditions.checkArgument(cArr.length == cArr2.length);
            for (int i = 0; i < cArr.length; i++) {
                Preconditions.checkArgument(cArr[i] <= cArr2[i]);
                if (i + 1 < cArr.length) {
                    Preconditions.checkArgument(cArr2[i] < cArr[i + 1]);
                }
            }
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            int iBinarySearch = Arrays.binarySearch(this.b, c);
            if (iBinarySearch >= 0) {
                return true;
            }
            int i = (iBinarySearch ^ (-1)) - 1;
            return i >= 0 && c <= this.c[i];
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            return this.a;
        }
    }

    static final class g extends z {
        static final g a = new g();

        private static char[] b() {
            return "0٠۰߀०০੦૦୦௦౦೦൦๐໐༠၀႐០᠐᥆᧐᭐᮰᱀᱐꘠꣐꤀꩐０".toCharArray();
        }

        private static char[] c() {
            char[] cArr = new char["0٠۰߀०০੦૦୦௦౦೦൦๐໐༠၀႐០᠐᥆᧐᭐᮰᱀᱐꘠꣐꤀꩐０".length()];
            for (int i = 0; i < "0٠۰߀०০੦૦୦௦౦೦൦๐໐༠၀႐០᠐᥆᧐᭐᮰᱀᱐꘠꣐꤀꩐０".length(); i++) {
                cArr[i] = (char) ("0٠۰߀०০੦૦୦௦౦೦൦๐໐༠၀႐០᠐᥆᧐᭐᮰᱀᱐꘠꣐꤀꩐０".charAt(i) + '\t');
            }
            return cArr;
        }

        private g() {
            super("CharMatcher.digit()", b(), c());
        }
    }

    static final class o extends CharMatcher {
        static final o a = new o();

        private o() {
        }

        @Override // com.google.common.base.CharMatcher, com.google.common.base.Predicate
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            return Character.isDigit(c);
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            return "CharMatcher.javaDigit()";
        }
    }

    static final class q extends CharMatcher {
        static final q a = new q();

        private q() {
        }

        @Override // com.google.common.base.CharMatcher, com.google.common.base.Predicate
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            return Character.isLetter(c);
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            return "CharMatcher.javaLetter()";
        }
    }

    static final class r extends CharMatcher {
        static final r a = new r();

        private r() {
        }

        @Override // com.google.common.base.CharMatcher, com.google.common.base.Predicate
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            return Character.isLetterOrDigit(c);
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            return "CharMatcher.javaLetterOrDigit()";
        }
    }

    static final class t extends CharMatcher {
        static final t a = new t();

        private t() {
        }

        @Override // com.google.common.base.CharMatcher, com.google.common.base.Predicate
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            return Character.isUpperCase(c);
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            return "CharMatcher.javaUpperCase()";
        }
    }

    static final class s extends CharMatcher {
        static final s a = new s();

        private s() {
        }

        @Override // com.google.common.base.CharMatcher, com.google.common.base.Predicate
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            return Character.isLowerCase(c);
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            return "CharMatcher.javaLowerCase()";
        }
    }

    static final class p extends u {
        static final p a = new p();

        private p() {
            super("CharMatcher.javaIsoControl()");
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            return c <= 31 || (c >= 127 && c <= 159);
        }
    }

    static final class k extends z {
        static final k a = new k();

        private k() {
            super("CharMatcher.invisible()", "\u0000\u007f\u00ad\u0600\u061c\u06dd\u070f\u1680\u180e\u2000\u2028\u205f\u2066\u2067\u2068\u2069\u206a\u3000\ud800\ufeff\ufff9\ufffa".toCharArray(), "  \u00ad\u0604\u061c\u06dd\u070f\u1680\u180e\u200f \u2064\u2066\u2067\u2068\u2069\u206f\u3000\uf8ff\ufeff\ufff9\ufffb".toCharArray());
        }
    }

    static final class aa extends z {
        static final aa a = new aa();

        private aa() {
            super("CharMatcher.singleWidth()", "\u0000־א׳\u0600ݐ\u0e00Ḁ℀ﭐﹰ｡".toCharArray(), "ӹ־ת״ۿݿ\u0e7f₯℺﷿\ufeffￜ".toCharArray());
        }
    }

    static class v extends CharMatcher {
        final CharMatcher c;

        @Override // com.google.common.base.CharMatcher, com.google.common.base.Predicate
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        v(CharMatcher charMatcher) {
            this.c = (CharMatcher) Preconditions.checkNotNull(charMatcher);
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            return !this.c.matches(c);
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matchesAllOf(CharSequence charSequence) {
            return this.c.matchesNoneOf(charSequence);
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matchesNoneOf(CharSequence charSequence) {
            return this.c.matchesAllOf(charSequence);
        }

        @Override // com.google.common.base.CharMatcher
        public int countIn(CharSequence charSequence) {
            return charSequence.length() - this.c.countIn(charSequence);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.base.CharMatcher
        @GwtIncompatible("java.util.BitSet")
        public void a(BitSet bitSet) {
            BitSet bitSet2 = new BitSet();
            this.c.a(bitSet2);
            bitSet2.flip(0, 65536);
            bitSet.or(bitSet2);
        }

        @Override // com.google.common.base.CharMatcher
        public CharMatcher negate() {
            return this.c;
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            String strValueOf = String.valueOf(this.c);
            return new StringBuilder(String.valueOf(strValueOf).length() + 9).append(strValueOf).append(".negate()").toString();
        }
    }

    static final class a extends CharMatcher {
        final CharMatcher a;
        final CharMatcher b;

        @Override // com.google.common.base.CharMatcher, com.google.common.base.Predicate
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        a(CharMatcher charMatcher, CharMatcher charMatcher2) {
            this.a = (CharMatcher) Preconditions.checkNotNull(charMatcher);
            this.b = (CharMatcher) Preconditions.checkNotNull(charMatcher2);
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            return this.a.matches(c) && this.b.matches(c);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.base.CharMatcher
        @GwtIncompatible("java.util.BitSet")
        public void a(BitSet bitSet) {
            BitSet bitSet2 = new BitSet();
            this.a.a(bitSet2);
            BitSet bitSet3 = new BitSet();
            this.b.a(bitSet3);
            bitSet2.and(bitSet3);
            bitSet.or(bitSet2);
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            String strValueOf = String.valueOf(this.a);
            String strValueOf2 = String.valueOf(this.b);
            return new StringBuilder(String.valueOf(strValueOf).length() + 19 + String.valueOf(strValueOf2).length()).append("CharMatcher.and(").append(strValueOf).append(", ").append(strValueOf2).append(")").toString();
        }
    }

    static final class y extends CharMatcher {
        final CharMatcher a;
        final CharMatcher b;

        @Override // com.google.common.base.CharMatcher, com.google.common.base.Predicate
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        y(CharMatcher charMatcher, CharMatcher charMatcher2) {
            this.a = (CharMatcher) Preconditions.checkNotNull(charMatcher);
            this.b = (CharMatcher) Preconditions.checkNotNull(charMatcher2);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.base.CharMatcher
        @GwtIncompatible("java.util.BitSet")
        public void a(BitSet bitSet) {
            this.a.a(bitSet);
            this.b.a(bitSet);
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            return this.a.matches(c) || this.b.matches(c);
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            String strValueOf = String.valueOf(this.a);
            String strValueOf2 = String.valueOf(this.b);
            return new StringBuilder(String.valueOf(strValueOf).length() + 18 + String.valueOf(strValueOf2).length()).append("CharMatcher.or(").append(strValueOf).append(", ").append(strValueOf2).append(")").toString();
        }
    }

    static final class l extends h {
        private final char a;

        l(char c) {
            this.a = c;
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            return c == this.a;
        }

        @Override // com.google.common.base.CharMatcher
        public String replaceFrom(CharSequence charSequence, char c) {
            return charSequence.toString().replace(this.a, c);
        }

        @Override // com.google.common.base.CharMatcher
        public CharMatcher and(CharMatcher charMatcher) {
            return charMatcher.matches(this.a) ? this : none();
        }

        @Override // com.google.common.base.CharMatcher
        public CharMatcher or(CharMatcher charMatcher) {
            return charMatcher.matches(this.a) ? charMatcher : super.or(charMatcher);
        }

        @Override // com.google.common.base.CharMatcher.h, com.google.common.base.CharMatcher
        public CharMatcher negate() {
            return isNot(this.a);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.base.CharMatcher
        @GwtIncompatible("java.util.BitSet")
        public void a(BitSet bitSet) {
            bitSet.set(this.a);
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            String strB = CharMatcher.b(this.a);
            return new StringBuilder(String.valueOf(strB).length() + 18).append("CharMatcher.is('").append(strB).append("')").toString();
        }
    }

    static final class n extends h {
        private final char a;

        n(char c) {
            this.a = c;
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            return c != this.a;
        }

        @Override // com.google.common.base.CharMatcher
        public CharMatcher and(CharMatcher charMatcher) {
            return charMatcher.matches(this.a) ? super.and(charMatcher) : charMatcher;
        }

        @Override // com.google.common.base.CharMatcher
        public CharMatcher or(CharMatcher charMatcher) {
            return charMatcher.matches(this.a) ? any() : this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.base.CharMatcher
        @GwtIncompatible("java.util.BitSet")
        public void a(BitSet bitSet) {
            bitSet.set(0, this.a);
            bitSet.set(this.a + 1, 65536);
        }

        @Override // com.google.common.base.CharMatcher.h, com.google.common.base.CharMatcher
        public CharMatcher negate() {
            return is(this.a);
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            String strB = CharMatcher.b(this.a);
            return new StringBuilder(String.valueOf(strB).length() + 21).append("CharMatcher.isNot('").append(strB).append("')").toString();
        }
    }

    private static m a(char c2, char c3) {
        return new m(c2, c3);
    }

    static final class m extends h {
        private final char a;
        private final char b;

        m(char c, char c2) {
            this.a = c;
            this.b = c2;
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            return c == this.a || c == this.b;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.base.CharMatcher
        @GwtIncompatible("java.util.BitSet")
        public void a(BitSet bitSet) {
            bitSet.set(this.a);
            bitSet.set(this.b);
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            String strB = CharMatcher.b(this.a);
            String strB2 = CharMatcher.b(this.b);
            return new StringBuilder(String.valueOf(strB).length() + 21 + String.valueOf(strB2).length()).append("CharMatcher.anyOf(\"").append(strB).append(strB2).append("\")").toString();
        }
    }

    static final class c extends CharMatcher {
        private final char[] a;

        @Override // com.google.common.base.CharMatcher, com.google.common.base.Predicate
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        public c(CharSequence charSequence) {
            this.a = charSequence.toString().toCharArray();
            Arrays.sort(this.a);
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            return Arrays.binarySearch(this.a, c) >= 0;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.base.CharMatcher
        @GwtIncompatible("java.util.BitSet")
        public void a(BitSet bitSet) {
            for (char c : this.a) {
                bitSet.set(c);
            }
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            StringBuilder sb = new StringBuilder("CharMatcher.anyOf(\"");
            for (char c : this.a) {
                sb.append(CharMatcher.b(c));
            }
            sb.append("\")");
            return sb.toString();
        }
    }

    static final class j extends h {
        private final char a;
        private final char b;

        j(char c, char c2) {
            Preconditions.checkArgument(c2 >= c);
            this.a = c;
            this.b = c2;
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            return this.a <= c && c <= this.b;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.base.CharMatcher
        @GwtIncompatible("java.util.BitSet")
        public void a(BitSet bitSet) {
            bitSet.set(this.a, this.b + 1);
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            String strB = CharMatcher.b(this.a);
            String strB2 = CharMatcher.b(this.b);
            return new StringBuilder(String.valueOf(strB).length() + 27 + String.valueOf(strB2).length()).append("CharMatcher.inRange('").append(strB).append("', '").append(strB2).append("')").toString();
        }
    }

    static final class i extends CharMatcher {
        private final Predicate<? super Character> a;

        i(Predicate<? super Character> predicate) {
            this.a = (Predicate) Preconditions.checkNotNull(predicate);
        }

        @Override // com.google.common.base.CharMatcher
        public boolean matches(char c) {
            return this.a.apply(Character.valueOf(c));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.common.base.CharMatcher, com.google.common.base.Predicate
        public boolean apply(Character ch) {
            return this.a.apply(Preconditions.checkNotNull(ch));
        }

        @Override // com.google.common.base.CharMatcher
        public String toString() {
            String strValueOf = String.valueOf(this.a);
            return new StringBuilder(String.valueOf(strValueOf).length() + 26).append("CharMatcher.forPredicate(").append(strValueOf).append(")").toString();
        }
    }
}
