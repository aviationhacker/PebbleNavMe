package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Converter;
import com.google.common.base.Equivalence;
import com.google.common.base.Function;
import com.google.common.base.Joiner;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.base.Predicates;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.MapDifference;
import com.google.common.collect.Sets;
import com.google.j2objc.annotations.Weak;
import defpackage.hh;
import defpackage.hk;
import defpackage.hu;
import defpackage.ix;
import defpackage.iy;
import defpackage.jn;
import defpackage.km;
import defpackage.kn;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.EnumMap;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.Properties;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.concurrent.ConcurrentMap;
import javax.annotation.CheckReturnValue;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(emulated = true)
public final class Maps {
    static final Joiner.MapJoiner a = Collections2.a.withKeyValueSeparator("=");

    public interface EntryTransformer<K, V1, V2> {
        V2 transformEntry(@Nullable K k, @Nullable V1 v1);
    }

    enum e implements Function<Map.Entry<?, ?>, Object> {
        KEY { // from class: com.google.common.collect.Maps.e.1
            @Override // com.google.common.base.Function
            @Nullable
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Object apply(Map.Entry<?, ?> entry) {
                return entry.getKey();
            }
        },
        VALUE { // from class: com.google.common.collect.Maps.e.2
            @Override // com.google.common.base.Function
            @Nullable
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Object apply(Map.Entry<?, ?> entry) {
                return entry.getValue();
            }
        }
    }

    private Maps() {
    }

    static <K> Function<Map.Entry<K, ?>, K> a() {
        return e.KEY;
    }

    static <V> Function<Map.Entry<?, V>, V> b() {
        return e.VALUE;
    }

    public static <K, V> Iterator<K> a(Iterator<Map.Entry<K, V>> it) {
        return Iterators.transform(it, a());
    }

    public static <K, V> Iterator<V> b(Iterator<Map.Entry<K, V>> it) {
        return Iterators.transform(it, b());
    }

    @Beta
    @GwtCompatible(serializable = true)
    public static <K extends Enum<K>, V> ImmutableMap<K, V> immutableEnumMap(Map<K, ? extends V> map) {
        if (map instanceof iy) {
            return (iy) map;
        }
        if (map.isEmpty()) {
            return ImmutableMap.of();
        }
        for (Map.Entry<K, ? extends V> entry : map.entrySet()) {
            Preconditions.checkNotNull(entry.getKey());
            Preconditions.checkNotNull(entry.getValue());
        }
        return iy.a(new EnumMap(map));
    }

    public static <K, V> HashMap<K, V> newHashMap() {
        return new HashMap<>();
    }

    public static <K, V> HashMap<K, V> newHashMapWithExpectedSize(int i2) {
        return new HashMap<>(a(i2));
    }

    static int a(int i2) {
        if (i2 < 3) {
            hu.a(i2, "expectedSize");
            return i2 + 1;
        }
        if (i2 < 1073741824) {
            return (int) ((i2 / 0.75f) + 1.0f);
        }
        return Integer.MAX_VALUE;
    }

    public static <K, V> HashMap<K, V> newHashMap(Map<? extends K, ? extends V> map) {
        return new HashMap<>(map);
    }

    public static <K, V> LinkedHashMap<K, V> newLinkedHashMap() {
        return new LinkedHashMap<>();
    }

    public static <K, V> LinkedHashMap<K, V> newLinkedHashMapWithExpectedSize(int i2) {
        return new LinkedHashMap<>(a(i2));
    }

    public static <K, V> LinkedHashMap<K, V> newLinkedHashMap(Map<? extends K, ? extends V> map) {
        return new LinkedHashMap<>(map);
    }

    public static <K, V> ConcurrentMap<K, V> newConcurrentMap() {
        return new MapMaker().makeMap();
    }

    public static <K extends Comparable, V> TreeMap<K, V> newTreeMap() {
        return new TreeMap<>();
    }

    public static <K, V> TreeMap<K, V> newTreeMap(SortedMap<K, ? extends V> sortedMap) {
        return new TreeMap<>((SortedMap) sortedMap);
    }

    public static <C, K extends C, V> TreeMap<K, V> newTreeMap(@Nullable Comparator<C> comparator) {
        return new TreeMap<>(comparator);
    }

    public static <K extends Enum<K>, V> EnumMap<K, V> newEnumMap(Class<K> cls) {
        return new EnumMap<>((Class) Preconditions.checkNotNull(cls));
    }

    public static <K extends Enum<K>, V> EnumMap<K, V> newEnumMap(Map<K, ? extends V> map) {
        return new EnumMap<>(map);
    }

    public static <K, V> IdentityHashMap<K, V> newIdentityHashMap() {
        return new IdentityHashMap<>();
    }

    public static <K, V> MapDifference<K, V> difference(Map<? extends K, ? extends V> map, Map<? extends K, ? extends V> map2) {
        return map instanceof SortedMap ? difference((SortedMap) map, (Map) map2) : difference(map, map2, Equivalence.equals());
    }

    @Beta
    public static <K, V> MapDifference<K, V> difference(Map<? extends K, ? extends V> map, Map<? extends K, ? extends V> map2, Equivalence<? super V> equivalence) {
        Preconditions.checkNotNull(equivalence);
        LinkedHashMap linkedHashMapNewLinkedHashMap = newLinkedHashMap();
        LinkedHashMap linkedHashMap = new LinkedHashMap(map2);
        LinkedHashMap linkedHashMapNewLinkedHashMap2 = newLinkedHashMap();
        LinkedHashMap linkedHashMapNewLinkedHashMap3 = newLinkedHashMap();
        a(map, map2, equivalence, linkedHashMapNewLinkedHashMap, linkedHashMap, linkedHashMapNewLinkedHashMap2, linkedHashMapNewLinkedHashMap3);
        return new o(linkedHashMapNewLinkedHashMap, linkedHashMap, linkedHashMapNewLinkedHashMap2, linkedHashMapNewLinkedHashMap3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static <K, V> void a(Map<? extends K, ? extends V> map, Map<? extends K, ? extends V> map2, Equivalence<? super V> equivalence, Map<K, V> map3, Map<K, V> map4, Map<K, V> map5, Map<K, MapDifference.ValueDifference<V>> map6) {
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            K key = entry.getKey();
            V value = entry.getValue();
            if (map2.containsKey(key)) {
                V vRemove = map4.remove(key);
                if (equivalence.equivalent(value, vRemove)) {
                    map5.put(key, value);
                } else {
                    map6.put(key, ab.a(value, vRemove));
                }
            } else {
                map3.put(key, value);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <K, V> Map<K, V> c(Map<K, V> map) {
        return map instanceof SortedMap ? Collections.unmodifiableSortedMap((SortedMap) map) : Collections.unmodifiableMap(map);
    }

    static class o<K, V> implements MapDifference<K, V> {
        final Map<K, V> a;
        final Map<K, V> b;
        final Map<K, V> c;
        final Map<K, MapDifference.ValueDifference<V>> d;

        o(Map<K, V> map, Map<K, V> map2, Map<K, V> map3, Map<K, MapDifference.ValueDifference<V>> map4) {
            this.a = Maps.c(map);
            this.b = Maps.c(map2);
            this.c = Maps.c(map3);
            this.d = Maps.c(map4);
        }

        @Override // com.google.common.collect.MapDifference
        public boolean areEqual() {
            return this.a.isEmpty() && this.b.isEmpty() && this.d.isEmpty();
        }

        @Override // com.google.common.collect.MapDifference
        public Map<K, V> entriesOnlyOnLeft() {
            return this.a;
        }

        @Override // com.google.common.collect.MapDifference
        public Map<K, V> entriesOnlyOnRight() {
            return this.b;
        }

        @Override // com.google.common.collect.MapDifference
        public Map<K, V> entriesInCommon() {
            return this.c;
        }

        @Override // com.google.common.collect.MapDifference
        public Map<K, MapDifference.ValueDifference<V>> entriesDiffering() {
            return this.d;
        }

        @Override // com.google.common.collect.MapDifference
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof MapDifference)) {
                return false;
            }
            MapDifference mapDifference = (MapDifference) obj;
            return entriesOnlyOnLeft().equals(mapDifference.entriesOnlyOnLeft()) && entriesOnlyOnRight().equals(mapDifference.entriesOnlyOnRight()) && entriesInCommon().equals(mapDifference.entriesInCommon()) && entriesDiffering().equals(mapDifference.entriesDiffering());
        }

        @Override // com.google.common.collect.MapDifference
        public int hashCode() {
            return Objects.hashCode(entriesOnlyOnLeft(), entriesOnlyOnRight(), entriesInCommon(), entriesDiffering());
        }

        public String toString() {
            if (areEqual()) {
                return "equal";
            }
            StringBuilder sb = new StringBuilder("not equal");
            if (!this.a.isEmpty()) {
                sb.append(": only on left=").append(this.a);
            }
            if (!this.b.isEmpty()) {
                sb.append(": only on right=").append(this.b);
            }
            if (!this.d.isEmpty()) {
                sb.append(": value differences=").append(this.d);
            }
            return sb.toString();
        }
    }

    static class ab<V> implements MapDifference.ValueDifference<V> {
        private final V a;
        private final V b;

        static <V> MapDifference.ValueDifference<V> a(@Nullable V v, @Nullable V v2) {
            return new ab(v, v2);
        }

        private ab(@Nullable V v, @Nullable V v2) {
            this.a = v;
            this.b = v2;
        }

        @Override // com.google.common.collect.MapDifference.ValueDifference
        public V leftValue() {
            return this.a;
        }

        @Override // com.google.common.collect.MapDifference.ValueDifference
        public V rightValue() {
            return this.b;
        }

        @Override // com.google.common.collect.MapDifference.ValueDifference
        public boolean equals(@Nullable Object obj) {
            if (!(obj instanceof MapDifference.ValueDifference)) {
                return false;
            }
            MapDifference.ValueDifference valueDifference = (MapDifference.ValueDifference) obj;
            return Objects.equal(this.a, valueDifference.leftValue()) && Objects.equal(this.b, valueDifference.rightValue());
        }

        @Override // com.google.common.collect.MapDifference.ValueDifference
        public int hashCode() {
            return Objects.hashCode(this.a, this.b);
        }

        public String toString() {
            String strValueOf = String.valueOf(this.a);
            String strValueOf2 = String.valueOf(this.b);
            return new StringBuilder(String.valueOf(strValueOf).length() + 4 + String.valueOf(strValueOf2).length()).append("(").append(strValueOf).append(", ").append(strValueOf2).append(")").toString();
        }
    }

    public static <K, V> SortedMapDifference<K, V> difference(SortedMap<K, ? extends V> sortedMap, Map<? extends K, ? extends V> map) {
        Preconditions.checkNotNull(sortedMap);
        Preconditions.checkNotNull(map);
        Comparator comparatorA = a(sortedMap.comparator());
        TreeMap treeMapNewTreeMap = newTreeMap(comparatorA);
        TreeMap treeMapNewTreeMap2 = newTreeMap(comparatorA);
        treeMapNewTreeMap2.putAll(map);
        TreeMap treeMapNewTreeMap3 = newTreeMap(comparatorA);
        TreeMap treeMapNewTreeMap4 = newTreeMap(comparatorA);
        a(sortedMap, map, Equivalence.equals(), treeMapNewTreeMap, treeMapNewTreeMap2, treeMapNewTreeMap3, treeMapNewTreeMap4);
        return new t(treeMapNewTreeMap, treeMapNewTreeMap2, treeMapNewTreeMap3, treeMapNewTreeMap4);
    }

    static class t<K, V> extends o<K, V> implements SortedMapDifference<K, V> {
        t(SortedMap<K, V> sortedMap, SortedMap<K, V> sortedMap2, SortedMap<K, V> sortedMap3, SortedMap<K, MapDifference.ValueDifference<V>> sortedMap4) {
            super(sortedMap, sortedMap2, sortedMap3, sortedMap4);
        }

        @Override // com.google.common.collect.Maps.o, com.google.common.collect.MapDifference
        public SortedMap<K, MapDifference.ValueDifference<V>> entriesDiffering() {
            return (SortedMap) super.entriesDiffering();
        }

        @Override // com.google.common.collect.Maps.o, com.google.common.collect.MapDifference
        public SortedMap<K, V> entriesInCommon() {
            return (SortedMap) super.entriesInCommon();
        }

        @Override // com.google.common.collect.Maps.o, com.google.common.collect.MapDifference
        public SortedMap<K, V> entriesOnlyOnLeft() {
            return (SortedMap) super.entriesOnlyOnLeft();
        }

        @Override // com.google.common.collect.Maps.o, com.google.common.collect.MapDifference
        public SortedMap<K, V> entriesOnlyOnRight() {
            return (SortedMap) super.entriesOnlyOnRight();
        }
    }

    static <E> Comparator<? super E> a(@Nullable Comparator<? super E> comparator) {
        return comparator != null ? comparator : Ordering.natural();
    }

    public static <K, V> Map<K, V> asMap(Set<K> set, Function<? super K, V> function) {
        return set instanceof SortedSet ? asMap((SortedSet) set, (Function) function) : new b(set, function);
    }

    public static <K, V> SortedMap<K, V> asMap(SortedSet<K> sortedSet, Function<? super K, V> function) {
        return jn.a(sortedSet, function);
    }

    public static <K, V> SortedMap<K, V> a(SortedSet<K> sortedSet, Function<? super K, V> function) {
        return new r(sortedSet, function);
    }

    @GwtIncompatible("NavigableMap")
    public static <K, V> NavigableMap<K, V> asMap(NavigableSet<K> navigableSet, Function<? super K, V> function) {
        return new p(navigableSet, function);
    }

    static class b<K, V> extends ad<K, V> {
        final Function<? super K, V> a;
        private final Set<K> b;

        Set<K> c() {
            return this.b;
        }

        b(Set<K> set, Function<? super K, V> function) {
            this.b = (Set) Preconditions.checkNotNull(set);
            this.a = (Function) Preconditions.checkNotNull(function);
        }

        @Override // com.google.common.collect.Maps.ad
        public Set<K> h() {
            return Maps.c(c());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.Maps.ad
        public Collection<V> b() {
            return Collections2.transform(this.b, this.a);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int size() {
            return c().size();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(@Nullable Object obj) {
            return c().contains(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V get(@Nullable Object obj) {
            if (Collections2.a(c(), obj)) {
                return this.a.apply(obj);
            }
            return null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V remove(@Nullable Object obj) {
            if (c().remove(obj)) {
                return this.a.apply(obj);
            }
            return null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public void clear() {
            c().clear();
        }

        class a extends f<K, V> {
            a() {
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.collect.Maps.f
            public Map<K, V> a() {
                return b.this;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<K, V>> iterator() {
                return Maps.a((Set) b.this.c(), (Function) b.this.a);
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.Maps.ad
        public Set<Map.Entry<K, V>> a() {
            return new a();
        }
    }

    public static <K, V> Iterator<Map.Entry<K, V>> a(Set<K> set, final Function<? super K, V> function) {
        return new kn<K, Map.Entry<K, V>>(set.iterator()) { // from class: com.google.common.collect.Maps.1
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // defpackage.kn
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public Map.Entry<K, V> a(K k2) {
                return Maps.immutableEntry(k2, function.apply(k2));
            }
        };
    }

    static class r<K, V> extends b<K, V> implements SortedMap<K, V> {
        r(SortedSet<K> sortedSet, Function<? super K, V> function) {
            super(sortedSet, function);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.Maps.b
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public SortedSet<K> c() {
            return (SortedSet) super.c();
        }

        @Override // java.util.SortedMap
        public Comparator<? super K> comparator() {
            return c().comparator();
        }

        @Override // com.google.common.collect.Maps.ad, java.util.AbstractMap, java.util.Map
        public Set<K> keySet() {
            return Maps.b((SortedSet) c());
        }

        @Override // java.util.SortedMap
        public SortedMap<K, V> subMap(K k, K k2) {
            return Maps.asMap((SortedSet) c().subSet(k, k2), (Function) this.a);
        }

        @Override // java.util.SortedMap
        public SortedMap<K, V> headMap(K k) {
            return Maps.asMap((SortedSet) c().headSet(k), (Function) this.a);
        }

        @Override // java.util.SortedMap
        public SortedMap<K, V> tailMap(K k) {
            return Maps.asMap((SortedSet) c().tailSet(k), (Function) this.a);
        }

        @Override // java.util.SortedMap
        public K firstKey() {
            return c().first();
        }

        @Override // java.util.SortedMap
        public K lastKey() {
            return c().last();
        }
    }

    @GwtIncompatible("NavigableMap")
    static final class p<K, V> extends hk<K, V> {
        private final NavigableSet<K> a;
        private final Function<? super K, V> b;

        p(NavigableSet<K> navigableSet, Function<? super K, V> function) {
            this.a = (NavigableSet) Preconditions.checkNotNull(navigableSet);
            this.b = (Function) Preconditions.checkNotNull(function);
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> subMap(K k, boolean z, K k2, boolean z2) {
            return Maps.asMap((NavigableSet) this.a.subSet(k, z, k2, z2), (Function) this.b);
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> headMap(K k, boolean z) {
            return Maps.asMap((NavigableSet) this.a.headSet(k, z), (Function) this.b);
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> tailMap(K k, boolean z) {
            return Maps.asMap((NavigableSet) this.a.tailSet(k, z), (Function) this.b);
        }

        @Override // java.util.SortedMap
        public Comparator<? super K> comparator() {
            return this.a.comparator();
        }

        @Override // java.util.AbstractMap, java.util.Map
        @Nullable
        public V get(@Nullable Object obj) {
            if (Collections2.a(this.a, obj)) {
                return this.b.apply(obj);
            }
            return null;
        }

        @Override // com.google.common.collect.Maps.m, java.util.AbstractMap, java.util.Map
        public void clear() {
            this.a.clear();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.Maps.m
        public Iterator<Map.Entry<K, V>> b() {
            return Maps.a((Set) this.a, (Function) this.b);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // defpackage.hk
        public Iterator<Map.Entry<K, V>> a() {
            return descendingMap().entrySet().iterator();
        }

        @Override // defpackage.hk, java.util.NavigableMap
        public NavigableSet<K> navigableKeySet() {
            return Maps.b((NavigableSet) this.a);
        }

        @Override // com.google.common.collect.Maps.m, java.util.AbstractMap, java.util.Map
        public int size() {
            return this.a.size();
        }

        @Override // defpackage.hk, java.util.NavigableMap
        public NavigableMap<K, V> descendingMap() {
            return Maps.asMap((NavigableSet) this.a.descendingSet(), (Function) this.b);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <E> Set<E> c(final Set<E> set) {
        return new ForwardingSet<E>() { // from class: com.google.common.collect.Maps.4
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
            public Set<E> delegate() {
                return set;
            }

            @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Queue
            public boolean add(E e2) {
                throw new UnsupportedOperationException();
            }

            @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
            public boolean addAll(Collection<? extends E> collection) {
                throw new UnsupportedOperationException();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <E> SortedSet<E> b(final SortedSet<E> sortedSet) {
        return new ForwardingSortedSet<E>() { // from class: com.google.common.collect.Maps.5
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.collect.ForwardingSortedSet, com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
            public SortedSet<E> delegate() {
                return sortedSet;
            }

            @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Queue
            public boolean add(E e2) {
                throw new UnsupportedOperationException();
            }

            @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
            public boolean addAll(Collection<? extends E> collection) {
                throw new UnsupportedOperationException();
            }

            @Override // com.google.common.collect.ForwardingSortedSet, java.util.SortedSet
            public SortedSet<E> headSet(E e2) {
                return Maps.b((SortedSet) super.headSet(e2));
            }

            @Override // com.google.common.collect.ForwardingSortedSet, java.util.SortedSet
            public SortedSet<E> subSet(E e2, E e3) {
                return Maps.b((SortedSet) super.subSet(e2, e3));
            }

            @Override // com.google.common.collect.ForwardingSortedSet, java.util.SortedSet
            public SortedSet<E> tailSet(E e2) {
                return Maps.b((SortedSet) super.tailSet(e2));
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    @GwtIncompatible("NavigableSet")
    public static <E> NavigableSet<E> b(final NavigableSet<E> navigableSet) {
        return new ForwardingNavigableSet<E>() { // from class: com.google.common.collect.Maps.6
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.collect.ForwardingNavigableSet, com.google.common.collect.ForwardingSortedSet, com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
            public NavigableSet<E> delegate() {
                return navigableSet;
            }

            @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Queue
            public boolean add(E e2) {
                throw new UnsupportedOperationException();
            }

            @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
            public boolean addAll(Collection<? extends E> collection) {
                throw new UnsupportedOperationException();
            }

            @Override // com.google.common.collect.ForwardingSortedSet, java.util.SortedSet
            public SortedSet<E> headSet(E e2) {
                return Maps.b((SortedSet) super.headSet(e2));
            }

            @Override // com.google.common.collect.ForwardingSortedSet, java.util.SortedSet
            public SortedSet<E> subSet(E e2, E e3) {
                return Maps.b((SortedSet) super.subSet(e2, e3));
            }

            @Override // com.google.common.collect.ForwardingSortedSet, java.util.SortedSet
            public SortedSet<E> tailSet(E e2) {
                return Maps.b((SortedSet) super.tailSet(e2));
            }

            @Override // com.google.common.collect.ForwardingNavigableSet, java.util.NavigableSet
            public NavigableSet<E> headSet(E e2, boolean z2) {
                return Maps.b((NavigableSet) super.headSet(e2, z2));
            }

            @Override // com.google.common.collect.ForwardingNavigableSet, java.util.NavigableSet
            public NavigableSet<E> tailSet(E e2, boolean z2) {
                return Maps.b((NavigableSet) super.tailSet(e2, z2));
            }

            @Override // com.google.common.collect.ForwardingNavigableSet, java.util.NavigableSet
            public NavigableSet<E> subSet(E e2, boolean z2, E e3, boolean z3) {
                return Maps.b((NavigableSet) super.subSet(e2, z2, e3, z3));
            }

            @Override // com.google.common.collect.ForwardingNavigableSet, java.util.NavigableSet
            public NavigableSet<E> descendingSet() {
                return Maps.b((NavigableSet) super.descendingSet());
            }
        };
    }

    public static <K, V> ImmutableMap<K, V> toMap(Iterable<K> iterable, Function<? super K, V> function) {
        return toMap(iterable.iterator(), function);
    }

    public static <K, V> ImmutableMap<K, V> toMap(Iterator<K> it, Function<? super K, V> function) {
        Preconditions.checkNotNull(function);
        LinkedHashMap linkedHashMapNewLinkedHashMap = newLinkedHashMap();
        while (it.hasNext()) {
            K next = it.next();
            linkedHashMapNewLinkedHashMap.put(next, function.apply(next));
        }
        return ImmutableMap.copyOf((Map) linkedHashMapNewLinkedHashMap);
    }

    public static <K, V> ImmutableMap<K, V> uniqueIndex(Iterable<V> iterable, Function<? super V, K> function) {
        return uniqueIndex(iterable.iterator(), function);
    }

    public static <K, V> ImmutableMap<K, V> uniqueIndex(Iterator<V> it, Function<? super V, K> function) {
        Preconditions.checkNotNull(function);
        ImmutableMap.Builder builder = ImmutableMap.builder();
        while (it.hasNext()) {
            V next = it.next();
            builder.put(function.apply(next), next);
        }
        try {
            return builder.build();
        } catch (IllegalArgumentException e2) {
            throw new IllegalArgumentException(String.valueOf(e2.getMessage()).concat(". To index multiple values under a key, use Multimaps.index."));
        }
    }

    @GwtIncompatible("java.util.Properties")
    public static ImmutableMap<String, String> fromProperties(Properties properties) {
        ImmutableMap.Builder builder = ImmutableMap.builder();
        Enumeration<?> enumerationPropertyNames = properties.propertyNames();
        while (enumerationPropertyNames.hasMoreElements()) {
            String str = (String) enumerationPropertyNames.nextElement();
            builder.put(str, properties.getProperty(str));
        }
        return builder.build();
    }

    @GwtCompatible(serializable = true)
    public static <K, V> Map.Entry<K, V> immutableEntry(@Nullable K k2, @Nullable V v2) {
        return new ix(k2, v2);
    }

    static <K, V> Set<Map.Entry<K, V>> a(Set<Map.Entry<K, V>> set) {
        return new z(Collections.unmodifiableSet(set));
    }

    static <K, V> Map.Entry<K, V> a(final Map.Entry<? extends K, ? extends V> entry) {
        Preconditions.checkNotNull(entry);
        return new hh<K, V>() { // from class: com.google.common.collect.Maps.7
            @Override // defpackage.hh, java.util.Map.Entry
            public K getKey() {
                return (K) entry.getKey();
            }

            @Override // defpackage.hh, java.util.Map.Entry
            public V getValue() {
                return (V) entry.getValue();
            }
        };
    }

    public static <K, V> UnmodifiableIterator<Map.Entry<K, V>> c(final Iterator<Map.Entry<K, V>> it) {
        return new UnmodifiableIterator<Map.Entry<K, V>>() { // from class: com.google.common.collect.Maps.8
            @Override // java.util.Iterator
            public boolean hasNext() {
                return it.hasNext();
            }

            @Override // java.util.Iterator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Map.Entry<K, V> next() {
                return Maps.a((Map.Entry) it.next());
            }
        };
    }

    static class y<K, V> extends ForwardingCollection<Map.Entry<K, V>> {
        private final Collection<Map.Entry<K, V>> a;

        y(Collection<Map.Entry<K, V>> collection) {
            this.a = collection;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public Collection<Map.Entry<K, V>> delegate() {
            return this.a;
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.lang.Iterable
        public Iterator<Map.Entry<K, V>> iterator() {
            return Maps.c(this.a.iterator());
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public Object[] toArray() {
            return standardToArray();
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) standardToArray(tArr);
        }
    }

    static class z<K, V> extends y<K, V> implements Set<Map.Entry<K, V>> {
        z(Set<Map.Entry<K, V>> set) {
            super(set);
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

    @Beta
    public static <A, B> Converter<A, B> asConverter(BiMap<A, B> biMap) {
        return new c(biMap);
    }

    static final class c<A, B> extends Converter<A, B> implements Serializable {
        private static final long serialVersionUID = 0;
        private final BiMap<A, B> a;

        c(BiMap<A, B> biMap) {
            this.a = (BiMap) Preconditions.checkNotNull(biMap);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.base.Converter
        public B doForward(A a) {
            return (B) a(this.a, a);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.base.Converter
        public A doBackward(B b) {
            return (A) a(this.a.inverse(), b);
        }

        private static <X, Y> Y a(BiMap<X, Y> biMap, X x) {
            Y y = biMap.get(x);
            Preconditions.checkArgument(y != null, "No non-null mapping present for input: %s", x);
            return y;
        }

        @Override // com.google.common.base.Converter, com.google.common.base.Function
        public boolean equals(@Nullable Object obj) {
            if (obj instanceof c) {
                return this.a.equals(((c) obj).a);
            }
            return false;
        }

        public int hashCode() {
            return this.a.hashCode();
        }

        public String toString() {
            String strValueOf = String.valueOf(this.a);
            return new StringBuilder(String.valueOf(strValueOf).length() + 18).append("Maps.asConverter(").append(strValueOf).append(")").toString();
        }
    }

    public static <K, V> BiMap<K, V> synchronizedBiMap(BiMap<K, V> biMap) {
        return km.a(biMap, (Object) null);
    }

    public static <K, V> BiMap<K, V> unmodifiableBiMap(BiMap<? extends K, ? extends V> biMap) {
        return new x(biMap, null);
    }

    static class x<K, V> extends ForwardingMap<K, V> implements BiMap<K, V>, Serializable {
        private static final long serialVersionUID = 0;
        final Map<K, V> a;
        final BiMap<? extends K, ? extends V> b;
        BiMap<V, K> c;
        transient Set<V> d;

        x(BiMap<? extends K, ? extends V> biMap, @Nullable BiMap<V, K> biMap2) {
            this.a = Collections.unmodifiableMap(biMap);
            this.b = biMap;
            this.c = biMap2;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.ForwardingMap, com.google.common.collect.ForwardingObject
        public Map<K, V> delegate() {
            return this.a;
        }

        @Override // com.google.common.collect.BiMap
        public V forcePut(K k, V v) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.BiMap
        public BiMap<V, K> inverse() {
            BiMap<V, K> biMap = this.c;
            if (biMap != null) {
                return biMap;
            }
            x xVar = new x(this.b.inverse(), this);
            this.c = xVar;
            return xVar;
        }

        @Override // com.google.common.collect.ForwardingMap, java.util.Map, com.google.common.collect.BiMap
        public Set<V> values() {
            Set<V> set = this.d;
            if (set != null) {
                return set;
            }
            Set<V> setUnmodifiableSet = Collections.unmodifiableSet(this.b.values());
            this.d = setUnmodifiableSet;
            return setUnmodifiableSet;
        }
    }

    public static <K, V1, V2> Map<K, V2> transformValues(Map<K, V1> map, Function<? super V1, V2> function) {
        return transformEntries(map, a(function));
    }

    public static <K, V1, V2> SortedMap<K, V2> transformValues(SortedMap<K, V1> sortedMap, Function<? super V1, V2> function) {
        return transformEntries((SortedMap) sortedMap, a(function));
    }

    @GwtIncompatible("NavigableMap")
    public static <K, V1, V2> NavigableMap<K, V2> transformValues(NavigableMap<K, V1> navigableMap, Function<? super V1, V2> function) {
        return transformEntries((NavigableMap) navigableMap, a(function));
    }

    public static <K, V1, V2> Map<K, V2> transformEntries(Map<K, V1> map, EntryTransformer<? super K, ? super V1, V2> entryTransformer) {
        return map instanceof SortedMap ? transformEntries((SortedMap) map, (EntryTransformer) entryTransformer) : new u(map, entryTransformer);
    }

    public static <K, V1, V2> SortedMap<K, V2> transformEntries(SortedMap<K, V1> sortedMap, EntryTransformer<? super K, ? super V1, V2> entryTransformer) {
        return jn.a(sortedMap, entryTransformer);
    }

    @GwtIncompatible("NavigableMap")
    public static <K, V1, V2> NavigableMap<K, V2> transformEntries(NavigableMap<K, V1> navigableMap, EntryTransformer<? super K, ? super V1, V2> entryTransformer) {
        return new v(navigableMap, entryTransformer);
    }

    public static <K, V1, V2> SortedMap<K, V2> a(SortedMap<K, V1> sortedMap, EntryTransformer<? super K, ? super V1, V2> entryTransformer) {
        return new w(sortedMap, entryTransformer);
    }

    static <K, V1, V2> EntryTransformer<K, V1, V2> a(final Function<? super V1, V2> function) {
        Preconditions.checkNotNull(function);
        return new EntryTransformer<K, V1, V2>() { // from class: com.google.common.collect.Maps.9
            @Override // com.google.common.collect.Maps.EntryTransformer
            public V2 transformEntry(K k2, V1 v1) {
                return (V2) function.apply(v1);
            }
        };
    }

    static <K, V1, V2> Function<V1, V2> a(final EntryTransformer<? super K, V1, V2> entryTransformer, final K k2) {
        Preconditions.checkNotNull(entryTransformer);
        return new Function<V1, V2>() { // from class: com.google.common.collect.Maps.10
            @Override // com.google.common.base.Function
            public V2 apply(@Nullable V1 v1) {
                return (V2) entryTransformer.transformEntry(k2, v1);
            }
        };
    }

    static <K, V1, V2> Function<Map.Entry<K, V1>, V2> a(final EntryTransformer<? super K, ? super V1, V2> entryTransformer) {
        Preconditions.checkNotNull(entryTransformer);
        return new Function<Map.Entry<K, V1>, V2>() { // from class: com.google.common.collect.Maps.11
            @Override // com.google.common.base.Function
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public V2 apply(Map.Entry<K, V1> entry) {
                return (V2) entryTransformer.transformEntry(entry.getKey(), entry.getValue());
            }
        };
    }

    static <V2, K, V1> Map.Entry<K, V2> a(final EntryTransformer<? super K, ? super V1, V2> entryTransformer, final Map.Entry<K, V1> entry) {
        Preconditions.checkNotNull(entryTransformer);
        Preconditions.checkNotNull(entry);
        return new hh<K, V2>() { // from class: com.google.common.collect.Maps.2
            @Override // defpackage.hh, java.util.Map.Entry
            public K getKey() {
                return (K) entry.getKey();
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // defpackage.hh, java.util.Map.Entry
            public V2 getValue() {
                return (V2) entryTransformer.transformEntry(entry.getKey(), entry.getValue());
            }
        };
    }

    static <K, V1, V2> Function<Map.Entry<K, V1>, Map.Entry<K, V2>> b(final EntryTransformer<? super K, ? super V1, V2> entryTransformer) {
        Preconditions.checkNotNull(entryTransformer);
        return new Function<Map.Entry<K, V1>, Map.Entry<K, V2>>() { // from class: com.google.common.collect.Maps.3
            @Override // com.google.common.base.Function
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Map.Entry<K, V2> apply(Map.Entry<K, V1> entry) {
                return Maps.a(entryTransformer, (Map.Entry) entry);
            }
        };
    }

    static class u<K, V1, V2> extends m<K, V2> {
        final Map<K, V1> a;
        final EntryTransformer<? super K, ? super V1, V2> b;

        u(Map<K, V1> map, EntryTransformer<? super K, ? super V1, V2> entryTransformer) {
            this.a = (Map) Preconditions.checkNotNull(map);
            this.b = (EntryTransformer) Preconditions.checkNotNull(entryTransformer);
        }

        @Override // com.google.common.collect.Maps.m, java.util.AbstractMap, java.util.Map
        public int size() {
            return this.a.size();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return this.a.containsKey(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V2 get(Object obj) {
            V1 v1 = this.a.get(obj);
            if (v1 != null || this.a.containsKey(obj)) {
                return this.b.transformEntry(obj, v1);
            }
            return null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V2 remove(Object obj) {
            if (this.a.containsKey(obj)) {
                return this.b.transformEntry(obj, this.a.remove(obj));
            }
            return null;
        }

        @Override // com.google.common.collect.Maps.m, java.util.AbstractMap, java.util.Map
        public void clear() {
            this.a.clear();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<K> keySet() {
            return this.a.keySet();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.Maps.m
        public Iterator<Map.Entry<K, V2>> b() {
            return Iterators.transform(this.a.entrySet().iterator(), Maps.b(this.b));
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Collection<V2> values() {
            return new ac(this);
        }
    }

    static class w<K, V1, V2> extends u<K, V1, V2> implements SortedMap<K, V2> {
        protected SortedMap<K, V1> c() {
            return (SortedMap) this.a;
        }

        w(SortedMap<K, V1> sortedMap, EntryTransformer<? super K, ? super V1, V2> entryTransformer) {
            super(sortedMap, entryTransformer);
        }

        @Override // java.util.SortedMap
        public Comparator<? super K> comparator() {
            return c().comparator();
        }

        @Override // java.util.SortedMap
        public K firstKey() {
            return c().firstKey();
        }

        public SortedMap<K, V2> headMap(K k) {
            return Maps.transformEntries((SortedMap) c().headMap(k), (EntryTransformer) this.b);
        }

        @Override // java.util.SortedMap
        public K lastKey() {
            return c().lastKey();
        }

        public SortedMap<K, V2> subMap(K k, K k2) {
            return Maps.transformEntries((SortedMap) c().subMap(k, k2), (EntryTransformer) this.b);
        }

        public SortedMap<K, V2> tailMap(K k) {
            return Maps.transformEntries((SortedMap) c().tailMap(k), (EntryTransformer) this.b);
        }
    }

    @GwtIncompatible("NavigableMap")
    static class v<K, V1, V2> extends w<K, V1, V2> implements NavigableMap<K, V2> {
        v(NavigableMap<K, V1> navigableMap, EntryTransformer<? super K, ? super V1, V2> entryTransformer) {
            super(navigableMap, entryTransformer);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V2> ceilingEntry(K k) {
            return a((Map.Entry) c().ceilingEntry(k));
        }

        @Override // java.util.NavigableMap
        public K ceilingKey(K k) {
            return c().ceilingKey(k);
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> descendingKeySet() {
            return c().descendingKeySet();
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V2> descendingMap() {
            return Maps.transformEntries((NavigableMap) c().descendingMap(), (EntryTransformer) this.b);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V2> firstEntry() {
            return a((Map.Entry) c().firstEntry());
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V2> floorEntry(K k) {
            return a((Map.Entry) c().floorEntry(k));
        }

        @Override // java.util.NavigableMap
        public K floorKey(K k) {
            return c().floorKey(k);
        }

        @Override // com.google.common.collect.Maps.w, java.util.SortedMap, java.util.NavigableMap
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public NavigableMap<K, V2> headMap(K k) {
            return headMap(k, false);
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V2> headMap(K k, boolean z) {
            return Maps.transformEntries((NavigableMap) c().headMap(k, z), (EntryTransformer) this.b);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V2> higherEntry(K k) {
            return a((Map.Entry) c().higherEntry(k));
        }

        @Override // java.util.NavigableMap
        public K higherKey(K k) {
            return c().higherKey(k);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V2> lastEntry() {
            return a((Map.Entry) c().lastEntry());
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V2> lowerEntry(K k) {
            return a((Map.Entry) c().lowerEntry(k));
        }

        @Override // java.util.NavigableMap
        public K lowerKey(K k) {
            return c().lowerKey(k);
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> navigableKeySet() {
            return c().navigableKeySet();
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V2> pollFirstEntry() {
            return a((Map.Entry) c().pollFirstEntry());
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V2> pollLastEntry() {
            return a((Map.Entry) c().pollLastEntry());
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V2> subMap(K k, boolean z, K k2, boolean z2) {
            return Maps.transformEntries((NavigableMap) c().subMap(k, z, k2, z2), (EntryTransformer) this.b);
        }

        @Override // com.google.common.collect.Maps.w, java.util.SortedMap, java.util.NavigableMap
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public NavigableMap<K, V2> subMap(K k, K k2) {
            return subMap(k, true, k2, false);
        }

        @Override // com.google.common.collect.Maps.w, java.util.SortedMap, java.util.NavigableMap
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public NavigableMap<K, V2> tailMap(K k) {
            return tailMap(k, true);
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V2> tailMap(K k, boolean z) {
            return Maps.transformEntries((NavigableMap) c().tailMap(k, z), (EntryTransformer) this.b);
        }

        @Nullable
        private Map.Entry<K, V2> a(@Nullable Map.Entry<K, V1> entry) {
            if (entry == null) {
                return null;
            }
            return Maps.a((EntryTransformer) this.b, (Map.Entry) entry);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.Maps.w
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public NavigableMap<K, V1> c() {
            return (NavigableMap) super.c();
        }
    }

    public static <K> Predicate<Map.Entry<K, ?>> a(Predicate<? super K> predicate) {
        return Predicates.compose(predicate, a());
    }

    public static <V> Predicate<Map.Entry<?, V>> b(Predicate<? super V> predicate) {
        return Predicates.compose(predicate, b());
    }

    @CheckReturnValue
    public static <K, V> Map<K, V> filterKeys(Map<K, V> map, Predicate<? super K> predicate) {
        if (map instanceof SortedMap) {
            return filterKeys((SortedMap) map, (Predicate) predicate);
        }
        if (map instanceof BiMap) {
            return filterKeys((BiMap) map, (Predicate) predicate);
        }
        Preconditions.checkNotNull(predicate);
        Predicate predicateA = a(predicate);
        if (map instanceof a) {
            return a((a) map, predicateA);
        }
        return new k((Map) Preconditions.checkNotNull(map), predicate, predicateA);
    }

    @CheckReturnValue
    public static <K, V> SortedMap<K, V> filterKeys(SortedMap<K, V> sortedMap, Predicate<? super K> predicate) {
        return filterEntries((SortedMap) sortedMap, a(predicate));
    }

    @GwtIncompatible("NavigableMap")
    @CheckReturnValue
    public static <K, V> NavigableMap<K, V> filterKeys(NavigableMap<K, V> navigableMap, Predicate<? super K> predicate) {
        return filterEntries((NavigableMap) navigableMap, a(predicate));
    }

    @CheckReturnValue
    public static <K, V> BiMap<K, V> filterKeys(BiMap<K, V> biMap, Predicate<? super K> predicate) {
        Preconditions.checkNotNull(predicate);
        return filterEntries((BiMap) biMap, a(predicate));
    }

    @CheckReturnValue
    public static <K, V> Map<K, V> filterValues(Map<K, V> map, Predicate<? super V> predicate) {
        if (map instanceof SortedMap) {
            return filterValues((SortedMap) map, (Predicate) predicate);
        }
        if (map instanceof BiMap) {
            return filterValues((BiMap) map, (Predicate) predicate);
        }
        return filterEntries(map, b(predicate));
    }

    @CheckReturnValue
    public static <K, V> SortedMap<K, V> filterValues(SortedMap<K, V> sortedMap, Predicate<? super V> predicate) {
        return filterEntries((SortedMap) sortedMap, b(predicate));
    }

    @GwtIncompatible("NavigableMap")
    @CheckReturnValue
    public static <K, V> NavigableMap<K, V> filterValues(NavigableMap<K, V> navigableMap, Predicate<? super V> predicate) {
        return filterEntries((NavigableMap) navigableMap, b(predicate));
    }

    @CheckReturnValue
    public static <K, V> BiMap<K, V> filterValues(BiMap<K, V> biMap, Predicate<? super V> predicate) {
        return filterEntries((BiMap) biMap, b(predicate));
    }

    @CheckReturnValue
    public static <K, V> Map<K, V> filterEntries(Map<K, V> map, Predicate<? super Map.Entry<K, V>> predicate) {
        if (map instanceof SortedMap) {
            return filterEntries((SortedMap) map, (Predicate) predicate);
        }
        if (map instanceof BiMap) {
            return filterEntries((BiMap) map, (Predicate) predicate);
        }
        Preconditions.checkNotNull(predicate);
        if (map instanceof a) {
            return a((a) map, (Predicate) predicate);
        }
        return new h((Map) Preconditions.checkNotNull(map), predicate);
    }

    @CheckReturnValue
    public static <K, V> SortedMap<K, V> filterEntries(SortedMap<K, V> sortedMap, Predicate<? super Map.Entry<K, V>> predicate) {
        return jn.a(sortedMap, predicate);
    }

    public static <K, V> SortedMap<K, V> a(SortedMap<K, V> sortedMap, Predicate<? super Map.Entry<K, V>> predicate) {
        Preconditions.checkNotNull(predicate);
        return sortedMap instanceof j ? a((j) sortedMap, (Predicate) predicate) : new j((SortedMap) Preconditions.checkNotNull(sortedMap), predicate);
    }

    @GwtIncompatible("NavigableMap")
    @CheckReturnValue
    public static <K, V> NavigableMap<K, V> filterEntries(NavigableMap<K, V> navigableMap, Predicate<? super Map.Entry<K, V>> predicate) {
        Preconditions.checkNotNull(predicate);
        return navigableMap instanceof i ? a((i) navigableMap, (Predicate) predicate) : new i((NavigableMap) Preconditions.checkNotNull(navigableMap), predicate);
    }

    @CheckReturnValue
    public static <K, V> BiMap<K, V> filterEntries(BiMap<K, V> biMap, Predicate<? super Map.Entry<K, V>> predicate) {
        Preconditions.checkNotNull(biMap);
        Preconditions.checkNotNull(predicate);
        return biMap instanceof g ? a((g) biMap, (Predicate) predicate) : new g(biMap, predicate);
    }

    private static <K, V> Map<K, V> a(a<K, V> aVar, Predicate<? super Map.Entry<K, V>> predicate) {
        return new h(aVar.a, Predicates.and(aVar.b, predicate));
    }

    static abstract class a<K, V> extends ad<K, V> {
        final Map<K, V> a;
        final Predicate<? super Map.Entry<K, V>> b;

        a(Map<K, V> map, Predicate<? super Map.Entry<K, V>> predicate) {
            this.a = map;
            this.b = predicate;
        }

        boolean a(@Nullable Object obj, @Nullable V v) {
            return this.b.apply(Maps.immutableEntry(obj, v));
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V put(K k, V v) {
            Preconditions.checkArgument(a(k, v));
            return this.a.put(k, v);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public void putAll(Map<? extends K, ? extends V> map) {
            for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
                Preconditions.checkArgument(a(entry.getKey(), entry.getValue()));
            }
            this.a.putAll(map);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return this.a.containsKey(obj) && a(obj, this.a.get(obj));
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V get(Object obj) {
            V v = this.a.get(obj);
            if (v == null || !a(obj, v)) {
                return null;
            }
            return v;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean isEmpty() {
            return entrySet().isEmpty();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V remove(Object obj) {
            if (containsKey(obj)) {
                return this.a.remove(obj);
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.Maps.ad
        public Collection<V> b() {
            return new l(this, this.a, this.b);
        }
    }

    static final class l<K, V> extends ac<K, V> {
        Map<K, V> a;
        Predicate<? super Map.Entry<K, V>> b;

        l(Map<K, V> map, Map<K, V> map2, Predicate<? super Map.Entry<K, V>> predicate) {
            super(map);
            this.a = map2;
            this.b = predicate;
        }

        @Override // com.google.common.collect.Maps.ac, java.util.AbstractCollection, java.util.Collection
        public boolean remove(Object obj) {
            return Iterables.a(this.a.entrySet(), Predicates.and(this.b, Maps.b(Predicates.equalTo(obj)))) != null;
        }

        private boolean a(Predicate<? super V> predicate) {
            return Iterables.removeIf(this.a.entrySet(), Predicates.and(this.b, Maps.b(predicate)));
        }

        @Override // com.google.common.collect.Maps.ac, java.util.AbstractCollection, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            return a(Predicates.in(collection));
        }

        @Override // com.google.common.collect.Maps.ac, java.util.AbstractCollection, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            return a(Predicates.not(Predicates.in(collection)));
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public Object[] toArray() {
            return Lists.newArrayList(iterator()).toArray();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) Lists.newArrayList(iterator()).toArray(tArr);
        }
    }

    static class k<K, V> extends a<K, V> {
        Predicate<? super K> c;

        k(Map<K, V> map, Predicate<? super K> predicate, Predicate<? super Map.Entry<K, V>> predicate2) {
            super(map, predicate2);
            this.c = predicate;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.Maps.ad
        public Set<Map.Entry<K, V>> a() {
            return Sets.filter(this.a.entrySet(), this.b);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.Maps.ad
        public Set<K> h() {
            return Sets.filter(this.a.keySet(), this.c);
        }

        @Override // com.google.common.collect.Maps.a, java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return this.a.containsKey(obj) && this.c.apply(obj);
        }
    }

    static class h<K, V> extends a<K, V> {
        final Set<Map.Entry<K, V>> c;

        h(Map<K, V> map, Predicate<? super Map.Entry<K, V>> predicate) {
            super(map, predicate);
            this.c = Sets.filter(map.entrySet(), this.b);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.Maps.ad
        public Set<Map.Entry<K, V>> a() {
            return new a();
        }

        class a extends ForwardingSet<Map.Entry<K, V>> {
            private a() {
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
            public Set<Map.Entry<K, V>> delegate() {
                return h.this.c;
            }

            @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.lang.Iterable
            public Iterator<Map.Entry<K, V>> iterator() {
                return new kn<Map.Entry<K, V>, Map.Entry<K, V>>(h.this.c.iterator()) { // from class: com.google.common.collect.Maps.h.a.1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    @Override // defpackage.kn
                    public Map.Entry<K, V> a(final Map.Entry<K, V> entry) {
                        return new ForwardingMapEntry<K, V>() { // from class: com.google.common.collect.Maps.h.a.1.1
                            /* JADX INFO: Access modifiers changed from: protected */
                            @Override // com.google.common.collect.ForwardingMapEntry, com.google.common.collect.ForwardingObject
                            public Map.Entry<K, V> delegate() {
                                return entry;
                            }

                            @Override // com.google.common.collect.ForwardingMapEntry, java.util.Map.Entry
                            public V setValue(V v) {
                                Preconditions.checkArgument(h.this.a(getKey(), v));
                                return (V) super.setValue(v);
                            }
                        };
                    }
                };
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.Maps.ad
        public Set<K> h() {
            return new b();
        }

        class b extends n<K, V> {
            b() {
                super(h.this);
            }

            @Override // com.google.common.collect.Maps.n, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(Object obj) {
                if (!h.this.containsKey(obj)) {
                    return false;
                }
                h.this.a.remove(obj);
                return true;
            }

            private boolean a(Predicate<? super K> predicate) {
                return Iterables.removeIf(h.this.a.entrySet(), Predicates.and(h.this.b, Maps.a(predicate)));
            }

            @Override // com.google.common.collect.Sets.f, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean removeAll(Collection<?> collection) {
                return a(Predicates.in(collection));
            }

            @Override // com.google.common.collect.Sets.f, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean retainAll(Collection<?> collection) {
                return a(Predicates.not(Predicates.in(collection)));
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public Object[] toArray() {
                return Lists.newArrayList(iterator()).toArray();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public <T> T[] toArray(T[] tArr) {
                return (T[]) Lists.newArrayList(iterator()).toArray(tArr);
            }
        }
    }

    private static <K, V> SortedMap<K, V> a(j<K, V> jVar, Predicate<? super Map.Entry<K, V>> predicate) {
        return new j(jVar.c(), Predicates.and(jVar.b, predicate));
    }

    static class j<K, V> extends h<K, V> implements SortedMap<K, V> {
        j(SortedMap<K, V> sortedMap, Predicate<? super Map.Entry<K, V>> predicate) {
            super(sortedMap, predicate);
        }

        SortedMap<K, V> c() {
            return (SortedMap) this.a;
        }

        @Override // com.google.common.collect.Maps.ad, java.util.AbstractMap, java.util.Map
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public SortedSet<K> keySet() {
            return (SortedSet) super.keySet();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.Maps.h, com.google.common.collect.Maps.ad
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public SortedSet<K> h() {
            return new a();
        }

        class a extends h<K, V>.b implements SortedSet<K> {
            a() {
                super();
            }

            @Override // java.util.SortedSet
            public Comparator<? super K> comparator() {
                return j.this.c().comparator();
            }

            @Override // java.util.SortedSet
            public SortedSet<K> subSet(K k, K k2) {
                return (SortedSet) j.this.subMap(k, k2).keySet();
            }

            @Override // java.util.SortedSet
            public SortedSet<K> headSet(K k) {
                return (SortedSet) j.this.headMap(k).keySet();
            }

            @Override // java.util.SortedSet
            public SortedSet<K> tailSet(K k) {
                return (SortedSet) j.this.tailMap(k).keySet();
            }

            @Override // java.util.SortedSet
            public K first() {
                return (K) j.this.firstKey();
            }

            @Override // java.util.SortedSet
            public K last() {
                return (K) j.this.lastKey();
            }
        }

        @Override // java.util.SortedMap
        public Comparator<? super K> comparator() {
            return c().comparator();
        }

        @Override // java.util.SortedMap
        public K firstKey() {
            return keySet().iterator().next();
        }

        @Override // java.util.SortedMap
        public K lastKey() {
            SortedMap<K, V> sortedMapC = c();
            while (true) {
                K kLastKey = sortedMapC.lastKey();
                if (a(kLastKey, this.a.get(kLastKey))) {
                    return kLastKey;
                }
                sortedMapC = c().headMap(kLastKey);
            }
        }

        @Override // java.util.SortedMap
        public SortedMap<K, V> headMap(K k) {
            return new j(c().headMap(k), this.b);
        }

        @Override // java.util.SortedMap
        public SortedMap<K, V> subMap(K k, K k2) {
            return new j(c().subMap(k, k2), this.b);
        }

        @Override // java.util.SortedMap
        public SortedMap<K, V> tailMap(K k) {
            return new j(c().tailMap(k), this.b);
        }
    }

    @GwtIncompatible("NavigableMap")
    private static <K, V> NavigableMap<K, V> a(i<K, V> iVar, Predicate<? super Map.Entry<K, V>> predicate) {
        return new i(((i) iVar).a, Predicates.and(((i) iVar).b, predicate));
    }

    @GwtIncompatible("NavigableMap")
    static class i<K, V> extends hk<K, V> {
        private final NavigableMap<K, V> a;
        private final Predicate<? super Map.Entry<K, V>> b;
        private final Map<K, V> c;

        i(NavigableMap<K, V> navigableMap, Predicate<? super Map.Entry<K, V>> predicate) {
            this.a = (NavigableMap) Preconditions.checkNotNull(navigableMap);
            this.b = predicate;
            this.c = new h(navigableMap, predicate);
        }

        @Override // java.util.SortedMap
        public Comparator<? super K> comparator() {
            return this.a.comparator();
        }

        @Override // defpackage.hk, java.util.NavigableMap
        public NavigableSet<K> navigableKeySet() {
            return new q<K, V>(this) { // from class: com.google.common.collect.Maps.i.1
                @Override // com.google.common.collect.Sets.f, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
                public boolean removeAll(Collection<?> collection) {
                    return Iterators.removeIf(i.this.a.entrySet().iterator(), Predicates.and(i.this.b, Maps.a(Predicates.in(collection))));
                }

                @Override // com.google.common.collect.Sets.f, java.util.AbstractCollection, java.util.Collection, java.util.Set
                public boolean retainAll(Collection<?> collection) {
                    return Iterators.removeIf(i.this.a.entrySet().iterator(), Predicates.and(i.this.b, Maps.a(Predicates.not(Predicates.in(collection)))));
                }
            };
        }

        @Override // java.util.AbstractMap, java.util.Map, java.util.SortedMap
        public Collection<V> values() {
            return new l(this, this.a, this.b);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.Maps.m
        public Iterator<Map.Entry<K, V>> b() {
            return Iterators.filter(this.a.entrySet().iterator(), this.b);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // defpackage.hk
        public Iterator<Map.Entry<K, V>> a() {
            return Iterators.filter(this.a.descendingMap().entrySet().iterator(), this.b);
        }

        @Override // com.google.common.collect.Maps.m, java.util.AbstractMap, java.util.Map
        public int size() {
            return this.c.size();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean isEmpty() {
            return !Iterables.any(this.a.entrySet(), this.b);
        }

        @Override // java.util.AbstractMap, java.util.Map
        @Nullable
        public V get(@Nullable Object obj) {
            return this.c.get(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(@Nullable Object obj) {
            return this.c.containsKey(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V put(K k, V v) {
            return this.c.put(k, v);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V remove(@Nullable Object obj) {
            return this.c.remove(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public void putAll(Map<? extends K, ? extends V> map) {
            this.c.putAll(map);
        }

        @Override // com.google.common.collect.Maps.m, java.util.AbstractMap, java.util.Map
        public void clear() {
            this.c.clear();
        }

        @Override // com.google.common.collect.Maps.m, java.util.AbstractMap, java.util.Map
        public Set<Map.Entry<K, V>> entrySet() {
            return this.c.entrySet();
        }

        @Override // defpackage.hk, java.util.NavigableMap
        public Map.Entry<K, V> pollFirstEntry() {
            return (Map.Entry) Iterables.a(this.a.entrySet(), this.b);
        }

        @Override // defpackage.hk, java.util.NavigableMap
        public Map.Entry<K, V> pollLastEntry() {
            return (Map.Entry) Iterables.a(this.a.descendingMap().entrySet(), this.b);
        }

        @Override // defpackage.hk, java.util.NavigableMap
        public NavigableMap<K, V> descendingMap() {
            return Maps.filterEntries((NavigableMap) this.a.descendingMap(), (Predicate) this.b);
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> subMap(K k, boolean z, K k2, boolean z2) {
            return Maps.filterEntries((NavigableMap) this.a.subMap(k, z, k2, z2), (Predicate) this.b);
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> headMap(K k, boolean z) {
            return Maps.filterEntries((NavigableMap) this.a.headMap(k, z), (Predicate) this.b);
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> tailMap(K k, boolean z) {
            return Maps.filterEntries((NavigableMap) this.a.tailMap(k, z), (Predicate) this.b);
        }
    }

    private static <K, V> BiMap<K, V> a(g<K, V> gVar, Predicate<? super Map.Entry<K, V>> predicate) {
        return new g(gVar.c(), Predicates.and(gVar.b, predicate));
    }

    static final class g<K, V> extends h<K, V> implements BiMap<K, V> {
        private final BiMap<V, K> d;

        private static <K, V> Predicate<Map.Entry<V, K>> a(final Predicate<? super Map.Entry<K, V>> predicate) {
            return new Predicate<Map.Entry<V, K>>() { // from class: com.google.common.collect.Maps.g.1
                @Override // com.google.common.base.Predicate
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public boolean apply(Map.Entry<V, K> entry) {
                    return predicate.apply(Maps.immutableEntry(entry.getValue(), entry.getKey()));
                }
            };
        }

        g(BiMap<K, V> biMap, Predicate<? super Map.Entry<K, V>> predicate) {
            super(biMap, predicate);
            this.d = new g(biMap.inverse(), a(predicate), this);
        }

        private g(BiMap<K, V> biMap, Predicate<? super Map.Entry<K, V>> predicate, BiMap<V, K> biMap2) {
            super(biMap, predicate);
            this.d = biMap2;
        }

        BiMap<K, V> c() {
            return (BiMap) this.a;
        }

        @Override // com.google.common.collect.BiMap
        public V forcePut(@Nullable K k, @Nullable V v) {
            Preconditions.checkArgument(a(k, v));
            return c().forcePut(k, v);
        }

        @Override // com.google.common.collect.BiMap
        public BiMap<V, K> inverse() {
            return this.d;
        }

        @Override // com.google.common.collect.Maps.ad, java.util.AbstractMap, java.util.Map
        public Set<V> values() {
            return this.d.keySet();
        }
    }

    @GwtIncompatible("NavigableMap")
    public static <K, V> NavigableMap<K, V> unmodifiableNavigableMap(NavigableMap<K, V> navigableMap) {
        Preconditions.checkNotNull(navigableMap);
        return navigableMap instanceof aa ? navigableMap : new aa(navigableMap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public static <K, V> Map.Entry<K, V> e(@Nullable Map.Entry<K, V> entry) {
        if (entry == null) {
            return null;
        }
        return a(entry);
    }

    @GwtIncompatible("NavigableMap")
    static class aa<K, V> extends ForwardingSortedMap<K, V> implements Serializable, NavigableMap<K, V> {
        private final NavigableMap<K, V> a;
        private transient aa<K, V> b;

        aa(NavigableMap<K, V> navigableMap) {
            this.a = navigableMap;
        }

        aa(NavigableMap<K, V> navigableMap, aa<K, V> aaVar) {
            this.a = navigableMap;
            this.b = aaVar;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.ForwardingSortedMap, com.google.common.collect.ForwardingMap, com.google.common.collect.ForwardingObject
        public SortedMap<K, V> delegate() {
            return Collections.unmodifiableSortedMap(this.a);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> lowerEntry(K k) {
            return Maps.e(this.a.lowerEntry(k));
        }

        @Override // java.util.NavigableMap
        public K lowerKey(K k) {
            return this.a.lowerKey(k);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> floorEntry(K k) {
            return Maps.e(this.a.floorEntry(k));
        }

        @Override // java.util.NavigableMap
        public K floorKey(K k) {
            return this.a.floorKey(k);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> ceilingEntry(K k) {
            return Maps.e(this.a.ceilingEntry(k));
        }

        @Override // java.util.NavigableMap
        public K ceilingKey(K k) {
            return this.a.ceilingKey(k);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> higherEntry(K k) {
            return Maps.e(this.a.higherEntry(k));
        }

        @Override // java.util.NavigableMap
        public K higherKey(K k) {
            return this.a.higherKey(k);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> firstEntry() {
            return Maps.e(this.a.firstEntry());
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> lastEntry() {
            return Maps.e(this.a.lastEntry());
        }

        @Override // java.util.NavigableMap
        public final Map.Entry<K, V> pollFirstEntry() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.NavigableMap
        public final Map.Entry<K, V> pollLastEntry() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> descendingMap() {
            aa<K, V> aaVar = this.b;
            if (aaVar != null) {
                return aaVar;
            }
            aa<K, V> aaVar2 = new aa<>(this.a.descendingMap(), this);
            this.b = aaVar2;
            return aaVar2;
        }

        @Override // com.google.common.collect.ForwardingMap, java.util.Map
        public Set<K> keySet() {
            return navigableKeySet();
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> navigableKeySet() {
            return Sets.unmodifiableNavigableSet(this.a.navigableKeySet());
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> descendingKeySet() {
            return Sets.unmodifiableNavigableSet(this.a.descendingKeySet());
        }

        @Override // com.google.common.collect.ForwardingSortedMap, java.util.SortedMap
        public SortedMap<K, V> subMap(K k, K k2) {
            return subMap(k, true, k2, false);
        }

        @Override // com.google.common.collect.ForwardingSortedMap, java.util.SortedMap
        public SortedMap<K, V> headMap(K k) {
            return headMap(k, false);
        }

        @Override // com.google.common.collect.ForwardingSortedMap, java.util.SortedMap
        public SortedMap<K, V> tailMap(K k) {
            return tailMap(k, true);
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> subMap(K k, boolean z, K k2, boolean z2) {
            return Maps.unmodifiableNavigableMap(this.a.subMap(k, z, k2, z2));
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> headMap(K k, boolean z) {
            return Maps.unmodifiableNavigableMap(this.a.headMap(k, z));
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> tailMap(K k, boolean z) {
            return Maps.unmodifiableNavigableMap(this.a.tailMap(k, z));
        }
    }

    @GwtIncompatible("NavigableMap")
    public static <K, V> NavigableMap<K, V> synchronizedNavigableMap(NavigableMap<K, V> navigableMap) {
        return km.a(navigableMap);
    }

    @GwtCompatible
    public static abstract class ad<K, V> extends AbstractMap<K, V> {
        private transient Set<Map.Entry<K, V>> a;
        private transient Set<K> b;
        private transient Collection<V> c;

        public abstract Set<Map.Entry<K, V>> a();

        protected ad() {
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<Map.Entry<K, V>> entrySet() {
            Set<Map.Entry<K, V>> set = this.a;
            if (set != null) {
                return set;
            }
            Set<Map.Entry<K, V>> setA = a();
            this.a = setA;
            return setA;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<K> keySet() {
            Set<K> set = this.b;
            if (set != null) {
                return set;
            }
            Set<K> setH = h();
            this.b = setH;
            return setH;
        }

        public Set<K> h() {
            return new n(this);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Collection<V> values() {
            Collection<V> collection = this.c;
            if (collection != null) {
                return collection;
            }
            Collection<V> collectionB = b();
            this.c = collectionB;
            return collectionB;
        }

        public Collection<V> b() {
            return new ac(this);
        }
    }

    public static abstract class m<K, V> extends AbstractMap<K, V> {
        public abstract Iterator<Map.Entry<K, V>> b();

        @Override // java.util.AbstractMap, java.util.Map
        public abstract int size();

        protected m() {
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<Map.Entry<K, V>> entrySet() {
            return new f<K, V>() { // from class: com.google.common.collect.Maps.m.1
                /* JADX INFO: Access modifiers changed from: package-private */
                @Override // com.google.common.collect.Maps.f
                public Map<K, V> a() {
                    return m.this;
                }

                @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
                public Iterator<Map.Entry<K, V>> iterator() {
                    return m.this.b();
                }
            };
        }

        @Override // java.util.AbstractMap, java.util.Map
        public void clear() {
            Iterators.b(b());
        }
    }

    public static <V> V a(Map<?, V> map, @Nullable Object obj) {
        Preconditions.checkNotNull(map);
        try {
            return map.get(obj);
        } catch (ClassCastException e2) {
            return null;
        } catch (NullPointerException e3) {
            return null;
        }
    }

    public static boolean b(Map<?, ?> map, Object obj) {
        Preconditions.checkNotNull(map);
        try {
            return map.containsKey(obj);
        } catch (ClassCastException e2) {
            return false;
        } catch (NullPointerException e3) {
            return false;
        }
    }

    public static <V> V c(Map<?, V> map, Object obj) {
        Preconditions.checkNotNull(map);
        try {
            return map.remove(obj);
        } catch (ClassCastException e2) {
            return null;
        } catch (NullPointerException e3) {
            return null;
        }
    }

    static boolean d(Map<?, ?> map, @Nullable Object obj) {
        return Iterators.contains(a(map.entrySet().iterator()), obj);
    }

    static boolean e(Map<?, ?> map, @Nullable Object obj) {
        return Iterators.contains(b(map.entrySet().iterator()), obj);
    }

    public static <K, V> boolean a(Collection<Map.Entry<K, V>> collection, Object obj) {
        if (obj instanceof Map.Entry) {
            return collection.contains(a((Map.Entry) obj));
        }
        return false;
    }

    public static <K, V> boolean b(Collection<Map.Entry<K, V>> collection, Object obj) {
        if (obj instanceof Map.Entry) {
            return collection.remove(a((Map.Entry) obj));
        }
        return false;
    }

    static boolean f(Map<?, ?> map, Object obj) {
        if (map == obj) {
            return true;
        }
        if (obj instanceof Map) {
            return map.entrySet().equals(((Map) obj).entrySet());
        }
        return false;
    }

    static String a(Map<?, ?> map) {
        StringBuilder sbAppend = Collections2.a(map.size()).append('{');
        a.appendTo(sbAppend, map);
        return sbAppend.append('}').toString();
    }

    static <K, V> void a(Map<K, V> map, Map<? extends K, ? extends V> map2) {
        for (Map.Entry<? extends K, ? extends V> entry : map2.entrySet()) {
            map.put(entry.getKey(), entry.getValue());
        }
    }

    public static class n<K, V> extends Sets.f<K> {

        @Weak
        final Map<K, V> d;

        public n(Map<K, V> map) {
            this.d = (Map) Preconditions.checkNotNull(map);
        }

        protected Map<K, V> c() {
            return this.d;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return Maps.a(c().entrySet().iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return c().size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return c().isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return c().containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            c().remove(obj);
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            c().clear();
        }
    }

    @Nullable
    public static <K> K b(@Nullable Map.Entry<K, ?> entry) {
        if (entry == null) {
            return null;
        }
        return entry.getKey();
    }

    @Nullable
    static <V> V c(@Nullable Map.Entry<?, V> entry) {
        if (entry == null) {
            return null;
        }
        return entry.getValue();
    }

    public static class s<K, V> extends n<K, V> implements SortedSet<K> {
        public s(SortedMap<K, V> sortedMap) {
            super(sortedMap);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.Maps.n
        /* JADX INFO: renamed from: b */
        public SortedMap<K, V> c() {
            return (SortedMap) super.c();
        }

        @Override // java.util.SortedSet
        public Comparator<? super K> comparator() {
            return c().comparator();
        }

        public SortedSet<K> subSet(K k, K k2) {
            return new s(c().subMap(k, k2));
        }

        public SortedSet<K> headSet(K k) {
            return new s(c().headMap(k));
        }

        public SortedSet<K> tailSet(K k) {
            return new s(c().tailMap(k));
        }

        @Override // java.util.SortedSet
        public K first() {
            return c().firstKey();
        }

        @Override // java.util.SortedSet
        public K last() {
            return c().lastKey();
        }
    }

    @GwtIncompatible("NavigableMap")
    public static class q<K, V> extends s<K, V> implements NavigableSet<K> {
        public q(NavigableMap<K, V> navigableMap) {
            super(navigableMap);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.Maps.s, com.google.common.collect.Maps.n
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public NavigableMap<K, V> c() {
            return (NavigableMap) this.d;
        }

        @Override // java.util.NavigableSet
        public K lower(K k) {
            return b().lowerKey(k);
        }

        @Override // java.util.NavigableSet
        public K floor(K k) {
            return b().floorKey(k);
        }

        @Override // java.util.NavigableSet
        public K ceiling(K k) {
            return b().ceilingKey(k);
        }

        @Override // java.util.NavigableSet
        public K higher(K k) {
            return b().higherKey(k);
        }

        @Override // java.util.NavigableSet
        public K pollFirst() {
            return (K) Maps.b(b().pollFirstEntry());
        }

        @Override // java.util.NavigableSet
        public K pollLast() {
            return (K) Maps.b(b().pollLastEntry());
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> descendingSet() {
            return b().descendingKeySet();
        }

        @Override // java.util.NavigableSet
        public Iterator<K> descendingIterator() {
            return descendingSet().iterator();
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> subSet(K k, boolean z, K k2, boolean z2) {
            return b().subMap(k, z, k2, z2).navigableKeySet();
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> headSet(K k, boolean z) {
            return b().headMap(k, z).navigableKeySet();
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> tailSet(K k, boolean z) {
            return b().tailMap(k, z).navigableKeySet();
        }

        @Override // com.google.common.collect.Maps.s, java.util.SortedSet, java.util.NavigableSet
        public SortedSet<K> subSet(K k, K k2) {
            return subSet(k, true, k2, false);
        }

        @Override // com.google.common.collect.Maps.s, java.util.SortedSet, java.util.NavigableSet
        public SortedSet<K> headSet(K k) {
            return headSet(k, false);
        }

        @Override // com.google.common.collect.Maps.s, java.util.SortedSet, java.util.NavigableSet
        public SortedSet<K> tailSet(K k) {
            return tailSet(k, true);
        }
    }

    public static class ac<K, V> extends AbstractCollection<V> {

        @Weak
        final Map<K, V> c;

        protected ac(Map<K, V> map) {
            this.c = (Map) Preconditions.checkNotNull(map);
        }

        final Map<K, V> a() {
            return this.c;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return Maps.b(a().entrySet().iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(Object obj) {
            try {
                return super.remove(obj);
            } catch (UnsupportedOperationException e) {
                for (Map.Entry<K, V> entry : a().entrySet()) {
                    if (Objects.equal(obj, entry.getValue())) {
                        a().remove(entry.getKey());
                        return true;
                    }
                }
                return false;
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            try {
                return super.removeAll((Collection) Preconditions.checkNotNull(collection));
            } catch (UnsupportedOperationException e) {
                HashSet hashSetNewHashSet = Sets.newHashSet();
                for (Map.Entry<K, V> entry : a().entrySet()) {
                    if (collection.contains(entry.getValue())) {
                        hashSetNewHashSet.add(entry.getKey());
                    }
                }
                return a().keySet().removeAll(hashSetNewHashSet);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            try {
                return super.retainAll((Collection) Preconditions.checkNotNull(collection));
            } catch (UnsupportedOperationException e) {
                HashSet hashSetNewHashSet = Sets.newHashSet();
                for (Map.Entry<K, V> entry : a().entrySet()) {
                    if (collection.contains(entry.getValue())) {
                        hashSetNewHashSet.add(entry.getKey());
                    }
                }
                return a().keySet().retainAll(hashSetNewHashSet);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return a().size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return a().isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(@Nullable Object obj) {
            return a().containsValue(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            a().clear();
        }
    }

    public static abstract class f<K, V> extends Sets.f<Map.Entry<K, V>> {
        public abstract Map<K, V> a();

        protected f() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return a().size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            a().clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object objA = Maps.a((Map<?, Object>) a(), key);
            if (Objects.equal(objA, entry.getValue())) {
                return objA != null || a().containsKey(key);
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return a().isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            if (contains(obj)) {
                return a().keySet().remove(((Map.Entry) obj).getKey());
            }
            return false;
        }

        @Override // com.google.common.collect.Sets.f, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean removeAll(Collection<?> collection) {
            try {
                return super.removeAll((Collection) Preconditions.checkNotNull(collection));
            } catch (UnsupportedOperationException e) {
                return Sets.a((Set<?>) this, collection.iterator());
            }
        }

        @Override // com.google.common.collect.Sets.f, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean retainAll(Collection<?> collection) {
            try {
                return super.retainAll((Collection) Preconditions.checkNotNull(collection));
            } catch (UnsupportedOperationException e) {
                HashSet hashSetNewHashSetWithExpectedSize = Sets.newHashSetWithExpectedSize(collection.size());
                for (Object obj : collection) {
                    if (contains(obj)) {
                        hashSetNewHashSetWithExpectedSize.add(((Map.Entry) obj).getKey());
                    }
                }
                return a().keySet().retainAll(hashSetNewHashSetWithExpectedSize);
            }
        }
    }

    @GwtIncompatible("NavigableMap")
    public static abstract class d<K, V> extends ForwardingMap<K, V> implements NavigableMap<K, V> {
        private transient Comparator<? super K> a;
        private transient Set<Map.Entry<K, V>> b;
        private transient NavigableSet<K> c;

        public abstract NavigableMap<K, V> a();

        public abstract Iterator<Map.Entry<K, V>> entryIterator();

        protected d() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.ForwardingMap, com.google.common.collect.ForwardingObject
        public final Map<K, V> delegate() {
            return a();
        }

        @Override // java.util.SortedMap
        public Comparator<? super K> comparator() {
            Comparator<? super K> comparator = this.a;
            if (comparator == null) {
                Comparator<? super K> comparator2 = a().comparator();
                if (comparator2 == null) {
                    comparator2 = Ordering.natural();
                }
                Ordering orderingA = a(comparator2);
                this.a = orderingA;
                return orderingA;
            }
            return comparator;
        }

        private static <T> Ordering<T> a(Comparator<T> comparator) {
            return Ordering.from(comparator).reverse();
        }

        @Override // java.util.SortedMap
        public K firstKey() {
            return a().lastKey();
        }

        @Override // java.util.SortedMap
        public K lastKey() {
            return a().firstKey();
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> lowerEntry(K k) {
            return a().higherEntry(k);
        }

        @Override // java.util.NavigableMap
        public K lowerKey(K k) {
            return a().higherKey(k);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> floorEntry(K k) {
            return a().ceilingEntry(k);
        }

        @Override // java.util.NavigableMap
        public K floorKey(K k) {
            return a().ceilingKey(k);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> ceilingEntry(K k) {
            return a().floorEntry(k);
        }

        @Override // java.util.NavigableMap
        public K ceilingKey(K k) {
            return a().floorKey(k);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> higherEntry(K k) {
            return a().lowerEntry(k);
        }

        @Override // java.util.NavigableMap
        public K higherKey(K k) {
            return a().lowerKey(k);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> firstEntry() {
            return a().lastEntry();
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> lastEntry() {
            return a().firstEntry();
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> pollFirstEntry() {
            return a().pollLastEntry();
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> pollLastEntry() {
            return a().pollFirstEntry();
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> descendingMap() {
            return a();
        }

        @Override // com.google.common.collect.ForwardingMap, java.util.Map
        public Set<Map.Entry<K, V>> entrySet() {
            Set<Map.Entry<K, V>> set = this.b;
            if (set != null) {
                return set;
            }
            Set<Map.Entry<K, V>> setB = b();
            this.b = setB;
            return setB;
        }

        class a extends f<K, V> {
            a() {
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.collect.Maps.f
            public Map<K, V> a() {
                return d.this;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<K, V>> iterator() {
                return d.this.entryIterator();
            }
        }

        Set<Map.Entry<K, V>> b() {
            return new a();
        }

        @Override // com.google.common.collect.ForwardingMap, java.util.Map
        public Set<K> keySet() {
            return navigableKeySet();
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> navigableKeySet() {
            NavigableSet<K> navigableSet = this.c;
            if (navigableSet != null) {
                return navigableSet;
            }
            q qVar = new q(this);
            this.c = qVar;
            return qVar;
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> descendingKeySet() {
            return a().navigableKeySet();
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> subMap(K k, boolean z, K k2, boolean z2) {
            return a().subMap(k2, z2, k, z).descendingMap();
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> headMap(K k, boolean z) {
            return a().tailMap(k, z).descendingMap();
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> tailMap(K k, boolean z) {
            return a().headMap(k, z).descendingMap();
        }

        @Override // java.util.NavigableMap, java.util.SortedMap
        public SortedMap<K, V> subMap(K k, K k2) {
            return subMap(k, true, k2, false);
        }

        @Override // java.util.NavigableMap, java.util.SortedMap
        public SortedMap<K, V> headMap(K k) {
            return headMap(k, false);
        }

        @Override // java.util.NavigableMap, java.util.SortedMap
        public SortedMap<K, V> tailMap(K k) {
            return tailMap(k, true);
        }

        @Override // com.google.common.collect.ForwardingMap, java.util.Map, com.google.common.collect.BiMap
        public Collection<V> values() {
            return new ac(this);
        }

        @Override // com.google.common.collect.ForwardingObject
        public String toString() {
            return standardToString();
        }
    }

    public static <E> ImmutableMap<E, Integer> a(Collection<E> collection) {
        ImmutableMap.Builder builder = new ImmutableMap.Builder(collection.size());
        int i2 = 0;
        Iterator<E> it = collection.iterator();
        while (it.hasNext()) {
            builder.put(it.next(), Integer.valueOf(i2));
            i2++;
        }
        return builder.build();
    }
}
