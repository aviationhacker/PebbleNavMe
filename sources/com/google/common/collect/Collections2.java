package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Function;
import com.google.common.base.Joiner;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.base.Predicates;
import com.google.common.math.IntMath;
import com.google.common.math.LongMath;
import defpackage.hu;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import javax.annotation.CheckReturnValue;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible
@CheckReturnValue
public final class Collections2 {
    static final Joiner a = Joiner.on(", ").useForNull("null");

    private Collections2() {
    }

    @CheckReturnValue
    public static <E> Collection<E> filter(Collection<E> collection, Predicate<? super E> predicate) {
        return collection instanceof a ? ((a) collection).a(predicate) : new a((Collection) Preconditions.checkNotNull(collection), (Predicate) Preconditions.checkNotNull(predicate));
    }

    public static boolean a(Collection<?> collection, @Nullable Object obj) {
        Preconditions.checkNotNull(collection);
        try {
            return collection.contains(obj);
        } catch (ClassCastException e2) {
            return false;
        } catch (NullPointerException e3) {
            return false;
        }
    }

    public static boolean b(Collection<?> collection, @Nullable Object obj) {
        Preconditions.checkNotNull(collection);
        try {
            return collection.remove(obj);
        } catch (ClassCastException e2) {
            return false;
        } catch (NullPointerException e3) {
            return false;
        }
    }

    static class a<E> extends AbstractCollection<E> {
        final Collection<E> a;
        final Predicate<? super E> b;

        a(Collection<E> collection, Predicate<? super E> predicate) {
            this.a = collection;
            this.b = predicate;
        }

        a<E> a(Predicate<? super E> predicate) {
            return new a<>(this.a, Predicates.and(this.b, predicate));
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean add(E e) {
            Preconditions.checkArgument(this.b.apply(e));
            return this.a.add(e);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean addAll(Collection<? extends E> collection) {
            Iterator<? extends E> it = collection.iterator();
            while (it.hasNext()) {
                Preconditions.checkArgument(this.b.apply(it.next()));
            }
            return this.a.addAll(collection);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            Iterables.removeIf(this.a, this.b);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(@Nullable Object obj) {
            if (Collections2.a((Collection<?>) this.a, obj)) {
                return this.b.apply(obj);
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            return Collections2.a((Collection<?>) this, collection);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return !Iterables.any(this.a, this.b);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<E> iterator() {
            return Iterators.filter(this.a.iterator(), this.b);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(Object obj) {
            return contains(obj) && this.a.remove(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            return Iterables.removeIf(this.a, Predicates.and(this.b, Predicates.in(collection)));
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            return Iterables.removeIf(this.a, Predicates.and(this.b, Predicates.not(Predicates.in(collection))));
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return Iterators.size(iterator());
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

    public static <F, T> Collection<T> transform(Collection<F> collection, Function<? super F, T> function) {
        return new f(collection, function);
    }

    static class f<F, T> extends AbstractCollection<T> {
        final Collection<F> a;
        final Function<? super F, ? extends T> b;

        f(Collection<F> collection, Function<? super F, ? extends T> function) {
            this.a = (Collection) Preconditions.checkNotNull(collection);
            this.b = (Function) Preconditions.checkNotNull(function);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            this.a.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return this.a.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<T> iterator() {
            return Iterators.transform(this.a.iterator(), this.b);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return this.a.size();
        }
    }

    public static boolean a(Collection<?> collection, Collection<?> collection2) {
        return Iterables.all(collection2, Predicates.in(collection));
    }

    static String a(final Collection<?> collection) {
        StringBuilder sbAppend = a(collection.size()).append('[');
        a.appendTo(sbAppend, Iterables.transform(collection, new Function<Object, Object>() { // from class: com.google.common.collect.Collections2.1
            @Override // com.google.common.base.Function
            public Object apply(Object obj) {
                return obj == collection ? "(this Collection)" : obj;
            }
        }));
        return sbAppend.append(']').toString();
    }

    static StringBuilder a(int i) {
        hu.a(i, "size");
        return new StringBuilder((int) Math.min(((long) i) * 8, 1073741824L));
    }

    static <T> Collection<T> a(Iterable<T> iterable) {
        return (Collection) iterable;
    }

    @Beta
    public static <E extends Comparable<? super E>> Collection<List<E>> orderedPermutations(Iterable<E> iterable) {
        return orderedPermutations(iterable, Ordering.natural());
    }

    @Beta
    public static <E> Collection<List<E>> orderedPermutations(Iterable<E> iterable, Comparator<? super E> comparator) {
        return new b(iterable, comparator);
    }

    static final class b<E> extends AbstractCollection<List<E>> {
        final ImmutableList<E> a;
        final Comparator<? super E> b;
        final int c;

        b(Iterable<E> iterable, Comparator<? super E> comparator) {
            this.a = Ordering.from(comparator).immutableSortedCopy(iterable);
            this.b = comparator;
            this.c = a(this.a, comparator);
        }

        private static <E> int a(List<E> list, Comparator<? super E> comparator) {
            int i = 1;
            long jBinomial = 1;
            int i2 = 1;
            while (i2 < list.size()) {
                if (comparator.compare(list.get(i2 - 1), list.get(i2)) < 0) {
                    jBinomial *= LongMath.binomial(i2, i);
                    i = 0;
                    if (!Collections2.b(jBinomial)) {
                        return Integer.MAX_VALUE;
                    }
                }
                i2++;
                i++;
            }
            long jBinomial2 = LongMath.binomial(i2, i) * jBinomial;
            if (Collections2.b(jBinomial2)) {
                return (int) jBinomial2;
            }
            return Integer.MAX_VALUE;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return this.c;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<List<E>> iterator() {
            return new c(this.a, this.b);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(@Nullable Object obj) {
            if (!(obj instanceof List)) {
                return false;
            }
            return Collections2.b((List<?>) this.a, (List<?>) obj);
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            String strValueOf = String.valueOf(this.a);
            return new StringBuilder(String.valueOf(strValueOf).length() + 30).append("orderedPermutationCollection(").append(strValueOf).append(")").toString();
        }
    }

    static final class c<E> extends AbstractIterator<List<E>> {
        List<E> a;
        final Comparator<? super E> b;

        c(List<E> list, Comparator<? super E> comparator) {
            this.a = Lists.newArrayList(list);
            this.b = comparator;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.AbstractIterator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public List<E> computeNext() {
            if (this.a == null) {
                return endOfData();
            }
            ImmutableList immutableListCopyOf = ImmutableList.copyOf((Collection) this.a);
            b();
            return immutableListCopyOf;
        }

        void b() {
            int iC = c();
            if (iC == -1) {
                this.a = null;
                return;
            }
            Collections.swap(this.a, iC, a(iC));
            Collections.reverse(this.a.subList(iC + 1, this.a.size()));
        }

        int c() {
            for (int size = this.a.size() - 2; size >= 0; size--) {
                if (this.b.compare(this.a.get(size), this.a.get(size + 1)) < 0) {
                    return size;
                }
            }
            return -1;
        }

        int a(int i) {
            E e = this.a.get(i);
            for (int size = this.a.size() - 1; size > i; size--) {
                if (this.b.compare(e, this.a.get(size)) < 0) {
                    return size;
                }
            }
            throw new AssertionError("this statement should be unreachable");
        }
    }

    @Beta
    public static <E> Collection<List<E>> permutations(Collection<E> collection) {
        return new d(ImmutableList.copyOf((Collection) collection));
    }

    static final class d<E> extends AbstractCollection<List<E>> {
        final ImmutableList<E> a;

        d(ImmutableList<E> immutableList) {
            this.a = immutableList;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return IntMath.factorial(this.a.size());
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<List<E>> iterator() {
            return new e(this.a);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(@Nullable Object obj) {
            if (!(obj instanceof List)) {
                return false;
            }
            return Collections2.b((List<?>) this.a, (List<?>) obj);
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            String strValueOf = String.valueOf(this.a);
            return new StringBuilder(String.valueOf(strValueOf).length() + 14).append("permutations(").append(strValueOf).append(")").toString();
        }
    }

    static class e<E> extends AbstractIterator<List<E>> {
        final List<E> a;
        final int[] b;
        final int[] c;
        int d;

        e(List<E> list) {
            this.a = new ArrayList(list);
            int size = list.size();
            this.b = new int[size];
            this.c = new int[size];
            Arrays.fill(this.b, 0);
            Arrays.fill(this.c, 1);
            this.d = Integer.MAX_VALUE;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.AbstractIterator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public List<E> computeNext() {
            if (this.d <= 0) {
                return endOfData();
            }
            ImmutableList immutableListCopyOf = ImmutableList.copyOf((Collection) this.a);
            b();
            return immutableListCopyOf;
        }

        void b() {
            this.d = this.a.size() - 1;
            int i = 0;
            if (this.d == -1) {
                return;
            }
            while (true) {
                int i2 = this.b[this.d] + this.c[this.d];
                if (i2 < 0) {
                    c();
                } else if (i2 == this.d + 1) {
                    if (this.d != 0) {
                        i++;
                        c();
                    } else {
                        return;
                    }
                } else {
                    Collections.swap(this.a, (this.d - this.b[this.d]) + i, i + (this.d - i2));
                    this.b[this.d] = i2;
                    return;
                }
            }
        }

        void c() {
            this.c[this.d] = -this.c[this.d];
            this.d--;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(List<?> list, List<?> list2) {
        if (list.size() != list2.size()) {
            return false;
        }
        return HashMultiset.create(list).equals(HashMultiset.create(list2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(long j) {
        return j >= 0 && j <= 2147483647L;
    }
}
