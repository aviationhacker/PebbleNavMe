package android.support.v4.text;

import com.google.common.base.Ascii;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class BidiFormatter {
    private static TextDirectionHeuristicCompat a = TextDirectionHeuristicsCompat.FIRSTSTRONG_LTR;
    private static final String b = Character.toString(8206);
    private static final String c = Character.toString(8207);
    private static final BidiFormatter d = new BidiFormatter(false, 2, a);
    private static final BidiFormatter e = new BidiFormatter(true, 2, a);
    private final boolean f;
    private final int g;
    private final TextDirectionHeuristicCompat h;

    public static final class Builder {
        private boolean a;
        private int b;
        private TextDirectionHeuristicCompat c;

        public Builder() {
            a(BidiFormatter.b(Locale.getDefault()));
        }

        public Builder(boolean z) {
            a(z);
        }

        public Builder(Locale locale) {
            a(BidiFormatter.b(locale));
        }

        private void a(boolean z) {
            this.a = z;
            this.c = BidiFormatter.a;
            this.b = 2;
        }

        public Builder stereoReset(boolean z) {
            if (z) {
                this.b |= 2;
            } else {
                this.b &= -3;
            }
            return this;
        }

        public Builder setTextDirectionHeuristic(TextDirectionHeuristicCompat textDirectionHeuristicCompat) {
            this.c = textDirectionHeuristicCompat;
            return this;
        }

        private static BidiFormatter b(boolean z) {
            return z ? BidiFormatter.e : BidiFormatter.d;
        }

        public BidiFormatter build() {
            return (this.b == 2 && this.c == BidiFormatter.a) ? b(this.a) : new BidiFormatter(this.a, this.b, this.c);
        }
    }

    public static BidiFormatter getInstance() {
        return new Builder().build();
    }

    public static BidiFormatter getInstance(boolean z) {
        return new Builder(z).build();
    }

    public static BidiFormatter getInstance(Locale locale) {
        return new Builder(locale).build();
    }

    private BidiFormatter(boolean z, int i, TextDirectionHeuristicCompat textDirectionHeuristicCompat) {
        this.f = z;
        this.g = i;
        this.h = textDirectionHeuristicCompat;
    }

    public boolean isRtlContext() {
        return this.f;
    }

    public boolean getStereoReset() {
        return (this.g & 2) != 0;
    }

    private String a(String str, TextDirectionHeuristicCompat textDirectionHeuristicCompat) {
        boolean zIsRtl = textDirectionHeuristicCompat.isRtl(str, 0, str.length());
        if (!this.f && (zIsRtl || a(str) == 1)) {
            return b;
        }
        if (this.f && (!zIsRtl || a(str) == -1)) {
            return c;
        }
        return "";
    }

    private String b(String str, TextDirectionHeuristicCompat textDirectionHeuristicCompat) {
        boolean zIsRtl = textDirectionHeuristicCompat.isRtl(str, 0, str.length());
        if (!this.f && (zIsRtl || b(str) == 1)) {
            return b;
        }
        if (this.f && (!zIsRtl || b(str) == -1)) {
            return c;
        }
        return "";
    }

    public boolean isRtl(String str) {
        return this.h.isRtl(str, 0, str.length());
    }

    public String unicodeWrap(String str, TextDirectionHeuristicCompat textDirectionHeuristicCompat, boolean z) {
        if (str == null) {
            return null;
        }
        boolean zIsRtl = textDirectionHeuristicCompat.isRtl(str, 0, str.length());
        StringBuilder sb = new StringBuilder();
        if (getStereoReset() && z) {
            sb.append(b(str, zIsRtl ? TextDirectionHeuristicsCompat.RTL : TextDirectionHeuristicsCompat.LTR));
        }
        if (zIsRtl != this.f) {
            sb.append(zIsRtl ? (char) 8235 : (char) 8234);
            sb.append(str);
            sb.append((char) 8236);
        } else {
            sb.append(str);
        }
        if (z) {
            sb.append(a(str, zIsRtl ? TextDirectionHeuristicsCompat.RTL : TextDirectionHeuristicsCompat.LTR));
        }
        return sb.toString();
    }

    public String unicodeWrap(String str, TextDirectionHeuristicCompat textDirectionHeuristicCompat) {
        return unicodeWrap(str, textDirectionHeuristicCompat, true);
    }

    public String unicodeWrap(String str, boolean z) {
        return unicodeWrap(str, this.h, z);
    }

    public String unicodeWrap(String str) {
        return unicodeWrap(str, this.h, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(Locale locale) {
        return TextUtilsCompat.getLayoutDirectionFromLocale(locale) == 1;
    }

    private static int a(String str) {
        return new a(str, false).b();
    }

    private static int b(String str) {
        return new a(str, false).a();
    }

    static class a {
        private static final byte[] a = new byte[1792];
        private final String b;
        private final boolean c;
        private final int d;
        private int e;
        private char f;

        static {
            for (int i = 0; i < 1792; i++) {
                a[i] = Character.getDirectionality(i);
            }
        }

        a(String str, boolean z) {
            this.b = str;
            this.c = z;
            this.d = str.length();
        }

        int a() {
            this.e = 0;
            int i = 0;
            int i2 = 0;
            int i3 = 0;
            while (this.e < this.d && i == 0) {
                switch (c()) {
                    case 0:
                        if (i3 == 0) {
                            return -1;
                        }
                        i = i3;
                        break;
                    case 1:
                    case 2:
                        if (i3 == 0) {
                            return 1;
                        }
                        i = i3;
                        break;
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                    case 10:
                    case 11:
                    case 12:
                    case 13:
                    default:
                        i = i3;
                        break;
                    case 9:
                        break;
                    case 14:
                    case 15:
                        i3++;
                        i2 = -1;
                        break;
                    case 16:
                    case 17:
                        i3++;
                        i2 = 1;
                        break;
                    case 18:
                        i3--;
                        i2 = 0;
                        break;
                }
            }
            if (i == 0) {
                return 0;
            }
            if (i2 != 0) {
                return i2;
            }
            while (this.e > 0) {
                switch (d()) {
                    case 14:
                    case 15:
                        if (i == i3) {
                            return -1;
                        }
                        i3--;
                        break;
                        break;
                    case 16:
                    case 17:
                        if (i == i3) {
                            return 1;
                        }
                        i3--;
                        break;
                    case 18:
                        i3++;
                        break;
                }
            }
            return 0;
        }

        int b() {
            this.e = this.d;
            int i = 0;
            int i2 = 0;
            while (this.e > 0) {
                switch (d()) {
                    case 0:
                        if (i2 == 0) {
                            return -1;
                        }
                        if (i == 0) {
                            i = i2;
                        }
                        break;
                    case 1:
                    case 2:
                        if (i2 == 0) {
                            return 1;
                        }
                        if (i == 0) {
                            i = i2;
                        }
                        break;
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                    case 10:
                    case 11:
                    case 12:
                    case 13:
                    default:
                        if (i == 0) {
                            i = i2;
                        }
                        break;
                    case 9:
                        break;
                    case 14:
                    case 15:
                        if (i == i2) {
                            return -1;
                        }
                        i2--;
                        break;
                    case 16:
                    case 17:
                        if (i == i2) {
                            return 1;
                        }
                        i2--;
                        break;
                    case 18:
                        i2++;
                        break;
                }
            }
            return 0;
        }

        private static byte a(char c) {
            return c < 1792 ? a[c] : Character.getDirectionality(c);
        }

        byte c() {
            this.f = this.b.charAt(this.e);
            if (Character.isHighSurrogate(this.f)) {
                int iCodePointAt = Character.codePointAt(this.b, this.e);
                this.e += Character.charCount(iCodePointAt);
                return Character.getDirectionality(iCodePointAt);
            }
            this.e++;
            byte bA = a(this.f);
            if (this.c) {
                if (this.f == '<') {
                    return e();
                }
                if (this.f == '&') {
                    return g();
                }
                return bA;
            }
            return bA;
        }

        byte d() {
            this.f = this.b.charAt(this.e - 1);
            if (Character.isLowSurrogate(this.f)) {
                int iCodePointBefore = Character.codePointBefore(this.b, this.e);
                this.e -= Character.charCount(iCodePointBefore);
                return Character.getDirectionality(iCodePointBefore);
            }
            this.e--;
            byte bA = a(this.f);
            if (this.c) {
                if (this.f == '>') {
                    return f();
                }
                if (this.f == ';') {
                    return h();
                }
                return bA;
            }
            return bA;
        }

        private byte e() {
            int i = this.e;
            while (this.e < this.d) {
                String str = this.b;
                int i2 = this.e;
                this.e = i2 + 1;
                this.f = str.charAt(i2);
                if (this.f == '>') {
                    return Ascii.FF;
                }
                if (this.f == '\"' || this.f == '\'') {
                    char c = this.f;
                    while (this.e < this.d) {
                        String str2 = this.b;
                        int i3 = this.e;
                        this.e = i3 + 1;
                        char cCharAt = str2.charAt(i3);
                        this.f = cCharAt;
                        if (cCharAt != c) {
                        }
                    }
                }
            }
            this.e = i;
            this.f = '<';
            return (byte) 13;
        }

        private byte f() {
            int i = this.e;
            while (this.e > 0) {
                String str = this.b;
                int i2 = this.e - 1;
                this.e = i2;
                this.f = str.charAt(i2);
                if (this.f == '<') {
                    return Ascii.FF;
                }
                if (this.f == '>') {
                    break;
                }
                if (this.f == '\"' || this.f == '\'') {
                    char c = this.f;
                    while (this.e > 0) {
                        String str2 = this.b;
                        int i3 = this.e - 1;
                        this.e = i3;
                        char cCharAt = str2.charAt(i3);
                        this.f = cCharAt;
                        if (cCharAt != c) {
                        }
                    }
                }
            }
            this.e = i;
            this.f = '>';
            return (byte) 13;
        }

        private byte g() {
            while (this.e < this.d) {
                String str = this.b;
                int i = this.e;
                this.e = i + 1;
                char cCharAt = str.charAt(i);
                this.f = cCharAt;
                if (cCharAt == ';') {
                    return Ascii.FF;
                }
            }
            return Ascii.FF;
        }

        private byte h() {
            int i = this.e;
            while (this.e > 0) {
                String str = this.b;
                int i2 = this.e - 1;
                this.e = i2;
                this.f = str.charAt(i2);
                if (this.f == '&') {
                    return Ascii.FF;
                }
                if (this.f == ';') {
                    break;
                }
            }
            this.e = i;
            this.f = ';';
            return (byte) 13;
        }
    }
}
