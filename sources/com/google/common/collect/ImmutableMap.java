package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableCollection;
import defpackage.hh;
import defpackage.hu;
import defpackage.iy;
import defpackage.ja;
import defpackage.jb;
import defpackage.jc;
import defpackage.jd;
import defpackage.js;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(emulated = true, serializable = true)
public abstract class ImmutableMap<K, V> implements Serializable, Map<K, V> {
    protected static final Map.Entry<?, ?>[] b = new Map.Entry[0];
    private transient ImmutableSet<Map.Entry<K, V>> a;
    private transient ImmutableSet<K> c;
    private transient ImmutableCollection<V> d;
    private transient ImmutableSetMultimap<K, V> e;

    public abstract boolean b();

    public abstract ImmutableSet<Map.Entry<K, V>> e();

    @Override // java.util.Map
    public abstract V get(@Nullable Object obj);

    public static <K, V> ImmutableMap<K, V> of() {
        return ImmutableBiMap.of();
    }

    public static <K, V> ImmutableMap<K, V> of(K k, V v) {
        return ImmutableBiMap.of((Object) k, (Object) v);
    }

    public static <K, V> ImmutableMap<K, V> of(K k, V v, K k2, V v2) {
        return js.a(a(k, v), a(k2, v2));
    }

    public static <K, V> ImmutableMap<K, V> of(K k, V v, K k2, V v2, K k3, V v3) {
        return js.a(a(k, v), a(k2, v2), a(k3, v3));
    }

    public static <K, V> ImmutableMap<K, V> of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4) {
        return js.a(a(k, v), a(k2, v2), a(k3, v3), a(k4, v4));
    }

    public static <K, V> ImmutableMap<K, V> of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5) {
        return js.a(a(k, v), a(k2, v2), a(k3, v3), a(k4, v4), a(k5, v5));
    }

    static <K, V> ja<K, V> a(K k, V v) {
        return new ja<>(k, v);
    }

    public static <K, V> Builder<K, V> builder() {
        return new Builder<>();
    }

    protected static void a(boolean z, String str, Map.Entry<?, ?> entry, Map.Entry<?, ?> entry2) {
        if (!z) {
            String strValueOf = String.valueOf(entry);
            String strValueOf2 = String.valueOf(entry2);
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(str).length() + 34 + String.valueOf(strValueOf).length() + String.valueOf(strValueOf2).length()).append("Multiple entries with same ").append(str).append(": ").append(strValueOf).append(" and ").append(strValueOf2).toString());
        }
    }

    public static class Builder<K, V> {
        Comparator<? super V> a;
        ja<K, V>[] b;
        int c;
        boolean d;

        public Builder() {
            this(4);
        }

        public Builder(int i) {
            this.b = new ja[i];
            this.c = 0;
            this.d = false;
        }

        private void a(int i) {
            if (i > this.b.length) {
                this.b = (ja[]) ObjectArrays.a((Object[]) this.b, ImmutableCollection.Builder.a(this.b.length, i));
                this.d = false;
            }
        }

        public Builder<K, V> put(K k, V v) {
            a(this.c + 1);
            ja<K, V> jaVarA = ImmutableMap.a(k, v);
            ja<K, V>[] jaVarArr = this.b;
            int i = this.c;
            this.c = i + 1;
            jaVarArr[i] = jaVarA;
            return this;
        }

        public Builder<K, V> put(Map.Entry<? extends K, ? extends V> entry) {
            return put(entry.getKey(), entry.getValue());
        }

        public Builder<K, V> putAll(Map<? extends K, ? extends V> map) {
            return putAll(map.entrySet());
        }

        @Beta
        public Builder<K, V> putAll(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
            if (iterable instanceof Collection) {
                a(((Collection) iterable).size() + this.c);
            }
            Iterator<? extends Map.Entry<? extends K, ? extends V>> it = iterable.iterator();
            while (it.hasNext()) {
                put(it.next());
            }
            return this;
        }

        @Beta
        public Builder<K, V> orderEntriesByValue(Comparator<? super V> comparator) {
            Preconditions.checkState(this.a == null, "valueComparator was already set");
            this.a = (Comparator) Preconditions.checkNotNull(comparator, "valueComparator");
            return this;
        }

        public ImmutableMap<K, V> build() {
            switch (this.c) {
                case 0:
                    return ImmutableMap.of();
                case 1:
                    return ImmutableMap.of((Object) this.b[0].getKey(), (Object) this.b[0].getValue());
                default:
                    if (this.a != null) {
                        if (this.d) {
                            this.b = (ja[]) ObjectArrays.a((Object[]) this.b, this.c);
                        }
                        Arrays.sort(this.b, 0, this.c, Ordering.from(this.a).onResultOf(Maps.b()));
                    }
                    this.d = this.c == this.b.length;
                    return js.a(this.c, this.b);
            }
        }
    }

    public static <K, V> ImmutableMap<K, V> copyOf(Map<? extends K, ? extends V> map) {
        if ((map instanceof ImmutableMap) && !(map instanceof ImmutableSortedMap)) {
            ImmutableMap<K, V> immutableMap = (ImmutableMap) map;
            if (!immutableMap.b()) {
                return immutableMap;
            }
        } else if (map instanceof EnumMap) {
            return a((EnumMap) map);
        }
        return copyOf(map.entrySet());
    }

    @Beta
    public static <K, V> ImmutableMap<K, V> copyOf(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        Map.Entry[] entryArr = (Map.Entry[]) Iterables.a(iterable, b);
        switch (entryArr.length) {
            case 0:
                return of();
            case 1:
                Map.Entry entry = entryArr[0];
                return of(entry.getKey(), entry.getValue());
            default:
                return js.a(entryArr);
        }
    }

    private static <K extends Enum<K>, V> ImmutableMap<K, V> a(EnumMap<K, ? extends V> enumMap) {
        EnumMap enumMap2 = new EnumMap((EnumMap) enumMap);
        for (Map.Entry<K, V> entry : enumMap2.entrySet()) {
            hu.a(entry.getKey(), entry.getValue());
        }
        return iy.a(enumMap2);
    }

    public static abstract class a<K, V> extends ImmutableMap<K, V> {
        public abstract UnmodifiableIterator<Map.Entry<K, V>> d();

        protected a() {
        }

        @Override // com.google.common.collect.ImmutableMap, java.util.Map
        public /* bridge */ /* synthetic */ Set entrySet() {
            return super.entrySet();
        }

        @Override // com.google.common.collect.ImmutableMap, java.util.Map
        public /* bridge */ /* synthetic */ Set keySet() {
            return super.keySet();
        }

        @Override // com.google.common.collect.ImmutableMap, java.util.Map
        public /* bridge */ /* synthetic */ Collection values() {
            return super.values();
        }

        /* JADX INFO: renamed from: com.google.common.collect.ImmutableMap$a$a, reason: collision with other inner class name */
        class C0020a extends jb<K, V> {
            C0020a() {
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // defpackage.jb
            protected ImmutableMap<K, V> b() {
                return a.this;
            }

            @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
            public UnmodifiableIterator<Map.Entry<K, V>> iterator() {
                return a.this.d();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableMap
        public ImmutableSet<Map.Entry<K, V>> e() {
            return new C0020a();
        }
    }

    protected ImmutableMap() {
    }

    @Override // java.util.Map
    @Deprecated
    public final V put(K k, V v) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final V remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final void putAll(Map<? extends K, ? extends V> map) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.Map
    public boolean containsKey(@Nullable Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.Map
    public boolean containsValue(@Nullable Object obj) {
        return values().contains(obj);
    }

    @Override // java.util.Map
    public ImmutableSet<Map.Entry<K, V>> entrySet() {
        ImmutableSet<Map.Entry<K, V>> immutableSet = this.a;
        if (immutableSet != null) {
            return immutableSet;
        }
        ImmutableSet<Map.Entry<K, V>> immutableSetE = e();
        this.a = immutableSetE;
        return immutableSetE;
    }

    @Override // java.util.Map
    public ImmutableSet<K> keySet() {
        ImmutableSet<K> immutableSet = this.c;
        if (immutableSet != null) {
            return immutableSet;
        }
        ImmutableSet<K> immutableSetC = c();
        this.c = immutableSetC;
        return immutableSetC;
    }

    public ImmutableSet<K> c() {
        return isEmpty() ? ImmutableSet.of() : new jc(this);
    }

    public UnmodifiableIterator<K> a() {
        final UnmodifiableIterator<Map.Entry<K, V>> it = entrySet().iterator();
        return new UnmodifiableIterator<K>() { // from class: com.google.common.collect.ImmutableMap.1
            @Override // java.util.Iterator
            public boolean hasNext() {
                return it.hasNext();
            }

            @Override // java.util.Iterator
            public K next() {
                return (K) ((Map.Entry) it.next()).getKey();
            }
        };
    }

    @Override // java.util.Map
    public ImmutableCollection<V> values() {
        ImmutableCollection<V> immutableCollection = this.d;
        if (immutableCollection != null) {
            return immutableCollection;
        }
        jd jdVar = new jd(this);
        this.d = jdVar;
        return jdVar;
    }

    @Beta
    public ImmutableSetMultimap<K, V> asMultimap() {
        if (isEmpty()) {
            return ImmutableSetMultimap.of();
        }
        ImmutableSetMultimap<K, V> immutableSetMultimap = this.e;
        if (immutableSetMultimap == null) {
            ImmutableSetMultimap<K, V> immutableSetMultimap2 = new ImmutableSetMultimap<>(new b(), size(), null);
            this.e = immutableSetMultimap2;
            return immutableSetMultimap2;
        }
        return immutableSetMultimap;
    }

    final class b extends a<K, ImmutableSet<V>> {
        private b() {
        }

        @Override // java.util.Map
        public int size() {
            return ImmutableMap.this.size();
        }

        @Override // com.google.common.collect.ImmutableMap.a, com.google.common.collect.ImmutableMap, java.util.Map
        public ImmutableSet<K> keySet() {
            return ImmutableMap.this.keySet();
        }

        @Override // com.google.common.collect.ImmutableMap, java.util.Map
        public boolean containsKey(@Nullable Object obj) {
            return ImmutableMap.this.containsKey(obj);
        }

        @Override // com.google.common.collect.ImmutableMap, java.util.Map
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ImmutableSet<V> get(@Nullable Object obj) {
            Object obj2 = ImmutableMap.this.get(obj);
            if (obj2 == null) {
                return null;
            }
            return ImmutableSet.of(obj2);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableMap
        public boolean b() {
            return ImmutableMap.this.b();
        }

        @Override // com.google.common.collect.ImmutableMap, java.util.Map
        public int hashCode() {
            return ImmutableMap.this.hashCode();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableMap
        public boolean f() {
            return ImmutableMap.this.f();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableMap.a
        public UnmodifiableIterator<Map.Entry<K, ImmutableSet<V>>> d() {
            final UnmodifiableIterator<Map.Entry<K, V>> it = ImmutableMap.this.entrySet().iterator();
            return new UnmodifiableIterator<Map.Entry<K, ImmutableSet<V>>>() { // from class: com.google.common.collect.ImmutableMap.b.1
                @Override // java.util.Iterator
                public boolean hasNext() {
                    return it.hasNext();
                }

                @Override // java.util.Iterator
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public Map.Entry<K, ImmutableSet<V>> next() {
                    final Map.Entry entry = (Map.Entry) it.next();
                    return new hh<K, ImmutableSet<V>>() { // from class: com.google.common.collect.ImmutableMap.b.1.1
                        @Override // defpackage.hh, java.util.Map.Entry
                        public K getKey() {
                            return (K) entry.getKey();
                        }

                        @Override // defpackage.hh, java.util.Map.Entry
                        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                        public ImmutableSet<V> getValue() {
                            return ImmutableSet.of(entry.getValue());
                        }
                    };
                }
            };
        }
    }

    @Override // java.util.Map
    public boolean equals(@Nullable Object obj) {
        return Maps.f(this, obj);
    }

    @Override // java.util.Map
    public int hashCode() {
        return Sets.a(entrySet());
    }

    public boolean f() {
        return false;
    }

    public String toString() {
        return Maps.a(this);
    }

    static class c implements Serializable {
        private static final long serialVersionUID = 0;
        private final Object[] a;
        private final Object[] b;

        c(ImmutableMap<?, ?> immutableMap) {
            this.a = new Object[immutableMap.size()];
            this.b = new Object[immutableMap.size()];
            int i = 0;
            UnmodifiableIterator<Map.Entry<?, ?>> it = immutableMap.entrySet().iterator();
            while (true) {
                int i2 = i;
                if (it.hasNext()) {
                    Map.Entry<?, ?> next = it.next();
                    this.a[i2] = next.getKey();
                    this.b[i2] = next.getValue();
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }

        Object readResolve() {
            return a(new Builder<>(this.a.length));
        }

        Object a(Builder<Object, Object> builder) {
            for (int i = 0; i < this.a.length; i++) {
                builder.put(this.a[i], this.b[i]);
            }
            return builder.build();
        }
    }

    public Object writeReplace() {
        return new c(this);
    }
}
