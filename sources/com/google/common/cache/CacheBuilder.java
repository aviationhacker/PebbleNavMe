package com.google.common.cache;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Ascii;
import com.google.common.base.Equivalence;
import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;
import com.google.common.base.Ticker;
import com.google.common.cache.AbstractCache;
import defpackage.gx;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.CheckReturnValue;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(emulated = true)
public final class CacheBuilder<K, V> {
    static final Supplier<? extends AbstractCache.StatsCounter> a = Suppliers.ofInstance(new AbstractCache.StatsCounter() { // from class: com.google.common.cache.CacheBuilder.1
        @Override // com.google.common.cache.AbstractCache.StatsCounter
        public void recordHits(int i) {
        }

        @Override // com.google.common.cache.AbstractCache.StatsCounter
        public void recordMisses(int i) {
        }

        @Override // com.google.common.cache.AbstractCache.StatsCounter
        public void recordLoadSuccess(long j) {
        }

        @Override // com.google.common.cache.AbstractCache.StatsCounter
        public void recordLoadException(long j) {
        }

        @Override // com.google.common.cache.AbstractCache.StatsCounter
        public void recordEviction() {
        }

        @Override // com.google.common.cache.AbstractCache.StatsCounter
        public CacheStats snapshot() {
            return CacheBuilder.b;
        }
    });
    static final CacheStats b = new CacheStats(0, 0, 0, 0, 0, 0);
    static final Supplier<AbstractCache.StatsCounter> c = new Supplier<AbstractCache.StatsCounter>() { // from class: com.google.common.cache.CacheBuilder.2
        @Override // com.google.common.base.Supplier
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public AbstractCache.StatsCounter get() {
            return new AbstractCache.SimpleStatsCounter();
        }
    };
    public static final Ticker d = new Ticker() { // from class: com.google.common.cache.CacheBuilder.3
        @Override // com.google.common.base.Ticker
        public long read() {
            return 0L;
        }
    };
    private static final Logger u = Logger.getLogger(CacheBuilder.class.getName());
    Weigher<? super K, ? super V> j;
    gx.s k;
    gx.s l;
    Equivalence<Object> p;
    Equivalence<Object> q;
    RemovalListener<? super K, ? super V> r;
    Ticker s;
    public boolean e = true;
    int f = -1;
    int g = -1;
    long h = -1;
    long i = -1;
    long m = -1;
    long n = -1;
    long o = -1;
    Supplier<? extends AbstractCache.StatsCounter> t = a;

    public enum a implements RemovalListener<Object, Object> {
        INSTANCE;

        @Override // com.google.common.cache.RemovalListener
        public void onRemoval(RemovalNotification<Object, Object> removalNotification) {
        }
    }

    public enum b implements Weigher<Object, Object> {
        INSTANCE;

        @Override // com.google.common.cache.Weigher
        public int weigh(Object obj, Object obj2) {
            return 1;
        }
    }

    CacheBuilder() {
    }

    public static CacheBuilder<Object, Object> newBuilder() {
        return new CacheBuilder<>();
    }

    @GwtIncompatible("To be supported")
    public static CacheBuilder<Object, Object> from(CacheBuilderSpec cacheBuilderSpec) {
        return cacheBuilderSpec.a().a();
    }

    @GwtIncompatible("To be supported")
    public static CacheBuilder<Object, Object> from(String str) {
        return from(CacheBuilderSpec.parse(str));
    }

    @GwtIncompatible("To be supported")
    CacheBuilder<K, V> a() {
        this.e = false;
        return this;
    }

    @GwtIncompatible("To be supported")
    public CacheBuilder<K, V> a(Equivalence<Object> equivalence) {
        Preconditions.checkState(this.p == null, "key equivalence was already set to %s", this.p);
        this.p = (Equivalence) Preconditions.checkNotNull(equivalence);
        return this;
    }

    public Equivalence<Object> b() {
        return (Equivalence) MoreObjects.firstNonNull(this.p, h().a());
    }

    @GwtIncompatible("To be supported")
    public CacheBuilder<K, V> b(Equivalence<Object> equivalence) {
        Preconditions.checkState(this.q == null, "value equivalence was already set to %s", this.q);
        this.q = (Equivalence) Preconditions.checkNotNull(equivalence);
        return this;
    }

    public Equivalence<Object> c() {
        return (Equivalence) MoreObjects.firstNonNull(this.q, i().a());
    }

    public CacheBuilder<K, V> initialCapacity(int i) {
        Preconditions.checkState(this.f == -1, "initial capacity was already set to %s", Integer.valueOf(this.f));
        Preconditions.checkArgument(i >= 0);
        this.f = i;
        return this;
    }

    public int d() {
        if (this.f == -1) {
            return 16;
        }
        return this.f;
    }

    public CacheBuilder<K, V> concurrencyLevel(int i) {
        Preconditions.checkState(this.g == -1, "concurrency level was already set to %s", Integer.valueOf(this.g));
        Preconditions.checkArgument(i > 0);
        this.g = i;
        return this;
    }

    public int e() {
        if (this.g == -1) {
            return 4;
        }
        return this.g;
    }

    public CacheBuilder<K, V> maximumSize(long j) {
        Preconditions.checkState(this.h == -1, "maximum size was already set to %s", Long.valueOf(this.h));
        Preconditions.checkState(this.i == -1, "maximum weight was already set to %s", Long.valueOf(this.i));
        Preconditions.checkState(this.j == null, "maximum size can not be combined with weigher");
        Preconditions.checkArgument(j >= 0, "maximum size must not be negative");
        this.h = j;
        return this;
    }

    @GwtIncompatible("To be supported")
    public CacheBuilder<K, V> maximumWeight(long j) {
        Preconditions.checkState(this.i == -1, "maximum weight was already set to %s", Long.valueOf(this.i));
        Preconditions.checkState(this.h == -1, "maximum size was already set to %s", Long.valueOf(this.h));
        this.i = j;
        Preconditions.checkArgument(j >= 0, "maximum weight must not be negative");
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @GwtIncompatible("To be supported")
    public <K1 extends K, V1 extends V> CacheBuilder<K1, V1> weigher(Weigher<? super K1, ? super V1> weigher) {
        Preconditions.checkState(this.j == null);
        if (this.e) {
            Preconditions.checkState(this.h == -1, "weigher can not be combined with maximum size", Long.valueOf(this.h));
        }
        this.j = (Weigher) Preconditions.checkNotNull(weigher);
        return this;
    }

    public long f() {
        if (this.m == 0 || this.n == 0) {
            return 0L;
        }
        return this.j == null ? this.h : this.i;
    }

    public <K1 extends K, V1 extends V> Weigher<K1, V1> g() {
        return (Weigher) MoreObjects.firstNonNull(this.j, b.INSTANCE);
    }

    @GwtIncompatible("java.lang.ref.WeakReference")
    public CacheBuilder<K, V> weakKeys() {
        return a(gx.s.WEAK);
    }

    public CacheBuilder<K, V> a(gx.s sVar) {
        Preconditions.checkState(this.k == null, "Key strength was already set to %s", this.k);
        this.k = (gx.s) Preconditions.checkNotNull(sVar);
        return this;
    }

    public gx.s h() {
        return (gx.s) MoreObjects.firstNonNull(this.k, gx.s.STRONG);
    }

    @GwtIncompatible("java.lang.ref.WeakReference")
    public CacheBuilder<K, V> weakValues() {
        return b(gx.s.WEAK);
    }

    @GwtIncompatible("java.lang.ref.SoftReference")
    public CacheBuilder<K, V> softValues() {
        return b(gx.s.SOFT);
    }

    public CacheBuilder<K, V> b(gx.s sVar) {
        Preconditions.checkState(this.l == null, "Value strength was already set to %s", this.l);
        this.l = (gx.s) Preconditions.checkNotNull(sVar);
        return this;
    }

    public gx.s i() {
        return (gx.s) MoreObjects.firstNonNull(this.l, gx.s.STRONG);
    }

    public CacheBuilder<K, V> expireAfterWrite(long j, TimeUnit timeUnit) {
        Preconditions.checkState(this.m == -1, "expireAfterWrite was already set to %s ns", Long.valueOf(this.m));
        Preconditions.checkArgument(j >= 0, "duration cannot be negative: %s %s", Long.valueOf(j), timeUnit);
        this.m = timeUnit.toNanos(j);
        return this;
    }

    public long j() {
        if (this.m == -1) {
            return 0L;
        }
        return this.m;
    }

    public CacheBuilder<K, V> expireAfterAccess(long j, TimeUnit timeUnit) {
        Preconditions.checkState(this.n == -1, "expireAfterAccess was already set to %s ns", Long.valueOf(this.n));
        Preconditions.checkArgument(j >= 0, "duration cannot be negative: %s %s", Long.valueOf(j), timeUnit);
        this.n = timeUnit.toNanos(j);
        return this;
    }

    public long k() {
        if (this.n == -1) {
            return 0L;
        }
        return this.n;
    }

    @GwtIncompatible("To be supported (synchronously).")
    public CacheBuilder<K, V> refreshAfterWrite(long j, TimeUnit timeUnit) {
        Preconditions.checkNotNull(timeUnit);
        Preconditions.checkState(this.o == -1, "refresh was already set to %s ns", Long.valueOf(this.o));
        Preconditions.checkArgument(j > 0, "duration must be positive: %s %s", Long.valueOf(j), timeUnit);
        this.o = timeUnit.toNanos(j);
        return this;
    }

    public long l() {
        if (this.o == -1) {
            return 0L;
        }
        return this.o;
    }

    public CacheBuilder<K, V> ticker(Ticker ticker) {
        Preconditions.checkState(this.s == null);
        this.s = (Ticker) Preconditions.checkNotNull(ticker);
        return this;
    }

    public Ticker a(boolean z) {
        if (this.s != null) {
            return this.s;
        }
        return z ? Ticker.systemTicker() : d;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @CheckReturnValue
    public <K1 extends K, V1 extends V> CacheBuilder<K1, V1> removalListener(RemovalListener<? super K1, ? super V1> removalListener) {
        Preconditions.checkState(this.r == null);
        this.r = (RemovalListener) Preconditions.checkNotNull(removalListener);
        return this;
    }

    public <K1 extends K, V1 extends V> RemovalListener<K1, V1> m() {
        return (RemovalListener) MoreObjects.firstNonNull(this.r, a.INSTANCE);
    }

    public CacheBuilder<K, V> recordStats() {
        this.t = c;
        return this;
    }

    public Supplier<? extends AbstractCache.StatsCounter> n() {
        return this.t;
    }

    public <K1 extends K, V1 extends V> LoadingCache<K1, V1> build(CacheLoader<? super K1, V1> cacheLoader) {
        p();
        return new gx.l(this, cacheLoader);
    }

    public <K1 extends K, V1 extends V> Cache<K1, V1> build() {
        p();
        o();
        return new gx.m(this);
    }

    private void o() {
        Preconditions.checkState(this.o == -1, "refreshAfterWrite requires a LoadingCache");
    }

    private void p() {
        if (this.j == null) {
            Preconditions.checkState(this.i == -1, "maximumWeight requires weigher");
        } else if (this.e) {
            Preconditions.checkState(this.i != -1, "weigher requires maximumWeight");
        } else if (this.i == -1) {
            u.log(Level.WARNING, "ignoring weigher specified without maximumWeight");
        }
    }

    public String toString() {
        MoreObjects.ToStringHelper stringHelper = MoreObjects.toStringHelper(this);
        if (this.f != -1) {
            stringHelper.add("initialCapacity", this.f);
        }
        if (this.g != -1) {
            stringHelper.add("concurrencyLevel", this.g);
        }
        if (this.h != -1) {
            stringHelper.add("maximumSize", this.h);
        }
        if (this.i != -1) {
            stringHelper.add("maximumWeight", this.i);
        }
        if (this.m != -1) {
            stringHelper.add("expireAfterWrite", new StringBuilder(22).append(this.m).append("ns").toString());
        }
        if (this.n != -1) {
            stringHelper.add("expireAfterAccess", new StringBuilder(22).append(this.n).append("ns").toString());
        }
        if (this.k != null) {
            stringHelper.add("keyStrength", Ascii.toLowerCase(this.k.toString()));
        }
        if (this.l != null) {
            stringHelper.add("valueStrength", Ascii.toLowerCase(this.l.toString()));
        }
        if (this.p != null) {
            stringHelper.addValue("keyEquivalence");
        }
        if (this.q != null) {
            stringHelper.addValue("valueEquivalence");
        }
        if (this.r != null) {
            stringHelper.addValue("removalListener");
        }
        return stringHelper.toString();
    }
}
