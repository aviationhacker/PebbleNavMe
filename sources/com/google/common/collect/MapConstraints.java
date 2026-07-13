package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import defpackage.hy;
import defpackage.hz;
import defpackage.kn;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedSet;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Beta
@GwtCompatible
@Deprecated
public final class MapConstraints {
    private MapConstraints() {
    }

    public static MapConstraint<Object, Object> notNull() {
        return l.INSTANCE;
    }

    enum l implements MapConstraint<Object, Object> {
        INSTANCE;

        @Override // com.google.common.collect.MapConstraint
        public void checkKeyValue(Object obj, Object obj2) {
            Preconditions.checkNotNull(obj);
            Preconditions.checkNotNull(obj2);
        }

        @Override // java.lang.Enum, com.google.common.collect.MapConstraint
        public String toString() {
            return "Not null";
        }
    }

    public static <K, V> Map<K, V> constrainedMap(Map<K, V> map, MapConstraint<? super K, ? super V> mapConstraint) {
        return new g(map, mapConstraint);
    }

    public static <K, V> Multimap<K, V> constrainedMultimap(Multimap<K, V> multimap, MapConstraint<? super K, ? super V> mapConstraint) {
        return new h(multimap, mapConstraint);
    }

    public static <K, V> ListMultimap<K, V> constrainedListMultimap(ListMultimap<K, V> listMultimap, MapConstraint<? super K, ? super V> mapConstraint) {
        return new f(listMultimap, mapConstraint);
    }

    public static <K, V> SetMultimap<K, V> constrainedSetMultimap(SetMultimap<K, V> setMultimap, MapConstraint<? super K, ? super V> mapConstraint) {
        return new i(setMultimap, mapConstraint);
    }

    public static <K, V> SortedSetMultimap<K, V> constrainedSortedSetMultimap(SortedSetMultimap<K, V> sortedSetMultimap, MapConstraint<? super K, ? super V> mapConstraint) {
        return new j(sortedSetMultimap, mapConstraint);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <K, V> Map.Entry<K, V> c(final Map.Entry<K, V> entry, final MapConstraint<? super K, ? super V> mapConstraint) {
        Preconditions.checkNotNull(entry);
        Preconditions.checkNotNull(mapConstraint);
        return new ForwardingMapEntry<K, V>() { // from class: com.google.common.collect.MapConstraints.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.collect.ForwardingMapEntry, com.google.common.collect.ForwardingObject
            public Map.Entry<K, V> delegate() {
                return entry;
            }

            @Override // com.google.common.collect.ForwardingMapEntry, java.util.Map.Entry
            public V setValue(V v) {
                mapConstraint.checkKeyValue(getKey(), v);
                return (V) entry.setValue(v);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <K, V> Map.Entry<K, Collection<V>> d(final Map.Entry<K, Collection<V>> entry, final MapConstraint<? super K, ? super V> mapConstraint) {
        Preconditions.checkNotNull(entry);
        Preconditions.checkNotNull(mapConstraint);
        return new ForwardingMapEntry<K, Collection<V>>() { // from class: com.google.common.collect.MapConstraints.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.collect.ForwardingMapEntry, com.google.common.collect.ForwardingObject
            public Map.Entry<K, Collection<V>> delegate() {
                return entry;
            }

            @Override // com.google.common.collect.ForwardingMapEntry, java.util.Map.Entry
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Collection<V> getValue() {
                return hz.b((Collection) entry.getValue(), new hy<V>() { // from class: com.google.common.collect.MapConstraints.2.1
                    @Override // defpackage.hy
                    public V a(V v) {
                        mapConstraint.checkKeyValue(getKey(), v);
                        return v;
                    }
                });
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <K, V> Set<Map.Entry<K, Collection<V>>> c(Set<Map.Entry<K, Collection<V>>> set, MapConstraint<? super K, ? super V> mapConstraint) {
        return new a(set, mapConstraint);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <K, V> Collection<Map.Entry<K, V>> b(Collection<Map.Entry<K, V>> collection, MapConstraint<? super K, ? super V> mapConstraint) {
        return collection instanceof Set ? d((Set) collection, mapConstraint) : new d(collection, mapConstraint);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <K, V> Set<Map.Entry<K, V>> d(Set<Map.Entry<K, V>> set, MapConstraint<? super K, ? super V> mapConstraint) {
        return new e(set, mapConstraint);
    }

    static class g<K, V> extends ForwardingMap<K, V> {
        private final Map<K, V> a;
        final MapConstraint<? super K, ? super V> b;
        private transient Set<Map.Entry<K, V>> c;

        g(Map<K, V> map, MapConstraint<? super K, ? super V> mapConstraint) {
            this.a = (Map) Preconditions.checkNotNull(map);
            this.b = (MapConstraint) Preconditions.checkNotNull(mapConstraint);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.ForwardingMap, com.google.common.collect.ForwardingObject
        public Map<K, V> delegate() {
            return this.a;
        }

        @Override // com.google.common.collect.ForwardingMap, java.util.Map
        public Set<Map.Entry<K, V>> entrySet() {
            Set<Map.Entry<K, V>> set = this.c;
            if (set == null) {
                Set<Map.Entry<K, V>> setD = MapConstraints.d(this.a.entrySet(), this.b);
                this.c = setD;
                return setD;
            }
            return set;
        }

        @Override // com.google.common.collect.ForwardingMap, java.util.Map, com.google.common.collect.BiMap
        public V put(K k, V v) {
            this.b.checkKeyValue(k, v);
            return this.a.put(k, v);
        }

        @Override // com.google.common.collect.ForwardingMap, java.util.Map, com.google.common.collect.BiMap
        public void putAll(Map<? extends K, ? extends V> map) {
            this.a.putAll(MapConstraints.b(map, this.b));
        }
    }

    public static <K, V> BiMap<K, V> constrainedBiMap(BiMap<K, V> biMap, MapConstraint<? super K, ? super V> mapConstraint) {
        return new c(biMap, null, mapConstraint);
    }

    static class c<K, V> extends g<K, V> implements BiMap<K, V> {
        volatile BiMap<V, K> a;

        c(BiMap<K, V> biMap, @Nullable BiMap<V, K> biMap2, MapConstraint<? super K, ? super V> mapConstraint) {
            super(biMap, mapConstraint);
            this.a = biMap2;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.MapConstraints.g, com.google.common.collect.ForwardingMap, com.google.common.collect.ForwardingObject
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public BiMap<K, V> delegate() {
            return (BiMap) super.delegate();
        }

        @Override // com.google.common.collect.BiMap
        public V forcePut(K k, V v) {
            this.b.checkKeyValue(k, v);
            return delegate().forcePut(k, v);
        }

        @Override // com.google.common.collect.BiMap
        public BiMap<V, K> inverse() {
            if (this.a == null) {
                this.a = new c(delegate().inverse(), this, new k(this.b));
            }
            return this.a;
        }

        @Override // com.google.common.collect.ForwardingMap, java.util.Map, com.google.common.collect.BiMap
        public Set<V> values() {
            return delegate().values();
        }
    }

    static class k<K, V> implements MapConstraint<K, V> {
        final MapConstraint<? super V, ? super K> a;

        public k(MapConstraint<? super V, ? super K> mapConstraint) {
            this.a = (MapConstraint) Preconditions.checkNotNull(mapConstraint);
        }

        @Override // com.google.common.collect.MapConstraint
        public void checkKeyValue(K k, V v) {
            this.a.checkKeyValue(v, k);
        }
    }

    static class h<K, V> extends ForwardingMultimap<K, V> implements Serializable {
        final MapConstraint<? super K, ? super V> a;
        final Multimap<K, V> b;
        transient Collection<Map.Entry<K, V>> c;
        transient Map<K, Collection<V>> d;

        public h(Multimap<K, V> multimap, MapConstraint<? super K, ? super V> mapConstraint) {
            this.b = (Multimap) Preconditions.checkNotNull(multimap);
            this.a = (MapConstraint) Preconditions.checkNotNull(mapConstraint);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.ForwardingObject
        public Multimap<K, V> delegate() {
            return this.b;
        }

        @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public Map<K, Collection<V>> asMap() {
            Map<K, Collection<V>> map = this.d;
            if (map == null) {
                a aVar = new a(this.b.asMap());
                this.d = aVar;
                return aVar;
            }
            return map;
        }

        class a extends ForwardingMap<K, Collection<V>> {
            Set<Map.Entry<K, Collection<V>>> a;
            Collection<Collection<V>> b;
            final /* synthetic */ Map c;

            a(Map map) {
                this.c = map;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.collect.ForwardingMap, com.google.common.collect.ForwardingObject
            public Map<K, Collection<V>> delegate() {
                return this.c;
            }

            @Override // com.google.common.collect.ForwardingMap, java.util.Map
            public Set<Map.Entry<K, Collection<V>>> entrySet() {
                Set<Map.Entry<K, Collection<V>>> set = this.a;
                if (set == null) {
                    Set<Map.Entry<K, Collection<V>>> setC = MapConstraints.c(this.c.entrySet(), h.this.a);
                    this.a = setC;
                    return setC;
                }
                return set;
            }

            @Override // com.google.common.collect.ForwardingMap, java.util.Map
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Collection<V> get(Object obj) {
                try {
                    Collection<V> collection = h.this.get(obj);
                    if (collection.isEmpty()) {
                        return null;
                    }
                    return collection;
                } catch (ClassCastException e) {
                    return null;
                }
            }

            @Override // com.google.common.collect.ForwardingMap, java.util.Map, com.google.common.collect.BiMap
            public Collection<Collection<V>> values() {
                Collection<Collection<V>> collection = this.b;
                if (collection == null) {
                    b bVar = new b(delegate().values(), entrySet());
                    this.b = bVar;
                    return bVar;
                }
                return collection;
            }

            @Override // com.google.common.collect.ForwardingMap, java.util.Map
            public boolean containsValue(Object obj) {
                return values().contains(obj);
            }
        }

        @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap
        public Collection<Map.Entry<K, V>> entries() {
            Collection<Map.Entry<K, V>> collection = this.c;
            if (collection == null) {
                Collection<Map.Entry<K, V>> collectionB = MapConstraints.b(this.b.entries(), this.a);
                this.c = collectionB;
                return collectionB;
            }
            return collection;
        }

        @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public Collection<V> get(final K k) {
            return hz.b(this.b.get(k), new hy<V>() { // from class: com.google.common.collect.MapConstraints.h.1
                @Override // defpackage.hy
                public V a(V v) {
                    h.this.a.checkKeyValue((Object) k, v);
                    return v;
                }
            });
        }

        @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap
        public boolean put(K k, V v) {
            this.a.checkKeyValue(k, v);
            return this.b.put(k, v);
        }

        @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap
        public boolean putAll(K k, Iterable<? extends V> iterable) {
            return this.b.putAll(k, MapConstraints.b(k, iterable, this.a));
        }

        @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap
        public boolean putAll(Multimap<? extends K, ? extends V> multimap) {
            boolean zPut = false;
            Iterator<Map.Entry<? extends K, ? extends V>> it = multimap.entries().iterator();
            while (true) {
                boolean z = zPut;
                if (it.hasNext()) {
                    Map.Entry<? extends K, ? extends V> next = it.next();
                    zPut = put(next.getKey(), next.getValue()) | z;
                } else {
                    return z;
                }
            }
        }

        @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public Collection<V> replaceValues(K k, Iterable<? extends V> iterable) {
            return this.b.replaceValues(k, MapConstraints.b(k, iterable, this.a));
        }
    }

    static class b<K, V> extends ForwardingCollection<Collection<V>> {
        final Collection<Collection<V>> a;
        final Set<Map.Entry<K, Collection<V>>> b;

        b(Collection<Collection<V>> collection, Set<Map.Entry<K, Collection<V>>> set) {
            this.a = collection;
            this.b = set;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public Collection<Collection<V>> delegate() {
            return this.a;
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.lang.Iterable
        public Iterator<Collection<V>> iterator() {
            final Iterator<Map.Entry<K, Collection<V>>> it = this.b.iterator();
            return new Iterator<Collection<V>>() { // from class: com.google.common.collect.MapConstraints.b.1
                @Override // java.util.Iterator
                public boolean hasNext() {
                    return it.hasNext();
                }

                @Override // java.util.Iterator
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public Collection<V> next() {
                    return (Collection) ((Map.Entry) it.next()).getValue();
                }

                @Override // java.util.Iterator
                public void remove() {
                    it.remove();
                }
            };
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public Object[] toArray() {
            return standardToArray();
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) standardToArray(tArr);
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return standardContains(obj);
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
        public boolean containsAll(Collection<?> collection) {
            return standardContainsAll(collection);
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return standardRemove(obj);
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
        public boolean removeAll(Collection<?> collection) {
            return standardRemoveAll(collection);
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            return standardRetainAll(collection);
        }
    }

    static class d<K, V> extends ForwardingCollection<Map.Entry<K, V>> {
        final MapConstraint<? super K, ? super V> a;
        final Collection<Map.Entry<K, V>> b;

        d(Collection<Map.Entry<K, V>> collection, MapConstraint<? super K, ? super V> mapConstraint) {
            this.b = collection;
            this.a = mapConstraint;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public Collection<Map.Entry<K, V>> delegate() {
            return this.b;
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.lang.Iterable
        public Iterator<Map.Entry<K, V>> iterator() {
            return new kn<Map.Entry<K, V>, Map.Entry<K, V>>(this.b.iterator()) { // from class: com.google.common.collect.MapConstraints.d.1
                /* JADX INFO: Access modifiers changed from: package-private */
                @Override // defpackage.kn
                public Map.Entry<K, V> a(Map.Entry<K, V> entry) {
                    return MapConstraints.c(entry, d.this.a);
                }
            };
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public Object[] toArray() {
            return standardToArray();
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) standardToArray(tArr);
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return Maps.a(delegate(), obj);
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
        public boolean containsAll(Collection<?> collection) {
            return standardContainsAll(collection);
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return Maps.b(delegate(), obj);
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
        public boolean removeAll(Collection<?> collection) {
            return standardRemoveAll(collection);
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            return standardRetainAll(collection);
        }
    }

    static class e<K, V> extends d<K, V> implements Set<Map.Entry<K, V>> {
        e(Set<Map.Entry<K, V>> set, MapConstraint<? super K, ? super V> mapConstraint) {
            super(set, mapConstraint);
        }

        @Override // java.util.Collection, java.util.Set
        public boolean equals(@Nullable Object obj) {
            return Sets.a(this, obj);
        }

        @Override // java.util.Collection, java.util.Set
        public int hashCode() {
            return Sets.a(this);
        }
    }

    static class a<K, V> extends ForwardingSet<Map.Entry<K, Collection<V>>> {
        private final MapConstraint<? super K, ? super V> a;
        private final Set<Map.Entry<K, Collection<V>>> b;

        a(Set<Map.Entry<K, Collection<V>>> set, MapConstraint<? super K, ? super V> mapConstraint) {
            this.b = set;
            this.a = mapConstraint;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public Set<Map.Entry<K, Collection<V>>> delegate() {
            return this.b;
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.lang.Iterable
        public Iterator<Map.Entry<K, Collection<V>>> iterator() {
            return new kn<Map.Entry<K, Collection<V>>, Map.Entry<K, Collection<V>>>(this.b.iterator()) { // from class: com.google.common.collect.MapConstraints.a.1
                /* JADX INFO: Access modifiers changed from: package-private */
                @Override // defpackage.kn
                public Map.Entry<K, Collection<V>> a(Map.Entry<K, Collection<V>> entry) {
                    return MapConstraints.d(entry, a.this.a);
                }
            };
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public Object[] toArray() {
            return standardToArray();
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) standardToArray(tArr);
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return Maps.a(delegate(), obj);
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
        public boolean containsAll(Collection<?> collection) {
            return standardContainsAll(collection);
        }

        @Override // com.google.common.collect.ForwardingSet, java.util.Collection, java.util.Set
        public boolean equals(@Nullable Object obj) {
            return standardEquals(obj);
        }

        @Override // com.google.common.collect.ForwardingSet, java.util.Collection, java.util.Set
        public int hashCode() {
            return standardHashCode();
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return Maps.b(delegate(), obj);
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
        public boolean removeAll(Collection<?> collection) {
            return standardRemoveAll(collection);
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            return standardRetainAll(collection);
        }
    }

    static class f<K, V> extends h<K, V> implements ListMultimap<K, V> {
        f(ListMultimap<K, V> listMultimap, MapConstraint<? super K, ? super V> mapConstraint) {
            super(listMultimap, mapConstraint);
        }

        @Override // com.google.common.collect.MapConstraints.h, com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public List<V> get(K k) {
            return (List) super.get((Object) k);
        }

        @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public List<V> removeAll(Object obj) {
            return (List) super.removeAll(obj);
        }

        @Override // com.google.common.collect.MapConstraints.h, com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public List<V> replaceValues(K k, Iterable<? extends V> iterable) {
            return (List) super.replaceValues((Object) k, (Iterable) iterable);
        }
    }

    static class i<K, V> extends h<K, V> implements SetMultimap<K, V> {
        i(SetMultimap<K, V> setMultimap, MapConstraint<? super K, ? super V> mapConstraint) {
            super(setMultimap, mapConstraint);
        }

        @Override // com.google.common.collect.MapConstraints.h, com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public Set<V> get(K k) {
            return (Set) super.get((Object) k);
        }

        @Override // com.google.common.collect.MapConstraints.h, com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap
        public Set<Map.Entry<K, V>> entries() {
            return (Set) super.entries();
        }

        @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public Set<V> removeAll(Object obj) {
            return (Set) super.removeAll(obj);
        }

        @Override // com.google.common.collect.MapConstraints.h, com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public Set<V> replaceValues(K k, Iterable<? extends V> iterable) {
            return (Set) super.replaceValues((Object) k, (Iterable) iterable);
        }
    }

    static class j<K, V> extends i<K, V> implements SortedSetMultimap<K, V> {
        j(SortedSetMultimap<K, V> sortedSetMultimap, MapConstraint<? super K, ? super V> mapConstraint) {
            super(sortedSetMultimap, mapConstraint);
        }

        @Override // com.google.common.collect.MapConstraints.i, com.google.common.collect.MapConstraints.h, com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public SortedSet<V> get(K k) {
            return (SortedSet) super.get((Object) k);
        }

        @Override // com.google.common.collect.MapConstraints.i, com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public SortedSet<V> removeAll(Object obj) {
            return (SortedSet) super.removeAll(obj);
        }

        @Override // com.google.common.collect.MapConstraints.i, com.google.common.collect.MapConstraints.h, com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public SortedSet<V> replaceValues(K k, Iterable<? extends V> iterable) {
            return (SortedSet) super.replaceValues((Object) k, (Iterable) iterable);
        }

        @Override // com.google.common.collect.SortedSetMultimap
        public Comparator<? super V> valueComparator() {
            return ((SortedSetMultimap) delegate()).valueComparator();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <K, V> Collection<V> b(K k2, Iterable<? extends V> iterable, MapConstraint<? super K, ? super V> mapConstraint) {
        ArrayList arrayListNewArrayList = Lists.newArrayList(iterable);
        Iterator it = arrayListNewArrayList.iterator();
        while (it.hasNext()) {
            mapConstraint.checkKeyValue(k2, (Object) it.next());
        }
        return arrayListNewArrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <K, V> Map<K, V> b(Map<? extends K, ? extends V> map, MapConstraint<? super K, ? super V> mapConstraint) {
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        for (Map.Entry<K, V> entry : linkedHashMap.entrySet()) {
            mapConstraint.checkKeyValue(entry.getKey(), entry.getValue());
        }
        return linkedHashMap;
    }
}
