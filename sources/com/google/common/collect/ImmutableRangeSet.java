package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.collect.SortedLists;
import com.google.common.primitives.Ints;
import defpackage.hl;
import defpackage.ic;
import defpackage.jw;
import java.io.Serializable;
import java.lang.Comparable;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Beta
public final class ImmutableRangeSet<C extends Comparable> extends hl<C> implements Serializable {
    private static final ImmutableRangeSet<Comparable<?>> a = new ImmutableRangeSet<>(ImmutableList.of());
    private static final ImmutableRangeSet<Comparable<?>> b = new ImmutableRangeSet<>(ImmutableList.of(Range.all()));
    private final transient ImmutableList<Range<C>> c;
    private transient ImmutableRangeSet<C> d;

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

    public static <C extends Comparable> ImmutableRangeSet<C> of() {
        return a;
    }

    static <C extends Comparable> ImmutableRangeSet<C> a() {
        return b;
    }

    public static <C extends Comparable> ImmutableRangeSet<C> of(Range<C> range) {
        Preconditions.checkNotNull(range);
        if (range.isEmpty()) {
            return of();
        }
        if (range.equals(Range.all())) {
            return a();
        }
        return new ImmutableRangeSet<>(ImmutableList.of(range));
    }

    public static <C extends Comparable> ImmutableRangeSet<C> copyOf(RangeSet<C> rangeSet) {
        Preconditions.checkNotNull(rangeSet);
        if (rangeSet.isEmpty()) {
            return of();
        }
        if (rangeSet.encloses(Range.all())) {
            return a();
        }
        if (rangeSet instanceof ImmutableRangeSet) {
            ImmutableRangeSet<C> immutableRangeSet = (ImmutableRangeSet) rangeSet;
            if (!immutableRangeSet.b()) {
                return immutableRangeSet;
            }
        }
        return new ImmutableRangeSet<>(ImmutableList.copyOf((Collection) rangeSet.asRanges()));
    }

    ImmutableRangeSet(ImmutableList<Range<C>> immutableList) {
        this.c = immutableList;
    }

    private ImmutableRangeSet(ImmutableList<Range<C>> immutableList, ImmutableRangeSet<C> immutableRangeSet) {
        this.c = immutableList;
        this.d = immutableRangeSet;
    }

    @Override // defpackage.hl, com.google.common.collect.RangeSet
    public boolean encloses(Range<C> range) {
        int iA = SortedLists.a(this.c, Range.a(), range.b, Ordering.natural(), SortedLists.KeyPresentBehavior.ANY_PRESENT, SortedLists.KeyAbsentBehavior.NEXT_LOWER);
        return iA != -1 && this.c.get(iA).encloses(range);
    }

    @Override // defpackage.hl, com.google.common.collect.RangeSet
    public Range<C> rangeContaining(C c2) {
        int iA = SortedLists.a(this.c, Range.a(), ic.b(c2), Ordering.natural(), SortedLists.KeyPresentBehavior.ANY_PRESENT, SortedLists.KeyAbsentBehavior.NEXT_LOWER);
        if (iA == -1) {
            return null;
        }
        Range<C> range = this.c.get(iA);
        if (range.contains(c2)) {
            return range;
        }
        return null;
    }

    @Override // com.google.common.collect.RangeSet
    public Range<C> span() {
        if (this.c.isEmpty()) {
            throw new NoSuchElementException();
        }
        return Range.a((ic) this.c.get(0).b, (ic) this.c.get(this.c.size() - 1).c);
    }

    @Override // defpackage.hl, com.google.common.collect.RangeSet
    public boolean isEmpty() {
        return this.c.isEmpty();
    }

    @Override // defpackage.hl, com.google.common.collect.RangeSet
    public void add(Range<C> range) {
        throw new UnsupportedOperationException();
    }

    @Override // defpackage.hl, com.google.common.collect.RangeSet
    public void addAll(RangeSet<C> rangeSet) {
        throw new UnsupportedOperationException();
    }

    @Override // defpackage.hl, com.google.common.collect.RangeSet
    public void remove(Range<C> range) {
        throw new UnsupportedOperationException();
    }

    @Override // defpackage.hl, com.google.common.collect.RangeSet
    public void removeAll(RangeSet<C> rangeSet) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.RangeSet
    public ImmutableSet<Range<C>> asRanges() {
        return this.c.isEmpty() ? ImmutableSet.of() : new jw(this.c, Range.a);
    }

    @Override // com.google.common.collect.RangeSet
    public ImmutableSet<Range<C>> asDescendingSetOfRanges() {
        if (this.c.isEmpty()) {
            return ImmutableSet.of();
        }
        return new jw(this.c.reverse(), Range.a.reverse());
    }

    final class c extends ImmutableList<Range<C>> {
        private final boolean b;
        private final boolean c;
        private final int d;

        /* JADX WARN: Multi-variable type inference failed */
        c() {
            this.b = ((Range) ImmutableRangeSet.this.c.get(0)).hasLowerBound();
            this.c = ((Range) Iterables.getLast(ImmutableRangeSet.this.c)).hasUpperBound();
            int size = ImmutableRangeSet.this.c.size() - 1;
            size = this.b ? size + 1 : size;
            this.d = this.c ? size + 1 : size;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.d;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.List
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Range<C> get(int i) {
            ic<C> icVarD;
            ic<C> icVarE;
            Preconditions.checkElementIndex(i, this.d);
            if (!this.b) {
                icVarD = ((Range) ImmutableRangeSet.this.c.get(i)).c;
            } else {
                icVarD = i == 0 ? ic.d() : ((Range) ImmutableRangeSet.this.c.get(i - 1)).c;
            }
            if (this.c && i == this.d - 1) {
                icVarE = ic.e();
            } else {
                icVarE = ((Range) ImmutableRangeSet.this.c.get((this.b ? 0 : 1) + i)).b;
            }
            return Range.a((ic) icVarD, (ic) icVarE);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableCollection
        public boolean a() {
            return true;
        }
    }

    @Override // com.google.common.collect.RangeSet
    public ImmutableRangeSet<C> complement() {
        ImmutableRangeSet<C> immutableRangeSet = this.d;
        if (immutableRangeSet == null) {
            if (this.c.isEmpty()) {
                ImmutableRangeSet<C> immutableRangeSetA = a();
                this.d = immutableRangeSetA;
                return immutableRangeSetA;
            }
            if (this.c.size() == 1 && this.c.get(0).equals(Range.all())) {
                ImmutableRangeSet<C> immutableRangeSetOf = of();
                this.d = immutableRangeSetOf;
                return immutableRangeSetOf;
            }
            ImmutableRangeSet<C> immutableRangeSet2 = new ImmutableRangeSet<>(new c(), this);
            this.d = immutableRangeSet2;
            return immutableRangeSet2;
        }
        return immutableRangeSet;
    }

    private ImmutableList<Range<C>> a(final Range<C> range) {
        final int iA;
        int size;
        if (this.c.isEmpty() || range.isEmpty()) {
            return ImmutableList.of();
        }
        if (range.encloses(span())) {
            return this.c;
        }
        if (range.hasLowerBound()) {
            iA = SortedLists.a(this.c, (Function<? super E, ic<C>>) Range.b(), range.b, SortedLists.KeyPresentBehavior.FIRST_AFTER, SortedLists.KeyAbsentBehavior.NEXT_HIGHER);
        } else {
            iA = 0;
        }
        if (range.hasUpperBound()) {
            size = SortedLists.a(this.c, (Function<? super E, ic<C>>) Range.a(), range.c, SortedLists.KeyPresentBehavior.FIRST_PRESENT, SortedLists.KeyAbsentBehavior.NEXT_HIGHER);
        } else {
            size = this.c.size();
        }
        final int i = size - iA;
        if (i == 0) {
            return ImmutableList.of();
        }
        return (ImmutableList<Range<C>>) new ImmutableList<Range<C>>() { // from class: com.google.common.collect.ImmutableRangeSet.1
            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public int size() {
                return i;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.List
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Range<C> get(int i2) {
                Preconditions.checkElementIndex(i2, i);
                return (i2 == 0 || i2 == i + (-1)) ? ((Range) ImmutableRangeSet.this.c.get(iA + i2)).intersection(range) : (Range) ImmutableRangeSet.this.c.get(iA + i2);
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.collect.ImmutableCollection
            public boolean a() {
                return true;
            }
        };
    }

    @Override // com.google.common.collect.RangeSet
    public ImmutableRangeSet<C> subRangeSet(Range<C> range) {
        if (!isEmpty()) {
            Range<C> rangeSpan = span();
            if (!range.encloses(rangeSpan)) {
                if (range.isConnected(rangeSpan)) {
                    return new ImmutableRangeSet<>(a(range));
                }
            } else {
                return this;
            }
        }
        return of();
    }

    public ImmutableSortedSet<C> asSet(DiscreteDomain<C> discreteDomain) {
        Preconditions.checkNotNull(discreteDomain);
        if (isEmpty()) {
            return ImmutableSortedSet.of();
        }
        Range<C> rangeCanonical = span().canonical(discreteDomain);
        if (!rangeCanonical.hasLowerBound()) {
            throw new IllegalArgumentException("Neither the DiscreteDomain nor this range set are bounded below");
        }
        if (!rangeCanonical.hasUpperBound()) {
            try {
                discreteDomain.maxValue();
            } catch (NoSuchElementException e) {
                throw new IllegalArgumentException("Neither the DiscreteDomain nor this range set are bounded above");
            }
        }
        return new a(discreteDomain);
    }

    final class a extends ImmutableSortedSet<C> {
        private final DiscreteDomain<C> d;
        private transient Integer e;

        a(DiscreteDomain<C> discreteDomain) {
            super(Ordering.natural());
            this.d = discreteDomain;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            Integer numValueOf = this.e;
            if (numValueOf == null) {
                long size = 0;
                UnmodifiableIterator it = ImmutableRangeSet.this.c.iterator();
                while (true) {
                    long j = size;
                    if (!it.hasNext()) {
                        size = j;
                        break;
                    }
                    size = ((long) ContiguousSet.create((Range) it.next(), this.d).size()) + j;
                    if (size >= 2147483647L) {
                        break;
                    }
                }
                numValueOf = Integer.valueOf(Ints.saturatedCast(size));
                this.e = numValueOf;
            }
            return numValueOf.intValue();
        }

        @Override // com.google.common.collect.ImmutableSortedSet, com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public UnmodifiableIterator<C> iterator() {
            return new AbstractIterator<C>() { // from class: com.google.common.collect.ImmutableRangeSet.a.1
                final Iterator<Range<C>> a;
                Iterator<C> b = Iterators.emptyIterator();

                {
                    this.a = ImmutableRangeSet.this.c.iterator();
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.google.common.collect.AbstractIterator
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public C computeNext() {
                    while (!this.b.hasNext()) {
                        if (this.a.hasNext()) {
                            this.b = ContiguousSet.create(this.a.next(), a.this.d).iterator();
                        } else {
                            return (C) endOfData();
                        }
                    }
                    return this.b.next();
                }
            };
        }

        @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
        @GwtIncompatible("NavigableSet")
        public UnmodifiableIterator<C> descendingIterator() {
            return new AbstractIterator<C>() { // from class: com.google.common.collect.ImmutableRangeSet.a.2
                final Iterator<Range<C>> a;
                Iterator<C> b = Iterators.emptyIterator();

                {
                    this.a = ImmutableRangeSet.this.c.reverse().iterator();
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.google.common.collect.AbstractIterator
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public C computeNext() {
                    while (!this.b.hasNext()) {
                        if (this.a.hasNext()) {
                            this.b = ContiguousSet.create(this.a.next(), a.this.d).descendingIterator();
                        } else {
                            return (C) endOfData();
                        }
                    }
                    return this.b.next();
                }
            };
        }

        ImmutableSortedSet<C> a(Range<C> range) {
            return ImmutableRangeSet.this.subRangeSet((Range) range).asSet(this.d);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableSortedSet
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ImmutableSortedSet<C> b(C c, boolean z) {
            return a((Range) Range.upTo(c, BoundType.a(z)));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableSortedSet
        public ImmutableSortedSet<C> a(C c, boolean z, C c2, boolean z2) {
            if (!z && !z2 && Range.a(c, c2) == 0) {
                return ImmutableSortedSet.of();
            }
            return a((Range) Range.range(c, BoundType.a(z), c2, BoundType.a(z2)));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableSortedSet
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public ImmutableSortedSet<C> a(C c, boolean z) {
            return a((Range) Range.downTo(c, BoundType.a(z)));
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
        public boolean contains(@Nullable Object obj) {
            if (obj == null) {
                return false;
            }
            try {
                return ImmutableRangeSet.this.contains((Comparable) obj);
            } catch (ClassCastException e) {
                return false;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.ImmutableSortedSet
        public int a(Object obj) {
            if (contains(obj)) {
                Comparable comparable = (Comparable) obj;
                long size = 0;
                UnmodifiableIterator it = ImmutableRangeSet.this.c.iterator();
                while (true) {
                    long j = size;
                    if (it.hasNext()) {
                        Range range = (Range) it.next();
                        if (range.contains(comparable)) {
                            return Ints.saturatedCast(((long) ContiguousSet.create(range, this.d).a(comparable)) + j);
                        }
                        size = ((long) ContiguousSet.create(range, this.d).size()) + j;
                    } else {
                        throw new AssertionError("impossible");
                    }
                }
            } else {
                return -1;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableCollection
        public boolean a() {
            return ImmutableRangeSet.this.c.a();
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            return ImmutableRangeSet.this.c.toString();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableSortedSet, com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection
        public Object writeReplace() {
            return new b(ImmutableRangeSet.this.c, this.d);
        }
    }

    static class b<C extends Comparable> implements Serializable {
        private final ImmutableList<Range<C>> a;
        private final DiscreteDomain<C> b;

        b(ImmutableList<Range<C>> immutableList, DiscreteDomain<C> discreteDomain) {
            this.a = immutableList;
            this.b = discreteDomain;
        }

        Object readResolve() {
            return new ImmutableRangeSet(this.a).asSet(this.b);
        }
    }

    boolean b() {
        return this.c.a();
    }

    public static <C extends Comparable<?>> Builder<C> builder() {
        return new Builder<>();
    }

    public static class Builder<C extends Comparable<?>> {
        private final RangeSet<C> a = TreeRangeSet.create();

        public Builder<C> add(Range<C> range) {
            if (range.isEmpty()) {
                String strValueOf = String.valueOf(range);
                throw new IllegalArgumentException(new StringBuilder(String.valueOf(strValueOf).length() + 33).append("range must not be empty, but was ").append(strValueOf).toString());
            }
            if (!this.a.complement().encloses(range)) {
                for (Range<C> range2 : this.a.asRanges()) {
                    Preconditions.checkArgument(!range2.isConnected(range) || range2.intersection(range).isEmpty(), "Ranges may not overlap, but received %s and %s", range2, range);
                }
                throw new AssertionError("should have thrown an IAE above");
            }
            this.a.add(range);
            return this;
        }

        public Builder<C> addAll(RangeSet<C> rangeSet) {
            Iterator<Range<C>> it = rangeSet.asRanges().iterator();
            while (it.hasNext()) {
                add(it.next());
            }
            return this;
        }

        public ImmutableRangeSet<C> build() {
            return ImmutableRangeSet.copyOf(this.a);
        }
    }

    static final class d<C extends Comparable> implements Serializable {
        private final ImmutableList<Range<C>> a;

        d(ImmutableList<Range<C>> immutableList) {
            this.a = immutableList;
        }

        Object readResolve() {
            if (this.a.isEmpty()) {
                return ImmutableRangeSet.of();
            }
            if (this.a.equals(ImmutableList.of(Range.all()))) {
                return ImmutableRangeSet.a();
            }
            return new ImmutableRangeSet(this.a);
        }
    }

    Object writeReplace() {
        return new d(this.c);
    }
}
