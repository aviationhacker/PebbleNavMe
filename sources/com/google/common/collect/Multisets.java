package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.base.Predicates;
import com.google.common.collect.Multiset;
import com.google.common.collect.Sets;
import com.google.common.primitives.Ints;
import defpackage.hj;
import defpackage.hu;
import defpackage.kn;
import defpackage.kp;
import java.io.Serializable;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Set;
import javax.annotation.CheckReturnValue;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible
public final class Multisets {
    private static final Ordering<Multiset.Entry<?>> a = new Ordering<Multiset.Entry<?>>() { // from class: com.google.common.collect.Multisets.5
        @Override // com.google.common.collect.Ordering, java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(Multiset.Entry<?> entry, Multiset.Entry<?> entry2) {
            return Ints.compare(entry2.getCount(), entry.getCount());
        }
    };

    private Multisets() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <E> Multiset<E> unmodifiableMultiset(Multiset<? extends E> multiset) {
        return ((multiset instanceof g) || (multiset instanceof ImmutableMultiset)) ? multiset : new g((Multiset) Preconditions.checkNotNull(multiset));
    }

    @Deprecated
    public static <E> Multiset<E> unmodifiableMultiset(ImmutableMultiset<E> immutableMultiset) {
        return (Multiset) Preconditions.checkNotNull(immutableMultiset);
    }

    public static class g<E> extends ForwardingMultiset<E> implements Serializable {
        private static final long serialVersionUID = 0;
        final Multiset<? extends E> a;
        transient Set<E> b;
        transient Set<Multiset.Entry<E>> c;

        protected g(Multiset<? extends E> multiset) {
            this.a = multiset;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.ForwardingMultiset, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public Multiset<E> delegate() {
            return this.a;
        }

        protected Set<E> a() {
            return Collections.unmodifiableSet(this.a.elementSet());
        }

        @Override // com.google.common.collect.ForwardingMultiset, com.google.common.collect.Multiset
        public Set<E> elementSet() {
            Set<E> set = this.b;
            if (set != null) {
                return set;
            }
            Set<E> setA = a();
            this.b = setA;
            return setA;
        }

        @Override // com.google.common.collect.ForwardingMultiset, com.google.common.collect.Multiset
        public Set<Multiset.Entry<E>> entrySet() {
            Set<Multiset.Entry<E>> set = this.c;
            if (set != null) {
                return set;
            }
            Set<Multiset.Entry<E>> setUnmodifiableSet = Collections.unmodifiableSet(this.a.entrySet());
            this.c = setUnmodifiableSet;
            return setUnmodifiableSet;
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.lang.Iterable
        public Iterator<E> iterator() {
            return Iterators.unmodifiableIterator(this.a.iterator());
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Queue
        public boolean add(E e) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingMultiset, com.google.common.collect.Multiset
        public int add(E e, int i) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public boolean addAll(Collection<? extends E> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingMultiset, com.google.common.collect.Multiset
        public int remove(Object obj, int i) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
        public boolean removeAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public void clear() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingMultiset, com.google.common.collect.Multiset
        public int setCount(E e, int i) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingMultiset, com.google.common.collect.Multiset
        public boolean setCount(E e, int i, int i2) {
            throw new UnsupportedOperationException();
        }
    }

    @Beta
    public static <E> SortedMultiset<E> unmodifiableSortedMultiset(SortedMultiset<E> sortedMultiset) {
        return new kp((SortedMultiset) Preconditions.checkNotNull(sortedMultiset));
    }

    public static <E> Multiset.Entry<E> immutableEntry(@Nullable E e2, int i) {
        return new e(e2, i);
    }

    public static class e<E> extends a<E> implements Serializable {
        private static final long serialVersionUID = 0;

        @Nullable
        private final E a;
        private final int b;

        public e(@Nullable E e, int i) {
            this.a = e;
            this.b = i;
            hu.a(i, "count");
        }

        @Override // com.google.common.collect.Multiset.Entry
        @Nullable
        public final E getElement() {
            return this.a;
        }

        @Override // com.google.common.collect.Multiset.Entry
        public final int getCount() {
            return this.b;
        }

        public e<E> a() {
            return null;
        }
    }

    @Beta
    @CheckReturnValue
    public static <E> Multiset<E> filter(Multiset<E> multiset, Predicate<? super E> predicate) {
        if (!(multiset instanceof d)) {
            return new d(multiset, predicate);
        }
        d dVar = (d) multiset;
        return new d(dVar.a, Predicates.and(dVar.b, predicate));
    }

    static final class d<E> extends hj<E> {
        final Multiset<E> a;
        final Predicate<? super E> b;

        d(Multiset<E> multiset, Predicate<? super E> predicate) {
            this.a = (Multiset) Preconditions.checkNotNull(multiset);
            this.b = (Predicate) Preconditions.checkNotNull(predicate);
        }

        @Override // defpackage.hj, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, com.google.common.collect.Multiset
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public UnmodifiableIterator<E> iterator() {
            return Iterators.filter(this.a.iterator(), this.b);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // defpackage.hj
        public Set<E> c() {
            return Sets.filter(this.a.elementSet(), this.b);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // defpackage.hj
        public Set<Multiset.Entry<E>> createEntrySet() {
            return Sets.filter(this.a.entrySet(), new Predicate<Multiset.Entry<E>>() { // from class: com.google.common.collect.Multisets.d.1
                @Override // com.google.common.base.Predicate
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public boolean apply(Multiset.Entry<E> entry) {
                    return d.this.b.apply(entry.getElement());
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // defpackage.hj
        public Iterator<Multiset.Entry<E>> a() {
            throw new AssertionError("should never be called");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // defpackage.hj
        public int b() {
            return elementSet().size();
        }

        @Override // defpackage.hj, com.google.common.collect.Multiset
        public int count(@Nullable Object obj) {
            int iCount = this.a.count(obj);
            if (iCount <= 0 || !this.b.apply(obj)) {
                return 0;
            }
            return iCount;
        }

        @Override // defpackage.hj, com.google.common.collect.Multiset
        public int add(@Nullable E e, int i) {
            Preconditions.checkArgument(this.b.apply(e), "Element %s does not match predicate %s", e, this.b);
            return this.a.add(e, i);
        }

        @Override // defpackage.hj, com.google.common.collect.Multiset
        public int remove(@Nullable Object obj, int i) {
            hu.a(i, "occurrences");
            if (i == 0) {
                return count(obj);
            }
            if (contains(obj)) {
                return this.a.remove(obj, i);
            }
            return 0;
        }

        @Override // defpackage.hj, java.util.AbstractCollection, java.util.Collection
        public void clear() {
            elementSet().clear();
        }
    }

    static int a(Iterable<?> iterable) {
        if (iterable instanceof Multiset) {
            return ((Multiset) iterable).elementSet().size();
        }
        return 11;
    }

    @Beta
    public static <E> Multiset<E> union(final Multiset<? extends E> multiset, final Multiset<? extends E> multiset2) {
        Preconditions.checkNotNull(multiset);
        Preconditions.checkNotNull(multiset2);
        return new hj<E>() { // from class: com.google.common.collect.Multisets.1
            @Override // defpackage.hj, java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
            public boolean contains(@Nullable Object obj) {
                return multiset.contains(obj) || multiset2.contains(obj);
            }

            @Override // defpackage.hj, java.util.AbstractCollection, java.util.Collection
            public boolean isEmpty() {
                return multiset.isEmpty() && multiset2.isEmpty();
            }

            @Override // defpackage.hj, com.google.common.collect.Multiset
            public int count(Object obj) {
                return Math.max(multiset.count(obj), multiset2.count(obj));
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // defpackage.hj
            public Set<E> c() {
                return Sets.union(multiset.elementSet(), multiset2.elementSet());
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // defpackage.hj
            public Iterator<Multiset.Entry<E>> a() {
                final Iterator<Multiset.Entry<E>> it = multiset.entrySet().iterator();
                final Iterator<Multiset.Entry<E>> it2 = multiset2.entrySet().iterator();
                return new AbstractIterator<Multiset.Entry<E>>() { // from class: com.google.common.collect.Multisets.1.1
                    /* JADX INFO: Access modifiers changed from: protected */
                    @Override // com.google.common.collect.AbstractIterator
                    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                    public Multiset.Entry<E> computeNext() {
                        if (it.hasNext()) {
                            Multiset.Entry entry = (Multiset.Entry) it.next();
                            Object element = entry.getElement();
                            return Multisets.immutableEntry(element, Math.max(entry.getCount(), multiset2.count(element)));
                        }
                        while (it2.hasNext()) {
                            Multiset.Entry entry2 = (Multiset.Entry) it2.next();
                            Object element2 = entry2.getElement();
                            if (!multiset.contains(element2)) {
                                return Multisets.immutableEntry(element2, entry2.getCount());
                            }
                        }
                        return endOfData();
                    }
                };
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // defpackage.hj
            public int b() {
                return elementSet().size();
            }
        };
    }

    public static <E> Multiset<E> intersection(final Multiset<E> multiset, final Multiset<?> multiset2) {
        Preconditions.checkNotNull(multiset);
        Preconditions.checkNotNull(multiset2);
        return new hj<E>() { // from class: com.google.common.collect.Multisets.2
            @Override // defpackage.hj, com.google.common.collect.Multiset
            public int count(Object obj) {
                int iCount = multiset.count(obj);
                if (iCount == 0) {
                    return 0;
                }
                return Math.min(iCount, multiset2.count(obj));
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // defpackage.hj
            public Set<E> c() {
                return Sets.intersection(multiset.elementSet(), multiset2.elementSet());
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // defpackage.hj
            public Iterator<Multiset.Entry<E>> a() {
                final Iterator<Multiset.Entry<E>> it = multiset.entrySet().iterator();
                return new AbstractIterator<Multiset.Entry<E>>() { // from class: com.google.common.collect.Multisets.2.1
                    /* JADX INFO: Access modifiers changed from: protected */
                    @Override // com.google.common.collect.AbstractIterator
                    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                    public Multiset.Entry<E> computeNext() {
                        while (it.hasNext()) {
                            Multiset.Entry entry = (Multiset.Entry) it.next();
                            Object element = entry.getElement();
                            int iMin = Math.min(entry.getCount(), multiset2.count(element));
                            if (iMin > 0) {
                                return Multisets.immutableEntry(element, iMin);
                            }
                        }
                        return endOfData();
                    }
                };
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // defpackage.hj
            public int b() {
                return elementSet().size();
            }
        };
    }

    @Beta
    public static <E> Multiset<E> sum(final Multiset<? extends E> multiset, final Multiset<? extends E> multiset2) {
        Preconditions.checkNotNull(multiset);
        Preconditions.checkNotNull(multiset2);
        return new hj<E>() { // from class: com.google.common.collect.Multisets.3
            @Override // defpackage.hj, java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
            public boolean contains(@Nullable Object obj) {
                return multiset.contains(obj) || multiset2.contains(obj);
            }

            @Override // defpackage.hj, java.util.AbstractCollection, java.util.Collection
            public boolean isEmpty() {
                return multiset.isEmpty() && multiset2.isEmpty();
            }

            @Override // defpackage.hj, java.util.AbstractCollection, java.util.Collection
            public int size() {
                return multiset.size() + multiset2.size();
            }

            @Override // defpackage.hj, com.google.common.collect.Multiset
            public int count(Object obj) {
                return multiset.count(obj) + multiset2.count(obj);
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // defpackage.hj
            public Set<E> c() {
                return Sets.union(multiset.elementSet(), multiset2.elementSet());
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // defpackage.hj
            public Iterator<Multiset.Entry<E>> a() {
                final Iterator<Multiset.Entry<E>> it = multiset.entrySet().iterator();
                final Iterator<Multiset.Entry<E>> it2 = multiset2.entrySet().iterator();
                return new AbstractIterator<Multiset.Entry<E>>() { // from class: com.google.common.collect.Multisets.3.1
                    /* JADX INFO: Access modifiers changed from: protected */
                    @Override // com.google.common.collect.AbstractIterator
                    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                    public Multiset.Entry<E> computeNext() {
                        if (it.hasNext()) {
                            Multiset.Entry entry = (Multiset.Entry) it.next();
                            Object element = entry.getElement();
                            return Multisets.immutableEntry(element, entry.getCount() + multiset2.count(element));
                        }
                        while (it2.hasNext()) {
                            Multiset.Entry entry2 = (Multiset.Entry) it2.next();
                            Object element2 = entry2.getElement();
                            if (!multiset.contains(element2)) {
                                return Multisets.immutableEntry(element2, entry2.getCount());
                            }
                        }
                        return endOfData();
                    }
                };
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // defpackage.hj
            public int b() {
                return elementSet().size();
            }
        };
    }

    @Beta
    public static <E> Multiset<E> difference(final Multiset<E> multiset, final Multiset<?> multiset2) {
        Preconditions.checkNotNull(multiset);
        Preconditions.checkNotNull(multiset2);
        return new hj<E>() { // from class: com.google.common.collect.Multisets.4
            @Override // defpackage.hj, com.google.common.collect.Multiset
            public int count(@Nullable Object obj) {
                int iCount = multiset.count(obj);
                if (iCount == 0) {
                    return 0;
                }
                return Math.max(0, iCount - multiset2.count(obj));
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // defpackage.hj
            public Iterator<Multiset.Entry<E>> a() {
                final Iterator<Multiset.Entry<E>> it = multiset.entrySet().iterator();
                return new AbstractIterator<Multiset.Entry<E>>() { // from class: com.google.common.collect.Multisets.4.1
                    /* JADX INFO: Access modifiers changed from: protected */
                    @Override // com.google.common.collect.AbstractIterator
                    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                    public Multiset.Entry<E> computeNext() {
                        while (it.hasNext()) {
                            Multiset.Entry entry = (Multiset.Entry) it.next();
                            Object element = entry.getElement();
                            int count = entry.getCount() - multiset2.count(element);
                            if (count > 0) {
                                return Multisets.immutableEntry(element, count);
                            }
                        }
                        return endOfData();
                    }
                };
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // defpackage.hj
            public int b() {
                return Iterators.size(a());
            }
        };
    }

    public static boolean containsOccurrences(Multiset<?> multiset, Multiset<?> multiset2) {
        Preconditions.checkNotNull(multiset);
        Preconditions.checkNotNull(multiset2);
        for (Multiset.Entry<?> entry : multiset2.entrySet()) {
            if (multiset.count(entry.getElement()) < entry.getCount()) {
                return false;
            }
        }
        return true;
    }

    public static boolean retainOccurrences(Multiset<?> multiset, Multiset<?> multiset2) {
        return a((Multiset) multiset, multiset2);
    }

    private static <E> boolean a(Multiset<E> multiset, Multiset<?> multiset2) {
        Preconditions.checkNotNull(multiset);
        Preconditions.checkNotNull(multiset2);
        Iterator<Multiset.Entry<E>> it = multiset.entrySet().iterator();
        boolean z = false;
        while (true) {
            boolean z2 = z;
            if (it.hasNext()) {
                Multiset.Entry<E> next = it.next();
                int iCount = multiset2.count(next.getElement());
                if (iCount == 0) {
                    it.remove();
                    z = true;
                } else if (iCount < next.getCount()) {
                    multiset.setCount(next.getElement(), iCount);
                    z = true;
                } else {
                    z = z2;
                }
            } else {
                return z2;
            }
        }
    }

    public static boolean removeOccurrences(Multiset<?> multiset, Iterable<?> iterable) {
        if (iterable instanceof Multiset) {
            return removeOccurrences(multiset, (Multiset<?>) iterable);
        }
        Preconditions.checkNotNull(multiset);
        Preconditions.checkNotNull(iterable);
        boolean zRemove = false;
        Iterator<?> it = iterable.iterator();
        while (it.hasNext()) {
            zRemove |= multiset.remove(it.next());
        }
        return zRemove;
    }

    public static boolean removeOccurrences(Multiset<?> multiset, Multiset<?> multiset2) {
        Preconditions.checkNotNull(multiset);
        Preconditions.checkNotNull(multiset2);
        boolean z = false;
        Iterator<Multiset.Entry<?>> it = multiset.entrySet().iterator();
        while (true) {
            boolean z2 = z;
            if (it.hasNext()) {
                Multiset.Entry<?> next = it.next();
                int iCount = multiset2.count(next.getElement());
                if (iCount >= next.getCount()) {
                    it.remove();
                    z = true;
                } else if (iCount > 0) {
                    multiset.remove(next.getElement(), iCount);
                    z = true;
                } else {
                    z = z2;
                }
            } else {
                return z2;
            }
        }
    }

    public static abstract class a<E> implements Multiset.Entry<E> {
        protected a() {
        }

        @Override // com.google.common.collect.Multiset.Entry
        public boolean equals(@Nullable Object obj) {
            if (!(obj instanceof Multiset.Entry)) {
                return false;
            }
            Multiset.Entry entry = (Multiset.Entry) obj;
            return getCount() == entry.getCount() && Objects.equal(getElement(), entry.getElement());
        }

        @Override // com.google.common.collect.Multiset.Entry
        public int hashCode() {
            E element = getElement();
            return (element == null ? 0 : element.hashCode()) ^ getCount();
        }

        @Override // com.google.common.collect.Multiset.Entry
        public String toString() {
            String strValueOf = String.valueOf(getElement());
            int count = getCount();
            return count == 1 ? strValueOf : new StringBuilder(String.valueOf(strValueOf).length() + 14).append(strValueOf).append(" x ").append(count).toString();
        }
    }

    public static boolean a(Multiset<?> multiset, @Nullable Object obj) {
        if (obj == multiset) {
            return true;
        }
        if (!(obj instanceof Multiset)) {
            return false;
        }
        Multiset multiset2 = (Multiset) obj;
        if (multiset.size() != multiset2.size() || multiset.entrySet().size() != multiset2.entrySet().size()) {
            return false;
        }
        for (Multiset.Entry entry : multiset2.entrySet()) {
            if (multiset.count(entry.getElement()) != entry.getCount()) {
                return false;
            }
        }
        return true;
    }

    public static <E> boolean a(Multiset<E> multiset, Collection<? extends E> collection) {
        if (collection.isEmpty()) {
            return false;
        }
        if (collection instanceof Multiset) {
            for (Multiset.Entry<E> entry : b(collection).entrySet()) {
                multiset.add(entry.getElement(), entry.getCount());
            }
        } else {
            Iterators.addAll(multiset, collection.iterator());
        }
        return true;
    }

    public static boolean b(Multiset<?> multiset, Collection<?> collection) {
        if (collection instanceof Multiset) {
            collection = ((Multiset) collection).elementSet();
        }
        return multiset.elementSet().removeAll(collection);
    }

    public static boolean c(Multiset<?> multiset, Collection<?> collection) {
        Preconditions.checkNotNull(collection);
        if (collection instanceof Multiset) {
            collection = ((Multiset) collection).elementSet();
        }
        return multiset.elementSet().retainAll(collection);
    }

    public static <E> int a(Multiset<E> multiset, E e2, int i) {
        hu.a(i, "count");
        int iCount = multiset.count(e2);
        int i2 = i - iCount;
        if (i2 > 0) {
            multiset.add(e2, i2);
        } else if (i2 < 0) {
            multiset.remove(e2, -i2);
        }
        return iCount;
    }

    public static <E> boolean a(Multiset<E> multiset, E e2, int i, int i2) {
        hu.a(i, "oldCount");
        hu.a(i2, "newCount");
        if (multiset.count(e2) != i) {
            return false;
        }
        multiset.setCount(e2, i2);
        return true;
    }

    public static abstract class b<E> extends Sets.f<E> {
        public abstract Multiset<E> a();

        protected b() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            a().clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return a().contains(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean containsAll(Collection<?> collection) {
            return a().containsAll(collection);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return a().isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<E> iterator() {
            return new kn<Multiset.Entry<E>, E>(a().entrySet().iterator()) { // from class: com.google.common.collect.Multisets.b.1
                /* JADX INFO: Access modifiers changed from: package-private */
                @Override // defpackage.kn
                public E a(Multiset.Entry<E> entry) {
                    return entry.getElement();
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return a().remove(obj, Integer.MAX_VALUE) > 0;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return a().entrySet().size();
        }
    }

    public static abstract class c<E> extends Sets.f<Multiset.Entry<E>> {
        public abstract Multiset<E> a();

        protected c() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@Nullable Object obj) {
            if (!(obj instanceof Multiset.Entry)) {
                return false;
            }
            Multiset.Entry entry = (Multiset.Entry) obj;
            return entry.getCount() > 0 && a().count(entry.getElement()) == entry.getCount();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            if (!(obj instanceof Multiset.Entry)) {
                return false;
            }
            Multiset.Entry entry = (Multiset.Entry) obj;
            Object element = entry.getElement();
            int count = entry.getCount();
            if (count != 0) {
                return a().setCount(element, count, 0);
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            a().clear();
        }
    }

    public static <E> Iterator<E> a(Multiset<E> multiset) {
        return new f(multiset, multiset.entrySet().iterator());
    }

    static final class f<E> implements Iterator<E> {
        private final Multiset<E> a;
        private final Iterator<Multiset.Entry<E>> b;
        private Multiset.Entry<E> c;
        private int d;
        private int e;
        private boolean f;

        f(Multiset<E> multiset, Iterator<Multiset.Entry<E>> it) {
            this.a = multiset;
            this.b = it;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.d > 0 || this.b.hasNext();
        }

        @Override // java.util.Iterator
        public E next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            if (this.d == 0) {
                this.c = this.b.next();
                int count = this.c.getCount();
                this.d = count;
                this.e = count;
            }
            this.d--;
            this.f = true;
            return this.c.getElement();
        }

        @Override // java.util.Iterator
        public void remove() {
            hu.a(this.f);
            if (this.e == 1) {
                this.b.remove();
            } else {
                this.a.remove(this.c.getElement());
            }
            this.e--;
            this.f = false;
        }
    }

    public static int b(Multiset<?> multiset) {
        long count = 0;
        Iterator<Multiset.Entry<?>> it = multiset.entrySet().iterator();
        while (true) {
            long j = count;
            if (it.hasNext()) {
                count = ((long) it.next().getCount()) + j;
            } else {
                return Ints.saturatedCast(j);
            }
        }
    }

    static <T> Multiset<T> b(Iterable<T> iterable) {
        return (Multiset) iterable;
    }

    @Beta
    public static <E> ImmutableMultiset<E> copyHighestCountFirst(Multiset<E> multiset) {
        return ImmutableMultiset.a(a.immutableSortedCopy(multiset.entrySet()));
    }
}
