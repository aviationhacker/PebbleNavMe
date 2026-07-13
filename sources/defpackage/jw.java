package defpackage;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSortedSet;
import com.google.common.collect.Iterators;
import com.google.common.collect.Multiset;
import com.google.common.collect.Ordering;
import com.google.common.collect.PeekingIterator;
import com.google.common.collect.SortedLists;
import com.google.common.collect.UnmodifiableIterator;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Set;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(emulated = true, serializable = true)
public final class jw<E> extends ImmutableSortedSet<E> {
    private final transient ImmutableList<E> a;

    public jw(ImmutableList<E> immutableList, Comparator<? super E> comparator) {
        super(comparator);
        this.a = immutableList;
    }

    @Override // com.google.common.collect.ImmutableSortedSet, com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public UnmodifiableIterator<E> iterator() {
        return this.a.iterator();
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    @GwtIncompatible("NavigableSet")
    public UnmodifiableIterator<E> descendingIterator() {
        return this.a.reverse().iterator();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.a.size();
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
    public boolean contains(@Nullable Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            return b(obj) >= 0;
        } catch (ClassCastException e) {
            return false;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean containsAll(Collection<?> collection) {
        if (collection instanceof Multiset) {
            collection = ((Multiset) collection).elementSet();
        }
        if (!kg.a(comparator(), collection) || collection.size() <= 1) {
            return super.containsAll(collection);
        }
        PeekingIterator peekingIterator = Iterators.peekingIterator(iterator());
        Iterator<?> it = collection.iterator();
        Object next = it.next();
        while (peekingIterator.hasNext()) {
            try {
                int iA = a(peekingIterator.peek(), next);
                if (iA < 0) {
                    peekingIterator.next();
                } else if (iA == 0) {
                    if (!it.hasNext()) {
                        return true;
                    }
                    next = it.next();
                } else if (iA > 0) {
                    return false;
                }
            } catch (ClassCastException e) {
                return false;
            } catch (NullPointerException e2) {
                return false;
            }
        }
        return false;
    }

    private int b(Object obj) {
        return Collections.binarySearch(this.a, obj, c());
    }

    @Override // com.google.common.collect.ImmutableCollection
    public boolean a() {
        return this.a.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    protected int a(Object[] objArr, int i) {
        return this.a.a(objArr, i);
    }

    @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Set)) {
            return false;
        }
        Set set = (Set) obj;
        if (size() != set.size()) {
            return false;
        }
        if (isEmpty()) {
            return true;
        }
        if (kg.a(this.b, set)) {
            Iterator<E> it = set.iterator();
            try {
                UnmodifiableIterator<E> it2 = iterator();
                while (it2.hasNext()) {
                    E next = it2.next();
                    E next2 = it.next();
                    if (next2 == null || a(next, next2) != 0) {
                        return false;
                    }
                }
                return true;
            } catch (ClassCastException e) {
                return false;
            } catch (NoSuchElementException e2) {
                return false;
            }
        }
        return containsAll(set);
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.SortedSet
    public E first() {
        if (isEmpty()) {
            throw new NoSuchElementException();
        }
        return this.a.get(0);
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.SortedSet
    public E last() {
        if (isEmpty()) {
            throw new NoSuchElementException();
        }
        return this.a.get(size() - 1);
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    public E lower(E e) {
        int iC = c(e, false) - 1;
        if (iC == -1) {
            return null;
        }
        return this.a.get(iC);
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    public E floor(E e) {
        int iC = c(e, true) - 1;
        if (iC == -1) {
            return null;
        }
        return this.a.get(iC);
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    public E ceiling(E e) {
        int iD = d(e, true);
        if (iD == size()) {
            return null;
        }
        return this.a.get(iD);
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    public E higher(E e) {
        int iD = d(e, false);
        if (iD == size()) {
            return null;
        }
        return this.a.get(iD);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableSortedSet
    protected ImmutableSortedSet<E> b(E e, boolean z) {
        return a(0, c(e, z));
    }

    public int c(E e, boolean z) {
        return SortedLists.a(this.a, Preconditions.checkNotNull(e), comparator(), z ? SortedLists.KeyPresentBehavior.FIRST_AFTER : SortedLists.KeyPresentBehavior.FIRST_PRESENT, SortedLists.KeyAbsentBehavior.NEXT_HIGHER);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableSortedSet
    protected ImmutableSortedSet<E> a(E e, boolean z, E e2, boolean z2) {
        return a(e, z).b(e2, z2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableSortedSet
    protected ImmutableSortedSet<E> a(E e, boolean z) {
        return a(d(e, z), size());
    }

    public int d(E e, boolean z) {
        return SortedLists.a(this.a, Preconditions.checkNotNull(e), comparator(), z ? SortedLists.KeyPresentBehavior.FIRST_PRESENT : SortedLists.KeyPresentBehavior.FIRST_AFTER, SortedLists.KeyAbsentBehavior.NEXT_HIGHER);
    }

    Comparator<Object> c() {
        return this.b;
    }

    public jw<E> a(int i, int i2) {
        if (i != 0 || i2 != size()) {
            if (i < i2) {
                return new jw<>(this.a.subList(i, i2), this.b);
            }
            return a((Comparator) this.b);
        }
        return this;
    }

    @Override // com.google.common.collect.ImmutableSortedSet
    public int a(@Nullable Object obj) {
        if (obj == null) {
            return -1;
        }
        try {
            int iA = SortedLists.a(this.a, obj, (Comparator<? super Object>) c(), SortedLists.KeyPresentBehavior.ANY_PRESENT, SortedLists.KeyAbsentBehavior.INVERTED_INSERTION_INDEX);
            if (iA < 0) {
                iA = -1;
            }
            return iA;
        } catch (ClassCastException e) {
            return -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public ImmutableList<E> f() {
        return size() <= 1 ? this.a : new je(this, this.a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableSortedSet
    protected ImmutableSortedSet<E> b() {
        Ordering orderingReverse = Ordering.from(this.b).reverse();
        return isEmpty() ? a((Comparator) orderingReverse) : new jw(this.a.reverse(), orderingReverse);
    }
}
