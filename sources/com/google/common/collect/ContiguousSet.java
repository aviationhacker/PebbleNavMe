package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableSortedSet;
import defpackage.ih;
import defpackage.jo;
import java.lang.Comparable;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
@Beta
@GwtCompatible(emulated = true)
public abstract class ContiguousSet<C extends Comparable> extends ImmutableSortedSet<C> {
    public final DiscreteDomain<C> a;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.ImmutableSortedSet
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public abstract ContiguousSet<C> b(C c, boolean z);

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.ImmutableSortedSet
    public abstract ContiguousSet<C> a(C c, boolean z, C c2, boolean z2);

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.ImmutableSortedSet
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public abstract ContiguousSet<C> a(C c, boolean z);

    public abstract ContiguousSet<C> intersection(ContiguousSet<C> contiguousSet);

    public abstract Range<C> range();

    public abstract Range<C> range(BoundType boundType, BoundType boundType2);

    public static <C extends Comparable> ContiguousSet<C> create(Range<C> range, DiscreteDomain<C> discreteDomain) {
        Preconditions.checkNotNull(range);
        Preconditions.checkNotNull(discreteDomain);
        try {
            Range<C> rangeIntersection = !range.hasLowerBound() ? range.intersection(Range.atLeast(discreteDomain.minValue())) : range;
            if (!range.hasUpperBound()) {
                rangeIntersection = rangeIntersection.intersection(Range.atMost(discreteDomain.maxValue()));
            }
            return rangeIntersection.isEmpty() || Range.a(range.b.a(discreteDomain), range.c.b(discreteDomain)) > 0 ? new ih(discreteDomain) : new jo(rangeIntersection, discreteDomain);
        } catch (NoSuchElementException e) {
            throw new IllegalArgumentException(e);
        }
    }

    protected ContiguousSet(DiscreteDomain<C> discreteDomain) {
        super(Ordering.natural());
        this.a = discreteDomain;
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet, java.util.SortedSet
    public ContiguousSet<C> headSet(C c) {
        return b((Comparable) Preconditions.checkNotNull(c), false);
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    @GwtIncompatible("NavigableSet")
    public ContiguousSet<C> headSet(C c, boolean z) {
        return b((Comparable) Preconditions.checkNotNull(c), z);
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet, java.util.SortedSet
    public ContiguousSet<C> subSet(C c, C c2) {
        Preconditions.checkNotNull(c);
        Preconditions.checkNotNull(c2);
        Preconditions.checkArgument(comparator().compare(c, c2) <= 0);
        return a((Comparable) c, true, (Comparable) c2, false);
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    @GwtIncompatible("NavigableSet")
    public ContiguousSet<C> subSet(C c, boolean z, C c2, boolean z2) {
        Preconditions.checkNotNull(c);
        Preconditions.checkNotNull(c2);
        Preconditions.checkArgument(comparator().compare(c, c2) <= 0);
        return a((Comparable) c, z, (Comparable) c2, z2);
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet, java.util.SortedSet
    public ContiguousSet<C> tailSet(C c) {
        return a((Comparable) Preconditions.checkNotNull(c), true);
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    @GwtIncompatible("NavigableSet")
    public ContiguousSet<C> tailSet(C c, boolean z) {
        return a((Comparable) Preconditions.checkNotNull(c), z);
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        return range().toString();
    }

    @Deprecated
    public static <E> ImmutableSortedSet.Builder<E> builder() {
        throw new UnsupportedOperationException();
    }
}
