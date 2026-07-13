package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Function;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.math.IntMath;
import com.google.common.primitives.Ints;
import defpackage.ht;
import defpackage.hu;
import defpackage.ko;
import java.io.Serializable;
import java.math.RoundingMode;
import java.util.AbstractList;
import java.util.AbstractSequentialList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import java.util.concurrent.CopyOnWriteArrayList;
import javax.annotation.CheckReturnValue;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(emulated = true)
public final class Lists {
    private Lists() {
    }

    @GwtCompatible(serializable = true)
    public static <E> ArrayList<E> newArrayList() {
        return new ArrayList<>();
    }

    @GwtCompatible(serializable = true)
    public static <E> ArrayList<E> newArrayList(E... eArr) {
        Preconditions.checkNotNull(eArr);
        ArrayList<E> arrayList = new ArrayList<>(a(eArr.length));
        Collections.addAll(arrayList, eArr);
        return arrayList;
    }

    @VisibleForTesting
    static int a(int i2) {
        hu.a(i2, "arraySize");
        return Ints.saturatedCast(5 + ((long) i2) + ((long) (i2 / 10)));
    }

    @GwtCompatible(serializable = true)
    public static <E> ArrayList<E> newArrayList(Iterable<? extends E> iterable) {
        Preconditions.checkNotNull(iterable);
        return iterable instanceof Collection ? new ArrayList<>(Collections2.a(iterable)) : newArrayList(iterable.iterator());
    }

    @GwtCompatible(serializable = true)
    public static <E> ArrayList<E> newArrayList(Iterator<? extends E> it) {
        ArrayList<E> arrayListNewArrayList = newArrayList();
        Iterators.addAll(arrayListNewArrayList, it);
        return arrayListNewArrayList;
    }

    @GwtCompatible(serializable = true)
    public static <E> ArrayList<E> newArrayListWithCapacity(int i2) {
        hu.a(i2, "initialArraySize");
        return new ArrayList<>(i2);
    }

    @GwtCompatible(serializable = true)
    public static <E> ArrayList<E> newArrayListWithExpectedSize(int i2) {
        return new ArrayList<>(a(i2));
    }

    @GwtCompatible(serializable = true)
    public static <E> LinkedList<E> newLinkedList() {
        return new LinkedList<>();
    }

    @GwtCompatible(serializable = true)
    public static <E> LinkedList<E> newLinkedList(Iterable<? extends E> iterable) {
        LinkedList<E> linkedListNewLinkedList = newLinkedList();
        Iterables.addAll(linkedListNewLinkedList, iterable);
        return linkedListNewLinkedList;
    }

    @GwtIncompatible("CopyOnWriteArrayList")
    public static <E> CopyOnWriteArrayList<E> newCopyOnWriteArrayList() {
        return new CopyOnWriteArrayList<>();
    }

    @GwtIncompatible("CopyOnWriteArrayList")
    public static <E> CopyOnWriteArrayList<E> newCopyOnWriteArrayList(Iterable<? extends E> iterable) {
        Collection collectionNewArrayList;
        if (iterable instanceof Collection) {
            collectionNewArrayList = Collections2.a(iterable);
        } else {
            collectionNewArrayList = newArrayList(iterable);
        }
        return new CopyOnWriteArrayList<>(collectionNewArrayList);
    }

    public static <E> List<E> asList(@Nullable E e2, E[] eArr) {
        return new c(e2, eArr);
    }

    static class c<E> extends AbstractList<E> implements Serializable, RandomAccess {
        private static final long serialVersionUID = 0;
        final E a;
        final E[] b;

        c(@Nullable E e, E[] eArr) {
            this.a = e;
            this.b = (E[]) ((Object[]) Preconditions.checkNotNull(eArr));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.b.length + 1;
        }

        @Override // java.util.AbstractList, java.util.List
        public E get(int i) {
            Preconditions.checkElementIndex(i, size());
            return i == 0 ? this.a : this.b[i - 1];
        }
    }

    public static <E> List<E> asList(@Nullable E e2, @Nullable E e3, E[] eArr) {
        return new l(e2, e3, eArr);
    }

    static class l<E> extends AbstractList<E> implements Serializable, RandomAccess {
        private static final long serialVersionUID = 0;
        final E a;
        final E b;
        final E[] c;

        l(@Nullable E e, @Nullable E e2, E[] eArr) {
            this.a = e;
            this.b = e2;
            this.c = (E[]) ((Object[]) Preconditions.checkNotNull(eArr));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.c.length + 2;
        }

        @Override // java.util.AbstractList, java.util.List
        public E get(int i) {
            switch (i) {
                case 0:
                    return this.a;
                case 1:
                    return this.b;
                default:
                    Preconditions.checkElementIndex(i, size());
                    return this.c[i - 2];
            }
        }
    }

    public static <B> List<List<B>> cartesianProduct(List<? extends List<? extends B>> list) {
        return ht.a(list);
    }

    public static <B> List<List<B>> cartesianProduct(List<? extends B>... listArr) {
        return cartesianProduct(Arrays.asList(listArr));
    }

    @CheckReturnValue
    public static <F, T> List<T> transform(List<F> list, Function<? super F, ? extends T> function) {
        return list instanceof RandomAccess ? new j(list, function) : new k(list, function);
    }

    static class k<F, T> extends AbstractSequentialList<T> implements Serializable {
        private static final long serialVersionUID = 0;
        final List<F> a;
        final Function<? super F, ? extends T> b;

        k(List<F> list, Function<? super F, ? extends T> function) {
            this.a = (List) Preconditions.checkNotNull(list);
            this.b = (Function) Preconditions.checkNotNull(function);
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public void clear() {
            this.a.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.a.size();
        }

        @Override // java.util.AbstractSequentialList, java.util.AbstractList, java.util.List
        public ListIterator<T> listIterator(int i) {
            return new ko<F, T>(this.a.listIterator(i)) { // from class: com.google.common.collect.Lists.k.1
                /* JADX INFO: Access modifiers changed from: package-private */
                @Override // defpackage.kn
                public T a(F f) {
                    return k.this.b.apply(f);
                }
            };
        }
    }

    static class j<F, T> extends AbstractList<T> implements Serializable, RandomAccess {
        private static final long serialVersionUID = 0;
        final List<F> a;
        final Function<? super F, ? extends T> b;

        j(List<F> list, Function<? super F, ? extends T> function) {
            this.a = (List) Preconditions.checkNotNull(list);
            this.b = (Function) Preconditions.checkNotNull(function);
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public void clear() {
            this.a.clear();
        }

        @Override // java.util.AbstractList, java.util.List
        public T get(int i) {
            return this.b.apply(this.a.get(i));
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
        public Iterator<T> iterator() {
            return listIterator();
        }

        @Override // java.util.AbstractList, java.util.List
        public ListIterator<T> listIterator(int i) {
            return new ko<F, T>(this.a.listIterator(i)) { // from class: com.google.common.collect.Lists.j.1
                /* JADX INFO: Access modifiers changed from: package-private */
                @Override // defpackage.kn
                public T a(F f) {
                    return j.this.b.apply(f);
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean isEmpty() {
            return this.a.isEmpty();
        }

        @Override // java.util.AbstractList, java.util.List
        public T remove(int i) {
            return this.b.apply(this.a.remove(i));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.a.size();
        }
    }

    public static <T> List<List<T>> partition(List<T> list, int i2) {
        Preconditions.checkNotNull(list);
        Preconditions.checkArgument(i2 > 0);
        return list instanceof RandomAccess ? new f(list, i2) : new d(list, i2);
    }

    static class d<T> extends AbstractList<List<T>> {
        final List<T> a;
        final int b;

        d(List<T> list, int i) {
            this.a = list;
            this.b = i;
        }

        @Override // java.util.AbstractList, java.util.List
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public List<T> get(int i) {
            Preconditions.checkElementIndex(i, size());
            int i2 = this.b * i;
            return this.a.subList(i2, Math.min(this.b + i2, this.a.size()));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return IntMath.divide(this.a.size(), this.b, RoundingMode.CEILING);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean isEmpty() {
            return this.a.isEmpty();
        }
    }

    static class f<T> extends d<T> implements RandomAccess {
        f(List<T> list, int i) {
            super(list, i);
        }
    }

    @Beta
    public static ImmutableList<Character> charactersOf(String str) {
        return new i((String) Preconditions.checkNotNull(str));
    }

    static final class i extends ImmutableList<Character> {
        private final String a;

        i(String str) {
            this.a = str;
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public int indexOf(@Nullable Object obj) {
            if (obj instanceof Character) {
                return this.a.indexOf(((Character) obj).charValue());
            }
            return -1;
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public int lastIndexOf(@Nullable Object obj) {
            if (obj instanceof Character) {
                return this.a.lastIndexOf(((Character) obj).charValue());
            }
            return -1;
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public ImmutableList<Character> subList(int i, int i2) {
            Preconditions.checkPositionIndexes(i, i2, size());
            return Lists.charactersOf(this.a.substring(i, i2));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableCollection
        public boolean a() {
            return false;
        }

        @Override // java.util.List
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Character get(int i) {
            Preconditions.checkElementIndex(i, size());
            return Character.valueOf(this.a.charAt(i));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.a.length();
        }
    }

    @Beta
    public static List<Character> charactersOf(CharSequence charSequence) {
        return new b((CharSequence) Preconditions.checkNotNull(charSequence));
    }

    static final class b extends AbstractList<Character> {
        private final CharSequence a;

        b(CharSequence charSequence) {
            this.a = charSequence;
        }

        @Override // java.util.AbstractList, java.util.List
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Character get(int i) {
            Preconditions.checkElementIndex(i, size());
            return Character.valueOf(this.a.charAt(i));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.a.length();
        }
    }

    @CheckReturnValue
    public static <T> List<T> reverse(List<T> list) {
        if (list instanceof ImmutableList) {
            return ((ImmutableList) list).reverse();
        }
        if (list instanceof h) {
            return ((h) list).a();
        }
        if (list instanceof RandomAccess) {
            return new g(list);
        }
        return new h(list);
    }

    static class h<T> extends AbstractList<T> {
        private final List<T> a;

        h(List<T> list) {
            this.a = (List) Preconditions.checkNotNull(list);
        }

        List<T> a() {
            return this.a;
        }

        private int a(int i) {
            int size = size();
            Preconditions.checkElementIndex(i, size);
            return (size - 1) - i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int b(int i) {
            int size = size();
            Preconditions.checkPositionIndex(i, size);
            return size - i;
        }

        @Override // java.util.AbstractList, java.util.List
        public void add(int i, @Nullable T t) {
            this.a.add(b(i), t);
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public void clear() {
            this.a.clear();
        }

        @Override // java.util.AbstractList, java.util.List
        public T remove(int i) {
            return this.a.remove(a(i));
        }

        @Override // java.util.AbstractList
        protected void removeRange(int i, int i2) {
            subList(i, i2).clear();
        }

        @Override // java.util.AbstractList, java.util.List
        public T set(int i, @Nullable T t) {
            return this.a.set(a(i), t);
        }

        @Override // java.util.AbstractList, java.util.List
        public T get(int i) {
            return this.a.get(a(i));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.a.size();
        }

        @Override // java.util.AbstractList, java.util.List
        public List<T> subList(int i, int i2) {
            Preconditions.checkPositionIndexes(i, i2, size());
            return Lists.reverse(this.a.subList(b(i2), b(i)));
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
        public Iterator<T> iterator() {
            return listIterator();
        }

        @Override // java.util.AbstractList, java.util.List
        public ListIterator<T> listIterator(int i) {
            final ListIterator<T> listIterator = this.a.listIterator(b(i));
            return new ListIterator<T>() { // from class: com.google.common.collect.Lists.h.1
                boolean a;

                @Override // java.util.ListIterator
                public void add(T t) {
                    listIterator.add(t);
                    listIterator.previous();
                    this.a = false;
                }

                @Override // java.util.ListIterator, java.util.Iterator
                public boolean hasNext() {
                    return listIterator.hasPrevious();
                }

                @Override // java.util.ListIterator
                public boolean hasPrevious() {
                    return listIterator.hasNext();
                }

                @Override // java.util.ListIterator, java.util.Iterator
                public T next() {
                    if (!hasNext()) {
                        throw new NoSuchElementException();
                    }
                    this.a = true;
                    return (T) listIterator.previous();
                }

                @Override // java.util.ListIterator
                public int nextIndex() {
                    return h.this.b(listIterator.nextIndex());
                }

                @Override // java.util.ListIterator
                public T previous() {
                    if (!hasPrevious()) {
                        throw new NoSuchElementException();
                    }
                    this.a = true;
                    return (T) listIterator.next();
                }

                @Override // java.util.ListIterator
                public int previousIndex() {
                    return nextIndex() - 1;
                }

                @Override // java.util.ListIterator, java.util.Iterator
                public void remove() {
                    hu.a(this.a);
                    listIterator.remove();
                    this.a = false;
                }

                @Override // java.util.ListIterator
                public void set(T t) {
                    Preconditions.checkState(this.a);
                    listIterator.set(t);
                }
            };
        }
    }

    static class g<T> extends h<T> implements RandomAccess {
        g(List<T> list) {
            super(list);
        }
    }

    static int a(List<?> list) {
        int iHashCode = 1;
        Iterator<?> it = list.iterator();
        while (it.hasNext()) {
            Object next = it.next();
            iHashCode = (((next == null ? 0 : next.hashCode()) + (iHashCode * 31)) ^ (-1)) ^ (-1);
        }
        return iHashCode;
    }

    static boolean a(List<?> list, @Nullable Object obj) {
        if (obj == Preconditions.checkNotNull(list)) {
            return true;
        }
        if (!(obj instanceof List)) {
            return false;
        }
        List list2 = (List) obj;
        int size = list.size();
        if (size != list2.size()) {
            return false;
        }
        if ((list instanceof RandomAccess) && (list2 instanceof RandomAccess)) {
            for (int i2 = 0; i2 < size; i2++) {
                if (!Objects.equal(list.get(i2), list2.get(i2))) {
                    return false;
                }
            }
            return true;
        }
        return Iterators.elementsEqual(list.iterator(), list2.iterator());
    }

    static <E> boolean a(List<E> list, int i2, Iterable<? extends E> iterable) {
        boolean z = false;
        ListIterator<E> listIterator = list.listIterator(i2);
        Iterator<? extends E> it = iterable.iterator();
        while (it.hasNext()) {
            listIterator.add(it.next());
            z = true;
        }
        return z;
    }

    static int b(List<?> list, @Nullable Object obj) {
        if (list instanceof RandomAccess) {
            return d(list, obj);
        }
        ListIterator<?> listIterator = list.listIterator();
        while (listIterator.hasNext()) {
            if (Objects.equal(obj, listIterator.next())) {
                return listIterator.previousIndex();
            }
        }
        return -1;
    }

    private static int d(List<?> list, @Nullable Object obj) {
        int i2 = 0;
        int size = list.size();
        if (obj == null) {
            while (i2 < size) {
                if (list.get(i2) != null) {
                    i2++;
                } else {
                    return i2;
                }
            }
        } else {
            while (i2 < size) {
                if (!obj.equals(list.get(i2))) {
                    i2++;
                } else {
                    return i2;
                }
            }
        }
        return -1;
    }

    static int c(List<?> list, @Nullable Object obj) {
        if (list instanceof RandomAccess) {
            return e(list, obj);
        }
        ListIterator<?> listIterator = list.listIterator(list.size());
        while (listIterator.hasPrevious()) {
            if (Objects.equal(obj, listIterator.previous())) {
                return listIterator.nextIndex();
            }
        }
        return -1;
    }

    private static int e(List<?> list, @Nullable Object obj) {
        if (obj == null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                if (list.get(size) == null) {
                    return size;
                }
            }
        } else {
            for (int size2 = list.size() - 1; size2 >= 0; size2--) {
                if (obj.equals(list.get(size2))) {
                    return size2;
                }
            }
        }
        return -1;
    }

    static <E> ListIterator<E> a(List<E> list, int i2) {
        return new a(list).listIterator(i2);
    }

    static <E> List<E> a(List<E> list, int i2, int i3) {
        List list2;
        if (list instanceof RandomAccess) {
            list2 = new e<E>(list) { // from class: com.google.common.collect.Lists.1
                @Override // java.util.AbstractList, java.util.List
                public ListIterator<E> listIterator(int i4) {
                    return this.a.listIterator(i4);
                }
            };
        } else {
            list2 = new a<E>(list) { // from class: com.google.common.collect.Lists.2
                @Override // java.util.AbstractList, java.util.List
                public ListIterator<E> listIterator(int i4) {
                    return this.a.listIterator(i4);
                }
            };
        }
        return list2.subList(i2, i3);
    }

    static class a<E> extends AbstractList<E> {
        final List<E> a;

        a(List<E> list) {
            this.a = (List) Preconditions.checkNotNull(list);
        }

        @Override // java.util.AbstractList, java.util.List
        public void add(int i, E e) {
            this.a.add(i, e);
        }

        @Override // java.util.AbstractList, java.util.List
        public boolean addAll(int i, Collection<? extends E> collection) {
            return this.a.addAll(i, collection);
        }

        @Override // java.util.AbstractList, java.util.List
        public E get(int i) {
            return this.a.get(i);
        }

        @Override // java.util.AbstractList, java.util.List
        public E remove(int i) {
            return this.a.remove(i);
        }

        @Override // java.util.AbstractList, java.util.List
        public E set(int i, E e) {
            return this.a.set(i, e);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            return this.a.contains(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.a.size();
        }
    }

    static class e<E> extends a<E> implements RandomAccess {
        e(List<E> list) {
            super(list);
        }
    }

    static <T> List<T> a(Iterable<T> iterable) {
        return (List) iterable;
    }
}
