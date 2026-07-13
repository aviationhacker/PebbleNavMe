package com.google.common.base;

import com.google.common.annotations.GwtCompatible;
import java.util.Arrays;
import javax.annotation.CheckReturnValue;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible
public final class MoreObjects {
    @CheckReturnValue
    public static <T> T firstNonNull(@Nullable T t, @Nullable T t2) {
        return t != null ? t : (T) Preconditions.checkNotNull(t2);
    }

    @CheckReturnValue
    public static ToStringHelper toStringHelper(Object obj) {
        return new ToStringHelper(obj.getClass().getSimpleName());
    }

    @CheckReturnValue
    public static ToStringHelper toStringHelper(Class<?> cls) {
        return new ToStringHelper(cls.getSimpleName());
    }

    @CheckReturnValue
    public static ToStringHelper toStringHelper(String str) {
        return new ToStringHelper(str);
    }

    public static final class ToStringHelper {
        private final String a;
        private a b;
        private a c;
        private boolean d;

        private ToStringHelper(String str) {
            this.b = new a();
            this.c = this.b;
            this.d = false;
            this.a = (String) Preconditions.checkNotNull(str);
        }

        public ToStringHelper omitNullValues() {
            this.d = true;
            return this;
        }

        public ToStringHelper add(String str, @Nullable Object obj) {
            return a(str, obj);
        }

        public ToStringHelper add(String str, boolean z) {
            return a(str, String.valueOf(z));
        }

        public ToStringHelper add(String str, char c) {
            return a(str, String.valueOf(c));
        }

        public ToStringHelper add(String str, double d) {
            return a(str, String.valueOf(d));
        }

        public ToStringHelper add(String str, float f) {
            return a(str, String.valueOf(f));
        }

        public ToStringHelper add(String str, int i) {
            return a(str, String.valueOf(i));
        }

        public ToStringHelper add(String str, long j) {
            return a(str, String.valueOf(j));
        }

        public ToStringHelper addValue(@Nullable Object obj) {
            return a(obj);
        }

        public ToStringHelper addValue(boolean z) {
            return a(String.valueOf(z));
        }

        public ToStringHelper addValue(char c) {
            return a(String.valueOf(c));
        }

        public ToStringHelper addValue(double d) {
            return a(String.valueOf(d));
        }

        public ToStringHelper addValue(float f) {
            return a(String.valueOf(f));
        }

        public ToStringHelper addValue(int i) {
            return a(String.valueOf(i));
        }

        public ToStringHelper addValue(long j) {
            return a(String.valueOf(j));
        }

        @CheckReturnValue
        public String toString() {
            boolean z = this.d;
            StringBuilder sbAppend = new StringBuilder(32).append(this.a).append('{');
            String str = "";
            for (a aVar = this.b.c; aVar != null; aVar = aVar.c) {
                Object obj = aVar.b;
                if (!z || obj != null) {
                    sbAppend.append(str);
                    str = ", ";
                    if (aVar.a != null) {
                        sbAppend.append(aVar.a).append('=');
                    }
                    if (obj != null && obj.getClass().isArray()) {
                        sbAppend.append(Arrays.deepToString(new Object[]{obj}).substring(1, r4.length() - 1));
                    } else {
                        sbAppend.append(obj);
                    }
                }
            }
            return sbAppend.append('}').toString();
        }

        private a a() {
            a aVar = new a();
            this.c.c = aVar;
            this.c = aVar;
            return aVar;
        }

        private ToStringHelper a(@Nullable Object obj) {
            a().b = obj;
            return this;
        }

        private ToStringHelper a(String str, @Nullable Object obj) {
            a aVarA = a();
            aVarA.b = obj;
            aVarA.a = (String) Preconditions.checkNotNull(str);
            return this;
        }

        static final class a {
            String a;
            Object b;
            a c;

            private a() {
            }
        }
    }

    private MoreObjects() {
    }
}
