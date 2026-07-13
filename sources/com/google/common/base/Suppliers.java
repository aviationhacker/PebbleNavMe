package com.google.common.base;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.VisibleForTesting;
import defpackage.gu;
import java.io.Serializable;
import java.util.concurrent.TimeUnit;
import javax.annotation.CheckReturnValue;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible
@CheckReturnValue
public final class Suppliers {

    interface d extends Function {
    }

    private Suppliers() {
    }

    public static <F, T> Supplier<T> compose(Function<? super F, T> function, Supplier<F> supplier) {
        Preconditions.checkNotNull(function);
        Preconditions.checkNotNull(supplier);
        return new c(function, supplier);
    }

    static class c<F, T> implements Supplier<T>, Serializable {
        private static final long serialVersionUID = 0;
        final Function<? super F, T> a;
        final Supplier<F> b;

        c(Function<? super F, T> function, Supplier<F> supplier) {
            this.a = function;
            this.b = supplier;
        }

        @Override // com.google.common.base.Supplier
        public T get() {
            return this.a.apply(this.b.get());
        }

        public boolean equals(@Nullable Object obj) {
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return this.a.equals(cVar.a) && this.b.equals(cVar.b);
        }

        public int hashCode() {
            return Objects.hashCode(this.a, this.b);
        }

        public String toString() {
            String strValueOf = String.valueOf(this.a);
            String strValueOf2 = String.valueOf(this.b);
            return new StringBuilder(String.valueOf(strValueOf).length() + 21 + String.valueOf(strValueOf2).length()).append("Suppliers.compose(").append(strValueOf).append(", ").append(strValueOf2).append(")").toString();
        }
    }

    public static <T> Supplier<T> memoize(Supplier<T> supplier) {
        if (!(supplier instanceof b)) {
            return new b((Supplier) Preconditions.checkNotNull(supplier));
        }
        return supplier;
    }

    @VisibleForTesting
    static class b<T> implements Supplier<T>, Serializable {
        private static final long serialVersionUID = 0;
        final Supplier<T> a;
        volatile transient boolean b;
        transient T c;

        b(Supplier<T> supplier) {
            this.a = supplier;
        }

        @Override // com.google.common.base.Supplier
        public T get() {
            if (!this.b) {
                synchronized (this) {
                    if (!this.b) {
                        T t = this.a.get();
                        this.c = t;
                        this.b = true;
                        return t;
                    }
                }
            }
            return this.c;
        }

        public String toString() {
            String strValueOf = String.valueOf(this.a);
            return new StringBuilder(String.valueOf(strValueOf).length() + 19).append("Suppliers.memoize(").append(strValueOf).append(")").toString();
        }
    }

    public static <T> Supplier<T> memoizeWithExpiration(Supplier<T> supplier, long j, TimeUnit timeUnit) {
        return new a(supplier, j, timeUnit);
    }

    @VisibleForTesting
    static class a<T> implements Supplier<T>, Serializable {
        private static final long serialVersionUID = 0;
        final Supplier<T> a;
        final long b;
        volatile transient T c;
        volatile transient long d;

        a(Supplier<T> supplier, long j, TimeUnit timeUnit) {
            this.a = (Supplier) Preconditions.checkNotNull(supplier);
            this.b = timeUnit.toNanos(j);
            Preconditions.checkArgument(j > 0);
        }

        @Override // com.google.common.base.Supplier
        public T get() {
            long j = this.d;
            long jA = gu.a();
            if (j == 0 || jA - j >= 0) {
                synchronized (this) {
                    if (j == this.d) {
                        T t = this.a.get();
                        this.c = t;
                        long j2 = jA + this.b;
                        if (j2 == 0) {
                            j2 = 1;
                        }
                        this.d = j2;
                        return t;
                    }
                }
            }
            return this.c;
        }

        public String toString() {
            String strValueOf = String.valueOf(this.a);
            return new StringBuilder(String.valueOf(strValueOf).length() + 62).append("Suppliers.memoizeWithExpiration(").append(strValueOf).append(", ").append(this.b).append(", NANOS)").toString();
        }
    }

    public static <T> Supplier<T> ofInstance(@Nullable T t) {
        return new f(t);
    }

    static class f<T> implements Supplier<T>, Serializable {
        private static final long serialVersionUID = 0;
        final T a;

        f(@Nullable T t) {
            this.a = t;
        }

        @Override // com.google.common.base.Supplier
        public T get() {
            return this.a;
        }

        public boolean equals(@Nullable Object obj) {
            if (obj instanceof f) {
                return Objects.equal(this.a, ((f) obj).a);
            }
            return false;
        }

        public int hashCode() {
            return Objects.hashCode(this.a);
        }

        public String toString() {
            String strValueOf = String.valueOf(this.a);
            return new StringBuilder(String.valueOf(strValueOf).length() + 22).append("Suppliers.ofInstance(").append(strValueOf).append(")").toString();
        }
    }

    public static <T> Supplier<T> synchronizedSupplier(Supplier<T> supplier) {
        return new g((Supplier) Preconditions.checkNotNull(supplier));
    }

    static class g<T> implements Supplier<T>, Serializable {
        private static final long serialVersionUID = 0;
        final Supplier<T> a;

        g(Supplier<T> supplier) {
            this.a = supplier;
        }

        @Override // com.google.common.base.Supplier
        public T get() {
            T t;
            synchronized (this.a) {
                t = this.a.get();
            }
            return t;
        }

        public String toString() {
            String strValueOf = String.valueOf(this.a);
            return new StringBuilder(String.valueOf(strValueOf).length() + 32).append("Suppliers.synchronizedSupplier(").append(strValueOf).append(")").toString();
        }
    }

    @Beta
    public static <T> Function<Supplier<T>, T> supplierFunction() {
        return e.INSTANCE;
    }

    enum e implements d<Object> {
        INSTANCE;

        @Override // com.google.common.base.Function
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Object apply(Supplier<Object> supplier) {
            return supplier.get();
        }

        @Override // java.lang.Enum
        public String toString() {
            return "Suppliers.supplierFunction()";
        }
    }
}
