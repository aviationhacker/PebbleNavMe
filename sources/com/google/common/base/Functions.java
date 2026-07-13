package com.google.common.base;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import java.io.Serializable;
import java.util.Map;
import javax.annotation.CheckReturnValue;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible
@CheckReturnValue
public final class Functions {
    private Functions() {
    }

    public static Function<Object, String> toStringFunction() {
        return h.INSTANCE;
    }

    enum h implements Function<Object, String> {
        INSTANCE;

        @Override // com.google.common.base.Function
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public String apply(Object obj) {
            Preconditions.checkNotNull(obj);
            return obj.toString();
        }

        @Override // java.lang.Enum
        public String toString() {
            return "Functions.toStringFunction()";
        }
    }

    public static <E> Function<E, E> identity() {
        return e.INSTANCE;
    }

    enum e implements Function<Object, Object> {
        INSTANCE;

        @Override // com.google.common.base.Function
        @Nullable
        public Object apply(@Nullable Object obj) {
            return obj;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "Functions.identity()";
        }
    }

    public static <K, V> Function<K, V> forMap(Map<K, V> map) {
        return new d(map);
    }

    static class d<K, V> implements Function<K, V>, Serializable {
        private static final long serialVersionUID = 0;
        final Map<K, V> a;

        d(Map<K, V> map) {
            this.a = (Map) Preconditions.checkNotNull(map);
        }

        @Override // com.google.common.base.Function
        public V apply(@Nullable K k) {
            V v = this.a.get(k);
            Preconditions.checkArgument(v != null || this.a.containsKey(k), "Key '%s' not present in map", k);
            return v;
        }

        @Override // com.google.common.base.Function
        public boolean equals(@Nullable Object obj) {
            if (obj instanceof d) {
                return this.a.equals(((d) obj).a);
            }
            return false;
        }

        public int hashCode() {
            return this.a.hashCode();
        }

        public String toString() {
            String strValueOf = String.valueOf(this.a);
            return new StringBuilder(String.valueOf(strValueOf).length() + 18).append("Functions.forMap(").append(strValueOf).append(")").toString();
        }
    }

    public static <K, V> Function<K, V> forMap(Map<K, ? extends V> map, @Nullable V v) {
        return new b(map, v);
    }

    static class b<K, V> implements Function<K, V>, Serializable {
        private static final long serialVersionUID = 0;
        final Map<K, ? extends V> a;
        final V b;

        b(Map<K, ? extends V> map, @Nullable V v) {
            this.a = (Map) Preconditions.checkNotNull(map);
            this.b = v;
        }

        @Override // com.google.common.base.Function
        public V apply(@Nullable K k) {
            V v = this.a.get(k);
            return (v != null || this.a.containsKey(k)) ? v : this.b;
        }

        @Override // com.google.common.base.Function
        public boolean equals(@Nullable Object obj) {
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
            return new StringBuilder(String.valueOf(strValueOf).length() + 33 + String.valueOf(strValueOf2).length()).append("Functions.forMap(").append(strValueOf).append(", defaultValue=").append(strValueOf2).append(")").toString();
        }
    }

    public static <A, B, C> Function<A, C> compose(Function<B, C> function, Function<A, ? extends B> function2) {
        return new c(function, function2);
    }

    static class c<A, B, C> implements Function<A, C>, Serializable {
        private static final long serialVersionUID = 0;
        private final Function<B, C> a;
        private final Function<A, ? extends B> b;

        public c(Function<B, C> function, Function<A, ? extends B> function2) {
            this.a = (Function) Preconditions.checkNotNull(function);
            this.b = (Function) Preconditions.checkNotNull(function2);
        }

        @Override // com.google.common.base.Function
        public C apply(@Nullable A a) {
            return (C) this.a.apply(this.b.apply(a));
        }

        @Override // com.google.common.base.Function
        public boolean equals(@Nullable Object obj) {
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return this.b.equals(cVar.b) && this.a.equals(cVar.a);
        }

        public int hashCode() {
            return this.b.hashCode() ^ this.a.hashCode();
        }

        public String toString() {
            String strValueOf = String.valueOf(this.a);
            String strValueOf2 = String.valueOf(this.b);
            return new StringBuilder(String.valueOf(strValueOf).length() + 2 + String.valueOf(strValueOf2).length()).append(strValueOf).append("(").append(strValueOf2).append(")").toString();
        }
    }

    public static <T> Function<T, Boolean> forPredicate(Predicate<T> predicate) {
        return new f(predicate);
    }

    static class f<T> implements Function<T, Boolean>, Serializable {
        private static final long serialVersionUID = 0;
        private final Predicate<T> a;

        private f(Predicate<T> predicate) {
            this.a = (Predicate) Preconditions.checkNotNull(predicate);
        }

        @Override // com.google.common.base.Function
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Boolean apply(@Nullable T t) {
            return Boolean.valueOf(this.a.apply(t));
        }

        @Override // com.google.common.base.Function
        public boolean equals(@Nullable Object obj) {
            if (obj instanceof f) {
                return this.a.equals(((f) obj).a);
            }
            return false;
        }

        public int hashCode() {
            return this.a.hashCode();
        }

        public String toString() {
            String strValueOf = String.valueOf(this.a);
            return new StringBuilder(String.valueOf(strValueOf).length() + 24).append("Functions.forPredicate(").append(strValueOf).append(")").toString();
        }
    }

    public static <E> Function<Object, E> constant(@Nullable E e2) {
        return new a(e2);
    }

    static class a<E> implements Function<Object, E>, Serializable {
        private static final long serialVersionUID = 0;
        private final E a;

        public a(@Nullable E e) {
            this.a = e;
        }

        @Override // com.google.common.base.Function
        public E apply(@Nullable Object obj) {
            return this.a;
        }

        @Override // com.google.common.base.Function
        public boolean equals(@Nullable Object obj) {
            if (obj instanceof a) {
                return Objects.equal(this.a, ((a) obj).a);
            }
            return false;
        }

        public int hashCode() {
            if (this.a == null) {
                return 0;
            }
            return this.a.hashCode();
        }

        public String toString() {
            String strValueOf = String.valueOf(this.a);
            return new StringBuilder(String.valueOf(strValueOf).length() + 20).append("Functions.constant(").append(strValueOf).append(")").toString();
        }
    }

    @Beta
    public static <T> Function<Object, T> forSupplier(Supplier<T> supplier) {
        return new g(supplier);
    }

    static class g<T> implements Function<Object, T>, Serializable {
        private static final long serialVersionUID = 0;
        private final Supplier<T> a;

        private g(Supplier<T> supplier) {
            this.a = (Supplier) Preconditions.checkNotNull(supplier);
        }

        @Override // com.google.common.base.Function
        public T apply(@Nullable Object obj) {
            return this.a.get();
        }

        @Override // com.google.common.base.Function
        public boolean equals(@Nullable Object obj) {
            if (obj instanceof g) {
                return this.a.equals(((g) obj).a);
            }
            return false;
        }

        public int hashCode() {
            return this.a.hashCode();
        }

        public String toString() {
            String strValueOf = String.valueOf(this.a);
            return new StringBuilder(String.valueOf(strValueOf).length() + 23).append("Functions.forSupplier(").append(strValueOf).append(")").toString();
        }
    }
}
