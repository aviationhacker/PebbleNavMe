package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.base.Predicates;
import com.google.common.collect.Maps;
import defpackage.hh;
import defpackage.ic;
import java.lang.Comparable;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NoSuchElementException;
import java.util.Set;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Beta
@GwtIncompatible("NavigableMap")
public final class TreeRangeMap<K extends Comparable, V> implements RangeMap<K, V> {
    private static final RangeMap b = new RangeMap() { // from class: com.google.common.collect.TreeRangeMap.1
        @Override // com.google.common.collect.RangeMap
        @Nullable
        public Object get(Comparable comparable) {
            return null;
        }

        @Override // com.google.common.collect.RangeMap
        @Nullable
        public Map.Entry<Range, Object> getEntry(Comparable comparable) {
            return null;
        }

        @Override // com.google.common.collect.RangeMap
        public Range span() {
            throw new NoSuchElementException();
        }

        @Override // com.google.common.collect.RangeMap
        public void put(Range range, Object obj) {
            Preconditions.checkNotNull(range);
            String strValueOf = String.valueOf(range);
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(strValueOf).length() + 46).append("Cannot insert range ").append(strValueOf).append(" into an empty subRangeMap").toString());
        }

        @Override // com.google.common.collect.RangeMap
        public void putAll(RangeMap rangeMap) {
            if (!rangeMap.asMapOfRanges().isEmpty()) {
                throw new IllegalArgumentException("Cannot putAll(nonEmptyRangeMap) into an empty subRangeMap");
            }
        }

        @Override // com.google.common.collect.RangeMap
        public void clear() {
        }

        @Override // com.google.common.collect.RangeMap
        public void remove(Range range) {
            Preconditions.checkNotNull(range);
        }

        @Override // com.google.common.collect.RangeMap
        public Map<Range, Object> asMapOfRanges() {
            return Collections.emptyMap();
        }

        @Override // com.google.common.collect.RangeMap
        public Map<Range, Object> asDescendingMapOfRanges() {
            return Collections.emptyMap();
        }

        @Override // com.google.common.collect.RangeMap
        public RangeMap subRangeMap(Range range) {
            Preconditions.checkNotNull(range);
            return this;
        }
    };
    private final NavigableMap<ic<K>, b<K, V>> a = Maps.newTreeMap();

    public static <K extends Comparable, V> TreeRangeMap<K, V> create() {
        return new TreeRangeMap<>();
    }

    private TreeRangeMap() {
    }

    static final class b<K extends Comparable, V> extends hh<Range<K>, V> {
        private final Range<K> a;
        private final V b;

        b(ic<K> icVar, ic<K> icVar2, V v) {
            this(Range.a((ic) icVar, (ic) icVar2), v);
        }

        b(Range<K> range, V v) {
            this.a = range;
            this.b = v;
        }

        @Override // defpackage.hh, java.util.Map.Entry
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Range<K> getKey() {
            return this.a;
        }

        @Override // defpackage.hh, java.util.Map.Entry
        public V getValue() {
            return this.b;
        }

        public boolean a(K k) {
            return this.a.contains(k);
        }

        ic<K> b() {
            return (ic<K>) this.a.b;
        }

        ic<K> c() {
            return (ic<K>) this.a.c;
        }
    }

    @Override // com.google.common.collect.RangeMap
    @Nullable
    public V get(K k) {
        Map.Entry<Range<K>, V> entry = getEntry(k);
        if (entry == null) {
            return null;
        }
        return entry.getValue();
    }

    @Override // com.google.common.collect.RangeMap
    @Nullable
    public Map.Entry<Range<K>, V> getEntry(K k) {
        Map.Entry<ic<K>, b<K, V>> entryFloorEntry = this.a.floorEntry(ic.b(k));
        if (entryFloorEntry == null || !entryFloorEntry.getValue().a(k)) {
            return null;
        }
        return entryFloorEntry.getValue();
    }

    @Override // com.google.common.collect.RangeMap
    public void put(Range<K> range, V v) {
        if (!range.isEmpty()) {
            Preconditions.checkNotNull(v);
            remove(range);
            this.a.put(range.b, new b(range, v));
        }
    }

    @Override // com.google.common.collect.RangeMap
    public void putAll(RangeMap<K, V> rangeMap) {
        for (Map.Entry<Range<K>, V> entry : rangeMap.asMapOfRanges().entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // com.google.common.collect.RangeMap
    public void clear() {
        this.a.clear();
    }

    @Override // com.google.common.collect.RangeMap
    public Range<K> span() {
        Map.Entry<ic<K>, b<K, V>> entryFirstEntry = this.a.firstEntry();
        Map.Entry<ic<K>, b<K, V>> entryLastEntry = this.a.lastEntry();
        if (entryFirstEntry == null) {
            throw new NoSuchElementException();
        }
        return Range.a((ic) entryFirstEntry.getValue().getKey().b, (ic) entryLastEntry.getValue().getKey().c);
    }

    private void a(ic<K> icVar, ic<K> icVar2, V v) {
        this.a.put(icVar, new b(icVar, icVar2, v));
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.google.common.collect.RangeMap
    public void remove(Range<K> range) {
        if (!range.isEmpty()) {
            Map.Entry<ic<K>, b<K, V>> entryLowerEntry = this.a.lowerEntry((ic<K>) range.b);
            if (entryLowerEntry != null) {
                b<K, V> value = entryLowerEntry.getValue();
                if (value.c().compareTo((ic) range.b) > 0) {
                    if (value.c().compareTo((ic) range.c) > 0) {
                        a(range.c, value.c(), entryLowerEntry.getValue().getValue());
                    }
                    a(value.b(), range.b, entryLowerEntry.getValue().getValue());
                }
            }
            Map.Entry<ic<K>, b<K, V>> entryLowerEntry2 = this.a.lowerEntry((ic<K>) range.c);
            if (entryLowerEntry2 != null) {
                b<K, V> value2 = entryLowerEntry2.getValue();
                if (value2.c().compareTo((ic) range.c) > 0) {
                    a(range.c, value2.c(), entryLowerEntry2.getValue().getValue());
                    this.a.remove(range.b);
                }
            }
            this.a.subMap((ic<K>) range.b, (ic<K>) range.c).clear();
        }
    }

    @Override // com.google.common.collect.RangeMap
    public Map<Range<K>, V> asMapOfRanges() {
        return new a(this.a.values());
    }

    @Override // com.google.common.collect.RangeMap
    public Map<Range<K>, V> asDescendingMapOfRanges() {
        return new a(this.a.descendingMap().values());
    }

    final class a extends Maps.m<Range<K>, V> {
        final Iterable<Map.Entry<Range<K>, V>> a;

        a(Iterable<b<K, V>> iterable) {
            this.a = iterable;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(@Nullable Object obj) {
            return get(obj) != null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V get(@Nullable Object obj) {
            if (obj instanceof Range) {
                Range range = (Range) obj;
                b bVar = (b) TreeRangeMap.this.a.get(range.b);
                if (bVar != null && bVar.getKey().equals(range)) {
                    return (V) bVar.getValue();
                }
            }
            return null;
        }

        @Override // com.google.common.collect.Maps.m, java.util.AbstractMap, java.util.Map
        public int size() {
            return TreeRangeMap.this.a.size();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.Maps.m
        public Iterator<Map.Entry<Range<K>, V>> b() {
            return this.a.iterator();
        }
    }

    @Override // com.google.common.collect.RangeMap
    public RangeMap<K, V> subRangeMap(Range<K> range) {
        return range.equals(Range.all()) ? this : new c(range);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public RangeMap<K, V> a() {
        return b;
    }

    class c implements RangeMap<K, V> {
        private final Range<K> b;

        c(Range<K> range) {
            this.b = range;
        }

        @Override // com.google.common.collect.RangeMap
        @Nullable
        public V get(K k) {
            if (this.b.contains(k)) {
                return (V) TreeRangeMap.this.get(k);
            }
            return null;
        }

        @Override // com.google.common.collect.RangeMap
        @Nullable
        public Map.Entry<Range<K>, V> getEntry(K k) {
            Map.Entry<Range<K>, V> entry;
            if (!this.b.contains(k) || (entry = TreeRangeMap.this.getEntry(k)) == null) {
                return null;
            }
            return Maps.immutableEntry(entry.getKey().intersection(this.b), entry.getValue());
        }

        @Override // com.google.common.collect.RangeMap
        public Range<K> span() {
            ic icVar;
            ic icVarC;
            Map.Entry entryFloorEntry = TreeRangeMap.this.a.floorEntry(this.b.b);
            if (entryFloorEntry == null || ((b) entryFloorEntry.getValue()).c().compareTo((ic) this.b.b) <= 0) {
                ic icVar2 = (ic) TreeRangeMap.this.a.ceilingKey(this.b.b);
                if (icVar2 == null || icVar2.compareTo((ic) this.b.c) >= 0) {
                    throw new NoSuchElementException();
                }
                icVar = icVar2;
            } else {
                icVar = this.b.b;
            }
            Map.Entry entryLowerEntry = TreeRangeMap.this.a.lowerEntry(this.b.c);
            if (entryLowerEntry == null) {
                throw new NoSuchElementException();
            }
            if (((b) entryLowerEntry.getValue()).c().compareTo((ic) this.b.c) >= 0) {
                icVarC = this.b.c;
            } else {
                icVarC = ((b) entryLowerEntry.getValue()).c();
            }
            return Range.a(icVar, icVarC);
        }

        @Override // com.google.common.collect.RangeMap
        public void put(Range<K> range, V v) {
            Preconditions.checkArgument(this.b.encloses(range), "Cannot put range %s into a subRangeMap(%s)", range, this.b);
            TreeRangeMap.this.put(range, v);
        }

        @Override // com.google.common.collect.RangeMap
        public void putAll(RangeMap<K, V> rangeMap) {
            if (!rangeMap.asMapOfRanges().isEmpty()) {
                Range<K> rangeSpan = rangeMap.span();
                Preconditions.checkArgument(this.b.encloses(rangeSpan), "Cannot putAll rangeMap with span %s into a subRangeMap(%s)", rangeSpan, this.b);
                TreeRangeMap.this.putAll(rangeMap);
            }
        }

        @Override // com.google.common.collect.RangeMap
        public void clear() {
            TreeRangeMap.this.remove(this.b);
        }

        /* JADX WARN: Multi-variable type inference failed */
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
        @Override // com.google.common.collect.RangeMap
        public void remove(Range<K> range) {
            if (range.isConnected(this.b)) {
                TreeRangeMap.this.remove(range.intersection(this.b));
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
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
        @Override // com.google.common.collect.RangeMap
        public RangeMap<K, V> subRangeMap(Range<K> range) {
            return !range.isConnected(this.b) ? TreeRangeMap.this.a() : TreeRangeMap.this.subRangeMap(range.intersection(this.b));
        }

        @Override // com.google.common.collect.RangeMap
        public Map<Range<K>, V> asMapOfRanges() {
            return new a();
        }

        @Override // com.google.common.collect.RangeMap
        public Map<Range<K>, V> asDescendingMapOfRanges() {
            return new TreeRangeMap<K, V>.c.a() { // from class: com.google.common.collect.TreeRangeMap.c.1
                @Override // com.google.common.collect.TreeRangeMap.c.a
                Iterator<Map.Entry<Range<K>, V>> a() {
                    if (c.this.b.isEmpty()) {
                        return Iterators.emptyIterator();
                    }
                    final Iterator<V> it = TreeRangeMap.this.a.headMap(c.this.b.c, false).descendingMap().values().iterator();
                    return new AbstractIterator<Map.Entry<Range<K>, V>>() { // from class: com.google.common.collect.TreeRangeMap.c.1.1
                        /* JADX INFO: Access modifiers changed from: protected */
                        @Override // com.google.common.collect.AbstractIterator
                        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                        public Map.Entry<Range<K>, V> computeNext() {
                            if (it.hasNext()) {
                                b bVar = (b) it.next();
                                if (bVar.c().compareTo((ic) c.this.b.b) > 0) {
                                    return Maps.immutableEntry(bVar.getKey().intersection(c.this.b), bVar.getValue());
                                }
                                return (Map.Entry) endOfData();
                            }
                            return (Map.Entry) endOfData();
                        }
                    };
                }
            };
        }

        @Override // com.google.common.collect.RangeMap
        public boolean equals(@Nullable Object obj) {
            if (obj instanceof RangeMap) {
                return asMapOfRanges().equals(((RangeMap) obj).asMapOfRanges());
            }
            return false;
        }

        @Override // com.google.common.collect.RangeMap
        public int hashCode() {
            return asMapOfRanges().hashCode();
        }

        @Override // com.google.common.collect.RangeMap
        public String toString() {
            return asMapOfRanges().toString();
        }

        class a extends AbstractMap<Range<K>, V> {
            a() {
            }

            @Override // java.util.AbstractMap, java.util.Map
            public boolean containsKey(Object obj) {
                return get(obj) != null;
            }

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
            @Override // java.util.AbstractMap, java.util.Map
            public V get(Object obj) {
                b bVar;
                V v = null;
                try {
                    if (!(obj instanceof Range)) {
                        return null;
                    }
                    Range range = (Range) obj;
                    if (!c.this.b.encloses(range) || range.isEmpty()) {
                        return null;
                    }
                    if (range.b.compareTo(c.this.b.b) == 0) {
                        Map.Entry entryFloorEntry = TreeRangeMap.this.a.floorEntry(range.b);
                        bVar = entryFloorEntry != null ? (b) entryFloorEntry.getValue() : null;
                    } else {
                        bVar = (b) TreeRangeMap.this.a.get(range.b);
                    }
                    if (bVar == null || !bVar.getKey().isConnected(c.this.b) || !bVar.getKey().intersection(c.this.b).equals(range)) {
                        return null;
                    }
                    v = (V) bVar.getValue();
                    return v;
                } catch (ClassCastException e) {
                    return v;
                }
            }

            @Override // java.util.AbstractMap, java.util.Map
            public V remove(Object obj) {
                V v = (V) get(obj);
                if (v == null) {
                    return null;
                }
                TreeRangeMap.this.remove((Range) obj);
                return v;
            }

            @Override // java.util.AbstractMap, java.util.Map
            public void clear() {
                c.this.clear();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public boolean a(Predicate<? super Map.Entry<Range<K>, V>> predicate) {
                ArrayList arrayListNewArrayList = Lists.newArrayList();
                for (Map.Entry<Range<K>, V> entry : entrySet()) {
                    if (predicate.apply(entry)) {
                        arrayListNewArrayList.add(entry.getKey());
                    }
                }
                Iterator it = arrayListNewArrayList.iterator();
                while (it.hasNext()) {
                    TreeRangeMap.this.remove((Range) it.next());
                }
                return !arrayListNewArrayList.isEmpty();
            }

            @Override // java.util.AbstractMap, java.util.Map
            public Set<Range<K>> keySet() {
                return new Maps.n<Range<K>, V>(this) { // from class: com.google.common.collect.TreeRangeMap.c.a.1
                    @Override // com.google.common.collect.Maps.n, java.util.AbstractCollection, java.util.Collection, java.util.Set
                    public boolean remove(@Nullable Object obj) {
                        return a.this.remove(obj) != null;
                    }

                    @Override // com.google.common.collect.Sets.f, java.util.AbstractCollection, java.util.Collection, java.util.Set
                    public boolean retainAll(Collection<?> collection) {
                        return a.this.a(Predicates.compose(Predicates.not(Predicates.in(collection)), Maps.a()));
                    }
                };
            }

            @Override // java.util.AbstractMap, java.util.Map
            public Set<Map.Entry<Range<K>, V>> entrySet() {
                return new Maps.f<Range<K>, V>() { // from class: com.google.common.collect.TreeRangeMap.c.a.2
                    /* JADX INFO: Access modifiers changed from: package-private */
                    @Override // com.google.common.collect.Maps.f
                    public Map<Range<K>, V> a() {
                        return a.this;
                    }

                    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
                    public Iterator<Map.Entry<Range<K>, V>> iterator() {
                        return a.this.a();
                    }

                    @Override // com.google.common.collect.Maps.f, com.google.common.collect.Sets.f, java.util.AbstractCollection, java.util.Collection, java.util.Set
                    public boolean retainAll(Collection<?> collection) {
                        return a.this.a(Predicates.not(Predicates.in(collection)));
                    }

                    @Override // com.google.common.collect.Maps.f, java.util.AbstractCollection, java.util.Collection, java.util.Set
                    public int size() {
                        return Iterators.size(iterator());
                    }

                    @Override // com.google.common.collect.Maps.f, java.util.AbstractCollection, java.util.Collection, java.util.Set
                    public boolean isEmpty() {
                        return !iterator().hasNext();
                    }
                };
            }

            Iterator<Map.Entry<Range<K>, V>> a() {
                if (c.this.b.isEmpty()) {
                    return Iterators.emptyIterator();
                }
                final Iterator<V> it = TreeRangeMap.this.a.tailMap((ic) MoreObjects.firstNonNull(TreeRangeMap.this.a.floorKey(c.this.b.b), c.this.b.b), true).values().iterator();
                return new AbstractIterator<Map.Entry<Range<K>, V>>() { // from class: com.google.common.collect.TreeRangeMap.c.a.3
                    /* JADX INFO: Access modifiers changed from: protected */
                    @Override // com.google.common.collect.AbstractIterator
                    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                    public Map.Entry<Range<K>, V> computeNext() {
                        while (it.hasNext()) {
                            b bVar = (b) it.next();
                            if (bVar.b().compareTo((ic) c.this.b.c) < 0) {
                                if (bVar.c().compareTo((ic) c.this.b.b) > 0) {
                                    return Maps.immutableEntry(bVar.getKey().intersection(c.this.b), bVar.getValue());
                                }
                            } else {
                                return (Map.Entry) endOfData();
                            }
                        }
                        return (Map.Entry) endOfData();
                    }
                };
            }

            @Override // java.util.AbstractMap, java.util.Map
            public Collection<V> values() {
                return new Maps.ac<Range<K>, V>(this) { // from class: com.google.common.collect.TreeRangeMap.c.a.4
                    @Override // com.google.common.collect.Maps.ac, java.util.AbstractCollection, java.util.Collection
                    public boolean removeAll(Collection<?> collection) {
                        return a.this.a(Predicates.compose(Predicates.in(collection), Maps.b()));
                    }

                    @Override // com.google.common.collect.Maps.ac, java.util.AbstractCollection, java.util.Collection
                    public boolean retainAll(Collection<?> collection) {
                        return a.this.a(Predicates.compose(Predicates.not(Predicates.in(collection)), Maps.b()));
                    }
                };
            }
        }
    }

    @Override // com.google.common.collect.RangeMap
    public boolean equals(@Nullable Object obj) {
        if (obj instanceof RangeMap) {
            return asMapOfRanges().equals(((RangeMap) obj).asMapOfRanges());
        }
        return false;
    }

    @Override // com.google.common.collect.RangeMap
    public int hashCode() {
        return asMapOfRanges().hashCode();
    }

    @Override // com.google.common.collect.RangeMap
    public String toString() {
        return this.a.values().toString();
    }
}
