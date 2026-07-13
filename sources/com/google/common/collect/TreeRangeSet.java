package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import defpackage.hk;
import defpackage.hl;
import defpackage.ic;
import java.lang.Comparable;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.TreeMap;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Beta
@GwtIncompatible("uses NavigableMap")
public class TreeRangeSet<C extends Comparable<?>> extends hl<C> {

    @VisibleForTesting
    final NavigableMap<ic<C>, Range<C>> a;
    private transient Set<Range<C>> b;
    private transient Set<Range<C>> c;
    private transient RangeSet<C> d;

    @Override // defpackage.hl, com.google.common.collect.RangeSet
    public /* bridge */ /* synthetic */ void addAll(RangeSet rangeSet) {
        super.addAll(rangeSet);
    }

    @Override // defpackage.hl, com.google.common.collect.RangeSet
    public /* bridge */ /* synthetic */ void clear() {
        super.clear();
    }

    @Override // defpackage.hl, com.google.common.collect.RangeSet
    public /* bridge */ /* synthetic */ boolean contains(Comparable comparable) {
        return super.contains(comparable);
    }

    @Override // defpackage.hl, com.google.common.collect.RangeSet
    public /* bridge */ /* synthetic */ boolean enclosesAll(RangeSet rangeSet) {
        return super.enclosesAll(rangeSet);
    }

    @Override // defpackage.hl, com.google.common.collect.RangeSet
    public /* bridge */ /* synthetic */ boolean equals(@Nullable Object obj) {
        return super.equals(obj);
    }

    @Override // defpackage.hl, com.google.common.collect.RangeSet
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    @Override // defpackage.hl, com.google.common.collect.RangeSet
    public /* bridge */ /* synthetic */ void removeAll(RangeSet rangeSet) {
        super.removeAll(rangeSet);
    }

    public static <C extends Comparable<?>> TreeRangeSet<C> create() {
        return new TreeRangeSet<>(new TreeMap());
    }

    public static <C extends Comparable<?>> TreeRangeSet<C> create(RangeSet<C> rangeSet) {
        TreeRangeSet<C> treeRangeSetCreate = create();
        treeRangeSetCreate.addAll(rangeSet);
        return treeRangeSetCreate;
    }

    private TreeRangeSet(NavigableMap<ic<C>, Range<C>> navigableMap) {
        this.a = navigableMap;
    }

    @Override // com.google.common.collect.RangeSet
    public Set<Range<C>> asRanges() {
        Set<Range<C>> set = this.b;
        if (set != null) {
            return set;
        }
        a aVar = new a(this.a.values());
        this.b = aVar;
        return aVar;
    }

    @Override // com.google.common.collect.RangeSet
    public Set<Range<C>> asDescendingSetOfRanges() {
        Set<Range<C>> set = this.c;
        if (set != null) {
            return set;
        }
        a aVar = new a(this.a.descendingMap().values());
        this.c = aVar;
        return aVar;
    }

    final class a extends ForwardingCollection<Range<C>> implements Set<Range<C>> {
        final Collection<Range<C>> a;

        a(Collection<Range<C>> collection) {
            this.a = collection;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public Collection<Range<C>> delegate() {
            return this.a;
        }

        @Override // java.util.Collection, java.util.Set
        public int hashCode() {
            return Sets.a(this);
        }

        @Override // java.util.Collection, java.util.Set
        public boolean equals(@Nullable Object obj) {
            return Sets.a(this, obj);
        }
    }

    @Override // defpackage.hl, com.google.common.collect.RangeSet
    @Nullable
    public Range<C> rangeContaining(C c2) {
        Preconditions.checkNotNull(c2);
        Map.Entry<ic<C>, Range<C>> entryFloorEntry = this.a.floorEntry(ic.b(c2));
        if (entryFloorEntry == null || !entryFloorEntry.getValue().contains(c2)) {
            return null;
        }
        return entryFloorEntry.getValue();
    }

    @Override // defpackage.hl, com.google.common.collect.RangeSet
    public boolean encloses(Range<C> range) {
        Preconditions.checkNotNull(range);
        Map.Entry<ic<C>, Range<C>> entryFloorEntry = this.a.floorEntry(range.b);
        return entryFloorEntry != null && entryFloorEntry.getValue().encloses(range);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public Range<C> a(Range<C> range) {
        Preconditions.checkNotNull(range);
        Map.Entry<ic<C>, Range<C>> entryFloorEntry = this.a.floorEntry(range.b);
        if (entryFloorEntry == null || !entryFloorEntry.getValue().encloses(range)) {
            return null;
        }
        return entryFloorEntry.getValue();
    }

    @Override // com.google.common.collect.RangeSet
    public Range<C> span() {
        Map.Entry<ic<C>, Range<C>> entryFirstEntry = this.a.firstEntry();
        Map.Entry<ic<C>, Range<C>> entryLastEntry = this.a.lastEntry();
        if (entryFirstEntry == null) {
            throw new NoSuchElementException();
        }
        return Range.a((ic) entryFirstEntry.getValue().b, (ic) entryLastEntry.getValue().c);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // defpackage.hl, com.google.common.collect.RangeSet
    public void add(Range<C> range) {
        Preconditions.checkNotNull(range);
        if (!range.isEmpty()) {
            ic<C> icVar = range.b;
            ic<C> icVar2 = range.c;
            Map.Entry<ic<C>, Range<C>> entryLowerEntry = this.a.lowerEntry(icVar);
            if (entryLowerEntry != null) {
                Range<C> value = entryLowerEntry.getValue();
                if (value.c.compareTo((ic) icVar) >= 0) {
                    if (value.c.compareTo((ic) icVar2) >= 0) {
                        icVar2 = value.c;
                    }
                    icVar = value.b;
                }
            }
            Map.Entry<ic<C>, Range<C>> entryFloorEntry = this.a.floorEntry(icVar2);
            if (entryFloorEntry != null) {
                Range<C> value2 = entryFloorEntry.getValue();
                if (value2.c.compareTo((ic) icVar2) >= 0) {
                    icVar2 = value2.c;
                }
            }
            this.a.subMap(icVar, icVar2).clear();
            b(Range.a((ic) icVar, (ic) icVar2));
        }
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
    @Override // defpackage.hl, com.google.common.collect.RangeSet
    public void remove(Range<C> range) {
        Preconditions.checkNotNull(range);
        if (!range.isEmpty()) {
            Map.Entry<ic<C>, Range<C>> entryLowerEntry = this.a.lowerEntry(range.b);
            if (entryLowerEntry != null) {
                Range<C> value = entryLowerEntry.getValue();
                if (value.c.compareTo(range.b) >= 0) {
                    if (range.hasUpperBound() && value.c.compareTo(range.c) >= 0) {
                        b(Range.a((ic) range.c, (ic) value.c));
                    }
                    b(Range.a((ic) value.b, (ic) range.b));
                }
            }
            Map.Entry<ic<C>, Range<C>> entryFloorEntry = this.a.floorEntry(range.c);
            if (entryFloorEntry != null) {
                Range<C> value2 = entryFloorEntry.getValue();
                if (range.hasUpperBound() && value2.c.compareTo(range.c) >= 0) {
                    b(Range.a((ic) range.c, (ic) value2.c));
                }
            }
            this.a.subMap(range.b, range.c).clear();
        }
    }

    private void b(Range<C> range) {
        if (range.isEmpty()) {
            this.a.remove(range.b);
        } else {
            this.a.put(range.b, range);
        }
    }

    @Override // com.google.common.collect.RangeSet
    public RangeSet<C> complement() {
        RangeSet<C> rangeSet = this.d;
        if (rangeSet != null) {
            return rangeSet;
        }
        b bVar = new b();
        this.d = bVar;
        return bVar;
    }

    @VisibleForTesting
    static final class d<C extends Comparable<?>> extends hk<ic<C>, Range<C>> {
        private final NavigableMap<ic<C>, Range<C>> a;
        private final Range<ic<C>> b;

        d(NavigableMap<ic<C>, Range<C>> navigableMap) {
            this.a = navigableMap;
            this.b = Range.all();
        }

        private d(NavigableMap<ic<C>, Range<C>> navigableMap, Range<ic<C>> range) {
            this.a = navigableMap;
            this.b = range;
        }

        private NavigableMap<ic<C>, Range<C>> a(Range<ic<C>> range) {
            return range.isConnected(this.b) ? new d(this.a, range.intersection(this.b)) : ImmutableSortedMap.of();
        }

        @Override // java.util.NavigableMap
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public NavigableMap<ic<C>, Range<C>> subMap(ic<C> icVar, boolean z, ic<C> icVar2, boolean z2) {
            return a((Range) Range.range(icVar, BoundType.a(z), icVar2, BoundType.a(z2)));
        }

        @Override // java.util.NavigableMap
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public NavigableMap<ic<C>, Range<C>> headMap(ic<C> icVar, boolean z) {
            return a((Range) Range.upTo(icVar, BoundType.a(z)));
        }

        @Override // java.util.NavigableMap
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public NavigableMap<ic<C>, Range<C>> tailMap(ic<C> icVar, boolean z) {
            return a((Range) Range.downTo(icVar, BoundType.a(z)));
        }

        @Override // java.util.SortedMap
        public Comparator<? super ic<C>> comparator() {
            return Ordering.natural();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(@Nullable Object obj) {
            return get(obj) != null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Range<C> get(@Nullable Object obj) {
            if (obj instanceof ic) {
                try {
                    ic<C> icVar = (ic) obj;
                    if (!this.b.contains(icVar)) {
                        return null;
                    }
                    Map.Entry<ic<C>, Range<C>> entryLowerEntry = this.a.lowerEntry(icVar);
                    if (entryLowerEntry != null && entryLowerEntry.getValue().c.equals(icVar)) {
                        return entryLowerEntry.getValue();
                    }
                } catch (ClassCastException e) {
                    return null;
                }
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
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
        @Override // com.google.common.collect.Maps.m
        public Iterator<Map.Entry<ic<C>, Range<C>>> b() {
            Map.Entry entryLowerEntry;
            final Iterator<Range<C>> it;
            if (!this.b.hasLowerBound() || (entryLowerEntry = this.a.lowerEntry((ic<C>) this.b.lowerEndpoint())) == null) {
                it = this.a.values().iterator();
            } else if (this.b.b.a(((Range) entryLowerEntry.getValue()).c)) {
                it = this.a.tailMap(entryLowerEntry.getKey(), true).values().iterator();
            } else {
                it = this.a.tailMap(this.b.lowerEndpoint(), true).values().iterator();
            }
            return new AbstractIterator<Map.Entry<ic<C>, Range<C>>>() { // from class: com.google.common.collect.TreeRangeSet.d.1
                /* JADX INFO: Access modifiers changed from: protected */
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
                @Override // com.google.common.collect.AbstractIterator
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public Map.Entry<ic<C>, Range<C>> computeNext() {
                    if (!it.hasNext()) {
                        return (Map.Entry) endOfData();
                    }
                    Range range = (Range) it.next();
                    if (d.this.b.c.a(range.c)) {
                        return (Map.Entry) endOfData();
                    }
                    return Maps.immutableEntry(range.c, range);
                }
            };
        }

        /* JADX INFO: Access modifiers changed from: package-private */
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
        @Override // defpackage.hk
        public Iterator<Map.Entry<ic<C>, Range<C>>> a() {
            Collection<Range<C>> collectionValues;
            if (this.b.hasUpperBound()) {
                collectionValues = this.a.headMap(this.b.upperEndpoint(), false).descendingMap().values();
            } else {
                collectionValues = this.a.descendingMap().values();
            }
            final PeekingIterator peekingIterator = Iterators.peekingIterator(collectionValues.iterator());
            if (peekingIterator.hasNext() && this.b.c.a(((Range) peekingIterator.peek()).c)) {
                peekingIterator.next();
            }
            return new AbstractIterator<Map.Entry<ic<C>, Range<C>>>() { // from class: com.google.common.collect.TreeRangeSet.d.2
                /* JADX INFO: Access modifiers changed from: protected */
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
                @Override // com.google.common.collect.AbstractIterator
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public Map.Entry<ic<C>, Range<C>> computeNext() {
                    if (!peekingIterator.hasNext()) {
                        return (Map.Entry) endOfData();
                    }
                    Range range = (Range) peekingIterator.next();
                    if (d.this.b.b.a(range.c)) {
                        return Maps.immutableEntry(range.c, range);
                    }
                    return (Map.Entry) endOfData();
                }
            };
        }

        @Override // com.google.common.collect.Maps.m, java.util.AbstractMap, java.util.Map
        public int size() {
            return this.b.equals(Range.all()) ? this.a.size() : Iterators.size(b());
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean isEmpty() {
            if (this.b.equals(Range.all())) {
                return this.a.isEmpty();
            }
            return !b().hasNext();
        }
    }

    static final class c<C extends Comparable<?>> extends hk<ic<C>, Range<C>> {
        private final NavigableMap<ic<C>, Range<C>> a;
        private final NavigableMap<ic<C>, Range<C>> b;
        private final Range<ic<C>> c;

        c(NavigableMap<ic<C>, Range<C>> navigableMap) {
            this(navigableMap, Range.all());
        }

        private c(NavigableMap<ic<C>, Range<C>> navigableMap, Range<ic<C>> range) {
            this.a = navigableMap;
            this.b = new d(navigableMap);
            this.c = range;
        }

        private NavigableMap<ic<C>, Range<C>> a(Range<ic<C>> range) {
            if (!this.c.isConnected(range)) {
                return ImmutableSortedMap.of();
            }
            return new c(this.a, range.intersection(this.c));
        }

        @Override // java.util.NavigableMap
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public NavigableMap<ic<C>, Range<C>> subMap(ic<C> icVar, boolean z, ic<C> icVar2, boolean z2) {
            return a((Range) Range.range(icVar, BoundType.a(z), icVar2, BoundType.a(z2)));
        }

        @Override // java.util.NavigableMap
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public NavigableMap<ic<C>, Range<C>> headMap(ic<C> icVar, boolean z) {
            return a((Range) Range.upTo(icVar, BoundType.a(z)));
        }

        @Override // java.util.NavigableMap
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public NavigableMap<ic<C>, Range<C>> tailMap(ic<C> icVar, boolean z) {
            return a((Range) Range.downTo(icVar, BoundType.a(z)));
        }

        @Override // java.util.SortedMap
        public Comparator<? super ic<C>> comparator() {
            return Ordering.natural();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.Maps.m
        public Iterator<Map.Entry<ic<C>, Range<C>>> b() {
            Collection<Range<C>> collectionValues;
            final ic icVarD;
            if (this.c.hasLowerBound()) {
                collectionValues = this.b.tailMap((ic<C>) this.c.lowerEndpoint(), this.c.lowerBoundType() == BoundType.CLOSED).values();
            } else {
                collectionValues = this.b.values();
            }
            final PeekingIterator peekingIterator = Iterators.peekingIterator(collectionValues.iterator());
            if (this.c.contains(ic.d()) && (!peekingIterator.hasNext() || ((Range) peekingIterator.peek()).b != ic.d())) {
                icVarD = ic.d();
            } else if (peekingIterator.hasNext()) {
                icVarD = ((Range) peekingIterator.next()).c;
            } else {
                return Iterators.emptyIterator();
            }
            return new AbstractIterator<Map.Entry<ic<C>, Range<C>>>() { // from class: com.google.common.collect.TreeRangeSet.c.1
                ic<C> a;

                {
                    this.a = icVarD;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.google.common.collect.AbstractIterator
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public Map.Entry<ic<C>, Range<C>> computeNext() {
                    Range rangeA;
                    if (c.this.c.c.a(this.a) || this.a == ic.e()) {
                        return (Map.Entry) endOfData();
                    }
                    if (peekingIterator.hasNext()) {
                        Range range = (Range) peekingIterator.next();
                        Range rangeA2 = Range.a((ic) this.a, (ic) range.b);
                        this.a = range.c;
                        rangeA = rangeA2;
                    } else {
                        rangeA = Range.a((ic) this.a, ic.e());
                        this.a = ic.e();
                    }
                    return Maps.immutableEntry(rangeA.b, rangeA);
                }
            };
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // defpackage.hk
        public Iterator<Map.Entry<ic<C>, Range<C>>> a() {
            ic<C> icVarE;
            ic<C> icVarHigherKey;
            if (this.c.hasUpperBound()) {
                icVarE = (ic) this.c.upperEndpoint();
            } else {
                icVarE = ic.e();
            }
            final PeekingIterator peekingIterator = Iterators.peekingIterator(this.b.headMap(icVarE, this.c.hasUpperBound() && this.c.upperBoundType() == BoundType.CLOSED).descendingMap().values().iterator());
            if (peekingIterator.hasNext()) {
                if (((Range) peekingIterator.peek()).c == ic.e()) {
                    icVarHigherKey = ((Range) peekingIterator.next()).b;
                } else {
                    icVarHigherKey = this.a.higherKey(((Range) peekingIterator.peek()).c);
                }
            } else {
                if (!this.c.contains(ic.d()) || this.a.containsKey(ic.d())) {
                    return Iterators.emptyIterator();
                }
                icVarHigherKey = this.a.higherKey(ic.d());
            }
            final ic icVar = (ic) MoreObjects.firstNonNull(icVarHigherKey, ic.e());
            return new AbstractIterator<Map.Entry<ic<C>, Range<C>>>() { // from class: com.google.common.collect.TreeRangeSet.c.2
                ic<C> a;

                {
                    this.a = icVar;
                }

                /* JADX INFO: Access modifiers changed from: protected */
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
                @Override // com.google.common.collect.AbstractIterator
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public Map.Entry<ic<C>, Range<C>> computeNext() {
                    if (this.a == ic.d()) {
                        return (Map.Entry) endOfData();
                    }
                    if (!peekingIterator.hasNext()) {
                        if (c.this.c.b.a(ic.d())) {
                            Range rangeA = Range.a(ic.d(), (ic) this.a);
                            this.a = ic.d();
                            return Maps.immutableEntry(ic.d(), rangeA);
                        }
                    } else {
                        Range range = (Range) peekingIterator.next();
                        Range rangeA2 = Range.a((ic) range.c, (ic) this.a);
                        this.a = range.b;
                        if (c.this.c.b.a(rangeA2.b)) {
                            return Maps.immutableEntry(rangeA2.b, rangeA2);
                        }
                    }
                    return (Map.Entry) endOfData();
                }
            };
        }

        @Override // com.google.common.collect.Maps.m, java.util.AbstractMap, java.util.Map
        public int size() {
            return Iterators.size(b());
        }

        @Override // java.util.AbstractMap, java.util.Map
        @Nullable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Range<C> get(Object obj) {
            if (obj instanceof ic) {
                try {
                    ic<C> icVar = (ic) obj;
                    Map.Entry<ic<C>, Range<C>> entryFirstEntry = tailMap(icVar, true).firstEntry();
                    if (entryFirstEntry != null && entryFirstEntry.getKey().equals(icVar)) {
                        return entryFirstEntry.getValue();
                    }
                } catch (ClassCastException e) {
                    return null;
                }
            }
            return null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return get(obj) != null;
        }
    }

    final class b extends TreeRangeSet<C> {
        b() {
            super(new c(TreeRangeSet.this.a));
        }

        @Override // com.google.common.collect.TreeRangeSet, defpackage.hl, com.google.common.collect.RangeSet
        public void add(Range<C> range) {
            TreeRangeSet.this.remove(range);
        }

        @Override // com.google.common.collect.TreeRangeSet, defpackage.hl, com.google.common.collect.RangeSet
        public void remove(Range<C> range) {
            TreeRangeSet.this.add(range);
        }

        @Override // com.google.common.collect.TreeRangeSet, defpackage.hl, com.google.common.collect.RangeSet
        public boolean contains(C c) {
            return !TreeRangeSet.this.contains(c);
        }

        @Override // com.google.common.collect.TreeRangeSet, com.google.common.collect.RangeSet
        public RangeSet<C> complement() {
            return TreeRangeSet.this;
        }
    }

    static final class f<C extends Comparable<?>> extends hk<ic<C>, Range<C>> {
        private final Range<ic<C>> a;
        private final Range<C> b;
        private final NavigableMap<ic<C>, Range<C>> c;
        private final NavigableMap<ic<C>, Range<C>> d;

        private f(Range<ic<C>> range, Range<C> range2, NavigableMap<ic<C>, Range<C>> navigableMap) {
            this.a = (Range) Preconditions.checkNotNull(range);
            this.b = (Range) Preconditions.checkNotNull(range2);
            this.c = (NavigableMap) Preconditions.checkNotNull(navigableMap);
            this.d = new d(navigableMap);
        }

        private NavigableMap<ic<C>, Range<C>> a(Range<ic<C>> range) {
            if (!range.isConnected(this.a)) {
                return ImmutableSortedMap.of();
            }
            return new f(this.a.intersection(range), this.b, this.c);
        }

        @Override // java.util.NavigableMap
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public NavigableMap<ic<C>, Range<C>> subMap(ic<C> icVar, boolean z, ic<C> icVar2, boolean z2) {
            return a((Range) Range.range(icVar, BoundType.a(z), icVar2, BoundType.a(z2)));
        }

        @Override // java.util.NavigableMap
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public NavigableMap<ic<C>, Range<C>> headMap(ic<C> icVar, boolean z) {
            return a((Range) Range.upTo(icVar, BoundType.a(z)));
        }

        @Override // java.util.NavigableMap
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public NavigableMap<ic<C>, Range<C>> tailMap(ic<C> icVar, boolean z) {
            return a((Range) Range.downTo(icVar, BoundType.a(z)));
        }

        @Override // java.util.SortedMap
        public Comparator<? super ic<C>> comparator() {
            return Ordering.natural();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(@Nullable Object obj) {
            return get(obj) != null;
        }

        /* JADX WARN: Removed duplicated region for block: B:25:0x0064  */
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
        @javax.annotation.Nullable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.common.collect.Range<C> get(@javax.annotation.Nullable java.lang.Object r5) {
            /*
                r4 = this;
                r1 = 0
                boolean r0 = r5 instanceof defpackage.ic
                if (r0 == 0) goto L64
                ic r5 = (defpackage.ic) r5     // Catch: java.lang.ClassCastException -> L61
                com.google.common.collect.Range<ic<C extends java.lang.Comparable<?>>> r0 = r4.a     // Catch: java.lang.ClassCastException -> L61
                boolean r0 = r0.contains(r5)     // Catch: java.lang.ClassCastException -> L61
                if (r0 == 0) goto L23
                com.google.common.collect.Range<C extends java.lang.Comparable<?>> r0 = r4.b     // Catch: java.lang.ClassCastException -> L61
                ic<C extends java.lang.Comparable> r0 = r0.b     // Catch: java.lang.ClassCastException -> L61
                int r0 = r5.compareTo(r0)     // Catch: java.lang.ClassCastException -> L61
                if (r0 < 0) goto L23
                com.google.common.collect.Range<C extends java.lang.Comparable<?>> r0 = r4.b     // Catch: java.lang.ClassCastException -> L61
                ic<C extends java.lang.Comparable> r0 = r0.c     // Catch: java.lang.ClassCastException -> L61
                int r0 = r5.compareTo(r0)     // Catch: java.lang.ClassCastException -> L61
                if (r0 < 0) goto L25
            L23:
                r0 = r1
            L24:
                return r0
            L25:
                com.google.common.collect.Range<C extends java.lang.Comparable<?>> r0 = r4.b     // Catch: java.lang.ClassCastException -> L61
                ic<C extends java.lang.Comparable> r0 = r0.b     // Catch: java.lang.ClassCastException -> L61
                boolean r0 = r5.equals(r0)     // Catch: java.lang.ClassCastException -> L61
                if (r0 == 0) goto L50
                java.util.NavigableMap<ic<C extends java.lang.Comparable<?>>, com.google.common.collect.Range<C extends java.lang.Comparable<?>>> r0 = r4.c     // Catch: java.lang.ClassCastException -> L61
                java.util.Map$Entry r0 = r0.floorEntry(r5)     // Catch: java.lang.ClassCastException -> L61
                java.lang.Object r0 = com.google.common.collect.Maps.c(r0)     // Catch: java.lang.ClassCastException -> L61
                com.google.common.collect.Range r0 = (com.google.common.collect.Range) r0     // Catch: java.lang.ClassCastException -> L61
                if (r0 == 0) goto L64
                ic<C extends java.lang.Comparable> r2 = r0.c     // Catch: java.lang.ClassCastException -> L61
                com.google.common.collect.Range<C extends java.lang.Comparable<?>> r3 = r4.b     // Catch: java.lang.ClassCastException -> L61
                ic<C extends java.lang.Comparable> r3 = r3.b     // Catch: java.lang.ClassCastException -> L61
                int r2 = r2.compareTo(r3)     // Catch: java.lang.ClassCastException -> L61
                if (r2 <= 0) goto L64
                com.google.common.collect.Range<C extends java.lang.Comparable<?>> r2 = r4.b     // Catch: java.lang.ClassCastException -> L61
                com.google.common.collect.Range r0 = r0.intersection(r2)     // Catch: java.lang.ClassCastException -> L61
                goto L24
            L50:
                java.util.NavigableMap<ic<C extends java.lang.Comparable<?>>, com.google.common.collect.Range<C extends java.lang.Comparable<?>>> r0 = r4.c     // Catch: java.lang.ClassCastException -> L61
                java.lang.Object r0 = r0.get(r5)     // Catch: java.lang.ClassCastException -> L61
                com.google.common.collect.Range r0 = (com.google.common.collect.Range) r0     // Catch: java.lang.ClassCastException -> L61
                if (r0 == 0) goto L64
                com.google.common.collect.Range<C extends java.lang.Comparable<?>> r2 = r4.b     // Catch: java.lang.ClassCastException -> L61
                com.google.common.collect.Range r0 = r0.intersection(r2)     // Catch: java.lang.ClassCastException -> L61
                goto L24
            L61:
                r0 = move-exception
                r0 = r1
                goto L24
            L64:
                r0 = r1
                goto L24
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.TreeRangeSet.f.get(java.lang.Object):com.google.common.collect.Range");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
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
        @Override // com.google.common.collect.Maps.m
        public Iterator<Map.Entry<ic<C>, Range<C>>> b() {
            final Iterator<Range<C>> it;
            if (this.b.isEmpty()) {
                return Iterators.emptyIterator();
            }
            if (this.a.c.a(this.b.b)) {
                return Iterators.emptyIterator();
            }
            if (this.a.b.a(this.b.b)) {
                it = this.d.tailMap(this.b.b, false).values().iterator();
            } else {
                it = this.c.tailMap(this.a.b.c(), this.a.lowerBoundType() == BoundType.CLOSED).values().iterator();
            }
            final ic icVar = (ic) Ordering.natural().min(this.a.c, ic.b(this.b.c));
            return new AbstractIterator<Map.Entry<ic<C>, Range<C>>>() { // from class: com.google.common.collect.TreeRangeSet.f.1
                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.google.common.collect.AbstractIterator
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public Map.Entry<ic<C>, Range<C>> computeNext() {
                    if (!it.hasNext()) {
                        return (Map.Entry) endOfData();
                    }
                    Range range = (Range) it.next();
                    if (!icVar.a(range.b)) {
                        Range rangeIntersection = range.intersection(f.this.b);
                        return Maps.immutableEntry(rangeIntersection.b, rangeIntersection);
                    }
                    return (Map.Entry) endOfData();
                }
            };
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: Type inference incomplete: some casts might be missing */
        @Override // defpackage.hk
        public Iterator<Map.Entry<ic<C>, Range<C>>> a() {
            if (this.b.isEmpty()) {
                return Iterators.emptyIterator();
            }
            ic icVar = (ic) Ordering.natural().min(this.a.c, ic.b(this.b.c));
            final Iterator<Range<C>> it = this.c.headMap((ic<C>) icVar.c(), icVar.b() == BoundType.CLOSED).descendingMap().values().iterator();
            return new AbstractIterator<Map.Entry<ic<C>, Range<C>>>() { // from class: com.google.common.collect.TreeRangeSet.f.2
                /* JADX INFO: Access modifiers changed from: protected */
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
                @Override // com.google.common.collect.AbstractIterator
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public Map.Entry<ic<C>, Range<C>> computeNext() {
                    if (!it.hasNext()) {
                        return (Map.Entry) endOfData();
                    }
                    Range range = (Range) it.next();
                    if (f.this.b.b.compareTo(range.c) < 0) {
                        Range rangeIntersection = range.intersection(f.this.b);
                        if (f.this.a.contains(rangeIntersection.b)) {
                            return Maps.immutableEntry(rangeIntersection.b, rangeIntersection);
                        }
                        return (Map.Entry) endOfData();
                    }
                    return (Map.Entry) endOfData();
                }
            };
        }

        @Override // com.google.common.collect.Maps.m, java.util.AbstractMap, java.util.Map
        public int size() {
            return Iterators.size(b());
        }
    }

    @Override // com.google.common.collect.RangeSet
    public RangeSet<C> subRangeSet(Range<C> range) {
        return range.equals(Range.all()) ? this : new e(this, range);
    }

    final class e extends TreeRangeSet<C> {
        final /* synthetic */ TreeRangeSet b;
        private final Range<C> c;

        /* JADX WARN: Illegal instructions before constructor call */
        e(TreeRangeSet treeRangeSet, Range<C> range) {
            this.b = treeRangeSet;
            super(new f(Range.all(), range, treeRangeSet.a));
            this.c = range;
        }

        @Override // com.google.common.collect.TreeRangeSet, defpackage.hl, com.google.common.collect.RangeSet
        public boolean encloses(Range<C> range) {
            Range rangeA;
            return (this.c.isEmpty() || !this.c.encloses(range) || (rangeA = this.b.a(range)) == null || rangeA.intersection(this.c).isEmpty()) ? false : true;
        }

        @Override // com.google.common.collect.TreeRangeSet, defpackage.hl, com.google.common.collect.RangeSet
        @Nullable
        public Range<C> rangeContaining(C c) {
            Range<C> rangeRangeContaining;
            if (this.c.contains(c) && (rangeRangeContaining = this.b.rangeContaining(c)) != null) {
                return rangeRangeContaining.intersection(this.c);
            }
            return null;
        }

        @Override // com.google.common.collect.TreeRangeSet, defpackage.hl, com.google.common.collect.RangeSet
        public void add(Range<C> range) {
            Preconditions.checkArgument(this.c.encloses(range), "Cannot add range %s to subRangeSet(%s)", range, this.c);
            super.add(range);
        }

        @Override // com.google.common.collect.TreeRangeSet, defpackage.hl, com.google.common.collect.RangeSet
        public void remove(Range<C> range) {
            if (range.isConnected(this.c)) {
                this.b.remove(range.intersection(this.c));
            }
        }

        @Override // com.google.common.collect.TreeRangeSet, defpackage.hl, com.google.common.collect.RangeSet
        public boolean contains(C c) {
            return this.c.contains(c) && this.b.contains(c);
        }

        @Override // com.google.common.collect.TreeRangeSet, defpackage.hl, com.google.common.collect.RangeSet
        public void clear() {
            this.b.remove(this.c);
        }

        @Override // com.google.common.collect.TreeRangeSet, com.google.common.collect.RangeSet
        public RangeSet<C> subRangeSet(Range<C> range) {
            if (!range.encloses(this.c)) {
                if (range.isConnected(this.c)) {
                    return new e(this, this.c.intersection(range));
                }
                return ImmutableRangeSet.of();
            }
            return this;
        }
    }
}
