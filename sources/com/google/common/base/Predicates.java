package com.google.common.base;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;
import javax.annotation.CheckReturnValue;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(emulated = true)
@CheckReturnValue
public final class Predicates {
    private static final Joiner a = Joiner.on(',');

    private Predicates() {
    }

    @GwtCompatible(serializable = true)
    public static <T> Predicate<T> alwaysTrue() {
        return j.ALWAYS_TRUE.a();
    }

    @GwtCompatible(serializable = true)
    public static <T> Predicate<T> alwaysFalse() {
        return j.ALWAYS_FALSE.a();
    }

    @GwtCompatible(serializable = true)
    public static <T> Predicate<T> isNull() {
        return j.IS_NULL.a();
    }

    @GwtCompatible(serializable = true)
    public static <T> Predicate<T> notNull() {
        return j.NOT_NULL.a();
    }

    public static <T> Predicate<T> not(Predicate<T> predicate) {
        return new i(predicate);
    }

    public static <T> Predicate<T> and(Iterable<? extends Predicate<? super T>> iterable) {
        return new a(a(iterable));
    }

    public static <T> Predicate<T> and(Predicate<? super T>... predicateArr) {
        return new a(a(predicateArr));
    }

    public static <T> Predicate<T> and(Predicate<? super T> predicate, Predicate<? super T> predicate2) {
        return new a(a((Predicate) Preconditions.checkNotNull(predicate), (Predicate) Preconditions.checkNotNull(predicate2)));
    }

    public static <T> Predicate<T> or(Iterable<? extends Predicate<? super T>> iterable) {
        return new k(a(iterable));
    }

    public static <T> Predicate<T> or(Predicate<? super T>... predicateArr) {
        return new k(a(predicateArr));
    }

    public static <T> Predicate<T> or(Predicate<? super T> predicate, Predicate<? super T> predicate2) {
        return new k(a((Predicate) Preconditions.checkNotNull(predicate), (Predicate) Preconditions.checkNotNull(predicate2)));
    }

    public static <T> Predicate<T> equalTo(@Nullable T t) {
        return t == null ? isNull() : new h(t);
    }

    @GwtIncompatible("Class.isInstance")
    public static Predicate<Object> instanceOf(Class<?> cls) {
        return new g(cls);
    }

    @Beta
    @GwtIncompatible("Class.isAssignableFrom")
    public static Predicate<Class<?>> assignableFrom(Class<?> cls) {
        return new b(cls);
    }

    public static <T> Predicate<T> in(Collection<? extends T> collection) {
        return new f(collection);
    }

    public static <A, B> Predicate<A> compose(Predicate<B> predicate, Function<A, ? extends B> function) {
        return new c(predicate, function);
    }

    @GwtIncompatible("java.util.regex.Pattern")
    public static Predicate<CharSequence> containsPattern(String str) {
        return new d(str);
    }

    @GwtIncompatible("java.util.regex.Pattern")
    public static Predicate<CharSequence> contains(Pattern pattern) {
        return new e(pattern);
    }

    enum j implements Predicate<Object> {
        ALWAYS_TRUE { // from class: com.google.common.base.Predicates.j.1
            @Override // com.google.common.base.Predicate
            public boolean apply(@Nullable Object obj) {
                return true;
            }

            @Override // java.lang.Enum
            public String toString() {
                return "Predicates.alwaysTrue()";
            }
        },
        ALWAYS_FALSE { // from class: com.google.common.base.Predicates.j.2
            @Override // com.google.common.base.Predicate
            public boolean apply(@Nullable Object obj) {
                return false;
            }

            @Override // java.lang.Enum
            public String toString() {
                return "Predicates.alwaysFalse()";
            }
        },
        IS_NULL { // from class: com.google.common.base.Predicates.j.3
            @Override // com.google.common.base.Predicate
            public boolean apply(@Nullable Object obj) {
                return obj == null;
            }

            @Override // java.lang.Enum
            public String toString() {
                return "Predicates.isNull()";
            }
        },
        NOT_NULL { // from class: com.google.common.base.Predicates.j.4
            @Override // com.google.common.base.Predicate
            public boolean apply(@Nullable Object obj) {
                return obj != null;
            }

            @Override // java.lang.Enum
            public String toString() {
                return "Predicates.notNull()";
            }
        };

        <T> Predicate<T> a() {
            return this;
        }
    }

    static class i<T> implements Predicate<T>, Serializable {
        private static final long serialVersionUID = 0;
        final Predicate<T> a;

        i(Predicate<T> predicate) {
            this.a = (Predicate) Preconditions.checkNotNull(predicate);
        }

        @Override // com.google.common.base.Predicate
        public boolean apply(@Nullable T t) {
            return !this.a.apply(t);
        }

        public int hashCode() {
            return this.a.hashCode() ^ (-1);
        }

        @Override // com.google.common.base.Predicate
        public boolean equals(@Nullable Object obj) {
            if (obj instanceof i) {
                return this.a.equals(((i) obj).a);
            }
            return false;
        }

        public String toString() {
            String strValueOf = String.valueOf(this.a);
            return new StringBuilder(String.valueOf(strValueOf).length() + 16).append("Predicates.not(").append(strValueOf).append(")").toString();
        }
    }

    static class a<T> implements Predicate<T>, Serializable {
        private static final long serialVersionUID = 0;
        private final List<? extends Predicate<? super T>> a;

        private a(List<? extends Predicate<? super T>> list) {
            this.a = list;
        }

        @Override // com.google.common.base.Predicate
        public boolean apply(@Nullable T t) {
            for (int i = 0; i < this.a.size(); i++) {
                if (!this.a.get(i).apply(t)) {
                    return false;
                }
            }
            return true;
        }

        public int hashCode() {
            return this.a.hashCode() + 306654252;
        }

        @Override // com.google.common.base.Predicate
        public boolean equals(@Nullable Object obj) {
            if (obj instanceof a) {
                return this.a.equals(((a) obj).a);
            }
            return false;
        }

        public String toString() {
            String strJoin = Predicates.a.join(this.a);
            return new StringBuilder(String.valueOf(strJoin).length() + 16).append("Predicates.and(").append(strJoin).append(")").toString();
        }
    }

    static class k<T> implements Predicate<T>, Serializable {
        private static final long serialVersionUID = 0;
        private final List<? extends Predicate<? super T>> a;

        private k(List<? extends Predicate<? super T>> list) {
            this.a = list;
        }

        @Override // com.google.common.base.Predicate
        public boolean apply(@Nullable T t) {
            for (int i = 0; i < this.a.size(); i++) {
                if (this.a.get(i).apply(t)) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            return this.a.hashCode() + 87855567;
        }

        @Override // com.google.common.base.Predicate
        public boolean equals(@Nullable Object obj) {
            if (obj instanceof k) {
                return this.a.equals(((k) obj).a);
            }
            return false;
        }

        public String toString() {
            String strJoin = Predicates.a.join(this.a);
            return new StringBuilder(String.valueOf(strJoin).length() + 15).append("Predicates.or(").append(strJoin).append(")").toString();
        }
    }

    static class h<T> implements Predicate<T>, Serializable {
        private static final long serialVersionUID = 0;
        private final T a;

        private h(T t) {
            this.a = t;
        }

        @Override // com.google.common.base.Predicate
        public boolean apply(T t) {
            return this.a.equals(t);
        }

        public int hashCode() {
            return this.a.hashCode();
        }

        @Override // com.google.common.base.Predicate
        public boolean equals(@Nullable Object obj) {
            if (obj instanceof h) {
                return this.a.equals(((h) obj).a);
            }
            return false;
        }

        public String toString() {
            String strValueOf = String.valueOf(this.a);
            return new StringBuilder(String.valueOf(strValueOf).length() + 20).append("Predicates.equalTo(").append(strValueOf).append(")").toString();
        }
    }

    @GwtIncompatible("Class.isInstance")
    static class g implements Predicate<Object>, Serializable {
        private static final long serialVersionUID = 0;
        private final Class<?> a;

        private g(Class<?> cls) {
            this.a = (Class) Preconditions.checkNotNull(cls);
        }

        @Override // com.google.common.base.Predicate
        public boolean apply(@Nullable Object obj) {
            return this.a.isInstance(obj);
        }

        public int hashCode() {
            return this.a.hashCode();
        }

        @Override // com.google.common.base.Predicate
        public boolean equals(@Nullable Object obj) {
            return (obj instanceof g) && this.a == ((g) obj).a;
        }

        public String toString() {
            String strValueOf = String.valueOf(this.a.getName());
            return new StringBuilder(String.valueOf(strValueOf).length() + 23).append("Predicates.instanceOf(").append(strValueOf).append(")").toString();
        }
    }

    @GwtIncompatible("Class.isAssignableFrom")
    static class b implements Predicate<Class<?>>, Serializable {
        private static final long serialVersionUID = 0;
        private final Class<?> a;

        private b(Class<?> cls) {
            this.a = (Class) Preconditions.checkNotNull(cls);
        }

        @Override // com.google.common.base.Predicate
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean apply(Class<?> cls) {
            return this.a.isAssignableFrom(cls);
        }

        public int hashCode() {
            return this.a.hashCode();
        }

        @Override // com.google.common.base.Predicate
        public boolean equals(@Nullable Object obj) {
            return (obj instanceof b) && this.a == ((b) obj).a;
        }

        public String toString() {
            String strValueOf = String.valueOf(this.a.getName());
            return new StringBuilder(String.valueOf(strValueOf).length() + 27).append("Predicates.assignableFrom(").append(strValueOf).append(")").toString();
        }
    }

    static class f<T> implements Predicate<T>, Serializable {
        private static final long serialVersionUID = 0;
        private final Collection<?> a;

        private f(Collection<?> collection) {
            this.a = (Collection) Preconditions.checkNotNull(collection);
        }

        @Override // com.google.common.base.Predicate
        public boolean apply(@Nullable T t) {
            try {
                return this.a.contains(t);
            } catch (ClassCastException e) {
                return false;
            } catch (NullPointerException e2) {
                return false;
            }
        }

        @Override // com.google.common.base.Predicate
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
            return new StringBuilder(String.valueOf(strValueOf).length() + 15).append("Predicates.in(").append(strValueOf).append(")").toString();
        }
    }

    static class c<A, B> implements Predicate<A>, Serializable {
        private static final long serialVersionUID = 0;
        final Predicate<B> a;
        final Function<A, ? extends B> b;

        private c(Predicate<B> predicate, Function<A, ? extends B> function) {
            this.a = (Predicate) Preconditions.checkNotNull(predicate);
            this.b = (Function) Preconditions.checkNotNull(function);
        }

        @Override // com.google.common.base.Predicate
        public boolean apply(@Nullable A a) {
            return this.a.apply(this.b.apply(a));
        }

        @Override // com.google.common.base.Predicate
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

    @GwtIncompatible("Only used by other GWT-incompatible code.")
    static class e implements Predicate<CharSequence>, Serializable {
        private static final long serialVersionUID = 0;
        final Pattern a;

        e(Pattern pattern) {
            this.a = (Pattern) Preconditions.checkNotNull(pattern);
        }

        @Override // com.google.common.base.Predicate
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean apply(CharSequence charSequence) {
            return this.a.matcher(charSequence).find();
        }

        public int hashCode() {
            return Objects.hashCode(this.a.pattern(), Integer.valueOf(this.a.flags()));
        }

        @Override // com.google.common.base.Predicate
        public boolean equals(@Nullable Object obj) {
            if (!(obj instanceof e)) {
                return false;
            }
            e eVar = (e) obj;
            return Objects.equal(this.a.pattern(), eVar.a.pattern()) && Objects.equal(Integer.valueOf(this.a.flags()), Integer.valueOf(eVar.a.flags()));
        }

        public String toString() {
            String string = Objects.toStringHelper(this.a).add("pattern", this.a.pattern()).add("pattern.flags", this.a.flags()).toString();
            return new StringBuilder(String.valueOf(string).length() + 21).append("Predicates.contains(").append(string).append(")").toString();
        }
    }

    @GwtIncompatible("Only used by other GWT-incompatible code.")
    static class d extends e {
        private static final long serialVersionUID = 0;

        d(String str) {
            super(Pattern.compile(str));
        }

        @Override // com.google.common.base.Predicates.e
        public String toString() {
            String strValueOf = String.valueOf(this.a.pattern());
            return new StringBuilder(String.valueOf(strValueOf).length() + 28).append("Predicates.containsPattern(").append(strValueOf).append(")").toString();
        }
    }

    private static <T> List<Predicate<? super T>> a(Predicate<? super T> predicate, Predicate<? super T> predicate2) {
        return Arrays.asList(predicate, predicate2);
    }

    private static <T> List<T> a(T... tArr) {
        return a(Arrays.asList(tArr));
    }

    static <T> List<T> a(Iterable<T> iterable) {
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = iterable.iterator();
        while (it.hasNext()) {
            arrayList.add(Preconditions.checkNotNull(it.next()));
        }
        return arrayList;
    }
}
