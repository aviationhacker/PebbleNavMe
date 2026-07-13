package defpackage;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Equivalence;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.base.Stopwatch;
import com.google.common.base.Ticker;
import com.google.common.cache.AbstractCache;
import com.google.common.cache.Cache;
import com.google.common.cache.CacheBuilder;
import com.google.common.cache.CacheLoader;
import com.google.common.cache.CacheStats;
import com.google.common.cache.ForwardingCache;
import com.google.common.cache.LoadingCache;
import com.google.common.cache.RemovalCause;
import com.google.common.cache.RemovalListener;
import com.google.common.cache.RemovalNotification;
import com.google.common.cache.Weigher;
import com.google.common.collect.AbstractSequentialIterator;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Iterators;
import com.google.common.collect.Maps;
import com.google.common.collect.Sets;
import com.google.common.primitives.Ints;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.MoreExecutors;
import com.google.common.util.concurrent.SettableFuture;
import com.google.common.util.concurrent.UncheckedExecutionException;
import com.google.common.util.concurrent.Uninterruptibles;
import com.google.j2objc.annotations.Weak;
import java.io.IOException;
import java.io.ObjectInputStream;
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
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.locks.ReentrantLock;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(emulated = true)
public class gx<K, V> extends AbstractMap<K, V> implements ConcurrentMap<K, V> {
    static final Logger a = Logger.getLogger(gx.class.getName());
    static final z<Object, Object> u = new z<Object, Object>() { // from class: gx.1
        @Override // gx.z
        public Object get() {
            return null;
        }

        @Override // gx.z
        public int a() {
            return 0;
        }

        @Override // gx.z
        public p<Object, Object> b() {
            return null;
        }

        @Override // gx.z
        public z<Object, Object> a(ReferenceQueue<Object> referenceQueue, @Nullable Object obj, p<Object, Object> pVar) {
            return this;
        }

        @Override // gx.z
        public boolean c() {
            return false;
        }

        @Override // gx.z
        public boolean d() {
            return false;
        }

        @Override // gx.z
        public Object e() {
            return null;
        }

        @Override // gx.z
        public void a(Object obj) {
        }
    };
    static final Queue<? extends Object> v = new AbstractQueue<Object>() { // from class: gx.2
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
            return ImmutableSet.of().iterator();
        }
    };
    final int b;
    final int c;
    final q<K, V>[] d;
    final int e;
    final Equivalence<Object> f;
    final Equivalence<Object> g;
    final s h;
    final s i;
    final long j;
    final Weigher<K, V> k;
    final long l;
    final long m;
    final long n;
    final Queue<RemovalNotification<K, V>> o;
    final RemovalListener<K, V> p;
    final Ticker q;
    final d r;
    final AbstractCache.StatsCounter s;

    @Nullable
    final CacheLoader<? super K, V> t;
    Set<K> w;
    Collection<V> x;
    Set<Map.Entry<K, V>> y;

    interface p<K, V> {
        z<K, V> a();

        void a(long j);

        void a(p<K, V> pVar);

        void a(z<K, V> zVar);

        @Nullable
        p<K, V> b();

        void b(long j);

        void b(p<K, V> pVar);

        int c();

        void c(p<K, V> pVar);

        @Nullable
        K d();

        void d(p<K, V> pVar);

        long e();

        p<K, V> f();

        p<K, V> g();

        long h();

        p<K, V> i();

        p<K, V> j();
    }

    public enum s {
        STRONG { // from class: gx.s.1
            @Override // gx.s
            <K, V> z<K, V> a(q<K, V> qVar, p<K, V> pVar, V v, int i) {
                return i == 1 ? new w(v) : new ah(v, i);
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // gx.s
            public Equivalence<Object> a() {
                return Equivalence.equals();
            }
        },
        SOFT { // from class: gx.s.2
            @Override // gx.s
            <K, V> z<K, V> a(q<K, V> qVar, p<K, V> pVar, V v, int i) {
                return i == 1 ? new r(qVar.i, v, pVar) : new ag(qVar.i, v, pVar, i);
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // gx.s
            public Equivalence<Object> a() {
                return Equivalence.identity();
            }
        },
        WEAK { // from class: gx.s.3
            @Override // gx.s
            <K, V> z<K, V> a(q<K, V> qVar, p<K, V> pVar, V v, int i) {
                return i == 1 ? new ae(qVar.i, v, pVar) : new ai(qVar.i, v, pVar, i);
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // gx.s
            public Equivalence<Object> a() {
                return Equivalence.identity();
            }
        };

        public abstract Equivalence<Object> a();

        abstract <K, V> z<K, V> a(q<K, V> qVar, p<K, V> pVar, V v, int i);
    }

    interface z<K, V> {
        int a();

        z<K, V> a(ReferenceQueue<V> referenceQueue, @Nullable V v, p<K, V> pVar);

        void a(@Nullable V v);

        @Nullable
        p<K, V> b();

        boolean c();

        boolean d();

        V e();

        @Nullable
        V get();
    }

    gx(CacheBuilder<? super K, ? super V> cacheBuilder, @Nullable CacheLoader<? super K, V> cacheLoader) {
        int i2 = 0;
        this.e = Math.min(cacheBuilder.e(), 65536);
        this.h = cacheBuilder.h();
        this.i = cacheBuilder.i();
        this.f = cacheBuilder.b();
        this.g = cacheBuilder.c();
        this.j = cacheBuilder.f();
        this.k = (Weigher<K, V>) cacheBuilder.g();
        this.l = cacheBuilder.k();
        this.m = cacheBuilder.j();
        this.n = cacheBuilder.l();
        this.p = (RemovalListener<K, V>) cacheBuilder.m();
        this.o = this.p == CacheBuilder.a.INSTANCE ? q() : new ConcurrentLinkedQueue<>();
        this.q = cacheBuilder.a(j());
        this.r = d.a(this.h, l(), k());
        this.s = cacheBuilder.n().get();
        this.t = cacheLoader;
        int iMin = Math.min(cacheBuilder.d(), Ints.MAX_POWER_OF_TWO);
        if (a() && !b()) {
            iMin = Math.min(iMin, (int) this.j);
        }
        int i3 = 1;
        int i4 = 0;
        while (i3 < this.e && (!a() || i3 * 20 <= this.j)) {
            i4++;
            i3 <<= 1;
        }
        this.c = 32 - i4;
        this.b = i3 - 1;
        this.d = c(i3);
        int i5 = iMin / i3;
        int i6 = 1;
        while (i6 < (i5 * i3 < iMin ? i5 + 1 : i5)) {
            i6 <<= 1;
        }
        if (a()) {
            long j2 = (this.j / ((long) i3)) + 1;
            long j3 = this.j % ((long) i3);
            while (true) {
                long j4 = j2;
                if (i2 < this.d.length) {
                    j2 = ((long) i2) == j3 ? j4 - 1 : j4;
                    this.d[i2] = a(i6, j2, cacheBuilder.n().get());
                    i2++;
                } else {
                    return;
                }
            }
        } else {
            while (i2 < this.d.length) {
                this.d[i2] = a(i6, -1L, cacheBuilder.n().get());
                i2++;
            }
        }
    }

    boolean a() {
        return this.j >= 0;
    }

    boolean b() {
        return this.k != CacheBuilder.b.INSTANCE;
    }

    boolean c() {
        return this.m > 0;
    }

    boolean d() {
        return this.l > 0;
    }

    boolean e() {
        return this.n > 0;
    }

    boolean f() {
        return d() || a();
    }

    boolean g() {
        return c();
    }

    boolean h() {
        return c() || e();
    }

    boolean i() {
        return d();
    }

    boolean j() {
        return h() || i();
    }

    boolean k() {
        return g() || h();
    }

    boolean l() {
        return f() || i();
    }

    boolean m() {
        return this.h != s.STRONG;
    }

    boolean n() {
        return this.i != s.STRONG;
    }

    enum d {
        STRONG { // from class: gx.d.1
            @Override // gx.d
            <K, V> p<K, V> a(q<K, V> qVar, K k, int i, @Nullable p<K, V> pVar) {
                return new v(k, i, pVar);
            }
        },
        STRONG_ACCESS { // from class: gx.d.2
            @Override // gx.d
            <K, V> p<K, V> a(q<K, V> qVar, K k, int i, @Nullable p<K, V> pVar) {
                return new t(k, i, pVar);
            }

            @Override // gx.d
            <K, V> p<K, V> a(q<K, V> qVar, p<K, V> pVar, p<K, V> pVar2) {
                p<K, V> pVarA = super.a(qVar, pVar, pVar2);
                a(pVar, pVarA);
                return pVarA;
            }
        },
        STRONG_WRITE { // from class: gx.d.3
            @Override // gx.d
            <K, V> p<K, V> a(q<K, V> qVar, K k, int i, @Nullable p<K, V> pVar) {
                return new x(k, i, pVar);
            }

            @Override // gx.d
            <K, V> p<K, V> a(q<K, V> qVar, p<K, V> pVar, p<K, V> pVar2) {
                p<K, V> pVarA = super.a(qVar, pVar, pVar2);
                b(pVar, pVarA);
                return pVarA;
            }
        },
        STRONG_ACCESS_WRITE { // from class: gx.d.4
            @Override // gx.d
            <K, V> p<K, V> a(q<K, V> qVar, K k, int i, @Nullable p<K, V> pVar) {
                return new u(k, i, pVar);
            }

            @Override // gx.d
            <K, V> p<K, V> a(q<K, V> qVar, p<K, V> pVar, p<K, V> pVar2) {
                p<K, V> pVarA = super.a(qVar, pVar, pVar2);
                a(pVar, pVarA);
                b(pVar, pVarA);
                return pVarA;
            }
        },
        WEAK { // from class: gx.d.5
            @Override // gx.d
            <K, V> p<K, V> a(q<K, V> qVar, K k, int i, @Nullable p<K, V> pVar) {
                return new ad(qVar.h, k, i, pVar);
            }
        },
        WEAK_ACCESS { // from class: gx.d.6
            @Override // gx.d
            <K, V> p<K, V> a(q<K, V> qVar, K k, int i, @Nullable p<K, V> pVar) {
                return new ab(qVar.h, k, i, pVar);
            }

            @Override // gx.d
            <K, V> p<K, V> a(q<K, V> qVar, p<K, V> pVar, p<K, V> pVar2) {
                p<K, V> pVarA = super.a(qVar, pVar, pVar2);
                a(pVar, pVarA);
                return pVarA;
            }
        },
        WEAK_WRITE { // from class: gx.d.7
            @Override // gx.d
            <K, V> p<K, V> a(q<K, V> qVar, K k, int i, @Nullable p<K, V> pVar) {
                return new af(qVar.h, k, i, pVar);
            }

            @Override // gx.d
            <K, V> p<K, V> a(q<K, V> qVar, p<K, V> pVar, p<K, V> pVar2) {
                p<K, V> pVarA = super.a(qVar, pVar, pVar2);
                b(pVar, pVarA);
                return pVarA;
            }
        },
        WEAK_ACCESS_WRITE { // from class: gx.d.8
            @Override // gx.d
            <K, V> p<K, V> a(q<K, V> qVar, K k, int i, @Nullable p<K, V> pVar) {
                return new ac(qVar.h, k, i, pVar);
            }

            @Override // gx.d
            <K, V> p<K, V> a(q<K, V> qVar, p<K, V> pVar, p<K, V> pVar2) {
                p<K, V> pVarA = super.a(qVar, pVar, pVar2);
                a(pVar, pVarA);
                b(pVar, pVarA);
                return pVarA;
            }
        };

        static final d[] i = {STRONG, STRONG_ACCESS, STRONG_WRITE, STRONG_ACCESS_WRITE, WEAK, WEAK_ACCESS, WEAK_WRITE, WEAK_ACCESS_WRITE};

        abstract <K, V> p<K, V> a(q<K, V> qVar, K k, int i2, @Nullable p<K, V> pVar);

        static d a(s sVar, boolean z, boolean z2) {
            return i[(z2 ? (char) 2 : (char) 0) | (z ? (char) 1 : (char) 0) | (sVar == s.WEAK ? (char) 4 : (char) 0)];
        }

        <K, V> p<K, V> a(q<K, V> qVar, p<K, V> pVar, p<K, V> pVar2) {
            return a(qVar, pVar.d(), pVar.c(), pVar2);
        }

        <K, V> void a(p<K, V> pVar, p<K, V> pVar2) {
            pVar2.a(pVar.e());
            gx.a(pVar.g(), pVar2);
            gx.a(pVar2, pVar.f());
            gx.b((p) pVar);
        }

        <K, V> void b(p<K, V> pVar, p<K, V> pVar2) {
            pVar2.b(pVar.h());
            gx.b(pVar.j(), pVar2);
            gx.b(pVar2, pVar.i());
            gx.c((p) pVar);
        }
    }

    static <K, V> z<K, V> o() {
        return (z<K, V>) u;
    }

    enum o implements p<Object, Object> {
        INSTANCE;

        @Override // gx.p
        public z<Object, Object> a() {
            return null;
        }

        @Override // gx.p
        public void a(z<Object, Object> zVar) {
        }

        @Override // gx.p
        public p<Object, Object> b() {
            return null;
        }

        @Override // gx.p
        public int c() {
            return 0;
        }

        @Override // gx.p
        public Object d() {
            return null;
        }

        @Override // gx.p
        public long e() {
            return 0L;
        }

        @Override // gx.p
        public void a(long j) {
        }

        @Override // gx.p
        public p<Object, Object> f() {
            return this;
        }

        @Override // gx.p
        public void a(p<Object, Object> pVar) {
        }

        @Override // gx.p
        public p<Object, Object> g() {
            return this;
        }

        @Override // gx.p
        public void b(p<Object, Object> pVar) {
        }

        @Override // gx.p
        public long h() {
            return 0L;
        }

        @Override // gx.p
        public void b(long j) {
        }

        @Override // gx.p
        public p<Object, Object> i() {
            return this;
        }

        @Override // gx.p
        public void c(p<Object, Object> pVar) {
        }

        @Override // gx.p
        public p<Object, Object> j() {
            return this;
        }

        @Override // gx.p
        public void d(p<Object, Object> pVar) {
        }
    }

    static abstract class b<K, V> implements p<K, V> {
        b() {
        }

        @Override // gx.p
        public z<K, V> a() {
            throw new UnsupportedOperationException();
        }

        @Override // gx.p
        public void a(z<K, V> zVar) {
            throw new UnsupportedOperationException();
        }

        @Override // gx.p
        public p<K, V> b() {
            throw new UnsupportedOperationException();
        }

        @Override // gx.p
        public int c() {
            throw new UnsupportedOperationException();
        }

        @Override // gx.p
        public K d() {
            throw new UnsupportedOperationException();
        }

        @Override // gx.p
        public long e() {
            throw new UnsupportedOperationException();
        }

        @Override // gx.p
        public void a(long j) {
            throw new UnsupportedOperationException();
        }

        @Override // gx.p
        public p<K, V> f() {
            throw new UnsupportedOperationException();
        }

        @Override // gx.p
        public void a(p<K, V> pVar) {
            throw new UnsupportedOperationException();
        }

        @Override // gx.p
        public p<K, V> g() {
            throw new UnsupportedOperationException();
        }

        @Override // gx.p
        public void b(p<K, V> pVar) {
            throw new UnsupportedOperationException();
        }

        @Override // gx.p
        public long h() {
            throw new UnsupportedOperationException();
        }

        @Override // gx.p
        public void b(long j) {
            throw new UnsupportedOperationException();
        }

        @Override // gx.p
        public p<K, V> i() {
            throw new UnsupportedOperationException();
        }

        @Override // gx.p
        public void c(p<K, V> pVar) {
            throw new UnsupportedOperationException();
        }

        @Override // gx.p
        public p<K, V> j() {
            throw new UnsupportedOperationException();
        }

        @Override // gx.p
        public void d(p<K, V> pVar) {
            throw new UnsupportedOperationException();
        }
    }

    static <K, V> p<K, V> p() {
        return o.INSTANCE;
    }

    static <E> Queue<E> q() {
        return (Queue<E>) v;
    }

    static class v<K, V> extends b<K, V> {
        final K g;
        final int h;
        final p<K, V> i;
        volatile z<K, V> j = gx.o();

        v(K k, int i, @Nullable p<K, V> pVar) {
            this.g = k;
            this.h = i;
            this.i = pVar;
        }

        @Override // gx.b, gx.p
        public K d() {
            return this.g;
        }

        @Override // gx.b, gx.p
        public z<K, V> a() {
            return this.j;
        }

        @Override // gx.b, gx.p
        public void a(z<K, V> zVar) {
            this.j = zVar;
        }

        @Override // gx.b, gx.p
        public int c() {
            return this.h;
        }

        @Override // gx.b, gx.p
        public p<K, V> b() {
            return this.i;
        }
    }

    static final class t<K, V> extends v<K, V> {
        volatile long a;
        p<K, V> b;
        p<K, V> c;

        t(K k, int i, @Nullable p<K, V> pVar) {
            super(k, i, pVar);
            this.a = Long.MAX_VALUE;
            this.b = gx.p();
            this.c = gx.p();
        }

        @Override // gx.b, gx.p
        public long e() {
            return this.a;
        }

        @Override // gx.b, gx.p
        public void a(long j) {
            this.a = j;
        }

        @Override // gx.b, gx.p
        public p<K, V> f() {
            return this.b;
        }

        @Override // gx.b, gx.p
        public void a(p<K, V> pVar) {
            this.b = pVar;
        }

        @Override // gx.b, gx.p
        public p<K, V> g() {
            return this.c;
        }

        @Override // gx.b, gx.p
        public void b(p<K, V> pVar) {
            this.c = pVar;
        }
    }

    static final class x<K, V> extends v<K, V> {
        volatile long a;
        p<K, V> b;
        p<K, V> c;

        x(K k, int i, @Nullable p<K, V> pVar) {
            super(k, i, pVar);
            this.a = Long.MAX_VALUE;
            this.b = gx.p();
            this.c = gx.p();
        }

        @Override // gx.b, gx.p
        public long h() {
            return this.a;
        }

        @Override // gx.b, gx.p
        public void b(long j) {
            this.a = j;
        }

        @Override // gx.b, gx.p
        public p<K, V> i() {
            return this.b;
        }

        @Override // gx.b, gx.p
        public void c(p<K, V> pVar) {
            this.b = pVar;
        }

        @Override // gx.b, gx.p
        public p<K, V> j() {
            return this.c;
        }

        @Override // gx.b, gx.p
        public void d(p<K, V> pVar) {
            this.c = pVar;
        }
    }

    static final class u<K, V> extends v<K, V> {
        volatile long a;
        p<K, V> b;
        p<K, V> c;
        volatile long d;
        p<K, V> e;
        p<K, V> f;

        u(K k, int i, @Nullable p<K, V> pVar) {
            super(k, i, pVar);
            this.a = Long.MAX_VALUE;
            this.b = gx.p();
            this.c = gx.p();
            this.d = Long.MAX_VALUE;
            this.e = gx.p();
            this.f = gx.p();
        }

        @Override // gx.b, gx.p
        public long e() {
            return this.a;
        }

        @Override // gx.b, gx.p
        public void a(long j) {
            this.a = j;
        }

        @Override // gx.b, gx.p
        public p<K, V> f() {
            return this.b;
        }

        @Override // gx.b, gx.p
        public void a(p<K, V> pVar) {
            this.b = pVar;
        }

        @Override // gx.b, gx.p
        public p<K, V> g() {
            return this.c;
        }

        @Override // gx.b, gx.p
        public void b(p<K, V> pVar) {
            this.c = pVar;
        }

        @Override // gx.b, gx.p
        public long h() {
            return this.d;
        }

        @Override // gx.b, gx.p
        public void b(long j) {
            this.d = j;
        }

        @Override // gx.b, gx.p
        public p<K, V> i() {
            return this.e;
        }

        @Override // gx.b, gx.p
        public void c(p<K, V> pVar) {
            this.e = pVar;
        }

        @Override // gx.b, gx.p
        public p<K, V> j() {
            return this.f;
        }

        @Override // gx.b, gx.p
        public void d(p<K, V> pVar) {
            this.f = pVar;
        }
    }

    static class ad<K, V> extends WeakReference<K> implements p<K, V> {
        final int g;
        final p<K, V> h;
        volatile z<K, V> i;

        ad(ReferenceQueue<K> referenceQueue, K k, int i, @Nullable p<K, V> pVar) {
            super(k, referenceQueue);
            this.i = gx.o();
            this.g = i;
            this.h = pVar;
        }

        @Override // gx.p
        public K d() {
            return (K) get();
        }

        public long e() {
            throw new UnsupportedOperationException();
        }

        public void a(long j) {
            throw new UnsupportedOperationException();
        }

        public p<K, V> f() {
            throw new UnsupportedOperationException();
        }

        public void a(p<K, V> pVar) {
            throw new UnsupportedOperationException();
        }

        public p<K, V> g() {
            throw new UnsupportedOperationException();
        }

        public void b(p<K, V> pVar) {
            throw new UnsupportedOperationException();
        }

        public long h() {
            throw new UnsupportedOperationException();
        }

        public void b(long j) {
            throw new UnsupportedOperationException();
        }

        public p<K, V> i() {
            throw new UnsupportedOperationException();
        }

        public void c(p<K, V> pVar) {
            throw new UnsupportedOperationException();
        }

        public p<K, V> j() {
            throw new UnsupportedOperationException();
        }

        public void d(p<K, V> pVar) {
            throw new UnsupportedOperationException();
        }

        @Override // gx.p
        public z<K, V> a() {
            return this.i;
        }

        @Override // gx.p
        public void a(z<K, V> zVar) {
            this.i = zVar;
        }

        @Override // gx.p
        public int c() {
            return this.g;
        }

        @Override // gx.p
        public p<K, V> b() {
            return this.h;
        }
    }

    static final class ab<K, V> extends ad<K, V> {
        volatile long a;
        p<K, V> b;
        p<K, V> c;

        ab(ReferenceQueue<K> referenceQueue, K k, int i, @Nullable p<K, V> pVar) {
            super(referenceQueue, k, i, pVar);
            this.a = Long.MAX_VALUE;
            this.b = gx.p();
            this.c = gx.p();
        }

        @Override // gx.ad, gx.p
        public long e() {
            return this.a;
        }

        @Override // gx.ad, gx.p
        public void a(long j) {
            this.a = j;
        }

        @Override // gx.ad, gx.p
        public p<K, V> f() {
            return this.b;
        }

        @Override // gx.ad, gx.p
        public void a(p<K, V> pVar) {
            this.b = pVar;
        }

        @Override // gx.ad, gx.p
        public p<K, V> g() {
            return this.c;
        }

        @Override // gx.ad, gx.p
        public void b(p<K, V> pVar) {
            this.c = pVar;
        }
    }

    static final class af<K, V> extends ad<K, V> {
        volatile long a;
        p<K, V> b;
        p<K, V> c;

        af(ReferenceQueue<K> referenceQueue, K k, int i, @Nullable p<K, V> pVar) {
            super(referenceQueue, k, i, pVar);
            this.a = Long.MAX_VALUE;
            this.b = gx.p();
            this.c = gx.p();
        }

        @Override // gx.ad, gx.p
        public long h() {
            return this.a;
        }

        @Override // gx.ad, gx.p
        public void b(long j) {
            this.a = j;
        }

        @Override // gx.ad, gx.p
        public p<K, V> i() {
            return this.b;
        }

        @Override // gx.ad, gx.p
        public void c(p<K, V> pVar) {
            this.b = pVar;
        }

        @Override // gx.ad, gx.p
        public p<K, V> j() {
            return this.c;
        }

        @Override // gx.ad, gx.p
        public void d(p<K, V> pVar) {
            this.c = pVar;
        }
    }

    static final class ac<K, V> extends ad<K, V> {
        volatile long a;
        p<K, V> b;
        p<K, V> c;
        volatile long d;
        p<K, V> e;
        p<K, V> f;

        ac(ReferenceQueue<K> referenceQueue, K k, int i, @Nullable p<K, V> pVar) {
            super(referenceQueue, k, i, pVar);
            this.a = Long.MAX_VALUE;
            this.b = gx.p();
            this.c = gx.p();
            this.d = Long.MAX_VALUE;
            this.e = gx.p();
            this.f = gx.p();
        }

        @Override // gx.ad, gx.p
        public long e() {
            return this.a;
        }

        @Override // gx.ad, gx.p
        public void a(long j) {
            this.a = j;
        }

        @Override // gx.ad, gx.p
        public p<K, V> f() {
            return this.b;
        }

        @Override // gx.ad, gx.p
        public void a(p<K, V> pVar) {
            this.b = pVar;
        }

        @Override // gx.ad, gx.p
        public p<K, V> g() {
            return this.c;
        }

        @Override // gx.ad, gx.p
        public void b(p<K, V> pVar) {
            this.c = pVar;
        }

        @Override // gx.ad, gx.p
        public long h() {
            return this.d;
        }

        @Override // gx.ad, gx.p
        public void b(long j) {
            this.d = j;
        }

        @Override // gx.ad, gx.p
        public p<K, V> i() {
            return this.e;
        }

        @Override // gx.ad, gx.p
        public void c(p<K, V> pVar) {
            this.e = pVar;
        }

        @Override // gx.ad, gx.p
        public p<K, V> j() {
            return this.f;
        }

        @Override // gx.ad, gx.p
        public void d(p<K, V> pVar) {
            this.f = pVar;
        }
    }

    static class ae<K, V> extends WeakReference<V> implements z<K, V> {
        final p<K, V> a;

        ae(ReferenceQueue<V> referenceQueue, V v, p<K, V> pVar) {
            super(v, referenceQueue);
            this.a = pVar;
        }

        @Override // gx.z
        public int a() {
            return 1;
        }

        @Override // gx.z
        public p<K, V> b() {
            return this.a;
        }

        @Override // gx.z
        public void a(V v) {
        }

        @Override // gx.z
        public z<K, V> a(ReferenceQueue<V> referenceQueue, V v, p<K, V> pVar) {
            return new ae(referenceQueue, v, pVar);
        }

        @Override // gx.z
        public boolean c() {
            return false;
        }

        @Override // gx.z
        public boolean d() {
            return true;
        }

        @Override // gx.z
        public V e() {
            return get();
        }
    }

    static class r<K, V> extends SoftReference<V> implements z<K, V> {
        final p<K, V> a;

        r(ReferenceQueue<V> referenceQueue, V v, p<K, V> pVar) {
            super(v, referenceQueue);
            this.a = pVar;
        }

        public int a() {
            return 1;
        }

        @Override // gx.z
        public p<K, V> b() {
            return this.a;
        }

        @Override // gx.z
        public void a(V v) {
        }

        public z<K, V> a(ReferenceQueue<V> referenceQueue, V v, p<K, V> pVar) {
            return new r(referenceQueue, v, pVar);
        }

        @Override // gx.z
        public boolean c() {
            return false;
        }

        @Override // gx.z
        public boolean d() {
            return true;
        }

        @Override // gx.z
        public V e() {
            return get();
        }
    }

    static class w<K, V> implements z<K, V> {
        final V a;

        w(V v) {
            this.a = v;
        }

        @Override // gx.z
        public V get() {
            return this.a;
        }

        @Override // gx.z
        public int a() {
            return 1;
        }

        @Override // gx.z
        public p<K, V> b() {
            return null;
        }

        @Override // gx.z
        public z<K, V> a(ReferenceQueue<V> referenceQueue, V v, p<K, V> pVar) {
            return this;
        }

        @Override // gx.z
        public boolean c() {
            return false;
        }

        @Override // gx.z
        public boolean d() {
            return true;
        }

        @Override // gx.z
        public V e() {
            return get();
        }

        @Override // gx.z
        public void a(V v) {
        }
    }

    static final class ai<K, V> extends ae<K, V> {
        final int b;

        ai(ReferenceQueue<V> referenceQueue, V v, p<K, V> pVar, int i) {
            super(referenceQueue, v, pVar);
            this.b = i;
        }

        @Override // gx.ae, gx.z
        public int a() {
            return this.b;
        }

        @Override // gx.ae, gx.z
        public z<K, V> a(ReferenceQueue<V> referenceQueue, V v, p<K, V> pVar) {
            return new ai(referenceQueue, v, pVar, this.b);
        }
    }

    static final class ag<K, V> extends r<K, V> {
        final int b;

        ag(ReferenceQueue<V> referenceQueue, V v, p<K, V> pVar, int i) {
            super(referenceQueue, v, pVar);
            this.b = i;
        }

        @Override // gx.r, gx.z
        public int a() {
            return this.b;
        }

        @Override // gx.r, gx.z
        public z<K, V> a(ReferenceQueue<V> referenceQueue, V v, p<K, V> pVar) {
            return new ag(referenceQueue, v, pVar, this.b);
        }
    }

    static final class ah<K, V> extends w<K, V> {
        final int b;

        ah(V v, int i) {
            super(v);
            this.b = i;
        }

        @Override // gx.w, gx.z
        public int a() {
            return this.b;
        }
    }

    static int a(int i2) {
        int i3 = ((i2 << 15) ^ (-12931)) + i2;
        int i4 = i3 ^ (i3 >>> 10);
        int i5 = i4 + (i4 << 3);
        int i6 = i5 ^ (i5 >>> 6);
        int i7 = i6 + (i6 << 2) + (i6 << 14);
        return i7 ^ (i7 >>> 16);
    }

    int a(@Nullable Object obj) {
        return a(this.f.hash(obj));
    }

    void a(z<K, V> zVar) {
        p<K, V> pVarB = zVar.b();
        int iC = pVarB.c();
        b(iC).a((Object) pVarB.d(), iC, (z) zVar);
    }

    void a(p<K, V> pVar) {
        int iC = pVar.c();
        b(iC).a((p) pVar, iC);
    }

    q<K, V> b(int i2) {
        return this.d[(i2 >>> this.c) & this.b];
    }

    q<K, V> a(int i2, long j2, AbstractCache.StatsCounter statsCounter) {
        return new q<>(this, i2, j2, statsCounter);
    }

    @Nullable
    V a(p<K, V> pVar, long j2) {
        V v2;
        if (pVar.d() == null || (v2 = pVar.a().get()) == null || b(pVar, j2)) {
            return null;
        }
        return v2;
    }

    boolean b(p<K, V> pVar, long j2) {
        Preconditions.checkNotNull(pVar);
        if (!d() || j2 - pVar.e() < this.l) {
            return c() && j2 - pVar.h() >= this.m;
        }
        return true;
    }

    static <K, V> void a(p<K, V> pVar, p<K, V> pVar2) {
        pVar.a(pVar2);
        pVar2.b(pVar);
    }

    static <K, V> void b(p<K, V> pVar) {
        p<K, V> pVarP = p();
        pVar.a(pVarP);
        pVar.b(pVarP);
    }

    static <K, V> void b(p<K, V> pVar, p<K, V> pVar2) {
        pVar.c(pVar2);
        pVar2.d(pVar);
    }

    static <K, V> void c(p<K, V> pVar) {
        p<K, V> pVarP = p();
        pVar.c(pVarP);
        pVar.d(pVarP);
    }

    void r() {
        while (true) {
            RemovalNotification<K, V> removalNotificationPoll = this.o.poll();
            if (removalNotificationPoll != null) {
                try {
                    this.p.onRemoval(removalNotificationPoll);
                } catch (Throwable th) {
                    a.log(Level.WARNING, "Exception thrown by removal listener", th);
                }
            } else {
                return;
            }
        }
    }

    final q<K, V>[] c(int i2) {
        return new q[i2];
    }

    static class q<K, V> extends ReentrantLock {

        @Weak
        final gx<K, V> a;
        volatile int b;

        @GuardedBy("this")
        long c;
        int d;
        int e;
        volatile AtomicReferenceArray<p<K, V>> f;
        final long g;
        final ReferenceQueue<K> h;
        final ReferenceQueue<V> i;
        final Queue<p<K, V>> j;
        final AtomicInteger k = new AtomicInteger();

        @GuardedBy("this")
        final Queue<p<K, V>> l;

        @GuardedBy("this")
        final Queue<p<K, V>> m;
        final AbstractCache.StatsCounter n;

        q(gx<K, V> gxVar, int i, long j, AbstractCache.StatsCounter statsCounter) {
            this.a = gxVar;
            this.g = j;
            this.n = (AbstractCache.StatsCounter) Preconditions.checkNotNull(statsCounter);
            a(a(i));
            this.h = gxVar.m() ? new ReferenceQueue<>() : null;
            this.i = gxVar.n() ? new ReferenceQueue<>() : null;
            this.j = gxVar.f() ? new ConcurrentLinkedQueue<>() : gx.q();
            this.l = gxVar.g() ? new aj<>() : gx.q();
            this.m = gxVar.f() ? new c<>() : gx.q();
        }

        AtomicReferenceArray<p<K, V>> a(int i) {
            return new AtomicReferenceArray<>(i);
        }

        void a(AtomicReferenceArray<p<K, V>> atomicReferenceArray) {
            this.e = (atomicReferenceArray.length() * 3) / 4;
            if (!this.a.b() && this.e == this.g) {
                this.e++;
            }
            this.f = atomicReferenceArray;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @GuardedBy("this")
        p<K, V> a(K k, int i, @Nullable p<K, V> pVar) {
            return this.a.r.a(this, Preconditions.checkNotNull(k), i, pVar);
        }

        @GuardedBy("this")
        p<K, V> a(p<K, V> pVar, p<K, V> pVar2) {
            if (pVar.d() == null) {
                return null;
            }
            z<K, V> zVarA = pVar.a();
            V v = zVarA.get();
            if (v == null && zVarA.d()) {
                return null;
            }
            p<K, V> pVarA = this.a.r.a(this, pVar, pVar2);
            pVarA.a(zVarA.a(this.i, v, pVarA));
            return pVarA;
        }

        @GuardedBy("this")
        void a(p<K, V> pVar, K k, V v, long j) {
            z<K, V> zVarA = pVar.a();
            int iWeigh = this.a.k.weigh(k, v);
            Preconditions.checkState(iWeigh >= 0, "Weights must be non-negative");
            pVar.a(this.a.i.a(this, pVar, v, iWeigh));
            a((p) pVar, iWeigh, j);
            zVarA.a(v);
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0045 A[Catch: ExecutionException -> 0x004d, all -> 0x005f, TRY_ENTER, TRY_LEAVE, TryCatch #0 {ExecutionException -> 0x004d, blocks: (B:3:0x0006, B:5:0x000a, B:7:0x0010, B:9:0x001e, B:12:0x0033, B:14:0x003d, B:16:0x0045), top: B:32:0x0006, outer: #1 }] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        V a(K r10, int r11, com.google.common.cache.CacheLoader<? super K, V> r12) {
            /*
                r9 = this;
                com.google.common.base.Preconditions.checkNotNull(r10)
                com.google.common.base.Preconditions.checkNotNull(r12)
                int r0 = r9.b     // Catch: java.util.concurrent.ExecutionException -> L4d java.lang.Throwable -> L5f
                if (r0 == 0) goto L45
                gx$p r2 = r9.a(r10, r11)     // Catch: java.util.concurrent.ExecutionException -> L4d java.lang.Throwable -> L5f
                if (r2 == 0) goto L45
                gx<K, V> r0 = r9.a     // Catch: java.util.concurrent.ExecutionException -> L4d java.lang.Throwable -> L5f
                com.google.common.base.Ticker r0 = r0.q     // Catch: java.util.concurrent.ExecutionException -> L4d java.lang.Throwable -> L5f
                long r6 = r0.read()     // Catch: java.util.concurrent.ExecutionException -> L4d java.lang.Throwable -> L5f
                java.lang.Object r5 = r9.c(r2, r6)     // Catch: java.util.concurrent.ExecutionException -> L4d java.lang.Throwable -> L5f
                if (r5 == 0) goto L33
                r9.a(r2, r6)     // Catch: java.util.concurrent.ExecutionException -> L4d java.lang.Throwable -> L5f
                com.google.common.cache.AbstractCache$StatsCounter r0 = r9.n     // Catch: java.util.concurrent.ExecutionException -> L4d java.lang.Throwable -> L5f
                r1 = 1
                r0.recordHits(r1)     // Catch: java.util.concurrent.ExecutionException -> L4d java.lang.Throwable -> L5f
                r1 = r9
                r3 = r10
                r4 = r11
                r8 = r12
                java.lang.Object r0 = r1.a(r2, r3, r4, r5, r6, r8)     // Catch: java.util.concurrent.ExecutionException -> L4d java.lang.Throwable -> L5f
                r9.l()
            L32:
                return r0
            L33:
                gx$z r0 = r2.a()     // Catch: java.util.concurrent.ExecutionException -> L4d java.lang.Throwable -> L5f
                boolean r1 = r0.c()     // Catch: java.util.concurrent.ExecutionException -> L4d java.lang.Throwable -> L5f
                if (r1 == 0) goto L45
                java.lang.Object r0 = r9.a(r2, r10, r0)     // Catch: java.util.concurrent.ExecutionException -> L4d java.lang.Throwable -> L5f
                r9.l()
                goto L32
            L45:
                java.lang.Object r0 = r9.b(r10, r11, r12)     // Catch: java.util.concurrent.ExecutionException -> L4d java.lang.Throwable -> L5f
                r9.l()
                goto L32
            L4d:
                r0 = move-exception
                r1 = r0
                java.lang.Throwable r0 = r1.getCause()     // Catch: java.lang.Throwable -> L5f
                boolean r2 = r0 instanceof java.lang.Error     // Catch: java.lang.Throwable -> L5f
                if (r2 == 0) goto L64
                com.google.common.util.concurrent.ExecutionError r1 = new com.google.common.util.concurrent.ExecutionError     // Catch: java.lang.Throwable -> L5f
                java.lang.Error r0 = (java.lang.Error) r0     // Catch: java.lang.Throwable -> L5f
                r1.<init>(r0)     // Catch: java.lang.Throwable -> L5f
                throw r1     // Catch: java.lang.Throwable -> L5f
            L5f:
                r0 = move-exception
                r9.l()
                throw r0
            L64:
                boolean r2 = r0 instanceof java.lang.RuntimeException     // Catch: java.lang.Throwable -> L5f
                if (r2 == 0) goto L6e
                com.google.common.util.concurrent.UncheckedExecutionException r1 = new com.google.common.util.concurrent.UncheckedExecutionException     // Catch: java.lang.Throwable -> L5f
                r1.<init>(r0)     // Catch: java.lang.Throwable -> L5f
                throw r1     // Catch: java.lang.Throwable -> L5f
            L6e:
                throw r1     // Catch: java.lang.Throwable -> L5f
            */
            throw new UnsupportedOperationException("Method not decompiled: gx.q.a(java.lang.Object, int, com.google.common.cache.CacheLoader):java.lang.Object");
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x0058, code lost:
        
            if (r7 == false) goto L48;
         */
        /* JADX WARN: Code restructure failed: missing block: B:14:0x005a, code lost:
        
            r5 = new gx.k<>();
         */
        /* JADX WARN: Code restructure failed: missing block: B:15:0x005f, code lost:
        
            if (r6 != null) goto L39;
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x0061, code lost:
        
            r4 = a((java.lang.Object) r19, r20, (gx.p) r4);
            r4.a(r5);
            r13.set(r14, r4);
         */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x0071, code lost:
        
            r5 = r4;
            r4 = r5;
         */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x007c, code lost:
        
            if (r7 == false) goto L47;
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x007e, code lost:
        
            monitor-enter(r5);
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x007f, code lost:
        
            r4 = a((java.lang.Object) r19, r20, (gx.k) r4, (com.google.common.cache.CacheLoader) r21);
         */
        /* JADX WARN: Code restructure failed: missing block: B:22:0x008b, code lost:
        
            monitor-exit(r5);
         */
        /* JADX WARN: Code restructure failed: missing block: B:24:0x0094, code lost:
        
            return r4;
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x00f4, code lost:
        
            r6.a(r5);
         */
        /* JADX WARN: Code restructure failed: missing block: B:40:0x00f7, code lost:
        
            r4 = r5;
            r5 = r6;
         */
        /* JADX WARN: Code restructure failed: missing block: B:44:0x00fe, code lost:
        
            r4 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:0x00ff, code lost:
        
            r18.n.recordMisses(1);
         */
        /* JADX WARN: Code restructure failed: missing block: B:46:0x0107, code lost:
        
            throw r4;
         */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x0111, code lost:
        
            r4 = null;
            r5 = r6;
         */
        /* JADX WARN: Code restructure failed: missing block: B:61:?, code lost:
        
            return a(r5, r19, r8);
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        V b(K r19, int r20, com.google.common.cache.CacheLoader<? super K, V> r21) {
            /*
                Method dump skipped, instruction units count: 284
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: gx.q.b(java.lang.Object, int, com.google.common.cache.CacheLoader):java.lang.Object");
        }

        V a(p<K, V> pVar, K k, z<K, V> zVar) {
            if (!zVar.c()) {
                throw new AssertionError();
            }
            Preconditions.checkState(!Thread.holdsLock(pVar), "Recursive load of: %s", k);
            try {
                V vE = zVar.e();
                if (vE == null) {
                    String strValueOf = String.valueOf(k);
                    throw new CacheLoader.InvalidCacheLoadException(new StringBuilder(String.valueOf(strValueOf).length() + 35).append("CacheLoader returned null for key ").append(strValueOf).append(".").toString());
                }
                a(pVar, this.a.q.read());
                return vE;
            } finally {
                this.n.recordMisses(1);
            }
        }

        V a(K k, int i, k<K, V> kVar, CacheLoader<? super K, V> cacheLoader) {
            return a((Object) k, i, (k) kVar, (ListenableFuture) kVar.a(k, cacheLoader));
        }

        ListenableFuture<V> b(final K k, final int i, final k<K, V> kVar, CacheLoader<? super K, V> cacheLoader) {
            final ListenableFuture<V> listenableFutureA = kVar.a(k, cacheLoader);
            listenableFutureA.addListener(new Runnable() { // from class: gx.q.1
                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference fix 'apply assigned field type' failed
                java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
                	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
                	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
                	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
                 */
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        q.this.a(k, i, (k<Object, V>) kVar, listenableFutureA);
                    } catch (Throwable th) {
                        gx.a.log(Level.WARNING, "Exception thrown during refresh", th);
                        kVar.a(th);
                    }
                }
            }, MoreExecutors.directExecutor());
            return listenableFutureA;
        }

        V a(K k, int i, k<K, V> kVar, ListenableFuture<V> listenableFuture) {
            try {
                V v = (V) Uninterruptibles.getUninterruptibly(listenableFuture);
                if (v == null) {
                    String strValueOf = String.valueOf(k);
                    throw new CacheLoader.InvalidCacheLoadException(new StringBuilder(String.valueOf(strValueOf).length() + 35).append("CacheLoader returned null for key ").append(strValueOf).append(".").toString());
                }
                this.n.recordLoadSuccess(kVar.f());
                a((Object) k, i, (k) kVar, (Object) v);
                if (v == null) {
                    this.n.recordLoadException(kVar.f());
                    a((Object) k, i, (k) kVar);
                }
                return v;
            } catch (Throwable th) {
                if (0 == 0) {
                    this.n.recordLoadException(kVar.f());
                    a((Object) k, i, (k) kVar);
                }
                throw th;
            }
        }

        V a(p<K, V> pVar, K k, int i, V v, long j, CacheLoader<? super K, V> cacheLoader) {
            V vA;
            return (!this.a.e() || j - pVar.h() <= this.a.n || pVar.a().c() || (vA = a((Object) k, i, (CacheLoader) cacheLoader, true)) == null) ? v : vA;
        }

        @Nullable
        V a(K k, int i, CacheLoader<? super K, V> cacheLoader, boolean z) {
            k<K, V> kVarA = a(k, i, z);
            if (kVarA == null) {
                return null;
            }
            ListenableFuture<V> listenableFutureB = b(k, i, kVarA, cacheLoader);
            if (!listenableFutureB.isDone()) {
                return null;
            }
            try {
                return (V) Uninterruptibles.getUninterruptibly(listenableFutureB);
            } catch (Throwable th) {
                return null;
            }
        }

        @Nullable
        k<K, V> a(K k, int i, boolean z) {
            lock();
            try {
                long j = this.a.q.read();
                c(j);
                AtomicReferenceArray<p<K, V>> atomicReferenceArray = this.f;
                int length = i & (atomicReferenceArray.length() - 1);
                p<K, V> pVar = (p) atomicReferenceArray.get(length);
                for (p pVarB = pVar; pVarB != null; pVarB = pVarB.b()) {
                    Object objD = pVarB.d();
                    if (pVarB.c() == i && objD != null && this.a.f.equivalent(k, objD)) {
                        z<K, V> zVarA = pVarB.a();
                        if (zVarA.c() || (z && j - pVarB.h() < this.a.n)) {
                            return null;
                        }
                        this.d++;
                        k<K, V> kVar = new k<>(zVarA);
                        pVarB.a(kVar);
                        return kVar;
                    }
                }
                this.d++;
                k<K, V> kVar2 = new k<>();
                p<K, V> pVarA = a((Object) k, i, (p) pVar);
                pVarA.a(kVar2);
                atomicReferenceArray.set(length, pVarA);
                return kVar2;
            } finally {
                unlock();
                m();
            }
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
            if (this.a.m()) {
                c();
            }
            if (this.a.n()) {
                d();
            }
        }

        @GuardedBy("this")
        void c() {
            int i = 0;
            do {
                int i2 = i;
                Reference<? extends K> referencePoll = this.h.poll();
                if (referencePoll != null) {
                    this.a.a((p) referencePoll);
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
                Reference<? extends V> referencePoll = this.i.poll();
                if (referencePoll != null) {
                    this.a.a((z) referencePoll);
                    i = i2 + 1;
                } else {
                    return;
                }
            } while (i != 16);
        }

        void e() {
            if (this.a.m()) {
                f();
            }
            if (this.a.n()) {
                g();
            }
        }

        void f() {
            while (this.h.poll() != null) {
            }
        }

        void g() {
            while (this.i.poll() != null) {
            }
        }

        void a(p<K, V> pVar, long j) {
            if (this.a.i()) {
                pVar.a(j);
            }
            this.j.add(pVar);
        }

        @GuardedBy("this")
        void b(p<K, V> pVar, long j) {
            if (this.a.i()) {
                pVar.a(j);
            }
            this.m.add(pVar);
        }

        @GuardedBy("this")
        void a(p<K, V> pVar, int i, long j) {
            h();
            this.c += (long) i;
            if (this.a.i()) {
                pVar.a(j);
            }
            if (this.a.h()) {
                pVar.b(j);
            }
            this.m.add(pVar);
            this.l.add(pVar);
        }

        @GuardedBy("this")
        void h() {
            while (true) {
                p<K, V> pVarPoll = this.j.poll();
                if (pVarPoll != null) {
                    if (this.m.contains(pVarPoll)) {
                        this.m.add(pVarPoll);
                    }
                } else {
                    return;
                }
            }
        }

        void a(long j) {
            if (tryLock()) {
                try {
                    b(j);
                } finally {
                    unlock();
                }
            }
        }

        @GuardedBy("this")
        void b(long j) {
            p<K, V> pVarPeek;
            p<K, V> pVarPeek2;
            h();
            do {
                pVarPeek = this.l.peek();
                if (pVarPeek == null || !this.a.b(pVarPeek, j)) {
                    do {
                        pVarPeek2 = this.m.peek();
                        if (pVarPeek2 == null || !this.a.b(pVarPeek2, j)) {
                            return;
                        }
                    } while (a((p) pVarPeek2, pVarPeek2.c(), RemovalCause.EXPIRED));
                    throw new AssertionError();
                }
            } while (a((p) pVarPeek, pVarPeek.c(), RemovalCause.EXPIRED));
            throw new AssertionError();
        }

        @GuardedBy("this")
        void a(p<K, V> pVar, RemovalCause removalCause) {
            a((Object) pVar.d(), pVar.c(), (z) pVar.a(), removalCause);
        }

        @GuardedBy("this")
        void a(@Nullable K k, int i, z<K, V> zVar, RemovalCause removalCause) {
            this.c -= (long) zVar.a();
            if (removalCause.a()) {
                this.n.recordEviction();
            }
            if (this.a.o != gx.v) {
                this.a.o.offer(RemovalNotification.create(k, zVar.get(), removalCause));
            }
        }

        @GuardedBy("this")
        void a(p<K, V> pVar) {
            if (this.a.a()) {
                h();
                if (pVar.a().a() > this.g && !a((p) pVar, pVar.c(), RemovalCause.SIZE)) {
                    throw new AssertionError();
                }
                while (this.c > this.g) {
                    p<K, V> pVarI = i();
                    if (!a((p) pVarI, pVarI.c(), RemovalCause.SIZE)) {
                        throw new AssertionError();
                    }
                }
            }
        }

        @GuardedBy("this")
        p<K, V> i() {
            for (p<K, V> pVar : this.m) {
                if (pVar.a().a() > 0) {
                    return pVar;
                }
            }
            throw new AssertionError();
        }

        p<K, V> b(int i) {
            return this.f.get((r0.length() - 1) & i);
        }

        @Nullable
        p<K, V> a(Object obj, int i) {
            for (p<K, V> pVarB = b(i); pVarB != null; pVarB = pVarB.b()) {
                if (pVarB.c() == i) {
                    K kD = pVarB.d();
                    if (kD == null) {
                        a();
                    } else if (this.a.f.equivalent(obj, kD)) {
                        return pVarB;
                    }
                }
            }
            return null;
        }

        @Nullable
        p<K, V> a(Object obj, int i, long j) {
            p<K, V> pVarA = a(obj, i);
            if (pVarA == null) {
                return null;
            }
            if (!this.a.b(pVarA, j)) {
                return pVarA;
            }
            a(j);
            return null;
        }

        V c(p<K, V> pVar, long j) {
            if (pVar.d() == null) {
                a();
                return null;
            }
            V v = pVar.a().get();
            if (v == null) {
                a();
                return null;
            }
            if (!this.a.b(pVar, j)) {
                return v;
            }
            a(j);
            return null;
        }

        @Nullable
        V b(Object obj, int i) {
            long j;
            p<K, V> pVarA;
            V vA = null;
            try {
                if (this.b != 0 && (pVarA = a(obj, i, (j = this.a.q.read()))) != null) {
                    V v = pVarA.a().get();
                    if (v != null) {
                        a(pVarA, j);
                        vA = a(pVarA, pVarA.d(), i, v, j, this.a.t);
                    } else {
                        a();
                    }
                }
                return vA;
            } finally {
                l();
            }
        }

        boolean c(Object obj, int i) {
            p<K, V> pVarA;
            try {
                if (this.b != 0 && (pVarA = a(obj, i, this.a.q.read())) != null) {
                    z = pVarA.a().get() != null;
                }
                return z;
            } finally {
                l();
            }
        }

        @Nullable
        V a(K k, int i, V v, boolean z) {
            int i2;
            lock();
            try {
                long j = this.a.q.read();
                c(j);
                if (this.b + 1 > this.e) {
                    j();
                    int i3 = this.b + 1;
                }
                AtomicReferenceArray<p<K, V>> atomicReferenceArray = this.f;
                int length = i & (atomicReferenceArray.length() - 1);
                p<K, V> pVar = atomicReferenceArray.get(length);
                for (p<K, V> pVarB = pVar; pVarB != null; pVarB = pVarB.b()) {
                    K kD = pVarB.d();
                    if (pVarB.c() == i && kD != null && this.a.f.equivalent(k, kD)) {
                        z<K, V> zVarA = pVarB.a();
                        V v2 = zVarA.get();
                        if (v2 != null) {
                            if (z) {
                                b(pVarB, j);
                                return v2;
                            }
                            this.d++;
                            a((Object) k, i, (z) zVarA, RemovalCause.REPLACED);
                            a(pVarB, k, v, j);
                            a(pVarB);
                            return v2;
                        }
                        this.d++;
                        if (zVarA.d()) {
                            a((Object) k, i, (z) zVarA, RemovalCause.COLLECTED);
                            a(pVarB, k, v, j);
                            i2 = this.b;
                        } else {
                            a(pVarB, k, v, j);
                            i2 = this.b + 1;
                        }
                        this.b = i2;
                        a(pVarB);
                        return null;
                    }
                }
                this.d++;
                p<K, V> pVarA = a((Object) k, i, (p) pVar);
                a(pVarA, k, v, j);
                atomicReferenceArray.set(length, pVarA);
                this.b++;
                a(pVarA);
                return null;
            } finally {
                unlock();
                m();
            }
        }

        @GuardedBy("this")
        void j() {
            int i;
            int i2;
            p<K, V> pVar;
            AtomicReferenceArray<p<K, V>> atomicReferenceArray = this.f;
            int length = atomicReferenceArray.length();
            if (length < 1073741824) {
                int i3 = this.b;
                AtomicReferenceArray<p<K, V>> atomicReferenceArrayA = a(length << 1);
                this.e = (atomicReferenceArrayA.length() * 3) / 4;
                int length2 = atomicReferenceArrayA.length() - 1;
                int i4 = 0;
                while (i4 < length) {
                    p<K, V> pVar2 = atomicReferenceArray.get(i4);
                    if (pVar2 != null) {
                        p<K, V> pVarB = pVar2.b();
                        int iC = pVar2.c() & length2;
                        if (pVarB == null) {
                            atomicReferenceArrayA.set(iC, pVar2);
                            i = i3;
                        } else {
                            p<K, V> pVar3 = pVar2;
                            while (pVarB != null) {
                                int iC2 = pVarB.c() & length2;
                                if (iC2 != iC) {
                                    pVar = pVarB;
                                } else {
                                    iC2 = iC;
                                    pVar = pVar3;
                                }
                                pVarB = pVarB.b();
                                pVar3 = pVar;
                                iC = iC2;
                            }
                            atomicReferenceArrayA.set(iC, pVar3);
                            p<K, V> pVarB2 = pVar2;
                            i = i3;
                            while (pVarB2 != pVar3) {
                                int iC3 = pVarB2.c() & length2;
                                p<K, V> pVarA = a(pVarB2, atomicReferenceArrayA.get(iC3));
                                if (pVarA != null) {
                                    atomicReferenceArrayA.set(iC3, pVarA);
                                    i2 = i;
                                } else {
                                    b(pVarB2);
                                    i2 = i - 1;
                                }
                                pVarB2 = pVarB2.b();
                                i = i2;
                            }
                        }
                    } else {
                        i = i3;
                    }
                    i4++;
                    i3 = i;
                }
                this.f = atomicReferenceArrayA;
                this.b = i3;
            }
        }

        boolean a(K k, int i, V v, V v2) {
            lock();
            try {
                long j = this.a.q.read();
                c(j);
                AtomicReferenceArray<p<K, V>> atomicReferenceArray = this.f;
                int length = i & (atomicReferenceArray.length() - 1);
                p<K, V> pVar = atomicReferenceArray.get(length);
                for (p<K, V> pVarB = pVar; pVarB != null; pVarB = pVarB.b()) {
                    K kD = pVarB.d();
                    if (pVarB.c() == i && kD != null && this.a.f.equivalent(k, kD)) {
                        z<K, V> zVarA = pVarB.a();
                        V v3 = zVarA.get();
                        if (v3 == null) {
                            if (zVarA.d()) {
                                int i2 = this.b - 1;
                                this.d++;
                                p<K, V> pVarA = a(pVar, pVarB, kD, i, zVarA, RemovalCause.COLLECTED);
                                int i3 = this.b - 1;
                                atomicReferenceArray.set(length, pVarA);
                                this.b = i3;
                            }
                            return false;
                        }
                        if (!this.a.g.equivalent(v, v3)) {
                            b(pVarB, j);
                            return false;
                        }
                        this.d++;
                        a((Object) k, i, (z) zVarA, RemovalCause.REPLACED);
                        a(pVarB, k, v2, j);
                        a(pVarB);
                        return true;
                    }
                }
                return false;
            } finally {
                unlock();
                m();
            }
        }

        @Nullable
        V a(K k, int i, V v) {
            lock();
            try {
                long j = this.a.q.read();
                c(j);
                AtomicReferenceArray<p<K, V>> atomicReferenceArray = this.f;
                int length = i & (atomicReferenceArray.length() - 1);
                p<K, V> pVar = atomicReferenceArray.get(length);
                for (p<K, V> pVarB = pVar; pVarB != null; pVarB = pVarB.b()) {
                    K kD = pVarB.d();
                    if (pVarB.c() == i && kD != null && this.a.f.equivalent(k, kD)) {
                        z<K, V> zVarA = pVarB.a();
                        V v2 = zVarA.get();
                        if (v2 != null) {
                            this.d++;
                            a((Object) k, i, (z) zVarA, RemovalCause.REPLACED);
                            a(pVarB, k, v, j);
                            a(pVarB);
                            return v2;
                        }
                        if (zVarA.d()) {
                            int i2 = this.b - 1;
                            this.d++;
                            p<K, V> pVarA = a(pVar, pVarB, kD, i, zVarA, RemovalCause.COLLECTED);
                            int i3 = this.b - 1;
                            atomicReferenceArray.set(length, pVarA);
                            this.b = i3;
                        }
                        return null;
                    }
                }
                return null;
            } finally {
                unlock();
                m();
            }
        }

        @Nullable
        V d(Object obj, int i) {
            RemovalCause removalCause;
            lock();
            try {
                c(this.a.q.read());
                int i2 = this.b - 1;
                AtomicReferenceArray<p<K, V>> atomicReferenceArray = this.f;
                int length = i & (atomicReferenceArray.length() - 1);
                p<K, V> pVar = atomicReferenceArray.get(length);
                for (p<K, V> pVarB = pVar; pVarB != null; pVarB = pVarB.b()) {
                    K kD = pVarB.d();
                    if (pVarB.c() == i && kD != null && this.a.f.equivalent(obj, kD)) {
                        z<K, V> zVarA = pVarB.a();
                        V v = zVarA.get();
                        if (v != null) {
                            removalCause = RemovalCause.EXPLICIT;
                        } else {
                            if (!zVarA.d()) {
                                return null;
                            }
                            removalCause = RemovalCause.COLLECTED;
                        }
                        this.d++;
                        p<K, V> pVarA = a(pVar, pVarB, kD, i, zVarA, removalCause);
                        int i3 = this.b - 1;
                        atomicReferenceArray.set(length, pVarA);
                        this.b = i3;
                        return v;
                    }
                }
                return null;
            } finally {
                unlock();
                m();
            }
        }

        boolean a(K k, int i, k<K, V> kVar, V v) {
            lock();
            try {
                long j = this.a.q.read();
                c(j);
                int i2 = this.b + 1;
                if (i2 > this.e) {
                    j();
                    i2 = this.b + 1;
                }
                AtomicReferenceArray<p<K, V>> atomicReferenceArray = this.f;
                int length = i & (atomicReferenceArray.length() - 1);
                p<K, V> pVar = atomicReferenceArray.get(length);
                for (p<K, V> pVarB = pVar; pVarB != null; pVarB = pVarB.b()) {
                    K kD = pVarB.d();
                    if (pVarB.c() == i && kD != null && this.a.f.equivalent(k, kD)) {
                        z<K, V> zVarA = pVarB.a();
                        V v2 = zVarA.get();
                        if (kVar != zVarA && (v2 != null || zVarA == gx.u)) {
                            a((Object) k, i, (z) new ah(v, 0), RemovalCause.REPLACED);
                            return false;
                        }
                        this.d++;
                        if (kVar.d()) {
                            a((Object) k, i, (z) kVar, v2 == null ? RemovalCause.COLLECTED : RemovalCause.REPLACED);
                            i2--;
                        }
                        a(pVarB, k, v, j);
                        this.b = i2;
                        a(pVarB);
                        return true;
                    }
                }
                this.d++;
                p<K, V> pVarA = a((Object) k, i, (p) pVar);
                a(pVarA, k, v, j);
                atomicReferenceArray.set(length, pVarA);
                this.b = i2;
                a(pVarA);
                return true;
            } finally {
                unlock();
                m();
            }
        }

        boolean b(Object obj, int i, Object obj2) {
            RemovalCause removalCause;
            lock();
            try {
                c(this.a.q.read());
                int i2 = this.b - 1;
                AtomicReferenceArray<p<K, V>> atomicReferenceArray = this.f;
                int length = i & (atomicReferenceArray.length() - 1);
                p<K, V> pVar = atomicReferenceArray.get(length);
                for (p<K, V> pVarB = pVar; pVarB != null; pVarB = pVarB.b()) {
                    K kD = pVarB.d();
                    if (pVarB.c() == i && kD != null && this.a.f.equivalent(obj, kD)) {
                        z<K, V> zVarA = pVarB.a();
                        V v = zVarA.get();
                        if (this.a.g.equivalent(obj2, v)) {
                            removalCause = RemovalCause.EXPLICIT;
                        } else {
                            if (v != null || !zVarA.d()) {
                                return false;
                            }
                            removalCause = RemovalCause.COLLECTED;
                        }
                        this.d++;
                        p<K, V> pVarA = a(pVar, pVarB, kD, i, zVarA, removalCause);
                        int i3 = this.b - 1;
                        atomicReferenceArray.set(length, pVarA);
                        this.b = i3;
                        boolean z = removalCause == RemovalCause.EXPLICIT;
                        unlock();
                        m();
                        return z;
                    }
                }
                return false;
            } finally {
                unlock();
                m();
            }
        }

        void k() {
            if (this.b != 0) {
                lock();
                try {
                    AtomicReferenceArray<p<K, V>> atomicReferenceArray = this.f;
                    for (int i = 0; i < atomicReferenceArray.length(); i++) {
                        for (p<K, V> pVarB = atomicReferenceArray.get(i); pVarB != null; pVarB = pVarB.b()) {
                            if (pVarB.a().d()) {
                                a(pVarB, RemovalCause.EXPLICIT);
                            }
                        }
                    }
                    for (int i2 = 0; i2 < atomicReferenceArray.length(); i2++) {
                        atomicReferenceArray.set(i2, null);
                    }
                    e();
                    this.l.clear();
                    this.m.clear();
                    this.k.set(0);
                    this.d++;
                    this.b = 0;
                } finally {
                    unlock();
                    m();
                }
            }
        }

        @GuardedBy("this")
        @Nullable
        p<K, V> a(p<K, V> pVar, p<K, V> pVar2, @Nullable K k, int i, z<K, V> zVar, RemovalCause removalCause) {
            a((Object) k, i, (z) zVar, removalCause);
            this.l.remove(pVar2);
            this.m.remove(pVar2);
            if (!zVar.c()) {
                return b(pVar, pVar2);
            }
            zVar.a(null);
            return pVar;
        }

        @GuardedBy("this")
        @Nullable
        p<K, V> b(p<K, V> pVar, p<K, V> pVar2) {
            int i;
            int i2 = this.b;
            p<K, V> pVarB = pVar2.b();
            while (pVar != pVar2) {
                p<K, V> pVarA = a(pVar, pVarB);
                if (pVarA != null) {
                    i = i2;
                } else {
                    b(pVar);
                    p<K, V> pVar3 = pVarB;
                    i = i2 - 1;
                    pVarA = pVar3;
                }
                pVar = pVar.b();
                i2 = i;
                pVarB = pVarA;
            }
            this.b = i2;
            return pVarB;
        }

        @GuardedBy("this")
        void b(p<K, V> pVar) {
            a(pVar, RemovalCause.COLLECTED);
            this.l.remove(pVar);
            this.m.remove(pVar);
        }

        boolean a(p<K, V> pVar, int i) {
            lock();
            try {
                int i2 = this.b - 1;
                AtomicReferenceArray<p<K, V>> atomicReferenceArray = this.f;
                int length = i & (atomicReferenceArray.length() - 1);
                p<K, V> pVar2 = atomicReferenceArray.get(length);
                for (p<K, V> pVarB = pVar2; pVarB != null; pVarB = pVarB.b()) {
                    if (pVarB == pVar) {
                        this.d++;
                        p<K, V> pVarA = a(pVar2, pVarB, pVarB.d(), i, pVarB.a(), RemovalCause.COLLECTED);
                        int i3 = this.b - 1;
                        atomicReferenceArray.set(length, pVarA);
                        this.b = i3;
                        return true;
                    }
                }
                return false;
            } finally {
                unlock();
                m();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x0035, code lost:
        
            if (r2.a() != r12) goto L17;
         */
        /* JADX WARN: Code restructure failed: missing block: B:12:0x0037, code lost:
        
            r9.d++;
            r0 = a(r1, r2, r3, r11, r12, com.google.common.cache.RemovalCause.COLLECTED);
            r1 = r9.b - 1;
            r7.set(r8, r0);
            r9.b = r1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:13:0x004f, code lost:
        
            r0 = true;
            unlock();
            r1 = isHeldByCurrentThread();
         */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x005d, code lost:
        
            unlock();
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x0064, code lost:
        
            if (isHeldByCurrentThread() != false) goto L16;
         */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x0066, code lost:
        
            m();
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        boolean a(K r10, int r11, gx.z<K, V> r12) {
            /*
                r9 = this;
                r0 = 0
                r9.lock()
                int r1 = r9.b     // Catch: java.lang.Throwable -> L7c
                int r1 = r1 + (-1)
                java.util.concurrent.atomic.AtomicReferenceArray<gx$p<K, V>> r7 = r9.f     // Catch: java.lang.Throwable -> L7c
                int r1 = r7.length()     // Catch: java.lang.Throwable -> L7c
                int r1 = r1 + (-1)
                r8 = r11 & r1
                java.lang.Object r1 = r7.get(r8)     // Catch: java.lang.Throwable -> L7c
                gx$p r1 = (gx.p) r1     // Catch: java.lang.Throwable -> L7c
                r2 = r1
            L19:
                if (r2 == 0) goto L6f
                java.lang.Object r3 = r2.d()     // Catch: java.lang.Throwable -> L7c
                int r4 = r2.c()     // Catch: java.lang.Throwable -> L7c
                if (r4 != r11) goto L6a
                if (r3 == 0) goto L6a
                gx<K, V> r4 = r9.a     // Catch: java.lang.Throwable -> L7c
                com.google.common.base.Equivalence<java.lang.Object> r4 = r4.f     // Catch: java.lang.Throwable -> L7c
                boolean r4 = r4.equivalent(r10, r3)     // Catch: java.lang.Throwable -> L7c
                if (r4 == 0) goto L6a
                gx$z r4 = r2.a()     // Catch: java.lang.Throwable -> L7c
                if (r4 != r12) goto L5d
                int r0 = r9.d     // Catch: java.lang.Throwable -> L7c
                int r0 = r0 + 1
                r9.d = r0     // Catch: java.lang.Throwable -> L7c
                com.google.common.cache.RemovalCause r6 = com.google.common.cache.RemovalCause.COLLECTED     // Catch: java.lang.Throwable -> L7c
                r0 = r9
                r4 = r11
                r5 = r12
                gx$p r0 = r0.a(r1, r2, r3, r4, r5, r6)     // Catch: java.lang.Throwable -> L7c
                int r1 = r9.b     // Catch: java.lang.Throwable -> L7c
                int r1 = r1 + (-1)
                r7.set(r8, r0)     // Catch: java.lang.Throwable -> L7c
                r9.b = r1     // Catch: java.lang.Throwable -> L7c
                r0 = 1
                r9.unlock()
                boolean r1 = r9.isHeldByCurrentThread()
                if (r1 != 0) goto L5c
                r9.m()
            L5c:
                return r0
            L5d:
                r9.unlock()
                boolean r1 = r9.isHeldByCurrentThread()
                if (r1 != 0) goto L5c
                r9.m()
                goto L5c
            L6a:
                gx$p r2 = r2.b()     // Catch: java.lang.Throwable -> L7c
                goto L19
            L6f:
                r9.unlock()
                boolean r1 = r9.isHeldByCurrentThread()
                if (r1 != 0) goto L5c
                r9.m()
                goto L5c
            L7c:
                r0 = move-exception
                r9.unlock()
                boolean r1 = r9.isHeldByCurrentThread()
                if (r1 != 0) goto L89
                r9.m()
            L89:
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: gx.q.a(java.lang.Object, int, gx$z):boolean");
        }

        boolean a(K k, int i, k<K, V> kVar) {
            lock();
            try {
                AtomicReferenceArray<p<K, V>> atomicReferenceArray = this.f;
                int length = i & (atomicReferenceArray.length() - 1);
                p<K, V> pVar = atomicReferenceArray.get(length);
                for (p<K, V> pVarB = pVar; pVarB != null; pVarB = pVarB.b()) {
                    K kD = pVarB.d();
                    if (pVarB.c() == i && kD != null && this.a.f.equivalent(k, kD)) {
                        if (pVarB.a() != kVar) {
                            return false;
                        }
                        if (kVar.d()) {
                            pVarB.a(kVar.g());
                        } else {
                            atomicReferenceArray.set(length, b(pVar, pVarB));
                        }
                        return true;
                    }
                }
                return false;
            } finally {
                unlock();
                m();
            }
        }

        @GuardedBy("this")
        boolean a(p<K, V> pVar, int i, RemovalCause removalCause) {
            int i2 = this.b - 1;
            AtomicReferenceArray<p<K, V>> atomicReferenceArray = this.f;
            int length = i & (atomicReferenceArray.length() - 1);
            p<K, V> pVar2 = atomicReferenceArray.get(length);
            for (p<K, V> pVarB = pVar2; pVarB != null; pVarB = pVarB.b()) {
                if (pVarB == pVar) {
                    this.d++;
                    p<K, V> pVarA = a(pVar2, pVarB, pVarB.d(), i, pVarB.a(), removalCause);
                    int i3 = this.b - 1;
                    atomicReferenceArray.set(length, pVarA);
                    this.b = i3;
                    return true;
                }
            }
            return false;
        }

        void l() {
            if ((this.k.incrementAndGet() & 63) == 0) {
                n();
            }
        }

        @GuardedBy("this")
        void c(long j) {
            d(j);
        }

        void m() {
            o();
        }

        void n() {
            d(this.a.q.read());
            o();
        }

        void d(long j) {
            if (tryLock()) {
                try {
                    b();
                    b(j);
                    this.k.set(0);
                } finally {
                    unlock();
                }
            }
        }

        void o() {
            if (!isHeldByCurrentThread()) {
                this.a.r();
            }
        }
    }

    static class k<K, V> implements z<K, V> {
        volatile z<K, V> a;
        final SettableFuture<V> b;
        final Stopwatch c;

        public k() {
            this(gx.o());
        }

        public k(z<K, V> zVar) {
            this.b = SettableFuture.create();
            this.c = Stopwatch.createUnstarted();
            this.a = zVar;
        }

        @Override // gx.z
        public boolean c() {
            return true;
        }

        @Override // gx.z
        public boolean d() {
            return this.a.d();
        }

        @Override // gx.z
        public int a() {
            return this.a.a();
        }

        public boolean b(@Nullable V v) {
            return this.b.set(v);
        }

        public boolean a(Throwable th) {
            return this.b.setException(th);
        }

        private ListenableFuture<V> b(Throwable th) {
            return Futures.immediateFailedFuture(th);
        }

        @Override // gx.z
        public void a(@Nullable V v) {
            if (v != null) {
                b(v);
            } else {
                this.a = gx.o();
            }
        }

        public ListenableFuture<V> a(K k, CacheLoader<? super K, V> cacheLoader) {
            ListenableFuture<V> listenableFutureB;
            try {
                this.c.start();
                V v = this.a.get();
                if (v == null) {
                    V vLoad = cacheLoader.load(k);
                    listenableFutureB = b(vLoad) ? this.b : Futures.immediateFuture(vLoad);
                } else {
                    ListenableFuture<V> listenableFutureReload = cacheLoader.reload(k, v);
                    if (listenableFutureReload == null) {
                        listenableFutureB = Futures.immediateFuture(null);
                    } else {
                        listenableFutureB = Futures.transform(listenableFutureReload, new Function<V, V>() { // from class: gx.k.1
                            @Override // com.google.common.base.Function
                            public V apply(V v2) {
                                k.this.b(v2);
                                return v2;
                            }
                        });
                    }
                }
            } catch (Throwable th) {
                listenableFutureB = a(th) ? this.b : b(th);
                if (th instanceof InterruptedException) {
                    Thread.currentThread().interrupt();
                }
            }
            return listenableFutureB;
        }

        public long f() {
            return this.c.elapsed(TimeUnit.NANOSECONDS);
        }

        @Override // gx.z
        public V e() {
            return (V) Uninterruptibles.getUninterruptibly(this.b);
        }

        @Override // gx.z
        public V get() {
            return this.a.get();
        }

        public z<K, V> g() {
            return this.a;
        }

        @Override // gx.z
        public p<K, V> b() {
            return null;
        }

        @Override // gx.z
        public z<K, V> a(ReferenceQueue<V> referenceQueue, @Nullable V v, p<K, V> pVar) {
            return this;
        }
    }

    static final class aj<K, V> extends AbstractQueue<p<K, V>> {
        final p<K, V> a = new b<K, V>() { // from class: gx.aj.1
            p<K, V> a = this;
            p<K, V> b = this;

            @Override // gx.b, gx.p
            public long h() {
                return Long.MAX_VALUE;
            }

            @Override // gx.b, gx.p
            public void b(long j) {
            }

            @Override // gx.b, gx.p
            public p<K, V> i() {
                return this.a;
            }

            @Override // gx.b, gx.p
            public void c(p<K, V> pVar) {
                this.a = pVar;
            }

            @Override // gx.b, gx.p
            public p<K, V> j() {
                return this.b;
            }

            @Override // gx.b, gx.p
            public void d(p<K, V> pVar) {
                this.b = pVar;
            }
        };

        aj() {
        }

        @Override // java.util.Queue
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean offer(p<K, V> pVar) {
            gx.b(pVar.j(), pVar.i());
            gx.b(this.a.j(), pVar);
            gx.b(pVar, this.a);
            return true;
        }

        @Override // java.util.Queue
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public p<K, V> peek() {
            p<K, V> pVarI = this.a.i();
            if (pVarI == this.a) {
                return null;
            }
            return pVarI;
        }

        @Override // java.util.Queue
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public p<K, V> poll() {
            p<K, V> pVarI = this.a.i();
            if (pVarI == this.a) {
                return null;
            }
            remove(pVarI);
            return pVarI;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(Object obj) {
            p pVar = (p) obj;
            p<K, V> pVarJ = pVar.j();
            p<K, V> pVarI = pVar.i();
            gx.b(pVarJ, pVarI);
            gx.c(pVar);
            return pVarI != o.INSTANCE;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return ((p) obj).i() != o.INSTANCE;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return this.a.i() == this.a;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            int i = 0;
            for (p<K, V> pVarI = this.a.i(); pVarI != this.a; pVarI = pVarI.i()) {
                i++;
            }
            return i;
        }

        @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection
        public void clear() {
            p<K, V> pVarI = this.a.i();
            while (pVarI != this.a) {
                p<K, V> pVarI2 = pVarI.i();
                gx.c((p) pVarI);
                pVarI = pVarI2;
            }
            this.a.c(this.a);
            this.a.d(this.a);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<p<K, V>> iterator() {
            return new AbstractSequentialIterator<p<K, V>>(peek()) { // from class: gx.aj.2
                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.google.common.collect.AbstractSequentialIterator
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public p<K, V> computeNext(p<K, V> pVar) {
                    p<K, V> pVarI = pVar.i();
                    if (pVarI == aj.this.a) {
                        return null;
                    }
                    return pVarI;
                }
            };
        }
    }

    static final class c<K, V> extends AbstractQueue<p<K, V>> {
        final p<K, V> a = new b<K, V>() { // from class: gx.c.1
            p<K, V> a = this;
            p<K, V> b = this;

            @Override // gx.b, gx.p
            public long e() {
                return Long.MAX_VALUE;
            }

            @Override // gx.b, gx.p
            public void a(long j) {
            }

            @Override // gx.b, gx.p
            public p<K, V> f() {
                return this.a;
            }

            @Override // gx.b, gx.p
            public void a(p<K, V> pVar) {
                this.a = pVar;
            }

            @Override // gx.b, gx.p
            public p<K, V> g() {
                return this.b;
            }

            @Override // gx.b, gx.p
            public void b(p<K, V> pVar) {
                this.b = pVar;
            }
        };

        c() {
        }

        @Override // java.util.Queue
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean offer(p<K, V> pVar) {
            gx.a(pVar.g(), pVar.f());
            gx.a(this.a.g(), pVar);
            gx.a(pVar, this.a);
            return true;
        }

        @Override // java.util.Queue
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public p<K, V> peek() {
            p<K, V> pVarF = this.a.f();
            if (pVarF == this.a) {
                return null;
            }
            return pVarF;
        }

        @Override // java.util.Queue
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public p<K, V> poll() {
            p<K, V> pVarF = this.a.f();
            if (pVarF == this.a) {
                return null;
            }
            remove(pVarF);
            return pVarF;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(Object obj) {
            p pVar = (p) obj;
            p<K, V> pVarG = pVar.g();
            p<K, V> pVarF = pVar.f();
            gx.a(pVarG, pVarF);
            gx.b(pVar);
            return pVarF != o.INSTANCE;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return ((p) obj).f() != o.INSTANCE;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return this.a.f() == this.a;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            int i = 0;
            for (p<K, V> pVarF = this.a.f(); pVarF != this.a; pVarF = pVarF.f()) {
                i++;
            }
            return i;
        }

        @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection
        public void clear() {
            p<K, V> pVarF = this.a.f();
            while (pVarF != this.a) {
                p<K, V> pVarF2 = pVarF.f();
                gx.b((p) pVarF);
                pVarF = pVarF2;
            }
            this.a.a(this.a);
            this.a.b(this.a);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<p<K, V>> iterator() {
            return new AbstractSequentialIterator<p<K, V>>(peek()) { // from class: gx.c.2
                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.google.common.collect.AbstractSequentialIterator
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public p<K, V> computeNext(p<K, V> pVar) {
                    p<K, V> pVarF = pVar.f();
                    if (pVarF == c.this.a) {
                        return null;
                    }
                    return pVarF;
                }
            };
        }
    }

    public void s() {
        for (q<K, V> qVar : this.d) {
            qVar.n();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean isEmpty() {
        q<K, V>[] qVarArr = this.d;
        long j2 = 0;
        for (int i2 = 0; i2 < qVarArr.length; i2++) {
            if (qVarArr[i2].b != 0) {
                return false;
            }
            j2 += (long) qVarArr[i2].d;
        }
        if (j2 != 0) {
            for (int i3 = 0; i3 < qVarArr.length; i3++) {
                if (qVarArr[i3].b != 0) {
                    return false;
                }
                j2 -= (long) qVarArr[i3].d;
            }
            if (j2 != 0) {
                return false;
            }
        }
        return true;
    }

    long t() {
        long jMax = 0;
        for (q<K, V> qVar : this.d) {
            jMax += (long) Math.max(0, qVar.b);
        }
        return jMax;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return Ints.saturatedCast(t());
    }

    @Override // java.util.AbstractMap, java.util.Map
    @Nullable
    public V get(@Nullable Object obj) {
        if (obj == null) {
            return null;
        }
        int iA = a(obj);
        return b(iA).b(obj, iA);
    }

    @Nullable
    public V b(Object obj) {
        int iA = a(Preconditions.checkNotNull(obj));
        V vB = b(iA).b(obj, iA);
        if (vB == null) {
            this.s.recordMisses(1);
        } else {
            this.s.recordHits(1);
        }
        return vB;
    }

    V a(K k2, CacheLoader<? super K, V> cacheLoader) {
        int iA = a(Preconditions.checkNotNull(k2));
        return b(iA).a((Object) k2, iA, (CacheLoader) cacheLoader);
    }

    V c(K k2) {
        return a(k2, this.t);
    }

    /* JADX WARN: Multi-variable type inference failed */
    ImmutableMap<K, V> a(Iterable<?> iterable) {
        int i2 = 0;
        LinkedHashMap linkedHashMapNewLinkedHashMap = Maps.newLinkedHashMap();
        int i3 = 0;
        for (Object obj : iterable) {
            V v2 = get(obj);
            if (v2 == null) {
                i2++;
            } else {
                linkedHashMapNewLinkedHashMap.put(obj, v2);
                i3++;
            }
        }
        this.s.recordHits(i3);
        this.s.recordMisses(i2);
        return ImmutableMap.copyOf((Map) linkedHashMapNewLinkedHashMap);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [com.google.common.cache.AbstractCache$StatsCounter] */
    /* JADX WARN: Type inference failed for: r1v3, types: [com.google.common.cache.AbstractCache$StatsCounter] */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.util.LinkedHashSet, java.util.Set] */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3, types: [int] */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9, types: [int] */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.util.LinkedHashMap, java.util.Map] */
    /* JADX WARN: Type inference failed for: r9v0, types: [gx, gx<K, V>] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    ImmutableMap<K, V> b(Iterable<? extends K> iterable) throws Throwable {
        Throwable th;
        int i2 = 0;
        ?? NewLinkedHashMap = Maps.newLinkedHashMap();
        ?? NewLinkedHashSet = Sets.newLinkedHashSet();
        int i3 = 0;
        for (K k2 : iterable) {
            Object obj = get(k2);
            if (!NewLinkedHashMap.containsKey(k2)) {
                NewLinkedHashMap.put(k2, obj);
                if (obj == null) {
                    i2++;
                    NewLinkedHashSet.add(k2);
                } else {
                    i3++;
                }
            }
        }
        try {
            if (NewLinkedHashSet.isEmpty()) {
                NewLinkedHashSet = i2;
            } else {
                try {
                    try {
                        Map mapA = a(NewLinkedHashSet, this.t);
                        for (Object obj2 : NewLinkedHashSet) {
                            Object obj3 = mapA.get(obj2);
                            if (obj3 == null) {
                                String strValueOf = String.valueOf(obj2);
                                throw new CacheLoader.InvalidCacheLoadException(new StringBuilder(String.valueOf(strValueOf).length() + 37).append("loadAll failed to return a value for ").append(strValueOf).toString());
                            }
                            NewLinkedHashMap.put(obj2, obj3);
                        }
                        NewLinkedHashSet = i2;
                    } catch (CacheLoader.UnsupportedLoadingOperationException e2) {
                        NewLinkedHashSet = i2;
                        for (Object obj4 : NewLinkedHashSet) {
                            int i4 = (NewLinkedHashSet == true ? 1 : 0) - 1;
                            NewLinkedHashMap.put(obj4, a(obj4, this.t));
                            NewLinkedHashSet = i4;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    this.s.recordHits(i3);
                    this.s.recordMisses(NewLinkedHashSet);
                    throw th;
                }
            }
            ImmutableMap<K, V> immutableMapCopyOf = ImmutableMap.copyOf((Map) NewLinkedHashMap);
            this.s.recordHits(i3);
            this.s.recordMisses(NewLinkedHashSet);
            return immutableMapCopyOf;
        } catch (Throwable th3) {
            NewLinkedHashSet = i2;
            th = th3;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0049  */
    @javax.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    java.util.Map<K, V> a(java.util.Set<? extends K> r8, com.google.common.cache.CacheLoader<? super K, V> r9) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 232
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.gx.a(java.util.Set, com.google.common.cache.CacheLoader):java.util.Map");
    }

    void d(K k2) {
        int iA = a(Preconditions.checkNotNull(k2));
        b(iA).a((Object) k2, iA, (CacheLoader) this.t, false);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(@Nullable Object obj) {
        if (obj == null) {
            return false;
        }
        int iA = a(obj);
        return b(iA).c(obj, iA);
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x006b, code lost:
    
        if (r8 != r12) goto L27;
     */
    @Override // java.util.AbstractMap, java.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean containsValue(@javax.annotation.Nullable java.lang.Object r21) {
        /*
            r20 = this;
            if (r21 != 0) goto L4
            r4 = 0
        L3:
            return r4
        L4:
            r0 = r20
            com.google.common.base.Ticker r4 = r0.q
            long r14 = r4.read()
            r0 = r20
            gx$q<K, V>[] r11 = r0.d
            r8 = -1
            r4 = 0
            r10 = r4
            r12 = r8
        L15:
            r4 = 3
            if (r10 >= r4) goto L6d
            r6 = 0
            int r0 = r11.length
            r16 = r0
            r4 = 0
            r8 = r6
            r6 = r4
        L20:
            r0 = r16
            if (r6 >= r0) goto L69
            r7 = r11[r6]
            int r4 = r7.b
            java.util.concurrent.atomic.AtomicReferenceArray<gx$p<K, V>> r0 = r7.f
            r17 = r0
            r4 = 0
            r5 = r4
        L2e:
            int r4 = r17.length()
            if (r5 >= r4) goto L61
            r0 = r17
            java.lang.Object r4 = r0.get(r5)
            gx$p r4 = (gx.p) r4
        L3c:
            if (r4 == 0) goto L5d
            java.lang.Object r18 = r7.c(r4, r14)
            if (r18 == 0) goto L58
            r0 = r20
            com.google.common.base.Equivalence<java.lang.Object> r0 = r0.g
            r19 = r0
            r0 = r19
            r1 = r21
            r2 = r18
            boolean r18 = r0.equivalent(r1, r2)
            if (r18 == 0) goto L58
            r4 = 1
            goto L3
        L58:
            gx$p r4 = r4.b()
            goto L3c
        L5d:
            int r4 = r5 + 1
            r5 = r4
            goto L2e
        L61:
            int r4 = r7.d
            long r4 = (long) r4
            long r8 = r8 + r4
            int r4 = r6 + 1
            r6 = r4
            goto L20
        L69:
            int r4 = (r8 > r12 ? 1 : (r8 == r12 ? 0 : -1))
            if (r4 != 0) goto L6f
        L6d:
            r4 = 0
            goto L3
        L6f:
            int r4 = r10 + 1
            r10 = r4
            r12 = r8
            goto L15
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.gx.containsValue(java.lang.Object):boolean");
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V put(K k2, V v2) {
        Preconditions.checkNotNull(k2);
        Preconditions.checkNotNull(v2);
        int iA = a(k2);
        return b(iA).a((Object) k2, iA, (Object) v2, false);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public V putIfAbsent(K k2, V v2) {
        Preconditions.checkNotNull(k2);
        Preconditions.checkNotNull(v2);
        int iA = a(k2);
        return b(iA).a((Object) k2, iA, (Object) v2, true);
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
        int iA = a(obj);
        return b(iA).d(obj, iA);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public boolean remove(@Nullable Object obj, @Nullable Object obj2) {
        if (obj == null || obj2 == null) {
            return false;
        }
        int iA = a(obj);
        return b(iA).b(obj, iA, obj2);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public boolean replace(K k2, @Nullable V v2, V v3) {
        Preconditions.checkNotNull(k2);
        Preconditions.checkNotNull(v3);
        if (v2 == null) {
            return false;
        }
        int iA = a(k2);
        return b(iA).a(k2, iA, v2, v3);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public V replace(K k2, V v2) {
        Preconditions.checkNotNull(k2);
        Preconditions.checkNotNull(v2);
        int iA = a(k2);
        return b(iA).a(k2, iA, v2);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        for (q<K, V> qVar : this.d) {
            qVar.k();
        }
    }

    void c(Iterable<?> iterable) {
        Iterator<?> it = iterable.iterator();
        while (it.hasNext()) {
            remove(it.next());
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        Set<K> set = this.w;
        if (set != null) {
            return set;
        }
        i iVar = new i(this);
        this.w = iVar;
        return iVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Collection<V> values() {
        Collection<V> collection = this.x;
        if (collection != null) {
            return collection;
        }
        aa aaVar = new aa(this);
        this.x = aaVar;
        return aaVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    @GwtIncompatible("Not supported.")
    public Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.y;
        if (set != null) {
            return set;
        }
        f fVar = new f(this);
        this.y = fVar;
        return fVar;
    }

    abstract class g<T> implements Iterator<T> {
        int b;
        int c = -1;
        q<K, V> d;
        AtomicReferenceArray<p<K, V>> e;
        p<K, V> f;
        gx<K, V>.ak g;
        gx<K, V>.ak h;

        g() {
            this.b = gx.this.d.length - 1;
            b();
        }

        final void b() {
            this.g = null;
            if (!c() && !d()) {
                while (this.b >= 0) {
                    q<K, V>[] qVarArr = gx.this.d;
                    int i = this.b;
                    this.b = i - 1;
                    this.d = qVarArr[i];
                    if (this.d.b != 0) {
                        this.e = this.d.f;
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
                AtomicReferenceArray<p<K, V>> atomicReferenceArray = this.e;
                int i = this.c;
                this.c = i - 1;
                p<K, V> pVar = atomicReferenceArray.get(i);
                this.f = pVar;
                if (pVar != null && (a(this.f) || c())) {
                    return true;
                }
            }
            return false;
        }

        boolean a(p<K, V> pVar) {
            q<K, V> qVar;
            try {
                long j = gx.this.q.read();
                K kD = pVar.d();
                Object objA = gx.this.a(pVar, j);
                if (objA != null) {
                    this.g = new ak(kD, objA);
                    return true;
                }
                return false;
            } finally {
                this.d.l();
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.g != null;
        }

        gx<K, V>.ak e() {
            if (this.g == null) {
                throw new NoSuchElementException();
            }
            this.h = this.g;
            b();
            return this.h;
        }

        @Override // java.util.Iterator
        public void remove() {
            Preconditions.checkState(this.h != null);
            gx.this.remove(this.h.getKey());
            this.h = null;
        }
    }

    final class h extends gx<K, V>.g<K> {
        h() {
            super();
        }

        @Override // java.util.Iterator
        public K next() {
            return e().getKey();
        }
    }

    final class y extends gx<K, V>.g<V> {
        y() {
            super();
        }

        @Override // java.util.Iterator
        public V next() {
            return e().getValue();
        }
    }

    final class ak implements Map.Entry<K, V> {
        final K a;
        V b;

        ak(K k, V v) {
            this.a = k;
            this.b = v;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.a;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.b;
        }

        @Override // java.util.Map.Entry
        public boolean equals(@Nullable Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return this.a.equals(entry.getKey()) && this.b.equals(entry.getValue());
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            return this.a.hashCode() ^ this.b.hashCode();
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            throw new UnsupportedOperationException();
        }

        public String toString() {
            String strValueOf = String.valueOf(getKey());
            String strValueOf2 = String.valueOf(getValue());
            return new StringBuilder(String.valueOf(strValueOf).length() + 1 + String.valueOf(strValueOf2).length()).append(strValueOf).append("=").append(strValueOf2).toString();
        }
    }

    final class e extends gx<K, V>.g<Map.Entry<K, V>> {
        e() {
            super();
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Map.Entry<K, V> next() {
            return e();
        }
    }

    abstract class a<T> extends AbstractSet<T> {

        @Weak
        final ConcurrentMap<?, ?> a;

        a(ConcurrentMap<?, ?> concurrentMap) {
            this.a = concurrentMap;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.a.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return this.a.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            this.a.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public Object[] toArray() {
            return gx.b((Collection) this).toArray();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public <E> E[] toArray(E[] eArr) {
            return (E[]) gx.b((Collection) this).toArray(eArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <E> ArrayList<E> b(Collection<E> collection) {
        ArrayList<E> arrayList = new ArrayList<>(collection.size());
        Iterators.addAll(arrayList, collection.iterator());
        return arrayList;
    }

    final class i extends gx<K, V>.a<K> {
        i(ConcurrentMap<?, ?> concurrentMap) {
            super(concurrentMap);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new h();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return this.a.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return this.a.remove(obj) != null;
        }
    }

    final class aa extends AbstractCollection<V> {
        private final ConcurrentMap<?, ?> b;

        aa(ConcurrentMap<?, ?> concurrentMap) {
            this.b = concurrentMap;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return this.b.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return this.b.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            this.b.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return new y();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return this.b.containsValue(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public Object[] toArray() {
            return gx.b((Collection) this).toArray();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public <E> E[] toArray(E[] eArr) {
            return (E[]) gx.b((Collection) this).toArray(eArr);
        }
    }

    final class f extends gx<K, V>.a<Map.Entry<K, V>> {
        f(ConcurrentMap<?, ?> concurrentMap) {
            super(concurrentMap);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new e();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            Map.Entry entry;
            Object key;
            Object obj2;
            return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && (obj2 = gx.this.get(key)) != null && gx.this.g.equivalent(entry.getValue(), obj2);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            Map.Entry entry;
            Object key;
            return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && gx.this.remove(key, entry.getValue());
        }
    }

    static class n<K, V> extends ForwardingCache<K, V> implements Serializable {
        private static final long serialVersionUID = 1;
        final s b;
        final s c;
        final Equivalence<Object> d;
        final Equivalence<Object> e;
        final long f;
        final long g;
        final long h;
        final Weigher<K, V> i;
        final int j;
        final RemovalListener<? super K, ? super V> k;
        final Ticker l;
        final CacheLoader<? super K, V> m;
        transient Cache<K, V> n;

        n(gx<K, V> gxVar) {
            this(gxVar.h, gxVar.i, gxVar.f, gxVar.g, gxVar.m, gxVar.l, gxVar.j, gxVar.k, gxVar.e, gxVar.p, gxVar.q, gxVar.t);
        }

        private n(s sVar, s sVar2, Equivalence<Object> equivalence, Equivalence<Object> equivalence2, long j, long j2, long j3, Weigher<K, V> weigher, int i, RemovalListener<? super K, ? super V> removalListener, Ticker ticker, CacheLoader<? super K, V> cacheLoader) {
            this.b = sVar;
            this.c = sVar2;
            this.d = equivalence;
            this.e = equivalence2;
            this.f = j;
            this.g = j2;
            this.h = j3;
            this.i = weigher;
            this.j = i;
            this.k = removalListener;
            this.l = (ticker == Ticker.systemTicker() || ticker == CacheBuilder.d) ? null : ticker;
            this.m = cacheLoader;
        }

        CacheBuilder<K, V> a() {
            CacheBuilder<K, V> cacheBuilder = (CacheBuilder<K, V>) CacheBuilder.newBuilder().a(this.b).b(this.c).a(this.d).b(this.e).concurrencyLevel(this.j).removalListener(this.k);
            cacheBuilder.e = false;
            if (this.f > 0) {
                cacheBuilder.expireAfterWrite(this.f, TimeUnit.NANOSECONDS);
            }
            if (this.g > 0) {
                cacheBuilder.expireAfterAccess(this.g, TimeUnit.NANOSECONDS);
            }
            if (this.i != CacheBuilder.b.INSTANCE) {
                cacheBuilder.weigher(this.i);
                if (this.h != -1) {
                    cacheBuilder.maximumWeight(this.h);
                }
            } else if (this.h != -1) {
                cacheBuilder.maximumSize(this.h);
            }
            if (this.l != null) {
                cacheBuilder.ticker(this.l);
            }
            return cacheBuilder;
        }

        private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
            objectInputStream.defaultReadObject();
            this.n = (Cache<K, V>) a().build();
        }

        private Object readResolve() {
            return this.n;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.cache.ForwardingCache, com.google.common.collect.ForwardingObject
        public Cache<K, V> delegate() {
            return this.n;
        }
    }

    static final class j<K, V> extends n<K, V> implements LoadingCache<K, V>, Serializable {
        private static final long serialVersionUID = 1;
        transient LoadingCache<K, V> a;

        j(gx<K, V> gxVar) {
            super(gxVar);
        }

        private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
            objectInputStream.defaultReadObject();
            this.a = (LoadingCache<K, V>) a().build(this.m);
        }

        @Override // com.google.common.cache.LoadingCache
        public V get(K k) {
            return this.a.get(k);
        }

        @Override // com.google.common.cache.LoadingCache
        public V getUnchecked(K k) {
            return this.a.getUnchecked(k);
        }

        @Override // com.google.common.cache.LoadingCache
        public ImmutableMap<K, V> getAll(Iterable<? extends K> iterable) {
            return this.a.getAll(iterable);
        }

        @Override // com.google.common.cache.LoadingCache, com.google.common.base.Function
        public final V apply(K k) {
            return this.a.apply(k);
        }

        @Override // com.google.common.cache.LoadingCache
        public void refresh(K k) {
            this.a.refresh(k);
        }

        private Object readResolve() {
            return this.a;
        }
    }

    public static class m<K, V> implements Cache<K, V>, Serializable {
        private static final long serialVersionUID = 1;
        final gx<K, V> a;

        public m(CacheBuilder<? super K, ? super V> cacheBuilder) {
            this(new gx(cacheBuilder, null));
        }

        private m(gx<K, V> gxVar) {
            this.a = gxVar;
        }

        @Override // com.google.common.cache.Cache
        @Nullable
        public V getIfPresent(Object obj) {
            return this.a.b(obj);
        }

        @Override // com.google.common.cache.Cache
        public V get(K k, final Callable<? extends V> callable) {
            Preconditions.checkNotNull(callable);
            return this.a.a(k, new CacheLoader<Object, V>() { // from class: gx.m.1
                @Override // com.google.common.cache.CacheLoader
                public V load(Object obj) {
                    return (V) callable.call();
                }
            });
        }

        @Override // com.google.common.cache.Cache
        public ImmutableMap<K, V> getAllPresent(Iterable<?> iterable) {
            return this.a.a(iterable);
        }

        @Override // com.google.common.cache.Cache
        public void put(K k, V v) {
            this.a.put(k, v);
        }

        @Override // com.google.common.cache.Cache
        public void putAll(Map<? extends K, ? extends V> map) {
            this.a.putAll(map);
        }

        @Override // com.google.common.cache.Cache
        public void invalidate(Object obj) {
            Preconditions.checkNotNull(obj);
            this.a.remove(obj);
        }

        @Override // com.google.common.cache.Cache
        public void invalidateAll(Iterable<?> iterable) {
            this.a.c(iterable);
        }

        @Override // com.google.common.cache.Cache
        public void invalidateAll() {
            this.a.clear();
        }

        @Override // com.google.common.cache.Cache
        public long size() {
            return this.a.t();
        }

        @Override // com.google.common.cache.Cache
        public ConcurrentMap<K, V> asMap() {
            return this.a;
        }

        @Override // com.google.common.cache.Cache
        public CacheStats stats() {
            AbstractCache.SimpleStatsCounter simpleStatsCounter = new AbstractCache.SimpleStatsCounter();
            simpleStatsCounter.incrementBy(this.a.s);
            for (q<K, V> qVar : this.a.d) {
                simpleStatsCounter.incrementBy(qVar.n);
            }
            return simpleStatsCounter.snapshot();
        }

        @Override // com.google.common.cache.Cache
        public void cleanUp() {
            this.a.s();
        }

        Object writeReplace() {
            return new n(this.a);
        }
    }

    public static class l<K, V> extends m<K, V> implements LoadingCache<K, V> {
        private static final long serialVersionUID = 1;

        public l(CacheBuilder<? super K, ? super V> cacheBuilder, CacheLoader<? super K, V> cacheLoader) {
            super();
        }

        @Override // com.google.common.cache.LoadingCache
        public V get(K k) {
            return this.a.c(k);
        }

        @Override // com.google.common.cache.LoadingCache
        public V getUnchecked(K k) {
            try {
                return get(k);
            } catch (ExecutionException e) {
                throw new UncheckedExecutionException(e.getCause());
            }
        }

        @Override // com.google.common.cache.LoadingCache
        public ImmutableMap<K, V> getAll(Iterable<? extends K> iterable) {
            return this.a.b((Iterable) iterable);
        }

        @Override // com.google.common.cache.LoadingCache
        public void refresh(K k) {
            this.a.d(k);
        }

        @Override // com.google.common.cache.LoadingCache, com.google.common.base.Function
        public final V apply(K k) {
            return getUnchecked(k);
        }

        @Override // gx.m
        Object writeReplace() {
            return new j(this.a);
        }
    }
}
