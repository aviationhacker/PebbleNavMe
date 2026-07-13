package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import defpackage.ic;
import java.io.Serializable;
import java.lang.Comparable;
import java.util.Comparator;
import java.util.Iterator;
import java.util.SortedSet;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible
public final class Range<C extends Comparable> implements Predicate<C>, Serializable {
    private static final long serialVersionUID = 0;
    public final ic<C> b;
    public final ic<C> c;
    private static final Function<Range, ic> d = new Function<Range, ic>() { // from class: com.google.common.collect.Range.1
        @Override // com.google.common.base.Function
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ic apply(Range range) {
            return range.b;
        }
    };
    private static final Function<Range, ic> e = new Function<Range, ic>() { // from class: com.google.common.collect.Range.2
        @Override // com.google.common.base.Function
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ic apply(Range range) {
            return range.c;
        }
    };
    static final Ordering<Range<?>> a = new a();
    private static final Range<Comparable> f = new Range<>(ic.d(), ic.e());

    static <C extends Comparable<?>> Function<Range<C>, ic<C>> a() {
        return d;
    }

    static <C extends Comparable<?>> Function<Range<C>, ic<C>> b() {
        return e;
    }

    public static <C extends Comparable<?>> Range<C> a(ic<C> icVar, ic<C> icVar2) {
        return new Range<>(icVar, icVar2);
    }

    public static <C extends Comparable<?>> Range<C> open(C c, C c2) {
        return a(ic.c(c), ic.b(c2));
    }

    public static <C extends Comparable<?>> Range<C> closed(C c, C c2) {
        return a(ic.b(c), ic.c(c2));
    }

    public static <C extends Comparable<?>> Range<C> closedOpen(C c, C c2) {
        return a(ic.b(c), ic.b(c2));
    }

    public static <C extends Comparable<?>> Range<C> openClosed(C c, C c2) {
        return a(ic.c(c), ic.c(c2));
    }

    public static <C extends Comparable<?>> Range<C> range(C c, BoundType boundType, C c2, BoundType boundType2) {
        Preconditions.checkNotNull(boundType);
        Preconditions.checkNotNull(boundType2);
        return a(boundType == BoundType.OPEN ? ic.c(c) : ic.b(c), boundType2 == BoundType.OPEN ? ic.b(c2) : ic.c(c2));
    }

    public static <C extends Comparable<?>> Range<C> lessThan(C c) {
        return a(ic.d(), ic.b(c));
    }

    public static <C extends Comparable<?>> Range<C> atMost(C c) {
        return a(ic.d(), ic.c(c));
    }

    public static <C extends Comparable<?>> Range<C> upTo(C c, BoundType boundType) {
        switch (boundType) {
            case OPEN:
                return lessThan(c);
            case CLOSED:
                return atMost(c);
            default:
                throw new AssertionError();
        }
    }

    public static <C extends Comparable<?>> Range<C> greaterThan(C c) {
        return a(ic.c(c), ic.e());
    }

    public static <C extends Comparable<?>> Range<C> atLeast(C c) {
        return a(ic.b(c), ic.e());
    }

    public static <C extends Comparable<?>> Range<C> downTo(C c, BoundType boundType) {
        switch (boundType) {
            case OPEN:
                return greaterThan(c);
            case CLOSED:
                return atLeast(c);
            default:
                throw new AssertionError();
        }
    }

    public static <C extends Comparable<?>> Range<C> all() {
        return (Range<C>) f;
    }

    public static <C extends Comparable<?>> Range<C> singleton(C c) {
        return closed(c, c);
    }

    public static <C extends Comparable<?>> Range<C> encloseAll(Iterable<C> iterable) {
        Preconditions.checkNotNull(iterable);
        if (iterable instanceof ContiguousSet) {
            return ((ContiguousSet) iterable).range();
        }
        Iterator<C> it = iterable.iterator();
        Comparable comparable = (Comparable) Preconditions.checkNotNull(it.next());
        Comparable comparable2 = comparable;
        Comparable comparable3 = comparable;
        while (it.hasNext()) {
            Comparable comparable4 = (Comparable) Preconditions.checkNotNull(it.next());
            comparable3 = (Comparable) Ordering.natural().min(comparable3, comparable4);
            comparable2 = (Comparable) Ordering.natural().max(comparable2, comparable4);
        }
        return closed(comparable3, comparable2);
    }

    private Range(ic<C> icVar, ic<C> icVar2) {
        this.b = (ic) Preconditions.checkNotNull(icVar);
        this.c = (ic) Preconditions.checkNotNull(icVar2);
        if (icVar.compareTo((ic) icVar2) > 0 || icVar == ic.e() || icVar2 == ic.d()) {
            String strValueOf = String.valueOf(b(icVar, icVar2));
            throw new IllegalArgumentException(strValueOf.length() != 0 ? "Invalid range: ".concat(strValueOf) : new String("Invalid range: "));
        }
    }

    public boolean hasLowerBound() {
        return this.b != ic.d();
    }

    public C lowerEndpoint() {
        return (C) this.b.c();
    }

    public BoundType lowerBoundType() {
        return this.b.a();
    }

    public boolean hasUpperBound() {
        return this.c != ic.e();
    }

    public C upperEndpoint() {
        return (C) this.c.c();
    }

    public BoundType upperBoundType() {
        return this.c.b();
    }

    public boolean isEmpty() {
        return this.b.equals(this.c);
    }

    public boolean contains(C c) {
        Preconditions.checkNotNull(c);
        return this.b.a(c) && !this.c.a(c);
    }

    @Override // com.google.common.base.Predicate
    @Deprecated
    public boolean apply(C c) {
        return contains(c);
    }

    public boolean containsAll(Iterable<? extends C> iterable) {
        if (Iterables.isEmpty(iterable)) {
            return true;
        }
        if (iterable instanceof SortedSet) {
            SortedSet sortedSetA = a(iterable);
            Comparator comparator = sortedSetA.comparator();
            if (Ordering.natural().equals(comparator) || comparator == null) {
                return contains((Comparable) sortedSetA.first()) && contains((Comparable) sortedSetA.last());
            }
        }
        Iterator<? extends C> it = iterable.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    public boolean encloses(Range<C> range) {
        return this.b.compareTo((ic) range.b) <= 0 && this.c.compareTo((ic) range.c) >= 0;
    }

    public boolean isConnected(Range<C> range) {
        return this.b.compareTo((ic) range.c) <= 0 && range.b.compareTo((ic) this.c) <= 0;
    }

    public Range<C> intersection(Range<C> range) {
        int iA = this.b.compareTo((ic) range.b);
        int iA2 = this.c.compareTo((ic) range.c);
        if (iA < 0 || iA2 > 0) {
            if (iA > 0 || iA2 < 0) {
                return a((ic) (iA >= 0 ? this.b : range.b), (ic) (iA2 <= 0 ? this.c : range.c));
            }
            return range;
        }
        return this;
    }

    public Range<C> span(Range<C> range) {
        int iA = this.b.compareTo((ic) range.b);
        int iA2 = this.c.compareTo((ic) range.c);
        if (iA > 0 || iA2 < 0) {
            if (iA < 0 || iA2 > 0) {
                return a((ic) (iA <= 0 ? this.b : range.b), (ic) (iA2 >= 0 ? this.c : range.c));
            }
            return range;
        }
        return this;
    }

    public Range<C> canonical(DiscreteDomain<C> discreteDomain) {
        Preconditions.checkNotNull(discreteDomain);
        ic<C> icVarC = this.b.c(discreteDomain);
        ic<C> icVarC2 = this.c.c(discreteDomain);
        return (icVarC == this.b && icVarC2 == this.c) ? this : a((ic) icVarC, (ic) icVarC2);
    }

    @Override // com.google.common.base.Predicate
    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof Range)) {
            return false;
        }
        Range range = (Range) obj;
        return this.b.equals(range.b) && this.c.equals(range.c);
    }

    public int hashCode() {
        return (this.b.hashCode() * 31) + this.c.hashCode();
    }

    public String toString() {
        return b(this.b, this.c);
    }

    private static String b(ic<?> icVar, ic<?> icVar2) {
        StringBuilder sb = new StringBuilder(16);
        icVar.a(sb);
        sb.append((char) 8229);
        icVar2.b(sb);
        return sb.toString();
    }

    private static <T> SortedSet<T> a(Iterable<T> iterable) {
        return (SortedSet) iterable;
    }

    Object readResolve() {
        if (equals(f)) {
            return all();
        }
        return this;
    }

    public static int a(Comparable comparable, Comparable comparable2) {
        return comparable.compareTo(comparable2);
    }

    static class a extends Ordering<Range<?>> implements Serializable {
        private static final long serialVersionUID = 0;

        private a() {
        }

        @Override // com.google.common.collect.Ordering, java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(Range<?> range, Range<?> range2) {
            return ComparisonChain.start().compare(range.b, range2.b).compare(range.c, range2.c).result();
        }
    }
}
