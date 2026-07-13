package com.google.common.base;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import java.io.Serializable;
import java.util.Iterator;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Beta
@GwtCompatible
public abstract class Converter<A, B> implements Function<A, B> {
    private final boolean a;
    private transient Converter<B, A> b;

    public abstract A doBackward(B b2);

    public abstract B doForward(A a2);

    protected Converter() {
        this(true);
    }

    Converter(boolean z) {
        this.a = z;
    }

    @Nullable
    public final B convert(@Nullable A a2) {
        return a(a2);
    }

    @Nullable
    B a(@Nullable A a2) {
        if (this.a) {
            if (a2 == null) {
                return null;
            }
            return (B) Preconditions.checkNotNull(doForward(a2));
        }
        return doForward(a2);
    }

    @Nullable
    A b(@Nullable B b2) {
        if (this.a) {
            if (b2 == null) {
                return null;
            }
            return (A) Preconditions.checkNotNull(doBackward(b2));
        }
        return doBackward(b2);
    }

    public Iterable<B> convertAll(final Iterable<? extends A> iterable) {
        Preconditions.checkNotNull(iterable, "fromIterable");
        return new Iterable<B>() { // from class: com.google.common.base.Converter.1
            @Override // java.lang.Iterable
            public Iterator<B> iterator() {
                return new Iterator<B>() { // from class: com.google.common.base.Converter.1.1
                    private final Iterator<? extends A> b;

                    {
                        this.b = iterable.iterator();
                    }

                    @Override // java.util.Iterator
                    public boolean hasNext() {
                        return this.b.hasNext();
                    }

                    @Override // java.util.Iterator
                    public B next() {
                        return (B) Converter.this.convert(this.b.next());
                    }

                    @Override // java.util.Iterator
                    public void remove() {
                        this.b.remove();
                    }
                };
            }
        };
    }

    public Converter<B, A> reverse() {
        Converter<B, A> converter = this.b;
        if (converter != null) {
            return converter;
        }
        d dVar = new d(this);
        this.b = dVar;
        return dVar;
    }

    static final class d<A, B> extends Converter<B, A> implements Serializable {
        private static final long serialVersionUID = 0;
        final Converter<A, B> a;

        d(Converter<A, B> converter) {
            this.a = converter;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.base.Converter
        public A doForward(B b) {
            throw new AssertionError();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.base.Converter
        public B doBackward(A a) {
            throw new AssertionError();
        }

        @Override // com.google.common.base.Converter
        @Nullable
        A a(@Nullable B b) {
            return this.a.b(b);
        }

        @Override // com.google.common.base.Converter
        @Nullable
        B b(@Nullable A a) {
            return this.a.a(a);
        }

        @Override // com.google.common.base.Converter
        public Converter<A, B> reverse() {
            return this.a;
        }

        @Override // com.google.common.base.Converter, com.google.common.base.Function
        public boolean equals(@Nullable Object obj) {
            if (obj instanceof d) {
                return this.a.equals(((d) obj).a);
            }
            return false;
        }

        public int hashCode() {
            return this.a.hashCode() ^ (-1);
        }

        public String toString() {
            String strValueOf = String.valueOf(this.a);
            return new StringBuilder(String.valueOf(strValueOf).length() + 10).append(strValueOf).append(".reverse()").toString();
        }
    }

    public final <C> Converter<A, C> andThen(Converter<B, C> converter) {
        return a((Converter) converter);
    }

    <C> Converter<A, C> a(Converter<B, C> converter) {
        return new a(this, (Converter) Preconditions.checkNotNull(converter));
    }

    static final class a<A, B, C> extends Converter<A, C> implements Serializable {
        private static final long serialVersionUID = 0;
        final Converter<A, B> a;
        final Converter<B, C> b;

        a(Converter<A, B> converter, Converter<B, C> converter2) {
            this.a = converter;
            this.b = converter2;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.base.Converter
        public C doForward(A a) {
            throw new AssertionError();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.base.Converter
        public A doBackward(C c) {
            throw new AssertionError();
        }

        @Override // com.google.common.base.Converter
        @Nullable
        C a(@Nullable A a) {
            return (C) this.b.a(this.a.a(a));
        }

        @Override // com.google.common.base.Converter
        @Nullable
        A b(@Nullable C c) {
            return (A) this.a.b(this.b.b(c));
        }

        @Override // com.google.common.base.Converter, com.google.common.base.Function
        public boolean equals(@Nullable Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.a.equals(aVar.a) && this.b.equals(aVar.b);
        }

        public int hashCode() {
            return (this.a.hashCode() * 31) + this.b.hashCode();
        }

        public String toString() {
            String strValueOf = String.valueOf(this.a);
            String strValueOf2 = String.valueOf(this.b);
            return new StringBuilder(String.valueOf(strValueOf).length() + 10 + String.valueOf(strValueOf2).length()).append(strValueOf).append(".andThen(").append(strValueOf2).append(")").toString();
        }
    }

    @Override // com.google.common.base.Function
    @Nullable
    @Deprecated
    public final B apply(@Nullable A a2) {
        return convert(a2);
    }

    @Override // com.google.common.base.Function
    public boolean equals(@Nullable Object obj) {
        return super.equals(obj);
    }

    public static <A, B> Converter<A, B> from(Function<? super A, ? extends B> function, Function<? super B, ? extends A> function2) {
        return new b(function, function2);
    }

    static final class b<A, B> extends Converter<A, B> implements Serializable {
        private final Function<? super A, ? extends B> a;
        private final Function<? super B, ? extends A> b;

        private b(Function<? super A, ? extends B> function, Function<? super B, ? extends A> function2) {
            this.a = (Function) Preconditions.checkNotNull(function);
            this.b = (Function) Preconditions.checkNotNull(function2);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.base.Converter
        public B doForward(A a) {
            return this.a.apply(a);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.base.Converter
        public A doBackward(B b) {
            return this.b.apply(b);
        }

        @Override // com.google.common.base.Converter, com.google.common.base.Function
        public boolean equals(@Nullable Object obj) {
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.a.equals(bVar.a) && this.b.equals(bVar.b);
        }

        public int hashCode() {
            return (this.a.hashCode() * 31) + this.b.hashCode();
        }

        public String toString() {
            String strValueOf = String.valueOf(this.a);
            String strValueOf2 = String.valueOf(this.b);
            return new StringBuilder(String.valueOf(strValueOf).length() + 18 + String.valueOf(strValueOf2).length()).append("Converter.from(").append(strValueOf).append(", ").append(strValueOf2).append(")").toString();
        }
    }

    public static <T> Converter<T, T> identity() {
        return c.a;
    }

    static final class c<T> extends Converter<T, T> implements Serializable {
        static final c a = new c();
        private static final long serialVersionUID = 0;

        private c() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.base.Converter
        public T doForward(T t) {
            return t;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.base.Converter
        public T doBackward(T t) {
            return t;
        }

        @Override // com.google.common.base.Converter
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public c<T> reverse() {
            return this;
        }

        @Override // com.google.common.base.Converter
        <S> Converter<T, S> a(Converter<T, S> converter) {
            return (Converter) Preconditions.checkNotNull(converter, "otherConverter");
        }

        public String toString() {
            return "Converter.identity()";
        }

        private Object readResolve() {
            return a;
        }
    }
}
