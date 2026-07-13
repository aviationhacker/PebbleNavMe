package defpackage;

import com.google.common.base.Equivalence;
import com.google.common.base.Preconditions;
import com.google.common.base.Ticker;
import com.google.common.collect.AbstractSequentialIterator;
import com.google.common.collect.ForwardingConcurrentMap;
import com.google.common.collect.Iterators;
import com.google.common.collect.MapMaker;
import com.google.common.primitives.Ints;
import com.google.j2objc.annotations.Weak;
import defpackage.iu;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.SoftReference;
import java.lang.ref.WeakReference;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractQueue;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.locks.ReentrantLock;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: classes.dex */
public class jj<K, V> extends AbstractMap<K, V> implements Serializable, ConcurrentMap<K, V> {
    private static final Logger a = Logger.getLogger(jj.class.getName());
    static final x<Object, Object> q = new x<Object, Object>() { // from class: jj.1
        @Override // jj.x
        public Object get() {
            return null;
        }

        @Override // jj.x
        public l<Object, Object> a() {
            return null;
        }

        @Override // jj.x
        public x<Object, Object> a(ReferenceQueue<Object> referenceQueue, @Nullable Object obj, l<Object, Object> lVar) {
            return this;
        }

        @Override // jj.x
        public boolean b() {
            return false;
        }

        @Override // jj.x
        public Object c() {
            return null;
        }

        @Override // jj.x
        public void a(x<Object, Object> xVar) {
        }
    };
    static final Queue<? extends Object> r = new AbstractQueue<Object>() { // from class: jj.2
        @Override // java.util.Queue
        public boolean offer(Object obj) {
            return true;
        }

        @Override // java.util.Queue
        public Object peek() {
            return null;
        }

        @Override // java.util.Queue
        public Object poll() {
            return null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return 0;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<Object> iterator() {
            return Iterators.emptyIterator();
        }
    };
    private static final long serialVersionUID = 5;
    final transient int b;
    final transient int c;
    final transient n<K, V>[] d;
    final int e;
    final Equivalence<Object> f;
    final Equivalence<Object> g;
    final q h;
    final q i;
    final int j;
    final long k;
    final long l;
    final Queue<MapMaker.f<K, V>> m;
    final MapMaker.e<K, V> n;
    final transient c o;
    final Ticker p;
    transient Set<K> s;
    transient Collection<V> t;
    transient Set<Map.Entry<K, V>> u;

    public interface l<K, V> {
        x<K, V> a();

        void a(long j);

        void a(l<K, V> lVar);

        void a(x<K, V> xVar);

        l<K, V> b();

        void b(l<K, V> lVar);

        int c();

        void c(l<K, V> lVar);

        K d();

        void d(l<K, V> lVar);

        long e();

        l<K, V> f();

        l<K, V> g();

        l<K, V> h();

        l<K, V> i();
    }

    public enum q {
        STRONG { // from class: jj.q.1
            @Override // jj.q
            <K, V> x<K, V> a(n<K, V> nVar, l<K, V> lVar, V v) {
                return new v(v);
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // jj.q
            public Equivalence<Object> a() {
                return Equivalence.equals();
            }
        },
        SOFT { // from class: jj.q.2
            @Override // jj.q
            <K, V> x<K, V> a(n<K, V> nVar, l<K, V> lVar, V v) {
                return new p(nVar.h, v, lVar);
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // jj.q
            public Equivalence<Object> a() {
                return Equivalence.identity();
            }
        },
        WEAK { // from class: jj.q.3
            @Override // jj.q
            <K, V> x<K, V> a(n<K, V> nVar, l<K, V> lVar, V v) {
                return new ad(nVar.h, v, lVar);
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // jj.q
            public Equivalence<Object> a() {
                return Equivalence.identity();
            }
        };

        public abstract Equivalence<Object> a();

        abstract <K, V> x<K, V> a(n<K, V> nVar, l<K, V> lVar, V v);
    }

    interface x<K, V> {
        l<K, V> a();

        x<K, V> a(ReferenceQueue<V> referenceQueue, @Nullable V v, l<K, V> lVar);

        void a(@Nullable x<K, V> xVar);

        boolean b();

        V c();

        V get();
    }

    public jj(MapMaker mapMaker) {
        int i2 = 1;
        int i3 = 0;
        this.e = Math.min(mapMaker.e(), 65536);
        this.h = mapMaker.f();
        this.i = mapMaker.g();
        this.f = mapMaker.c();
        this.g = this.i.a();
        this.j = mapMaker.e;
        this.k = mapMaker.i();
        this.l = mapMaker.h();
        this.o = c.a(this.h, b(), a());
        this.p = mapMaker.j();
        this.n = mapMaker.a();
        this.m = this.n == iu.a.INSTANCE ? i() : new ConcurrentLinkedQueue<>();
        int iMin = Math.min(mapMaker.d(), Ints.MAX_POWER_OF_TWO);
        iMin = a() ? Math.min(iMin, this.j) : iMin;
        int i4 = 1;
        int i5 = 0;
        while (i4 < this.e && (!a() || i4 * 2 <= this.j)) {
            i5++;
            i4 <<= 1;
        }
        this.c = 32 - i5;
        this.b = i4 - 1;
        this.d = d(i4);
        int i6 = iMin / i4;
        while (i2 < (i6 * i4 < iMin ? i6 + 1 : i6)) {
            i2 <<= 1;
        }
        if (a()) {
            int i7 = (this.j / i4) + 1;
            int i8 = this.j % i4;
            while (i3 < this.d.length) {
                if (i3 == i8) {
                    i7--;
                }
                this.d[i3] = a(i2, i7);
                i3++;
            }
            return;
        }
        while (i3 < this.d.length) {
            this.d[i3] = a(i2, -1);
            i3++;
        }
    }

    boolean a() {
        return this.j != -1;
    }

    boolean b() {
        return c() || d();
    }

    boolean c() {
        return this.l > 0;
    }

    boolean d() {
        return this.k > 0;
    }

    boolean e() {
        return this.h != q.STRONG;
    }

    boolean f() {
        return this.i != q.STRONG;
    }

    enum c {
        STRONG { // from class: jj.c.1
            @Override // jj.c
            <K, V> l<K, V> a(n<K, V> nVar, K k, int i, @Nullable l<K, V> lVar) {
                return new r(k, i, lVar);
            }
        },
        STRONG_EXPIRABLE { // from class: jj.c.2
            @Override // jj.c
            <K, V> l<K, V> a(n<K, V> nVar, K k, int i, @Nullable l<K, V> lVar) {
                return new t(k, i, lVar);
            }

            @Override // jj.c
            <K, V> l<K, V> a(n<K, V> nVar, l<K, V> lVar, l<K, V> lVar2) {
                l<K, V> lVarA = super.a(nVar, lVar, lVar2);
                a(lVar, lVarA);
                return lVarA;
            }
        },
        STRONG_EVICTABLE { // from class: jj.c.3
            @Override // jj.c
            <K, V> l<K, V> a(n<K, V> nVar, K k, int i, @Nullable l<K, V> lVar) {
                return new s(k, i, lVar);
            }

            @Override // jj.c
            <K, V> l<K, V> a(n<K, V> nVar, l<K, V> lVar, l<K, V> lVar2) {
                l<K, V> lVarA = super.a(nVar, lVar, lVar2);
                b(lVar, lVarA);
                return lVarA;
            }
        },
        STRONG_EXPIRABLE_EVICTABLE { // from class: jj.c.4
            @Override // jj.c
            <K, V> l<K, V> a(n<K, V> nVar, K k, int i, @Nullable l<K, V> lVar) {
                return new u(k, i, lVar);
            }

            @Override // jj.c
            <K, V> l<K, V> a(n<K, V> nVar, l<K, V> lVar, l<K, V> lVar2) {
                l<K, V> lVarA = super.a(nVar, lVar, lVar2);
                a(lVar, lVarA);
                b(lVar, lVarA);
                return lVarA;
            }
        },
        WEAK { // from class: jj.c.5
            @Override // jj.c
            <K, V> l<K, V> a(n<K, V> nVar, K k, int i, @Nullable l<K, V> lVar) {
                return new z(nVar.g, k, i, lVar);
            }
        },
        WEAK_EXPIRABLE { // from class: jj.c.6
            @Override // jj.c
            <K, V> l<K, V> a(n<K, V> nVar, K k, int i, @Nullable l<K, V> lVar) {
                return new ab(nVar.g, k, i, lVar);
            }

            @Override // jj.c
            <K, V> l<K, V> a(n<K, V> nVar, l<K, V> lVar, l<K, V> lVar2) {
                l<K, V> lVarA = super.a(nVar, lVar, lVar2);
                a(lVar, lVarA);
                return lVarA;
            }
        },
        WEAK_EVICTABLE { // from class: jj.c.7
            @Override // jj.c
            <K, V> l<K, V> a(n<K, V> nVar, K k, int i, @Nullable l<K, V> lVar) {
                return new aa(nVar.g, k, i, lVar);
            }

            @Override // jj.c
            <K, V> l<K, V> a(n<K, V> nVar, l<K, V> lVar, l<K, V> lVar2) {
                l<K, V> lVarA = super.a(nVar, lVar, lVar2);
                b(lVar, lVarA);
                return lVarA;
            }
        },
        WEAK_EXPIRABLE_EVICTABLE { // from class: jj.c.8
            @Override // jj.c
            <K, V> l<K, V> a(n<K, V> nVar, K k, int i, @Nullable l<K, V> lVar) {
                return new ac(nVar.g, k, i, lVar);
            }

            @Override // jj.c
            <K, V> l<K, V> a(n<K, V> nVar, l<K, V> lVar, l<K, V> lVar2) {
                l<K, V> lVarA = super.a(nVar, lVar, lVar2);
                a(lVar, lVarA);
                b(lVar, lVarA);
                return lVarA;
            }
        };

        static final c[][] i = {new c[]{STRONG, STRONG_EXPIRABLE, STRONG_EVICTABLE, STRONG_EXPIRABLE_EVICTABLE}, new c[0], new c[]{WEAK, WEAK_EXPIRABLE, WEAK_EVICTABLE, WEAK_EXPIRABLE_EVICTABLE}};

        abstract <K, V> l<K, V> a(n<K, V> nVar, K k, int i2, @Nullable l<K, V> lVar);

        static c a(q qVar, boolean z, boolean z2) {
            return i[qVar.ordinal()][(z2 ? (char) 2 : (char) 0) | (z ? (char) 1 : (char) 0)];
        }

        <K, V> l<K, V> a(n<K, V> nVar, l<K, V> lVar, l<K, V> lVar2) {
            return a(nVar, lVar.d(), lVar.c(), lVar2);
        }

        <K, V> void a(l<K, V> lVar, l<K, V> lVar2) {
            lVar2.a(lVar.e());
            jj.a(lVar.g(), lVar2);
            jj.a(lVar2, lVar.f());
            jj.d(lVar);
        }

        <K, V> void b(l<K, V> lVar, l<K, V> lVar2) {
            jj.b(lVar.i(), lVar2);
            jj.b(lVar2, lVar.h());
            jj.e(lVar);
        }
    }

    static <K, V> x<K, V> g() {
        return (x<K, V>) q;
    }

    enum k implements l<Object, Object> {
        INSTANCE;

        @Override // jj.l
        public x<Object, Object> a() {
            return null;
        }

        @Override // jj.l
        public void a(x<Object, Object> xVar) {
        }

        @Override // jj.l
        public l<Object, Object> b() {
            return null;
        }

        @Override // jj.l
        public int c() {
            return 0;
        }

        @Override // jj.l
        public Object d() {
            return null;
        }

        @Override // jj.l
        public long e() {
            return 0L;
        }

        @Override // jj.l
        public void a(long j) {
        }

        @Override // jj.l
        public l<Object, Object> f() {
            return this;
        }

        @Override // jj.l
        public void a(l<Object, Object> lVar) {
        }

        @Override // jj.l
        public l<Object, Object> g() {
            return this;
        }

        @Override // jj.l
        public void b(l<Object, Object> lVar) {
        }

        @Override // jj.l
        public l<Object, Object> h() {
            return this;
        }

        @Override // jj.l
        public void c(l<Object, Object> lVar) {
        }

        @Override // jj.l
        public l<Object, Object> i() {
            return this;
        }

        @Override // jj.l
        public void d(l<Object, Object> lVar) {
        }
    }

    static abstract class a<K, V> implements l<K, V> {
        a() {
        }

        @Override // jj.l
        public x<K, V> a() {
            throw new UnsupportedOperationException();
        }

        @Override // jj.l
        public void a(x<K, V> xVar) {
            throw new UnsupportedOperationException();
        }

        @Override // jj.l
        public l<K, V> b() {
            throw new UnsupportedOperationException();
        }

        @Override // jj.l
        public int c() {
            throw new UnsupportedOperationException();
        }

        @Override // jj.l
        public K d() {
            throw new UnsupportedOperationException();
        }

        @Override // jj.l
        public long e() {
            throw new UnsupportedOperationException();
        }

        @Override // jj.l
        public void a(long j) {
            throw new UnsupportedOperationException();
        }

        @Override // jj.l
        public l<K, V> f() {
            throw new UnsupportedOperationException();
        }

        @Override // jj.l
        public void a(l<K, V> lVar) {
            throw new UnsupportedOperationException();
        }

        @Override // jj.l
        public l<K, V> g() {
            throw new UnsupportedOperationException();
        }

        @Override // jj.l
        public void b(l<K, V> lVar) {
            throw new UnsupportedOperationException();
        }

        @Override // jj.l
        public l<K, V> h() {
            throw new UnsupportedOperationException();
        }

        @Override // jj.l
        public void c(l<K, V> lVar) {
            throw new UnsupportedOperationException();
        }

        @Override // jj.l
        public l<K, V> i() {
            throw new UnsupportedOperationException();
        }

        @Override // jj.l
        public void d(l<K, V> lVar) {
            throw new UnsupportedOperationException();
        }
    }

    static <K, V> l<K, V> h() {
        return k.INSTANCE;
    }

    static <E> Queue<E> i() {
        return (Queue<E>) r;
    }

    static class r<K, V> implements l<K, V> {
        final K a;
        final int b;
        final l<K, V> c;
        volatile x<K, V> d = jj.g();

        r(K k, int i, @Nullable l<K, V> lVar) {
            this.a = k;
            this.b = i;
            this.c = lVar;
        }

        @Override // jj.l
        public K d() {
            return this.a;
        }

        @Override // jj.l
        public long e() {
            throw new UnsupportedOperationException();
        }

        @Override // jj.l
        public void a(long j) {
            throw new UnsupportedOperationException();
        }

        @Override // jj.l
        public l<K, V> f() {
            throw new UnsupportedOperationException();
        }

        @Override // jj.l
        public void a(l<K, V> lVar) {
            throw new UnsupportedOperationException();
        }

        @Override // jj.l
        public l<K, V> g() {
            throw new UnsupportedOperationException();
        }

        @Override // jj.l
        public void b(l<K, V> lVar) {
            throw new UnsupportedOperationException();
        }

        @Override // jj.l
        public l<K, V> h() {
            throw new UnsupportedOperationException();
        }

        @Override // jj.l
        public void c(l<K, V> lVar) {
            throw new UnsupportedOperationException();
        }

        @Override // jj.l
        public l<K, V> i() {
            throw new UnsupportedOperationException();
        }

        @Override // jj.l
        public void d(l<K, V> lVar) {
            throw new UnsupportedOperationException();
        }

        @Override // jj.l
        public x<K, V> a() {
            return this.d;
        }

        @Override // jj.l
        public void a(x<K, V> xVar) {
            x<K, V> xVar2 = this.d;
            this.d = xVar;
            xVar2.a(xVar);
        }

        @Override // jj.l
        public int c() {
            return this.b;
        }

        @Override // jj.l
        public l<K, V> b() {
            return this.c;
        }
    }

    static final class t<K, V> extends r<K, V> implements l<K, V> {
        volatile long e;
        l<K, V> f;
        l<K, V> g;

        t(K k, int i, @Nullable l<K, V> lVar) {
            super(k, i, lVar);
            this.e = Long.MAX_VALUE;
            this.f = jj.h();
            this.g = jj.h();
        }

        @Override // jj.r, jj.l
        public long e() {
            return this.e;
        }

        @Override // jj.r, jj.l
        public void a(long j) {
            this.e = j;
        }

        @Override // jj.r, jj.l
        public l<K, V> f() {
            return this.f;
        }

        @Override // jj.r, jj.l
        public void a(l<K, V> lVar) {
            this.f = lVar;
        }

        @Override // jj.r, jj.l
        public l<K, V> g() {
            return this.g;
        }

        @Override // jj.r, jj.l
        public void b(l<K, V> lVar) {
            this.g = lVar;
        }
    }

    static final class s<K, V> extends r<K, V> implements l<K, V> {
        l<K, V> e;
        l<K, V> f;

        s(K k, int i, @Nullable l<K, V> lVar) {
            super(k, i, lVar);
            this.e = jj.h();
            this.f = jj.h();
        }

        @Override // jj.r, jj.l
        public l<K, V> h() {
            return this.e;
        }

        @Override // jj.r, jj.l
        public void c(l<K, V> lVar) {
            this.e = lVar;
        }

        @Override // jj.r, jj.l
        public l<K, V> i() {
            return this.f;
        }

        @Override // jj.r, jj.l
        public void d(l<K, V> lVar) {
            this.f = lVar;
        }
    }

    static final class u<K, V> extends r<K, V> implements l<K, V> {
        volatile long e;
        l<K, V> f;
        l<K, V> g;
        l<K, V> h;
        l<K, V> i;

        u(K k, int i, @Nullable l<K, V> lVar) {
            super(k, i, lVar);
            this.e = Long.MAX_VALUE;
            this.f = jj.h();
            this.g = jj.h();
            this.h = jj.h();
            this.i = jj.h();
        }

        @Override // jj.r, jj.l
        public long e() {
            return this.e;
        }

        @Override // jj.r, jj.l
        public void a(long j) {
            this.e = j;
        }

        @Override // jj.r, jj.l
        public l<K, V> f() {
            return this.f;
        }

        @Override // jj.r, jj.l
        public void a(l<K, V> lVar) {
            this.f = lVar;
        }

        @Override // jj.r, jj.l
        public l<K, V> g() {
            return this.g;
        }

        @Override // jj.r, jj.l
        public void b(l<K, V> lVar) {
            this.g = lVar;
        }

        @Override // jj.r, jj.l
        public l<K, V> h() {
            return this.h;
        }

        @Override // jj.r, jj.l
        public void c(l<K, V> lVar) {
            this.h = lVar;
        }

        @Override // jj.r, jj.l
        public l<K, V> i() {
            return this.i;
        }

        @Override // jj.r, jj.l
        public void d(l<K, V> lVar) {
            this.i = lVar;
        }
    }

    static class z<K, V> extends WeakReference<K> implements l<K, V> {
        final int a;
        final l<K, V> b;
        volatile x<K, V> c;

        z(ReferenceQueue<K> referenceQueue, K k, int i, @Nullable l<K, V> lVar) {
            super(k, referenceQueue);
            this.c = jj.g();
            this.a = i;
            this.b = lVar;
        }

        @Override // jj.l
        public K d() {
            return (K) get();
        }

        public long e() {
            throw new UnsupportedOperationException();
        }

        public void a(long j) {
            throw new UnsupportedOperationException();
        }

        public l<K, V> f() {
            throw new UnsupportedOperationException();
        }

        public void a(l<K, V> lVar) {
            throw new UnsupportedOperationException();
        }

        public l<K, V> g() {
            throw new UnsupportedOperationException();
        }

        public void b(l<K, V> lVar) {
            throw new UnsupportedOperationException();
        }

        public l<K, V> h() {
            throw new UnsupportedOperationException();
        }

        public void c(l<K, V> lVar) {
            throw new UnsupportedOperationException();
        }

        public l<K, V> i() {
            throw new UnsupportedOperationException();
        }

        public void d(l<K, V> lVar) {
            throw new UnsupportedOperationException();
        }

        @Override // jj.l
        public x<K, V> a() {
            return this.c;
        }

        @Override // jj.l
        public void a(x<K, V> xVar) {
            x<K, V> xVar2 = this.c;
            this.c = xVar;
            xVar2.a(xVar);
        }

        @Override // jj.l
        public int c() {
            return this.a;
        }

        @Override // jj.l
        public l<K, V> b() {
            return this.b;
        }
    }

    static final class ab<K, V> extends z<K, V> implements l<K, V> {
        volatile long d;
        l<K, V> e;
        l<K, V> f;

        ab(ReferenceQueue<K> referenceQueue, K k, int i, @Nullable l<K, V> lVar) {
            super(referenceQueue, k, i, lVar);
            this.d = Long.MAX_VALUE;
            this.e = jj.h();
            this.f = jj.h();
        }

        @Override // jj.z, jj.l
        public long e() {
            return this.d;
        }

        @Override // jj.z, jj.l
        public void a(long j) {
            this.d = j;
        }

        @Override // jj.z, jj.l
        public l<K, V> f() {
            return this.e;
        }

        @Override // jj.z, jj.l
        public void a(l<K, V> lVar) {
            this.e = lVar;
        }

        @Override // jj.z, jj.l
        public l<K, V> g() {
            return this.f;
        }

        @Override // jj.z, jj.l
        public void b(l<K, V> lVar) {
            this.f = lVar;
        }
    }

    static final class aa<K, V> extends z<K, V> implements l<K, V> {
        l<K, V> d;
        l<K, V> e;

        aa(ReferenceQueue<K> referenceQueue, K k, int i, @Nullable l<K, V> lVar) {
            super(referenceQueue, k, i, lVar);
            this.d = jj.h();
            this.e = jj.h();
        }

        @Override // jj.z, jj.l
        public l<K, V> h() {
            return this.d;
        }

        @Override // jj.z, jj.l
        public void c(l<K, V> lVar) {
            this.d = lVar;
        }

        @Override // jj.z, jj.l
        public l<K, V> i() {
            return this.e;
        }

        @Override // jj.z, jj.l
        public void d(l<K, V> lVar) {
            this.e = lVar;
        }
    }

    static final class ac<K, V> extends z<K, V> implements l<K, V> {
        volatile long d;
        l<K, V> e;
        l<K, V> f;
        l<K, V> g;
        l<K, V> h;

        ac(ReferenceQueue<K> referenceQueue, K k, int i, @Nullable l<K, V> lVar) {
            super(referenceQueue, k, i, lVar);
            this.d = Long.MAX_VALUE;
            this.e = jj.h();
            this.f = jj.h();
            this.g = jj.h();
            this.h = jj.h();
        }

        @Override // jj.z, jj.l
        public long e() {
            return this.d;
        }

        @Override // jj.z, jj.l
        public void a(long j) {
            this.d = j;
        }

        @Override // jj.z, jj.l
        public l<K, V> f() {
            return this.e;
        }

        @Override // jj.z, jj.l
        public void a(l<K, V> lVar) {
            this.e = lVar;
        }

        @Override // jj.z, jj.l
        public l<K, V> g() {
            return this.f;
        }

        @Override // jj.z, jj.l
        public void b(l<K, V> lVar) {
            this.f = lVar;
        }

        @Override // jj.z, jj.l
        public l<K, V> h() {
            return this.g;
        }

        @Override // jj.z, jj.l
        public void c(l<K, V> lVar) {
            this.g = lVar;
        }

        @Override // jj.z, jj.l
        public l<K, V> i() {
            return this.h;
        }

        @Override // jj.z, jj.l
        public void d(l<K, V> lVar) {
            this.h = lVar;
        }
    }

    static final class ad<K, V> extends WeakReference<V> implements x<K, V> {
        final l<K, V> a;

        ad(ReferenceQueue<V> referenceQueue, V v, l<K, V> lVar) {
            super(v, referenceQueue);
            this.a = lVar;
        }

        @Override // jj.x
        public l<K, V> a() {
            return this.a;
        }

        @Override // jj.x
        public void a(x<K, V> xVar) {
            clear();
        }

        @Override // jj.x
        public x<K, V> a(ReferenceQueue<V> referenceQueue, V v, l<K, V> lVar) {
            return new ad(referenceQueue, v, lVar);
        }

        @Override // jj.x
        public boolean b() {
            return false;
        }

        @Override // jj.x
        public V c() {
            return get();
        }
    }

    static final class p<K, V> extends SoftReference<V> implements x<K, V> {
        final l<K, V> a;

        p(ReferenceQueue<V> referenceQueue, V v, l<K, V> lVar) {
            super(v, referenceQueue);
            this.a = lVar;
        }

        @Override // jj.x
        public l<K, V> a() {
            return this.a;
        }

        @Override // jj.x
        public void a(x<K, V> xVar) {
            clear();
        }

        @Override // jj.x
        public x<K, V> a(ReferenceQueue<V> referenceQueue, V v, l<K, V> lVar) {
            return new p(referenceQueue, v, lVar);
        }

        @Override // jj.x
        public boolean b() {
            return false;
        }

        @Override // jj.x
        public V c() {
            return get();
        }
    }

    static final class v<K, V> implements x<K, V> {
        final V a;

        v(V v) {
            this.a = v;
        }

        @Override // jj.x
        public V get() {
            return this.a;
        }

        @Override // jj.x
        public l<K, V> a() {
            return null;
        }

        @Override // jj.x
        public x<K, V> a(ReferenceQueue<V> referenceQueue, V v, l<K, V> lVar) {
            return this;
        }

        @Override // jj.x
        public boolean b() {
            return false;
        }

        @Override // jj.x
        public V c() {
            return get();
        }

        @Override // jj.x
        public void a(x<K, V> xVar) {
        }
    }

    static int c(int i2) {
        int i3 = ((i2 << 15) ^ (-12931)) + i2;
        int i4 = i3 ^ (i3 >>> 10);
        int i5 = i4 + (i4 << 3);
        int i6 = i5 ^ (i5 >>> 6);
        int i7 = i6 + (i6 << 2) + (i6 << 14);
        return i7 ^ (i7 >>> 16);
    }

    int b(Object obj) {
        return c(this.f.hash(obj));
    }

    void a(x<K, V> xVar) {
        l<K, V> lVarA = xVar.a();
        int iC = lVarA.c();
        b(iC).a((Object) lVarA.d(), iC, (x) xVar);
    }

    void a(l<K, V> lVar) {
        int iC = lVar.c();
        b(iC).a((l) lVar, iC);
    }

    n<K, V> b(int i2) {
        return this.d[(i2 >>> this.c) & this.b];
    }

    n<K, V> a(int i2, int i3) {
        return new n<>(this, i2, i3);
    }

    V b(l<K, V> lVar) {
        V v2;
        if (lVar.d() == null || (v2 = lVar.a().get()) == null) {
            return null;
        }
        if (b() && c((l) lVar)) {
            return null;
        }
        return v2;
    }

    boolean c(l<K, V> lVar) {
        return a(lVar, this.p.read());
    }

    boolean a(l<K, V> lVar, long j2) {
        return j2 - lVar.e() > 0;
    }

    static <K, V> void a(l<K, V> lVar, l<K, V> lVar2) {
        lVar.a(lVar2);
        lVar2.b(lVar);
    }

    static <K, V> void d(l<K, V> lVar) {
        l<K, V> lVarH = h();
        lVar.a(lVarH);
        lVar.b(lVarH);
    }

    void j() {
        while (true) {
            MapMaker.f<K, V> fVarPoll = this.m.poll();
            if (fVarPoll != null) {
                try {
                    this.n.a(fVarPoll);
                } catch (Exception e2) {
                    a.log(Level.WARNING, "Exception thrown by removal listener", (Throwable) e2);
                }
            } else {
                return;
            }
        }
    }

    static <K, V> void b(l<K, V> lVar, l<K, V> lVar2) {
        lVar.c(lVar2);
        lVar2.d(lVar);
    }

    static <K, V> void e(l<K, V> lVar) {
        l<K, V> lVarH = h();
        lVar.c(lVarH);
        lVar.d(lVarH);
    }

    final n<K, V>[] d(int i2) {
        return new n[i2];
    }

    static class n<K, V> extends ReentrantLock {

        @Weak
        final jj<K, V> a;
        volatile int b;
        int c;
        int d;
        volatile AtomicReferenceArray<l<K, V>> e;
        final int f;
        final ReferenceQueue<K> g;
        final ReferenceQueue<V> h;
        final Queue<l<K, V>> i;
        final AtomicInteger j = new AtomicInteger();

        @GuardedBy("this")
        final Queue<l<K, V>> k;

        @GuardedBy("this")
        final Queue<l<K, V>> l;

        n(jj<K, V> jjVar, int i, int i2) {
            this.a = jjVar;
            this.f = i2;
            a(a(i));
            this.g = jjVar.e() ? new ReferenceQueue<>() : null;
            this.h = jjVar.f() ? new ReferenceQueue<>() : null;
            this.i = (jjVar.a() || jjVar.d()) ? new ConcurrentLinkedQueue<>() : jj.i();
            this.k = jjVar.a() ? new f<>() : jj.i();
            this.l = jjVar.b() ? new g<>() : jj.i();
        }

        AtomicReferenceArray<l<K, V>> a(int i) {
            return new AtomicReferenceArray<>(i);
        }

        void a(AtomicReferenceArray<l<K, V>> atomicReferenceArray) {
            this.d = (atomicReferenceArray.length() * 3) / 4;
            if (this.d == this.f) {
                this.d++;
            }
            this.e = atomicReferenceArray;
        }

        @GuardedBy("this")
        l<K, V> a(K k, int i, @Nullable l<K, V> lVar) {
            return this.a.o.a(this, k, i, lVar);
        }

        @GuardedBy("this")
        l<K, V> a(l<K, V> lVar, l<K, V> lVar2) {
            if (lVar.d() == null) {
                return null;
            }
            x<K, V> xVarA = lVar.a();
            V v = xVarA.get();
            if (v == null && !xVarA.b()) {
                return null;
            }
            l<K, V> lVarA = this.a.o.a(this, lVar, lVar2);
            lVarA.a(xVarA.a(this.h, v, lVarA));
            return lVarA;
        }

        @GuardedBy("this")
        void a(l<K, V> lVar, V v) {
            lVar.a(this.a.i.a(this, lVar, v));
            c(lVar);
        }

        void a() {
            if (tryLock()) {
                try {
                    b();
                } finally {
                    unlock();
                }
            }
        }

        @GuardedBy("this")
        void b() {
            if (this.a.e()) {
                c();
            }
            if (this.a.f()) {
                d();
            }
        }

        @GuardedBy("this")
        void c() {
            int i = 0;
            do {
                int i2 = i;
                Reference<? extends K> referencePoll = this.g.poll();
                if (referencePoll != null) {
                    this.a.a((l) referencePoll);
                    i = i2 + 1;
                } else {
                    return;
                }
            } while (i != 16);
        }

        @GuardedBy("this")
        void d() {
            int i = 0;
            do {
                int i2 = i;
                Reference<? extends V> referencePoll = this.h.poll();
                if (referencePoll != null) {
                    this.a.a((x) referencePoll);
                    i = i2 + 1;
                } else {
                    return;
                }
            } while (i != 16);
        }

        void e() {
            if (this.a.e()) {
                f();
            }
            if (this.a.f()) {
                g();
            }
        }

        void f() {
            while (this.g.poll() != null) {
            }
        }

        void g() {
            while (this.h.poll() != null) {
            }
        }

        void a(l<K, V> lVar) {
            if (this.a.d()) {
                a(lVar, this.a.k);
            }
            this.i.add(lVar);
        }

        @GuardedBy("this")
        void b(l<K, V> lVar) {
            this.k.add(lVar);
            if (this.a.d()) {
                a(lVar, this.a.k);
                this.l.add(lVar);
            }
        }

        @GuardedBy("this")
        void c(l<K, V> lVar) {
            h();
            this.k.add(lVar);
            if (this.a.b()) {
                a(lVar, this.a.d() ? this.a.k : this.a.l);
                this.l.add(lVar);
            }
        }

        @GuardedBy("this")
        void h() {
            while (true) {
                l<K, V> lVarPoll = this.i.poll();
                if (lVarPoll != null) {
                    if (this.k.contains(lVarPoll)) {
                        this.k.add(lVarPoll);
                    }
                    if (this.a.d() && this.l.contains(lVarPoll)) {
                        this.l.add(lVarPoll);
                    }
                } else {
                    return;
                }
            }
        }

        void a(l<K, V> lVar, long j) {
            lVar.a(this.a.p.read() + j);
        }

        void i() {
            if (tryLock()) {
                try {
                    j();
                } finally {
                    unlock();
                }
            }
        }

        @GuardedBy("this")
        void j() {
            l<K, V> lVarPeek;
            h();
            if (!this.l.isEmpty()) {
                long j = this.a.p.read();
                do {
                    lVarPeek = this.l.peek();
                    if (lVarPeek == null || !this.a.a(lVarPeek, j)) {
                        return;
                    }
                } while (a((l) lVarPeek, lVarPeek.c(), MapMaker.d.EXPIRED));
                throw new AssertionError();
            }
        }

        void a(l<K, V> lVar, MapMaker.d dVar) {
            a((Object) lVar.d(), lVar.c(), (Object) lVar.a().get(), dVar);
        }

        void a(@Nullable K k, int i, @Nullable V v, MapMaker.d dVar) {
            if (this.a.m != jj.r) {
                this.a.m.offer(new MapMaker.f<>(k, v, dVar));
            }
        }

        @GuardedBy("this")
        boolean k() {
            if (!this.a.a() || this.b < this.f) {
                return false;
            }
            h();
            l<K, V> lVarRemove = this.k.remove();
            if (!a((l) lVarRemove, lVarRemove.c(), MapMaker.d.SIZE)) {
                throw new AssertionError();
            }
            return true;
        }

        l<K, V> b(int i) {
            return this.e.get((r0.length() - 1) & i);
        }

        l<K, V> a(Object obj, int i) {
            if (this.b != 0) {
                for (l<K, V> lVarB = b(i); lVarB != null; lVarB = lVarB.b()) {
                    if (lVarB.c() == i) {
                        K kD = lVarB.d();
                        if (kD == null) {
                            a();
                        } else if (this.a.f.equivalent(obj, kD)) {
                            return lVarB;
                        }
                    }
                }
            }
            return null;
        }

        l<K, V> b(Object obj, int i) {
            l<K, V> lVarA = a(obj, i);
            if (lVarA == null) {
                return null;
            }
            if (!this.a.b() || !this.a.c((l) lVarA)) {
                return lVarA;
            }
            i();
            return null;
        }

        V c(Object obj, int i) {
            try {
                l<K, V> lVarB = b(obj, i);
                if (lVarB != null) {
                    V v = lVarB.a().get();
                    if (v != null) {
                        a(lVarB);
                    } else {
                        a();
                    }
                    return v;
                }
                return null;
            } finally {
                n();
            }
        }

        boolean d(Object obj, int i) {
            l<K, V> lVarB;
            try {
                if (this.b != 0 && (lVarB = b(obj, i)) != null) {
                    z = lVarB.a().get() != null;
                }
                return z;
            } finally {
                n();
            }
        }

        V a(K k, int i, V v, boolean z) {
            lock();
            try {
                o();
                int i2 = this.b + 1;
                if (i2 > this.d) {
                    l();
                    i2 = this.b + 1;
                }
                AtomicReferenceArray<l<K, V>> atomicReferenceArray = this.e;
                int length = i & (atomicReferenceArray.length() - 1);
                l<K, V> lVar = atomicReferenceArray.get(length);
                for (l<K, V> lVarB = lVar; lVarB != null; lVarB = lVarB.b()) {
                    K kD = lVarB.d();
                    if (lVarB.c() == i && kD != null && this.a.f.equivalent(k, kD)) {
                        x<K, V> xVarA = lVarB.a();
                        V v2 = xVarA.get();
                        if (v2 != null) {
                            if (z) {
                                b(lVarB);
                                return v2;
                            }
                            this.c++;
                            a((Object) k, i, (Object) v2, MapMaker.d.REPLACED);
                            a(lVarB, v);
                            return v2;
                        }
                        this.c++;
                        a(lVarB, v);
                        if (!xVarA.b()) {
                            a((Object) k, i, (Object) v2, MapMaker.d.COLLECTED);
                            i2 = this.b;
                        } else if (k()) {
                            i2 = this.b + 1;
                        }
                        this.b = i2;
                        return null;
                    }
                }
                this.c++;
                l<K, V> lVarA = a((Object) k, i, (l) lVar);
                a(lVarA, v);
                atomicReferenceArray.set(length, lVarA);
                this.b = k() ? this.b + 1 : i2;
                return null;
            } finally {
                unlock();
                p();
            }
        }

        @GuardedBy("this")
        void l() {
            int i;
            int i2;
            l<K, V> lVar;
            AtomicReferenceArray<l<K, V>> atomicReferenceArray = this.e;
            int length = atomicReferenceArray.length();
            if (length < 1073741824) {
                int i3 = this.b;
                AtomicReferenceArray<l<K, V>> atomicReferenceArrayA = a(length << 1);
                this.d = (atomicReferenceArrayA.length() * 3) / 4;
                int length2 = atomicReferenceArrayA.length() - 1;
                int i4 = 0;
                while (i4 < length) {
                    l<K, V> lVar2 = atomicReferenceArray.get(i4);
                    if (lVar2 != null) {
                        l<K, V> lVarB = lVar2.b();
                        int iC = lVar2.c() & length2;
                        if (lVarB == null) {
                            atomicReferenceArrayA.set(iC, lVar2);
                            i = i3;
                        } else {
                            l<K, V> lVar3 = lVar2;
                            while (lVarB != null) {
                                int iC2 = lVarB.c() & length2;
                                if (iC2 != iC) {
                                    lVar = lVarB;
                                } else {
                                    iC2 = iC;
                                    lVar = lVar3;
                                }
                                lVarB = lVarB.b();
                                lVar3 = lVar;
                                iC = iC2;
                            }
                            atomicReferenceArrayA.set(iC, lVar3);
                            l<K, V> lVarB2 = lVar2;
                            i = i3;
                            while (lVarB2 != lVar3) {
                                int iC3 = lVarB2.c() & length2;
                                l<K, V> lVarA = a((l) lVarB2, (l) atomicReferenceArrayA.get(iC3));
                                if (lVarA != null) {
                                    atomicReferenceArrayA.set(iC3, lVarA);
                                    i2 = i;
                                } else {
                                    d(lVarB2);
                                    i2 = i - 1;
                                }
                                lVarB2 = lVarB2.b();
                                i = i2;
                            }
                        }
                    } else {
                        i = i3;
                    }
                    i4++;
                    i3 = i;
                }
                this.e = atomicReferenceArrayA;
                this.b = i3;
            }
        }

        boolean a(K k, int i, V v, V v2) {
            lock();
            try {
                o();
                AtomicReferenceArray<l<K, V>> atomicReferenceArray = this.e;
                int length = i & (atomicReferenceArray.length() - 1);
                l<K, V> lVar = atomicReferenceArray.get(length);
                for (l<K, V> lVarB = lVar; lVarB != null; lVarB = lVarB.b()) {
                    K kD = lVarB.d();
                    if (lVarB.c() == i && kD != null && this.a.f.equivalent(k, kD)) {
                        x<K, V> xVarA = lVarB.a();
                        V v3 = xVarA.get();
                        if (v3 != null) {
                            if (!this.a.g.equivalent(v, v3)) {
                                b(lVarB);
                                return false;
                            }
                            this.c++;
                            a((Object) k, i, (Object) v3, MapMaker.d.REPLACED);
                            a(lVarB, v2);
                            return true;
                        }
                        if (a(xVarA)) {
                            int i2 = this.b - 1;
                            this.c++;
                            a((Object) kD, i, (Object) v3, MapMaker.d.COLLECTED);
                            l<K, V> lVarB2 = b(lVar, lVarB);
                            int i3 = this.b - 1;
                            atomicReferenceArray.set(length, lVarB2);
                            this.b = i3;
                        }
                        return false;
                    }
                }
                return false;
            } finally {
                unlock();
                p();
            }
        }

        V a(K k, int i, V v) {
            lock();
            try {
                o();
                AtomicReferenceArray<l<K, V>> atomicReferenceArray = this.e;
                int length = i & (atomicReferenceArray.length() - 1);
                l<K, V> lVar = atomicReferenceArray.get(length);
                for (l<K, V> lVarB = lVar; lVarB != null; lVarB = lVarB.b()) {
                    K kD = lVarB.d();
                    if (lVarB.c() == i && kD != null && this.a.f.equivalent(k, kD)) {
                        x<K, V> xVarA = lVarB.a();
                        V v2 = xVarA.get();
                        if (v2 != null) {
                            this.c++;
                            a((Object) k, i, (Object) v2, MapMaker.d.REPLACED);
                            a(lVarB, v);
                            return v2;
                        }
                        if (a(xVarA)) {
                            int i2 = this.b - 1;
                            this.c++;
                            a((Object) kD, i, (Object) v2, MapMaker.d.COLLECTED);
                            l<K, V> lVarB2 = b(lVar, lVarB);
                            int i3 = this.b - 1;
                            atomicReferenceArray.set(length, lVarB2);
                            this.b = i3;
                        }
                        return null;
                    }
                }
                return null;
            } finally {
                unlock();
                p();
            }
        }

        V e(Object obj, int i) {
            MapMaker.d dVar;
            lock();
            try {
                o();
                int i2 = this.b - 1;
                AtomicReferenceArray<l<K, V>> atomicReferenceArray = this.e;
                int length = i & (atomicReferenceArray.length() - 1);
                l<K, V> lVar = atomicReferenceArray.get(length);
                for (l<K, V> lVarB = lVar; lVarB != null; lVarB = lVarB.b()) {
                    K kD = lVarB.d();
                    if (lVarB.c() == i && kD != null && this.a.f.equivalent(obj, kD)) {
                        x<K, V> xVarA = lVarB.a();
                        V v = xVarA.get();
                        if (v != null) {
                            dVar = MapMaker.d.EXPLICIT;
                        } else {
                            if (!a(xVarA)) {
                                return null;
                            }
                            dVar = MapMaker.d.COLLECTED;
                        }
                        this.c++;
                        a((Object) kD, i, (Object) v, dVar);
                        l<K, V> lVarB2 = b(lVar, lVarB);
                        int i3 = this.b - 1;
                        atomicReferenceArray.set(length, lVarB2);
                        this.b = i3;
                        return v;
                    }
                }
                return null;
            } finally {
                unlock();
                p();
            }
        }

        boolean b(Object obj, int i, Object obj2) {
            MapMaker.d dVar;
            lock();
            try {
                o();
                int i2 = this.b - 1;
                AtomicReferenceArray<l<K, V>> atomicReferenceArray = this.e;
                int length = i & (atomicReferenceArray.length() - 1);
                l<K, V> lVar = atomicReferenceArray.get(length);
                for (l<K, V> lVarB = lVar; lVarB != null; lVarB = lVarB.b()) {
                    K kD = lVarB.d();
                    if (lVarB.c() == i && kD != null && this.a.f.equivalent(obj, kD)) {
                        x<K, V> xVarA = lVarB.a();
                        V v = xVarA.get();
                        if (this.a.g.equivalent(obj2, v)) {
                            dVar = MapMaker.d.EXPLICIT;
                        } else {
                            if (!a(xVarA)) {
                                return false;
                            }
                            dVar = MapMaker.d.COLLECTED;
                        }
                        this.c++;
                        a((Object) kD, i, (Object) v, dVar);
                        l<K, V> lVarB2 = b(lVar, lVarB);
                        int i3 = this.b - 1;
                        atomicReferenceArray.set(length, lVarB2);
                        this.b = i3;
                        boolean z = dVar == MapMaker.d.EXPLICIT;
                        unlock();
                        p();
                        return z;
                    }
                }
                return false;
            } finally {
                unlock();
                p();
            }
        }

        void m() {
            if (this.b != 0) {
                lock();
                try {
                    AtomicReferenceArray<l<K, V>> atomicReferenceArray = this.e;
                    if (this.a.m != jj.r) {
                        for (int i = 0; i < atomicReferenceArray.length(); i++) {
                            for (l<K, V> lVarB = atomicReferenceArray.get(i); lVarB != null; lVarB = lVarB.b()) {
                                if (!lVarB.a().b()) {
                                    a((l) lVarB, MapMaker.d.EXPLICIT);
                                }
                            }
                        }
                    }
                    for (int i2 = 0; i2 < atomicReferenceArray.length(); i2++) {
                        atomicReferenceArray.set(i2, null);
                    }
                    e();
                    this.k.clear();
                    this.l.clear();
                    this.j.set(0);
                    this.c++;
                    this.b = 0;
                } finally {
                    unlock();
                    p();
                }
            }
        }

        @GuardedBy("this")
        l<K, V> b(l<K, V> lVar, l<K, V> lVar2) {
            int i;
            this.k.remove(lVar2);
            this.l.remove(lVar2);
            int i2 = this.b;
            l<K, V> lVarB = lVar2.b();
            while (lVar != lVar2) {
                l<K, V> lVarA = a((l) lVar, (l) lVarB);
                if (lVarA != null) {
                    i = i2;
                } else {
                    d(lVar);
                    l<K, V> lVar3 = lVarB;
                    i = i2 - 1;
                    lVarA = lVar3;
                }
                lVar = lVar.b();
                i2 = i;
                lVarB = lVarA;
            }
            this.b = i2;
            return lVarB;
        }

        void d(l<K, V> lVar) {
            a((l) lVar, MapMaker.d.COLLECTED);
            this.k.remove(lVar);
            this.l.remove(lVar);
        }

        boolean a(l<K, V> lVar, int i) {
            lock();
            try {
                int i2 = this.b - 1;
                AtomicReferenceArray<l<K, V>> atomicReferenceArray = this.e;
                int length = i & (atomicReferenceArray.length() - 1);
                l<K, V> lVar2 = atomicReferenceArray.get(length);
                for (l<K, V> lVarB = lVar2; lVarB != null; lVarB = lVarB.b()) {
                    if (lVarB == lVar) {
                        this.c++;
                        a((Object) lVarB.d(), i, (Object) lVarB.a().get(), MapMaker.d.COLLECTED);
                        l<K, V> lVarB2 = b(lVar2, lVarB);
                        int i3 = this.b - 1;
                        atomicReferenceArray.set(length, lVarB2);
                        this.b = i3;
                        return true;
                    }
                }
                return false;
            } finally {
                unlock();
                p();
            }
        }

        boolean a(K k, int i, x<K, V> xVar) {
            lock();
            try {
                int i2 = this.b - 1;
                AtomicReferenceArray<l<K, V>> atomicReferenceArray = this.e;
                int length = i & (atomicReferenceArray.length() - 1);
                l<K, V> lVar = atomicReferenceArray.get(length);
                for (l<K, V> lVarB = lVar; lVarB != null; lVarB = lVarB.b()) {
                    K kD = lVarB.d();
                    if (lVarB.c() == i && kD != null && this.a.f.equivalent(k, kD)) {
                        if (lVarB.a() != xVar) {
                            unlock();
                            if (!isHeldByCurrentThread()) {
                                p();
                            }
                            return false;
                        }
                        this.c++;
                        a((Object) k, i, (Object) xVar.get(), MapMaker.d.COLLECTED);
                        l<K, V> lVarB2 = b(lVar, lVarB);
                        int i3 = this.b - 1;
                        atomicReferenceArray.set(length, lVarB2);
                        this.b = i3;
                    }
                }
                unlock();
                if (!isHeldByCurrentThread()) {
                    p();
                }
                return false;
            } finally {
                unlock();
                if (!isHeldByCurrentThread()) {
                    p();
                }
            }
        }

        boolean b(K k, int i, x<K, V> xVar) {
            lock();
            try {
                AtomicReferenceArray<l<K, V>> atomicReferenceArray = this.e;
                int length = i & (atomicReferenceArray.length() - 1);
                l<K, V> lVar = atomicReferenceArray.get(length);
                for (l<K, V> lVarB = lVar; lVarB != null; lVarB = lVarB.b()) {
                    K kD = lVarB.d();
                    if (lVarB.c() == i && kD != null && this.a.f.equivalent(k, kD)) {
                        if (lVarB.a() != xVar) {
                            return false;
                        }
                        atomicReferenceArray.set(length, b(lVar, lVarB));
                        return true;
                    }
                }
                return false;
            } finally {
                unlock();
                p();
            }
        }

        @GuardedBy("this")
        boolean a(l<K, V> lVar, int i, MapMaker.d dVar) {
            int i2 = this.b - 1;
            AtomicReferenceArray<l<K, V>> atomicReferenceArray = this.e;
            int length = i & (atomicReferenceArray.length() - 1);
            l<K, V> lVar2 = atomicReferenceArray.get(length);
            for (l<K, V> lVarB = lVar2; lVarB != null; lVarB = lVarB.b()) {
                if (lVarB == lVar) {
                    this.c++;
                    a((Object) lVarB.d(), i, (Object) lVarB.a().get(), dVar);
                    l<K, V> lVarB2 = b(lVar2, lVarB);
                    int i3 = this.b - 1;
                    atomicReferenceArray.set(length, lVarB2);
                    this.b = i3;
                    return true;
                }
            }
            return false;
        }

        boolean a(x<K, V> xVar) {
            return !xVar.b() && xVar.get() == null;
        }

        V e(l<K, V> lVar) {
            if (lVar.d() == null) {
                a();
                return null;
            }
            V v = lVar.a().get();
            if (v == null) {
                a();
                return null;
            }
            if (!this.a.b() || !this.a.c((l) lVar)) {
                return v;
            }
            i();
            return null;
        }

        void n() {
            if ((this.j.incrementAndGet() & 63) == 0) {
                q();
            }
        }

        @GuardedBy("this")
        void o() {
            r();
        }

        void p() {
            s();
        }

        void q() {
            r();
            s();
        }

        void r() {
            if (tryLock()) {
                try {
                    b();
                    j();
                    this.j.set(0);
                } finally {
                    unlock();
                }
            }
        }

        void s() {
            if (!isHeldByCurrentThread()) {
                this.a.j();
            }
        }
    }

    static final class f<K, V> extends AbstractQueue<l<K, V>> {
        final l<K, V> a = new a<K, V>() { // from class: jj.f.1
            l<K, V> a = this;
            l<K, V> b = this;

            @Override // jj.a, jj.l
            public l<K, V> h() {
                return this.a;
            }

            @Override // jj.a, jj.l
            public void c(l<K, V> lVar) {
                this.a = lVar;
            }

            @Override // jj.a, jj.l
            public l<K, V> i() {
                return this.b;
            }

            @Override // jj.a, jj.l
            public void d(l<K, V> lVar) {
                this.b = lVar;
            }
        };

        f() {
        }

        @Override // java.util.Queue
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean offer(l<K, V> lVar) {
            jj.b(lVar.i(), lVar.h());
            jj.b(this.a.i(), lVar);
            jj.b(lVar, this.a);
            return true;
        }

        @Override // java.util.Queue
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public l<K, V> peek() {
            l<K, V> lVarH = this.a.h();
            if (lVarH == this.a) {
                return null;
            }
            return lVarH;
        }

        @Override // java.util.Queue
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public l<K, V> poll() {
            l<K, V> lVarH = this.a.h();
            if (lVarH == this.a) {
                return null;
            }
            remove(lVarH);
            return lVarH;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(Object obj) {
            l lVar = (l) obj;
            l<K, V> lVarI = lVar.i();
            l<K, V> lVarH = lVar.h();
            jj.b(lVarI, lVarH);
            jj.e(lVar);
            return lVarH != k.INSTANCE;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return ((l) obj).h() != k.INSTANCE;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return this.a.h() == this.a;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            int i = 0;
            for (l<K, V> lVarH = this.a.h(); lVarH != this.a; lVarH = lVarH.h()) {
                i++;
            }
            return i;
        }

        @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection
        public void clear() {
            l<K, V> lVarH = this.a.h();
            while (lVarH != this.a) {
                l<K, V> lVarH2 = lVarH.h();
                jj.e(lVarH);
                lVarH = lVarH2;
            }
            this.a.c(this.a);
            this.a.d(this.a);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<l<K, V>> iterator() {
            return new AbstractSequentialIterator<l<K, V>>(peek()) { // from class: jj.f.2
                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.google.common.collect.AbstractSequentialIterator
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public l<K, V> computeNext(l<K, V> lVar) {
                    l<K, V> lVarH = lVar.h();
                    if (lVarH == f.this.a) {
                        return null;
                    }
                    return lVarH;
                }
            };
        }
    }

    static final class g<K, V> extends AbstractQueue<l<K, V>> {
        final l<K, V> a = new a<K, V>() { // from class: jj.g.1
            l<K, V> a = this;
            l<K, V> b = this;

            @Override // jj.a, jj.l
            public long e() {
                return Long.MAX_VALUE;
            }

            @Override // jj.a, jj.l
            public void a(long j) {
            }

            @Override // jj.a, jj.l
            public l<K, V> f() {
                return this.a;
            }

            @Override // jj.a, jj.l
            public void a(l<K, V> lVar) {
                this.a = lVar;
            }

            @Override // jj.a, jj.l
            public l<K, V> g() {
                return this.b;
            }

            @Override // jj.a, jj.l
            public void b(l<K, V> lVar) {
                this.b = lVar;
            }
        };

        g() {
        }

        @Override // java.util.Queue
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean offer(l<K, V> lVar) {
            jj.a(lVar.g(), lVar.f());
            jj.a(this.a.g(), lVar);
            jj.a(lVar, this.a);
            return true;
        }

        @Override // java.util.Queue
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public l<K, V> peek() {
            l<K, V> lVarF = this.a.f();
            if (lVarF == this.a) {
                return null;
            }
            return lVarF;
        }

        @Override // java.util.Queue
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public l<K, V> poll() {
            l<K, V> lVarF = this.a.f();
            if (lVarF == this.a) {
                return null;
            }
            remove(lVarF);
            return lVarF;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(Object obj) {
            l lVar = (l) obj;
            l<K, V> lVarG = lVar.g();
            l<K, V> lVarF = lVar.f();
            jj.a(lVarG, lVarF);
            jj.d(lVar);
            return lVarF != k.INSTANCE;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return ((l) obj).f() != k.INSTANCE;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return this.a.f() == this.a;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            int i = 0;
            for (l<K, V> lVarF = this.a.f(); lVarF != this.a; lVarF = lVarF.f()) {
                i++;
            }
            return i;
        }

        @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection
        public void clear() {
            l<K, V> lVarF = this.a.f();
            while (lVarF != this.a) {
                l<K, V> lVarF2 = lVarF.f();
                jj.d(lVarF);
                lVarF = lVarF2;
            }
            this.a.a(this.a);
            this.a.b(this.a);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<l<K, V>> iterator() {
            return new AbstractSequentialIterator<l<K, V>>(peek()) { // from class: jj.g.2
                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.google.common.collect.AbstractSequentialIterator
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public l<K, V> computeNext(l<K, V> lVar) {
                    l<K, V> lVarF = lVar.f();
                    if (lVarF == g.this.a) {
                        return null;
                    }
                    return lVarF;
                }
            };
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean isEmpty() {
        n<K, V>[] nVarArr = this.d;
        long j2 = 0;
        for (int i2 = 0; i2 < nVarArr.length; i2++) {
            if (nVarArr[i2].b != 0) {
                return false;
            }
            j2 += (long) nVarArr[i2].c;
        }
        if (j2 != 0) {
            for (int i3 = 0; i3 < nVarArr.length; i3++) {
                if (nVarArr[i3].b != 0) {
                    return false;
                }
                j2 -= (long) nVarArr[i3].c;
            }
            if (j2 != 0) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        long j2 = 0;
        for (n<K, V> nVar : this.d) {
            j2 += (long) nVar.b;
        }
        return Ints.saturatedCast(j2);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(@Nullable Object obj) {
        if (obj == null) {
            return null;
        }
        int iB = b(obj);
        return b(iB).c(obj, iB);
    }

    public l<K, V> c(@Nullable Object obj) {
        if (obj == null) {
            return null;
        }
        int iB = b(obj);
        return b(iB).a(obj, iB);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(@Nullable Object obj) {
        if (obj == null) {
            return false;
        }
        int iB = b(obj);
        return b(iB).d(obj, iB);
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0045, code lost:
    
        r4 = r4 + ((long) r3.c);
        r2 = r2 + 1;
     */
    @Override // java.util.AbstractMap, java.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean containsValue(@javax.annotation.Nullable java.lang.Object r15) {
        /*
            r14 = this;
            if (r15 != 0) goto L4
            r0 = 0
        L3:
            return r0
        L4:
            jj$n<K, V>[] r7 = r14.d
            r4 = -1
            r0 = 0
            r6 = r0
            r8 = r4
        Lb:
            r0 = 3
            if (r6 >= r0) goto L51
            r2 = 0
            int r10 = r7.length
            r0 = 0
            r4 = r2
            r2 = r0
        L14:
            if (r2 >= r10) goto L4d
            r3 = r7[r2]
            int r0 = r3.b
            java.util.concurrent.atomic.AtomicReferenceArray<jj$l<K, V>> r11 = r3.e
            r0 = 0
            r1 = r0
        L1e:
            int r0 = r11.length()
            if (r1 >= r0) goto L45
            java.lang.Object r0 = r11.get(r1)
            jj$l r0 = (jj.l) r0
        L2a:
            if (r0 == 0) goto L41
            java.lang.Object r12 = r3.e(r0)
            if (r12 == 0) goto L3c
            com.google.common.base.Equivalence<java.lang.Object> r13 = r14.g
            boolean r12 = r13.equivalent(r15, r12)
            if (r12 == 0) goto L3c
            r0 = 1
            goto L3
        L3c:
            jj$l r0 = r0.b()
            goto L2a
        L41:
            int r0 = r1 + 1
            r1 = r0
            goto L1e
        L45:
            int r0 = r3.c
            long r0 = (long) r0
            long r4 = r4 + r0
            int r0 = r2 + 1
            r2 = r0
            goto L14
        L4d:
            int r0 = (r4 > r8 ? 1 : (r4 == r8 ? 0 : -1))
            if (r0 != 0) goto L53
        L51:
            r0 = 0
            goto L3
        L53:
            int r0 = r6 + 1
            r6 = r0
            r8 = r4
            goto Lb
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.jj.containsValue(java.lang.Object):boolean");
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V put(K k2, V v2) {
        Preconditions.checkNotNull(k2);
        Preconditions.checkNotNull(v2);
        int iB = b(k2);
        return b(iB).a((Object) k2, iB, (Object) v2, false);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public V putIfAbsent(K k2, V v2) {
        Preconditions.checkNotNull(k2);
        Preconditions.checkNotNull(v2);
        int iB = b(k2);
        return b(iB).a((Object) k2, iB, (Object) v2, true);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(@Nullable Object obj) {
        if (obj == null) {
            return null;
        }
        int iB = b(obj);
        return b(iB).e(obj, iB);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public boolean remove(@Nullable Object obj, @Nullable Object obj2) {
        if (obj == null || obj2 == null) {
            return false;
        }
        int iB = b(obj);
        return b(iB).b(obj, iB, obj2);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public boolean replace(K k2, @Nullable V v2, V v3) {
        Preconditions.checkNotNull(k2);
        Preconditions.checkNotNull(v3);
        if (v2 == null) {
            return false;
        }
        int iB = b(k2);
        return b(iB).a(k2, iB, v2, v3);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public V replace(K k2, V v2) {
        Preconditions.checkNotNull(k2);
        Preconditions.checkNotNull(v2);
        int iB = b(k2);
        return b(iB).a(k2, iB, v2);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        for (n<K, V> nVar : this.d) {
            nVar.m();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        Set<K> set = this.s;
        if (set != null) {
            return set;
        }
        j jVar = new j();
        this.s = jVar;
        return jVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Collection<V> values() {
        Collection<V> collection = this.t;
        if (collection != null) {
            return collection;
        }
        y yVar = new y();
        this.t = yVar;
        return yVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.u;
        if (set != null) {
            return set;
        }
        e eVar = new e();
        this.u = eVar;
        return eVar;
    }

    abstract class h<E> implements Iterator<E> {
        int b;
        int c = -1;
        n<K, V> d;
        AtomicReferenceArray<l<K, V>> e;
        l<K, V> f;
        jj<K, V>.ae g;
        jj<K, V>.ae h;

        h() {
            this.b = jj.this.d.length - 1;
            b();
        }

        final void b() {
            this.g = null;
            if (!c() && !d()) {
                while (this.b >= 0) {
                    n<K, V>[] nVarArr = jj.this.d;
                    int i = this.b;
                    this.b = i - 1;
                    this.d = nVarArr[i];
                    if (this.d.b != 0) {
                        this.e = this.d.e;
                        this.c = this.e.length() - 1;
                        if (d()) {
                            return;
                        }
                    }
                }
            }
        }

        boolean c() {
            if (this.f != null) {
                this.f = this.f.b();
                while (this.f != null) {
                    if (!a(this.f)) {
                        this.f = this.f.b();
                    } else {
                        return true;
                    }
                }
            }
            return false;
        }

        boolean d() {
            while (this.c >= 0) {
                AtomicReferenceArray<l<K, V>> atomicReferenceArray = this.e;
                int i = this.c;
                this.c = i - 1;
                l<K, V> lVar = atomicReferenceArray.get(i);
                this.f = lVar;
                if (lVar != null && (a(this.f) || c())) {
                    return true;
                }
            }
            return false;
        }

        boolean a(l<K, V> lVar) {
            n<K, V> nVar;
            try {
                K kD = lVar.d();
                Object objB = jj.this.b((l<K, Object>) lVar);
                if (objB != null) {
                    this.g = new ae(kD, objB);
                    return true;
                }
                return false;
            } finally {
                this.d.n();
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.g != null;
        }

        jj<K, V>.ae e() {
            if (this.g == null) {
                throw new NoSuchElementException();
            }
            this.h = this.g;
            b();
            return this.h;
        }

        @Override // java.util.Iterator
        public void remove() {
            hu.a(this.h != null);
            jj.this.remove(this.h.getKey());
            this.h = null;
        }
    }

    final class i extends jj<K, V>.h<K> {
        i() {
            super();
        }

        @Override // java.util.Iterator
        public K next() {
            return e().getKey();
        }
    }

    final class w extends jj<K, V>.h<V> {
        w() {
            super();
        }

        @Override // java.util.Iterator
        public V next() {
            return e().getValue();
        }
    }

    final class ae extends hh<K, V> {
        final K a;
        V b;

        ae(K k, V v) {
            this.a = k;
            this.b = v;
        }

        @Override // defpackage.hh, java.util.Map.Entry
        public K getKey() {
            return this.a;
        }

        @Override // defpackage.hh, java.util.Map.Entry
        public V getValue() {
            return this.b;
        }

        @Override // defpackage.hh, java.util.Map.Entry
        public boolean equals(@Nullable Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return this.a.equals(entry.getKey()) && this.b.equals(entry.getValue());
        }

        @Override // defpackage.hh, java.util.Map.Entry
        public int hashCode() {
            return this.a.hashCode() ^ this.b.hashCode();
        }

        @Override // defpackage.hh, java.util.Map.Entry
        public V setValue(V v) {
            V v2 = (V) jj.this.put(this.a, v);
            this.b = v;
            return v2;
        }
    }

    final class d extends jj<K, V>.h<Map.Entry<K, V>> {
        d() {
            super();
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Map.Entry<K, V> next() {
            return e();
        }
    }

    final class j extends m<K> {
        j() {
            super();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new i();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return jj.this.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return jj.this.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return jj.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return jj.this.remove(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            jj.this.clear();
        }
    }

    final class y extends AbstractCollection<V> {
        y() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return new w();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return jj.this.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return jj.this.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return jj.this.containsValue(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            jj.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public Object[] toArray() {
            return jj.b((Collection) this).toArray();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public <E> E[] toArray(E[] eArr) {
            return (E[]) jj.b((Collection) this).toArray(eArr);
        }
    }

    final class e extends m<Map.Entry<K, V>> {
        e() {
            super();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new d();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            Map.Entry entry;
            Object key;
            Object obj2;
            return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && (obj2 = jj.this.get(key)) != null && jj.this.g.equivalent(entry.getValue(), obj2);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            Map.Entry entry;
            Object key;
            return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && jj.this.remove(key, entry.getValue());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return jj.this.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return jj.this.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            jj.this.clear();
        }
    }

    static abstract class m<E> extends AbstractSet<E> {
        private m() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public Object[] toArray() {
            return jj.b((Collection) this).toArray();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public <E> E[] toArray(E[] eArr) {
            return (E[]) jj.b((Collection) this).toArray(eArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <E> ArrayList<E> b(Collection<E> collection) {
        ArrayList<E> arrayList = new ArrayList<>(collection.size());
        Iterators.addAll(arrayList, collection.iterator());
        return arrayList;
    }

    Object writeReplace() {
        return new o(this.h, this.i, this.f, this.g, this.l, this.k, this.j, this.e, this.n, this);
    }

    static abstract class b<K, V> extends ForwardingConcurrentMap<K, V> implements Serializable {
        private static final long serialVersionUID = 3;
        final q b;
        final q c;
        final Equivalence<Object> d;
        final Equivalence<Object> e;
        final long f;
        final long g;
        final int h;
        final int i;
        final MapMaker.e<? super K, ? super V> j;
        transient ConcurrentMap<K, V> k;

        b(q qVar, q qVar2, Equivalence<Object> equivalence, Equivalence<Object> equivalence2, long j, long j2, int i, int i2, MapMaker.e<? super K, ? super V> eVar, ConcurrentMap<K, V> concurrentMap) {
            this.b = qVar;
            this.c = qVar2;
            this.d = equivalence;
            this.e = equivalence2;
            this.f = j;
            this.g = j2;
            this.h = i;
            this.i = i2;
            this.j = eVar;
            this.k = concurrentMap;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.ForwardingConcurrentMap, com.google.common.collect.ForwardingMap, com.google.common.collect.ForwardingObject
        public ConcurrentMap<K, V> delegate() {
            return this.k;
        }

        void a(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.writeInt(this.k.size());
            for (Map.Entry<K, V> entry : this.k.entrySet()) {
                objectOutputStream.writeObject(entry.getKey());
                objectOutputStream.writeObject(entry.getValue());
            }
            objectOutputStream.writeObject(null);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [com.google.common.collect.MapMaker] */
        /* JADX WARN: Type inference failed for: r0v5, types: [com.google.common.collect.MapMaker] */
        MapMaker a(ObjectInputStream objectInputStream) throws IOException {
            ?? ConcurrencyLevel2 = new MapMaker().initialCapacity2(objectInputStream.readInt()).a(this.b).b(this.c).a(this.d).concurrencyLevel2(this.i);
            ConcurrencyLevel2.a(this.j);
            if (this.f > 0) {
                ConcurrencyLevel2.a(this.f, TimeUnit.NANOSECONDS);
            }
            if (this.g > 0) {
                ConcurrencyLevel2.b(this.g, TimeUnit.NANOSECONDS);
            }
            if (this.h != -1) {
                ConcurrencyLevel2.a(this.h);
            }
            return ConcurrencyLevel2;
        }

        void b(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
            while (true) {
                Object object = objectInputStream.readObject();
                if (object != null) {
                    this.k.put((K) object, (V) objectInputStream.readObject());
                } else {
                    return;
                }
            }
        }
    }

    static final class o<K, V> extends b<K, V> {
        private static final long serialVersionUID = 3;

        o(q qVar, q qVar2, Equivalence<Object> equivalence, Equivalence<Object> equivalence2, long j, long j2, int i, int i2, MapMaker.e<? super K, ? super V> eVar, ConcurrentMap<K, V> concurrentMap) {
            super(qVar, qVar2, equivalence, equivalence2, j, j2, i, i2, eVar, concurrentMap);
        }

        private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.defaultWriteObject();
            a(objectOutputStream);
        }

        private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
            objectInputStream.defaultReadObject();
            this.k = a(objectInputStream).makeMap();
            b(objectInputStream);
        }

        private Object readResolve() {
            return this.k;
        }
    }
}
