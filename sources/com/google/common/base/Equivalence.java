package com.google.common.base;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import defpackage.gs;
import defpackage.gt;
import java.io.Serializable;
import javax.annotation.CheckReturnValue;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible
@CheckReturnValue
public abstract class Equivalence<T> {
    public abstract boolean doEquivalent(T t, T t2);

    public abstract int doHash(T t);

    protected Equivalence() {
    }

    public final boolean equivalent(@Nullable T t, @Nullable T t2) {
        if (t == t2) {
            return true;
        }
        if (t == null || t2 == null) {
            return false;
        }
        return doEquivalent(t, t2);
    }

    public final int hash(@Nullable T t) {
        if (t == null) {
            return 0;
        }
        return doHash(t);
    }

    public final <F> Equivalence<F> onResultOf(Function<F, ? extends T> function) {
        return new gs(function, this);
    }

    public final <S extends T> Wrapper<S> wrap(@Nullable S s) {
        return new Wrapper<>(s);
    }

    public static final class Wrapper<T> implements Serializable {
        private static final long serialVersionUID = 0;
        private final Equivalence<? super T> a;

        @Nullable
        private final T b;

        private Wrapper(Equivalence<? super T> equivalence, @Nullable T t) {
            this.a = (Equivalence) Preconditions.checkNotNull(equivalence);
            this.b = t;
        }

        @Nullable
        public T get() {
            return this.b;
        }

        public boolean equals(@Nullable Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof Wrapper) {
                Wrapper wrapper = (Wrapper) obj;
                if (this.a.equals(wrapper.a)) {
                    return this.a.equivalent(this.b, wrapper.b);
                }
            }
            return false;
        }

        public int hashCode() {
            return this.a.hash(this.b);
        }

        public String toString() {
            String strValueOf = String.valueOf(this.a);
            String strValueOf2 = String.valueOf(this.b);
            return new StringBuilder(String.valueOf(strValueOf).length() + 7 + String.valueOf(strValueOf2).length()).append(strValueOf).append(".wrap(").append(strValueOf2).append(")").toString();
        }
    }

    @GwtCompatible(serializable = true)
    public final <S extends T> Equivalence<Iterable<S>> pairwise() {
        return new gt(this);
    }

    @Beta
    public final Predicate<T> equivalentTo(@Nullable T t) {
        return new b(this, t);
    }

    static final class b<T> implements Predicate<T>, Serializable {
        private static final long serialVersionUID = 0;
        private final Equivalence<T> a;

        @Nullable
        private final T b;

        b(Equivalence<T> equivalence, @Nullable T t) {
            this.a = (Equivalence) Preconditions.checkNotNull(equivalence);
            this.b = t;
        }

        @Override // com.google.common.base.Predicate
        public boolean apply(@Nullable T t) {
            return this.a.equivalent(t, this.b);
        }

        @Override // com.google.common.base.Predicate
        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.a.equals(bVar.a) && Objects.equal(this.b, bVar.b);
        }

        public int hashCode() {
            return Objects.hashCode(this.a, this.b);
        }

        public String toString() {
            String strValueOf = String.valueOf(this.a);
            String strValueOf2 = String.valueOf(this.b);
            return new StringBuilder(String.valueOf(strValueOf).length() + 15 + String.valueOf(strValueOf2).length()).append(strValueOf).append(".equivalentTo(").append(strValueOf2).append(")").toString();
        }
    }

    public static Equivalence<Object> equals() {
        return a.a;
    }

    public static Equivalence<Object> identity() {
        return c.a;
    }

    static final class a extends Equivalence<Object> implements Serializable {
        static final a a = new a();
        private static final long serialVersionUID = 1;

        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.base.Equivalence
        public boolean doEquivalent(Object obj, Object obj2) {
            return obj.equals(obj2);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.base.Equivalence
        public int doHash(Object obj) {
            return obj.hashCode();
        }

        private Object readResolve() {
            return a;
        }
    }

    static final class c extends Equivalence<Object> implements Serializable {
        static final c a = new c();
        private static final long serialVersionUID = 1;

        c() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.base.Equivalence
        public boolean doEquivalent(Object obj, Object obj2) {
            return false;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.base.Equivalence
        public int doHash(Object obj) {
            return System.identityHashCode(obj);
        }

        private Object readResolve() {
            return a;
        }
    }
}
