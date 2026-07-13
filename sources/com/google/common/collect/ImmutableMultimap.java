package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.Multiset;
import com.google.j2objc.annotations.Weak;
import defpackage.hi;
import defpackage.hu;
import defpackage.ka;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(emulated = true)
public abstract class ImmutableMultimap<K, V> extends hi<K, V> implements Serializable {
    private static final long serialVersionUID = 0;
    final transient ImmutableMap<K, ? extends ImmutableCollection<V>> b;
    final transient int c;

    @GwtIncompatible("java serialization is not supported")
    static class b {
        static final ka.a<ImmutableMultimap> a = ka.a(ImmutableMultimap.class, "map");
        static final ka.a<ImmutableMultimap> b = ka.a(ImmutableMultimap.class, "size");
        static final ka.a<ImmutableSetMultimap> c = ka.a(ImmutableSetMultimap.class, "emptySet");
    }

    @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public abstract ImmutableCollection<V> get(K k);

    public abstract ImmutableMultimap<V, K> inverse();

    @Override // defpackage.hi, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ boolean containsEntry(@Nullable Object obj, @Nullable Object obj2) {
        return super.containsEntry(obj, obj2);
    }

    @Override // defpackage.hi, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public /* bridge */ /* synthetic */ boolean equals(@Nullable Object obj) {
        return super.equals(obj);
    }

    @Override // defpackage.hi, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // defpackage.hi, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    @Override // defpackage.hi
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    public static <K, V> ImmutableMultimap<K, V> of() {
        return ImmutableListMultimap.of();
    }

    public static <K, V> ImmutableMultimap<K, V> of(K k, V v) {
        return ImmutableListMultimap.of((Object) k, (Object) v);
    }

    public static <K, V> ImmutableMultimap<K, V> of(K k, V v, K k2, V v2) {
        return ImmutableListMultimap.of((Object) k, (Object) v, (Object) k2, (Object) v2);
    }

    public static <K, V> ImmutableMultimap<K, V> of(K k, V v, K k2, V v2, K k3, V v3) {
        return ImmutableListMultimap.of((Object) k, (Object) v, (Object) k2, (Object) v2, (Object) k3, (Object) v3);
    }

    public static <K, V> ImmutableMultimap<K, V> of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4) {
        return ImmutableListMultimap.of((Object) k, (Object) v, (Object) k2, (Object) v2, (Object) k3, (Object) v3, (Object) k4, (Object) v4);
    }

    public static <K, V> ImmutableMultimap<K, V> of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5) {
        return ImmutableListMultimap.of((Object) k, (Object) v, (Object) k2, (Object) v2, (Object) k3, (Object) v3, (Object) k4, (Object) v4, (Object) k5, (Object) v5);
    }

    public static <K, V> Builder<K, V> builder() {
        return new Builder<>();
    }

    public static class Builder<K, V> {
        Multimap<K, V> a;
        Comparator<? super K> b;
        Comparator<? super V> c;

        public Builder() {
            this(MultimapBuilder.linkedHashKeys().arrayListValues().build());
        }

        Builder(Multimap<K, V> multimap) {
            this.a = multimap;
        }

        public Builder<K, V> put(K k, V v) {
            hu.a(k, v);
            this.a.put(k, v);
            return this;
        }

        public Builder<K, V> put(Map.Entry<? extends K, ? extends V> entry) {
            return put(entry.getKey(), entry.getValue());
        }

        @Beta
        public Builder<K, V> putAll(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
            Iterator<? extends Map.Entry<? extends K, ? extends V>> it = iterable.iterator();
            while (it.hasNext()) {
                put(it.next());
            }
            return this;
        }

        public Builder<K, V> putAll(K k, Iterable<? extends V> iterable) {
            if (k == null) {
                String strValueOf = String.valueOf(Iterables.toString(iterable));
                throw new NullPointerException(strValueOf.length() != 0 ? "null key in entry: null=".concat(strValueOf) : new String("null key in entry: null="));
            }
            Collection<V> collection = this.a.get(k);
            for (V v : iterable) {
                hu.a(k, v);
                collection.add(v);
            }
            return this;
        }

        public Builder<K, V> putAll(K k, V... vArr) {
            return putAll(k, Arrays.asList(vArr));
        }

        public Builder<K, V> putAll(Multimap<? extends K, ? extends V> multimap) {
            for (Map.Entry<? extends K, Collection<? extends V>> entry : multimap.asMap().entrySet()) {
                putAll(entry.getKey(), entry.getValue());
            }
            return this;
        }

        public Builder<K, V> orderKeysBy(Comparator<? super K> comparator) {
            this.b = (Comparator) Preconditions.checkNotNull(comparator);
            return this;
        }

        public Builder<K, V> orderValuesBy(Comparator<? super V> comparator) {
            this.c = (Comparator) Preconditions.checkNotNull(comparator);
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public ImmutableMultimap<K, V> build() {
            if (this.c != null) {
                Iterator<Collection<V>> it = this.a.asMap().values().iterator();
                while (it.hasNext()) {
                    Collections.sort((List) it.next(), this.c);
                }
            }
            if (this.b != null) {
                ImmutableSetMultimap immutableSetMultimapBuild = MultimapBuilder.linkedHashKeys().arrayListValues().build();
                for (Map.Entry entry : Ordering.from(this.b).a().immutableSortedCopy(this.a.asMap().entrySet())) {
                    immutableSetMultimapBuild.putAll(entry.getKey(), (Iterable) entry.getValue());
                }
                this.a = immutableSetMultimapBuild;
            }
            return ImmutableMultimap.copyOf(this.a);
        }
    }

    public static <K, V> ImmutableMultimap<K, V> copyOf(Multimap<? extends K, ? extends V> multimap) {
        if (multimap instanceof ImmutableMultimap) {
            ImmutableMultimap<K, V> immutableMultimap = (ImmutableMultimap) multimap;
            if (!immutableMultimap.a()) {
                return immutableMultimap;
            }
        }
        return ImmutableListMultimap.copyOf((Multimap) multimap);
    }

    @Beta
    public static <K, V> ImmutableMultimap<K, V> copyOf(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        return ImmutableListMultimap.copyOf((Iterable) iterable);
    }

    ImmutableMultimap(ImmutableMap<K, ? extends ImmutableCollection<V>> immutableMap, int i) {
        this.b = immutableMap;
        this.c = i;
    }

    @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    @Deprecated
    public ImmutableCollection<V> removeAll(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // defpackage.hi, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    @Deprecated
    public ImmutableCollection<V> replaceValues(K k, Iterable<? extends V> iterable) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.Multimap
    @Deprecated
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // defpackage.hi, com.google.common.collect.Multimap
    @Deprecated
    public boolean put(K k, V v) {
        throw new UnsupportedOperationException();
    }

    @Override // defpackage.hi, com.google.common.collect.Multimap
    @Deprecated
    public boolean putAll(K k, Iterable<? extends V> iterable) {
        throw new UnsupportedOperationException();
    }

    @Override // defpackage.hi, com.google.common.collect.Multimap
    @Deprecated
    public boolean putAll(Multimap<? extends K, ? extends V> multimap) {
        throw new UnsupportedOperationException();
    }

    @Override // defpackage.hi, com.google.common.collect.Multimap
    @Deprecated
    public boolean remove(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    boolean a() {
        return this.b.b();
    }

    @Override // com.google.common.collect.Multimap
    public boolean containsKey(@Nullable Object obj) {
        return this.b.containsKey(obj);
    }

    @Override // defpackage.hi, com.google.common.collect.Multimap
    public boolean containsValue(@Nullable Object obj) {
        return obj != null && super.containsValue(obj);
    }

    @Override // com.google.common.collect.Multimap
    public int size() {
        return this.c;
    }

    @Override // defpackage.hi, com.google.common.collect.Multimap
    public ImmutableSet<K> keySet() {
        return this.b.keySet();
    }

    @Override // defpackage.hi, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public ImmutableMap<K, Collection<V>> asMap() {
        return this.b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // defpackage.hi
    public Map<K, Collection<V>> i() {
        throw new AssertionError("should never be called");
    }

    @Override // defpackage.hi, com.google.common.collect.Multimap
    public ImmutableCollection<Map.Entry<K, V>> entries() {
        return (ImmutableCollection) super.entries();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // defpackage.hi
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ImmutableCollection<Map.Entry<K, V>> j() {
        return new a(this);
    }

    static class a<K, V> extends ImmutableCollection<Map.Entry<K, V>> {
        private static final long serialVersionUID = 0;

        @Weak
        final ImmutableMultimap<K, V> a;

        a(ImmutableMultimap<K, V> immutableMultimap) {
            this.a = immutableMultimap;
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public UnmodifiableIterator<Map.Entry<K, V>> iterator() {
            return this.a.h();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableCollection
        public boolean a() {
            return this.a.a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return this.a.size();
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return this.a.containsEntry(entry.getKey(), entry.getValue());
        }
    }

    abstract class c<T> extends UnmodifiableIterator<T> {
        final Iterator<Map.Entry<K, Collection<V>>> b;
        K c;
        Iterator<V> d;

        abstract T b(K k, V v);

        private c() {
            this.b = ImmutableMultimap.this.asMap().entrySet().iterator();
            this.c = null;
            this.d = Iterators.emptyIterator();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.b.hasNext() || this.d.hasNext();
        }

        @Override // java.util.Iterator
        public T next() {
            if (!this.d.hasNext()) {
                Map.Entry<K, Collection<V>> next = this.b.next();
                this.c = next.getKey();
                this.d = next.getValue().iterator();
            }
            return b(this.c, this.d.next());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // defpackage.hi
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public UnmodifiableIterator<Map.Entry<K, V>> h() {
        return new ImmutableMultimap<K, V>.c<Map.Entry<K, V>>() { // from class: com.google.common.collect.ImmutableMultimap.1
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.collect.ImmutableMultimap.c
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Map.Entry<K, V> b(K k, V v) {
                return Maps.immutableEntry(k, v);
            }
        };
    }

    @Override // defpackage.hi, com.google.common.collect.Multimap
    public ImmutableMultiset<K> keys() {
        return (ImmutableMultiset) super.keys();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // defpackage.hi
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public ImmutableMultiset<K> k() {
        return new d();
    }

    class d extends ImmutableMultiset<K> {
        d() {
        }

        @Override // com.google.common.collect.ImmutableMultiset, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
        public boolean contains(@Nullable Object obj) {
            return ImmutableMultimap.this.containsKey(obj);
        }

        @Override // com.google.common.collect.Multiset
        public int count(@Nullable Object obj) {
            ImmutableCollection<V> immutableCollection = ImmutableMultimap.this.b.get(obj);
            if (immutableCollection == null) {
                return 0;
            }
            return immutableCollection.size();
        }

        @Override // com.google.common.collect.Multiset
        public Set<K> elementSet() {
            return ImmutableMultimap.this.keySet();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return ImmutableMultimap.this.size();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableMultiset
        protected Multiset.Entry<K> a(int i) {
            Map.Entry<K, ? extends ImmutableCollection<V>> entry = ImmutableMultimap.this.b.entrySet().asList().get(i);
            return Multisets.immutableEntry(entry.getKey(), entry.getValue().size());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableCollection
        public boolean a() {
            return true;
        }
    }

    @Override // defpackage.hi, com.google.common.collect.Multimap
    public ImmutableCollection<V> values() {
        return (ImmutableCollection) super.values();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // defpackage.hi
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public ImmutableCollection<V> l() {
        return new e(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // defpackage.hi
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public UnmodifiableIterator<V> g() {
        return new ImmutableMultimap<K, V>.c<V>() { // from class: com.google.common.collect.ImmutableMultimap.2
            @Override // com.google.common.collect.ImmutableMultimap.c
            V b(K k, V v) {
                return v;
            }
        };
    }

    static final class e<K, V> extends ImmutableCollection<V> {
        private static final long serialVersionUID = 0;

        @Weak
        private final transient ImmutableMultimap<K, V> a;

        e(ImmutableMultimap<K, V> immutableMultimap) {
            this.a = immutableMultimap;
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
        public boolean contains(@Nullable Object obj) {
            return this.a.containsValue(obj);
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public UnmodifiableIterator<V> iterator() {
            return this.a.g();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableCollection
        @GwtIncompatible("not present in emulated superclass")
        protected int a(Object[] objArr, int i) {
            UnmodifiableIterator<? extends ImmutableCollection<V>> it = this.a.b.values().iterator();
            while (it.hasNext()) {
                i = it.next().a(objArr, i);
            }
            return i;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return this.a.size();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableCollection
        public boolean a() {
            return true;
        }
    }
}
