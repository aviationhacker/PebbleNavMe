package defpackage;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.AbstractSequentialIterator;
import com.google.common.collect.BoundType;
import com.google.common.collect.Collections2;
import com.google.common.collect.ContiguousSet;
import com.google.common.collect.DiscreteDomain;
import com.google.common.collect.Ordering;
import com.google.common.collect.Range;
import com.google.common.collect.Sets;
import com.google.common.collect.UnmodifiableIterator;
import java.io.Serializable;
import java.lang.Comparable;
import java.util.Collection;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(emulated = true)
public final class jo<C extends Comparable> extends ContiguousSet<C> {
    private static final long serialVersionUID = 0;
    private final Range<C> d;

    public jo(Range<C> range, DiscreteDomain<C> discreteDomain) {
        super(discreteDomain);
        this.d = range;
    }

    private ContiguousSet<C> a(Range<C> range) {
        return this.d.isConnected(range) ? ContiguousSet.create(this.d.intersection(range), this.a) : new ih(this.a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ContiguousSet, com.google.common.collect.ImmutableSortedSet
    /* JADX INFO: renamed from: a */
    public ContiguousSet<C> b(C c, boolean z) {
        return a((Range) Range.upTo(c, BoundType.a(z)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ContiguousSet, com.google.common.collect.ImmutableSortedSet
    public ContiguousSet<C> a(C c, boolean z, C c2, boolean z2) {
        if (c.compareTo(c2) == 0 && !z && !z2) {
            return new ih(this.a);
        }
        return a((Range) Range.range(c, BoundType.a(z), c2, BoundType.a(z2)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ContiguousSet, com.google.common.collect.ImmutableSortedSet
    /* JADX INFO: renamed from: b */
    public ContiguousSet<C> a(C c, boolean z) {
        return a((Range) Range.downTo(c, BoundType.a(z)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableSortedSet
    @GwtIncompatible("not used by GWT emulation")
    public int a(Object obj) {
        if (contains(obj)) {
            return (int) this.a.distance(first(), (Comparable) obj);
        }
        return -1;
    }

    @Override // com.google.common.collect.ImmutableSortedSet, com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public UnmodifiableIterator<C> iterator() {
        return new AbstractSequentialIterator<C>(first()) { // from class: jo.1
            final C a;

            {
                this.a = (C) jo.this.last();
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.collect.AbstractSequentialIterator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public C computeNext(C c) {
                if (jo.b((Comparable<?>) c, (Comparable<?>) this.a)) {
                    return null;
                }
                return (C) jo.this.a.next(c);
            }
        };
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    @GwtIncompatible("NavigableSet")
    public UnmodifiableIterator<C> descendingIterator() {
        return new AbstractSequentialIterator<C>(last()) { // from class: jo.2
            final C a;

            {
                this.a = (C) jo.this.first();
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.collect.AbstractSequentialIterator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public C computeNext(C c) {
                if (jo.b((Comparable<?>) c, (Comparable<?>) this.a)) {
                    return null;
                }
                return (C) jo.this.a.previous(c);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(Comparable<?> comparable, @Nullable Comparable<?> comparable2) {
        return comparable2 != null && Range.a(comparable, comparable2) == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public boolean a() {
        return false;
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.SortedSet
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public C first() {
        return (C) this.d.b.a(this.a);
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.SortedSet
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public C last() {
        return (C) this.d.c.b(this.a);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        long jDistance = this.a.distance(first(), last());
        if (jDistance >= 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return ((int) jDistance) + 1;
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
    public boolean contains(@Nullable Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            return this.d.contains((Comparable) obj);
        } catch (ClassCastException e) {
            return false;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean containsAll(Collection<?> collection) {
        return Collections2.a((Collection<?>) this, collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return false;
    }

    @Override // com.google.common.collect.ContiguousSet
    public ContiguousSet<C> intersection(ContiguousSet<C> contiguousSet) {
        Preconditions.checkNotNull(contiguousSet);
        Preconditions.checkArgument(this.a.equals(contiguousSet.a));
        if (!contiguousSet.isEmpty()) {
            Comparable comparable = (Comparable) Ordering.natural().max(first(), contiguousSet.first());
            Comparable comparable2 = (Comparable) Ordering.natural().min(last(), contiguousSet.last());
            return comparable.compareTo(comparable2) < 0 ? ContiguousSet.create(Range.closed(comparable, comparable2), this.a) : new ih<>(this.a);
        }
        return contiguousSet;
    }

    @Override // com.google.common.collect.ContiguousSet
    public Range<C> range() {
        return range(BoundType.CLOSED, BoundType.CLOSED);
    }

    @Override // com.google.common.collect.ContiguousSet
    public Range<C> range(BoundType boundType, BoundType boundType2) {
        return Range.a((ic) this.d.b.a(boundType, this.a), (ic) this.d.c.b(boundType2, this.a));
    }

    @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof jo) {
            jo joVar = (jo) obj;
            if (this.a.equals(joVar.a)) {
                return first().equals(joVar.first()) && last().equals(joVar.last());
            }
        }
        return super.equals(obj);
    }

    @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
    public int hashCode() {
        return Sets.a(this);
    }

    @GwtIncompatible("serialization")
    static final class a<C extends Comparable> implements Serializable {
        final Range<C> a;
        final DiscreteDomain<C> b;

        private a(Range<C> range, DiscreteDomain<C> discreteDomain) {
            this.a = range;
            this.b = discreteDomain;
        }

        private Object readResolve() {
            return new jo(this.a, this.b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableSortedSet, com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection
    @GwtIncompatible("serialization")
    public Object writeReplace() {
        return new a(this.d, this.a);
    }
}
