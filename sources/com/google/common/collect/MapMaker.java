package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Ascii;
import com.google.common.base.Equivalence;
import com.google.common.base.Function;
import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.base.Throwables;
import com.google.common.base.Ticker;
import defpackage.hx;
import defpackage.iu;
import defpackage.ix;
import defpackage.jj;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(emulated = true)
public final class MapMaker extends iu<Object, Object> {
    boolean b;
    jj.q f;
    jj.q g;
    d j;
    Equivalence<Object> k;
    Ticker l;
    int c = -1;
    int d = -1;
    public int e = -1;
    long h = -1;
    long i = -1;

    public enum d {
        EXPLICIT { // from class: com.google.common.collect.MapMaker.d.1
        },
        REPLACED { // from class: com.google.common.collect.MapMaker.d.2
        },
        COLLECTED { // from class: com.google.common.collect.MapMaker.d.3
        },
        EXPIRED { // from class: com.google.common.collect.MapMaker.d.4
        },
        SIZE { // from class: com.google.common.collect.MapMaker.d.5
        }
    }

    public interface e<K, V> {
        void a(f<K, V> fVar);
    }

    @GwtIncompatible("To be supported")
    public MapMaker a(Equivalence<Object> equivalence) {
        Preconditions.checkState(this.k == null, "key equivalence was already set to %s", this.k);
        this.k = (Equivalence) Preconditions.checkNotNull(equivalence);
        this.b = true;
        return this;
    }

    public Equivalence<Object> c() {
        return (Equivalence) MoreObjects.firstNonNull(this.k, f().a());
    }

    @Override // defpackage.iu
    /* JADX INFO: renamed from: initialCapacity, reason: merged with bridge method [inline-methods] */
    public iu<Object, Object> initialCapacity2(int i) {
        Preconditions.checkState(this.c == -1, "initial capacity was already set to %s", Integer.valueOf(this.c));
        Preconditions.checkArgument(i >= 0);
        this.c = i;
        return this;
    }

    public int d() {
        if (this.c == -1) {
            return 16;
        }
        return this.c;
    }

    @Deprecated
    public MapMaker a(int i) {
        Preconditions.checkState(this.e == -1, "maximum size was already set to %s", Integer.valueOf(this.e));
        Preconditions.checkArgument(i >= 0, "maximum size must not be negative");
        this.e = i;
        this.b = true;
        if (this.e == 0) {
            this.j = d.SIZE;
        }
        return this;
    }

    @Override // defpackage.iu
    /* JADX INFO: renamed from: concurrencyLevel, reason: merged with bridge method [inline-methods] */
    public iu<Object, Object> concurrencyLevel2(int i) {
        Preconditions.checkState(this.d == -1, "concurrency level was already set to %s", Integer.valueOf(this.d));
        Preconditions.checkArgument(i > 0);
        this.d = i;
        return this;
    }

    public int e() {
        if (this.d == -1) {
            return 4;
        }
        return this.d;
    }

    @Override // defpackage.iu
    @GwtIncompatible("java.lang.ref.WeakReference")
    /* JADX INFO: renamed from: weakKeys, reason: merged with bridge method [inline-methods] */
    public iu<Object, Object> weakKeys2() {
        return a(jj.q.WEAK);
    }

    public MapMaker a(jj.q qVar) {
        Preconditions.checkState(this.f == null, "Key strength was already set to %s", this.f);
        this.f = (jj.q) Preconditions.checkNotNull(qVar);
        Preconditions.checkArgument(this.f != jj.q.SOFT, "Soft keys are not supported");
        if (qVar != jj.q.STRONG) {
            this.b = true;
        }
        return this;
    }

    public jj.q f() {
        return (jj.q) MoreObjects.firstNonNull(this.f, jj.q.STRONG);
    }

    @Override // defpackage.iu
    @GwtIncompatible("java.lang.ref.WeakReference")
    /* JADX INFO: renamed from: weakValues, reason: merged with bridge method [inline-methods] */
    public iu<Object, Object> weakValues2() {
        return b(jj.q.WEAK);
    }

    public MapMaker b(jj.q qVar) {
        Preconditions.checkState(this.g == null, "Value strength was already set to %s", this.g);
        this.g = (jj.q) Preconditions.checkNotNull(qVar);
        if (qVar != jj.q.STRONG) {
            this.b = true;
        }
        return this;
    }

    public jj.q g() {
        return (jj.q) MoreObjects.firstNonNull(this.g, jj.q.STRONG);
    }

    @Deprecated
    public MapMaker a(long j, TimeUnit timeUnit) {
        c(j, timeUnit);
        this.h = timeUnit.toNanos(j);
        if (j == 0 && this.j == null) {
            this.j = d.EXPIRED;
        }
        this.b = true;
        return this;
    }

    private void c(long j, TimeUnit timeUnit) {
        Preconditions.checkState(this.h == -1, "expireAfterWrite was already set to %s ns", Long.valueOf(this.h));
        Preconditions.checkState(this.i == -1, "expireAfterAccess was already set to %s ns", Long.valueOf(this.i));
        Preconditions.checkArgument(j >= 0, "duration cannot be negative: %s %s", Long.valueOf(j), timeUnit);
    }

    public long h() {
        if (this.h == -1) {
            return 0L;
        }
        return this.h;
    }

    @GwtIncompatible("To be supported")
    @Deprecated
    public MapMaker b(long j, TimeUnit timeUnit) {
        c(j, timeUnit);
        this.i = timeUnit.toNanos(j);
        if (j == 0 && this.j == null) {
            this.j = d.EXPIRED;
        }
        this.b = true;
        return this;
    }

    public long i() {
        if (this.i == -1) {
            return 0L;
        }
        return this.i;
    }

    public Ticker j() {
        return (Ticker) MoreObjects.firstNonNull(this.l, Ticker.systemTicker());
    }

    @GwtIncompatible("To be supported")
    @Deprecated
    public <K, V> iu<K, V> a(e<K, V> eVar) {
        Preconditions.checkState(this.a == null);
        this.a = (e) Preconditions.checkNotNull(eVar);
        this.b = true;
        return this;
    }

    @Override // defpackage.iu
    public <K, V> ConcurrentMap<K, V> makeMap() {
        if (this.b) {
            return this.j == null ? new jj<>(this) : new c<>(this);
        }
        return new ConcurrentHashMap(d(), 0.75f, e());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // defpackage.iu
    @GwtIncompatible("MapMakerInternalMap")
    protected <K, V> jj<K, V> b() {
        return new jj<>(this);
    }

    @Override // defpackage.iu
    @Deprecated
    public <K, V> ConcurrentMap<K, V> a(Function<? super K, ? extends V> function) {
        return this.j == null ? new a<>(this, function) : new b<>(this, function);
    }

    public String toString() {
        MoreObjects.ToStringHelper stringHelper = MoreObjects.toStringHelper(this);
        if (this.c != -1) {
            stringHelper.add("initialCapacity", this.c);
        }
        if (this.d != -1) {
            stringHelper.add("concurrencyLevel", this.d);
        }
        if (this.e != -1) {
            stringHelper.add("maximumSize", this.e);
        }
        if (this.h != -1) {
            stringHelper.add("expireAfterWrite", new StringBuilder(22).append(this.h).append("ns").toString());
        }
        if (this.i != -1) {
            stringHelper.add("expireAfterAccess", new StringBuilder(22).append(this.i).append("ns").toString());
        }
        if (this.f != null) {
            stringHelper.add("keyStrength", Ascii.toLowerCase(this.f.toString()));
        }
        if (this.g != null) {
            stringHelper.add("valueStrength", Ascii.toLowerCase(this.g.toString()));
        }
        if (this.k != null) {
            stringHelper.addValue("keyEquivalence");
        }
        if (this.a != null) {
            stringHelper.addValue("removalListener");
        }
        return stringHelper.toString();
    }

    public static final class f<K, V> extends ix<K, V> {
        private static final long serialVersionUID = 0;
        private final d a;

        public f(@Nullable K k, @Nullable V v, d dVar) {
            super(k, v);
            this.a = dVar;
        }
    }

    static class c<K, V> extends AbstractMap<K, V> implements Serializable, ConcurrentMap<K, V> {
        private static final long serialVersionUID = 0;
        private final e<K, V> a;
        private final d b;

        c(MapMaker mapMaker) {
            this.a = mapMaker.a();
            this.b = mapMaker.j;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(@Nullable Object obj) {
            return false;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsValue(@Nullable Object obj) {
            return false;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V get(@Nullable Object obj) {
            return null;
        }

        void a(K k, V v) {
            this.a.a(new f<>(k, v, this.b));
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V put(K k, V v) {
            Preconditions.checkNotNull(k);
            Preconditions.checkNotNull(v);
            a(k, v);
            return null;
        }

        @Override // java.util.Map, java.util.concurrent.ConcurrentMap
        public V putIfAbsent(K k, V v) {
            return put(k, v);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V remove(@Nullable Object obj) {
            return null;
        }

        @Override // java.util.Map, java.util.concurrent.ConcurrentMap
        public boolean remove(@Nullable Object obj, @Nullable Object obj2) {
            return false;
        }

        @Override // java.util.Map, java.util.concurrent.ConcurrentMap
        public V replace(K k, V v) {
            Preconditions.checkNotNull(k);
            Preconditions.checkNotNull(v);
            return null;
        }

        @Override // java.util.Map, java.util.concurrent.ConcurrentMap
        public boolean replace(K k, @Nullable V v, V v2) {
            Preconditions.checkNotNull(k);
            Preconditions.checkNotNull(v2);
            return false;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<Map.Entry<K, V>> entrySet() {
            return Collections.emptySet();
        }
    }

    static final class b<K, V> extends c<K, V> {
        private static final long serialVersionUID = 0;
        final Function<? super K, ? extends V> a;

        b(MapMaker mapMaker, Function<? super K, ? extends V> function) {
            super(mapMaker);
            this.a = (Function) Preconditions.checkNotNull(function);
        }

        @Override // com.google.common.collect.MapMaker.c, java.util.AbstractMap, java.util.Map
        public V get(Object obj) {
            V vA = a(obj);
            Preconditions.checkNotNull(vA, "%s returned null for key %s.", this.a, obj);
            a(obj, vA);
            return vA;
        }

        private V a(K k) {
            Preconditions.checkNotNull(k);
            try {
                return this.a.apply(k);
            } catch (ComputationException e) {
                throw e;
            } catch (Throwable th) {
                throw new ComputationException(th);
            }
        }
    }

    static final class a<K, V> extends hx<K, V> implements Serializable {
        private static final long serialVersionUID = 0;

        a(MapMaker mapMaker, Function<? super K, ? extends V> function) {
            super(mapMaker, function);
        }

        /* JADX INFO: Thrown type has an unknown type hierarchy: X */
        /* JADX WARN: Multi-variable type inference failed */
        @Override // defpackage.jj, java.util.AbstractMap, java.util.Map
        public V get(Object obj) throws X {
            try {
                V vA = a(obj);
                if (vA == null) {
                    String strValueOf = String.valueOf(this.a);
                    String strValueOf2 = String.valueOf(obj);
                    throw new NullPointerException(new StringBuilder(String.valueOf(strValueOf).length() + 24 + String.valueOf(strValueOf2).length()).append(strValueOf).append(" returned null for key ").append(strValueOf2).append(".").toString());
                }
                return vA;
            } catch (ExecutionException e) {
                Throwable cause = e.getCause();
                Throwables.propagateIfInstanceOf(cause, ComputationException.class);
                throw new ComputationException(cause);
            }
        }
    }
}
