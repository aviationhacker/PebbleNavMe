package android.support.v4.text;

import java.nio.CharBuffer;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class TextDirectionHeuristicsCompat {
    public static final TextDirectionHeuristicCompat ANYRTL_LTR;
    public static final TextDirectionHeuristicCompat FIRSTSTRONG_LTR;
    public static final TextDirectionHeuristicCompat FIRSTSTRONG_RTL;
    public static final TextDirectionHeuristicCompat LOCALE = f.a;
    public static final TextDirectionHeuristicCompat LTR;
    public static final TextDirectionHeuristicCompat RTL;

    interface c {
        int a(CharSequence charSequence, int i, int i2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        boolean z = true;
        boolean z2 = false;
        LTR = new e(null, z2);
        RTL = new e(0 == true ? 1 : 0, z);
        FIRSTSTRONG_LTR = new e(b.a, z2);
        FIRSTSTRONG_RTL = new e(b.a, z);
        ANYRTL_LTR = new e(a.a, z2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int c(int i) {
        switch (i) {
            case 0:
                return 1;
            case 1:
            case 2:
                return 0;
            default:
                return 2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int d(int i) {
        switch (i) {
            case 0:
            case 14:
            case 15:
                return 1;
            case 1:
            case 2:
            case 16:
            case 17:
                return 0;
            default:
                return 2;
        }
    }

    static abstract class d implements TextDirectionHeuristicCompat {
        private final c a;

        protected abstract boolean a();

        public d(c cVar) {
            this.a = cVar;
        }

        @Override // android.support.v4.text.TextDirectionHeuristicCompat
        public boolean isRtl(char[] cArr, int i, int i2) {
            return isRtl(CharBuffer.wrap(cArr), i, i2);
        }

        @Override // android.support.v4.text.TextDirectionHeuristicCompat
        public boolean isRtl(CharSequence charSequence, int i, int i2) {
            if (charSequence == null || i < 0 || i2 < 0 || charSequence.length() - i2 < i) {
                throw new IllegalArgumentException();
            }
            return this.a == null ? a() : a(charSequence, i, i2);
        }

        private boolean a(CharSequence charSequence, int i, int i2) {
            switch (this.a.a(charSequence, i, i2)) {
                case 0:
                    return true;
                case 1:
                    return false;
                default:
                    return a();
            }
        }
    }

    static class e extends d {
        private final boolean a;

        private e(c cVar, boolean z) {
            super(cVar);
            this.a = z;
        }

        @Override // android.support.v4.text.TextDirectionHeuristicsCompat.d
        protected boolean a() {
            return this.a;
        }
    }

    static class b implements c {
        public static final b a = new b();

        @Override // android.support.v4.text.TextDirectionHeuristicsCompat.c
        public int a(CharSequence charSequence, int i, int i2) {
            int i3 = i + i2;
            int iD = 2;
            while (i < i3 && iD == 2) {
                iD = TextDirectionHeuristicsCompat.d(Character.getDirectionality(charSequence.charAt(i)));
                i++;
            }
            return iD;
        }

        private b() {
        }
    }

    static class a implements c {
        public static final a a = new a(true);
        public static final a b = new a(false);
        private final boolean c;

        @Override // android.support.v4.text.TextDirectionHeuristicsCompat.c
        public int a(CharSequence charSequence, int i, int i2) {
            int i3 = i + i2;
            boolean z = false;
            while (i < i3) {
                switch (TextDirectionHeuristicsCompat.c(Character.getDirectionality(charSequence.charAt(i)))) {
                    case 0:
                        if (this.c) {
                            return 0;
                        }
                        z = true;
                        break;
                    case 1:
                        if (!this.c) {
                            return 1;
                        }
                        z = true;
                        break;
                        break;
                }
                i++;
            }
            if (z) {
                return !this.c ? 0 : 1;
            }
            return 2;
        }

        private a(boolean z) {
            this.c = z;
        }
    }

    static class f extends d {
        public static final f a = new f();

        public f() {
            super(null);
        }

        @Override // android.support.v4.text.TextDirectionHeuristicsCompat.d
        protected boolean a() {
            return TextUtilsCompat.getLayoutDirectionFromLocale(Locale.getDefault()) == 1;
        }
    }
}
