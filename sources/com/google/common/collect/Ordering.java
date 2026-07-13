package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import defpackage.hr;
import defpackage.hs;
import defpackage.hu;
import defpackage.hv;
import defpackage.hw;
import defpackage.ik;
import defpackage.ji;
import defpackage.jk;
import defpackage.jl;
import defpackage.jm;
import defpackage.jn;
import defpackage.jz;
import defpackage.kq;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible
public abstract class Ordering<T> implements Comparator<T> {

    static class b {
        static final Ordering<Object> a = new a();
    }

    @Override // java.util.Comparator
    public abstract int compare(@Nullable T t, @Nullable T t2);

    @GwtCompatible(serializable = true)
    public static <C extends Comparable> Ordering<C> natural() {
        return jk.a;
    }

    @GwtCompatible(serializable = true)
    public static <T> Ordering<T> from(Comparator<T> comparator) {
        return comparator instanceof Ordering ? (Ordering) comparator : new hv(comparator);
    }

    @GwtCompatible(serializable = true)
    @Deprecated
    public static <T> Ordering<T> from(Ordering<T> ordering) {
        return (Ordering) Preconditions.checkNotNull(ordering);
    }

    @GwtCompatible(serializable = true)
    public static <T> Ordering<T> explicit(List<T> list) {
        return new ik(list);
    }

    @GwtCompatible(serializable = true)
    public static <T> Ordering<T> explicit(T t, T... tArr) {
        return explicit(Lists.asList(t, tArr));
    }

    @GwtCompatible(serializable = true)
    public static Ordering<Object> allEqual() {
        return hr.a;
    }

    @GwtCompatible(serializable = true)
    public static Ordering<Object> usingToString() {
        return kq.a;
    }

    public static Ordering<Object> arbitrary() {
        return b.a;
    }

    @VisibleForTesting
    static class a extends Ordering<Object> {
        private Map<Object, Integer> a = jn.a(new MapMaker()).a(new Function<Object, Integer>() { // from class: com.google.common.collect.Ordering.a.1
            final AtomicInteger a = new AtomicInteger(0);

            @Override // com.google.common.base.Function
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Integer apply(Object obj) {
                return Integer.valueOf(this.a.getAndIncrement());
            }
        });

        a() {
        }

        @Override // com.google.common.collect.Ordering, java.util.Comparator
        public int compare(Object obj, Object obj2) {
            if (obj == obj2) {
                return 0;
            }
            if (obj == null) {
                return -1;
            }
            if (obj2 == null) {
                return 1;
            }
            int iA = a(obj);
            int iA2 = a(obj2);
            if (iA != iA2) {
                return iA >= iA2 ? 1 : -1;
            }
            int iCompareTo = this.a.get(obj).compareTo(this.a.get(obj2));
            if (iCompareTo == 0) {
                throw new AssertionError();
            }
            return iCompareTo;
        }

        public String toString() {
            return "Ordering.arbitrary()";
        }

        int a(Object obj) {
            return System.identityHashCode(obj);
        }
    }

    protected Ordering() {
    }

    @GwtCompatible(serializable = true)
    public <S extends T> Ordering<S> reverse() {
        return new jz(this);
    }

    @GwtCompatible(serializable = true)
    public <S extends T> Ordering<S> nullsFirst() {
        return new jl(this);
    }

    @GwtCompatible(serializable = true)
    public <S extends T> Ordering<S> nullsLast() {
        return new jm(this);
    }

    @GwtCompatible(serializable = true)
    public <F> Ordering<F> onResultOf(Function<F, ? extends T> function) {
        return new hs(function, this);
    }

    <T2 extends T> Ordering<Map.Entry<T2, ?>> a() {
        return (Ordering<Map.Entry<T2, ?>>) onResultOf(Maps.a());
    }

    @GwtCompatible(serializable = true)
    public <U extends T> Ordering<U> compound(Comparator<? super U> comparator) {
        return new hw(this, (Comparator) Preconditions.checkNotNull(comparator));
    }

    @GwtCompatible(serializable = true)
    public static <T> Ordering<T> compound(Iterable<? extends Comparator<? super T>> iterable) {
        return new hw(iterable);
    }

    @GwtCompatible(serializable = true)
    public <S extends T> Ordering<Iterable<S>> lexicographical() {
        return new ji(this);
    }

    public <E extends T> E min(Iterator<E> it) {
        E next = it.next();
        while (it.hasNext()) {
            next = (E) min(next, it.next());
        }
        return next;
    }

    public <E extends T> E min(Iterable<E> iterable) {
        return (E) min(iterable.iterator());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <E extends T> E min(@Nullable E e, @Nullable E e2) {
        return compare(e, e2) <= 0 ? e : e2;
    }

    public <E extends T> E min(@Nullable E e, @Nullable E e2, @Nullable E e3, E... eArr) {
        E e4 = (E) min(min(e, e2), e3);
        for (E e5 : eArr) {
            e4 = (E) min(e4, e5);
        }
        return e4;
    }

    public <E extends T> E max(Iterator<E> it) {
        E next = it.next();
        while (it.hasNext()) {
            next = (E) max(next, it.next());
        }
        return next;
    }

    public <E extends T> E max(Iterable<E> iterable) {
        return (E) max(iterable.iterator());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <E extends T> E max(@Nullable E e, @Nullable E e2) {
        return compare(e, e2) >= 0 ? e : e2;
    }

    public <E extends T> E max(@Nullable E e, @Nullable E e2, @Nullable E e3, E... eArr) {
        E e4 = (E) max(max(e, e2), e3);
        for (E e5 : eArr) {
            e4 = (E) max(e4, e5);
        }
        return e4;
    }

    public <E extends T> List<E> leastOf(Iterable<E> iterable, int i) {
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            if (collection.size() <= 2 * ((long) i)) {
                Object[] array = collection.toArray();
                Arrays.sort(array, this);
                if (array.length > i) {
                    array = ObjectArrays.a(array, i);
                }
                return Collections.unmodifiableList(Arrays.asList(array));
            }
        }
        return leastOf(iterable.iterator(), i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <E extends T> List<E> leastOf(Iterator<E> it, int i) {
        int i2;
        int i3;
        Preconditions.checkNotNull(it);
        hu.a(i, "k");
        if (i == 0 || !it.hasNext()) {
            return ImmutableList.of();
        }
        if (i >= 1073741823) {
            ArrayList arrayListNewArrayList = Lists.newArrayList(it);
            Collections.sort(arrayListNewArrayList, this);
            if (arrayListNewArrayList.size() > i) {
                arrayListNewArrayList.subList(i, arrayListNewArrayList.size()).clear();
            }
            arrayListNewArrayList.trimToSize();
            return Collections.unmodifiableList(arrayListNewArrayList);
        }
        int i4 = i * 2;
        Object[] objArr = new Object[i4];
        Object next = it.next();
        objArr[0] = next;
        int i5 = 1;
        while (i5 < i && it.hasNext()) {
            E next2 = it.next();
            objArr[i5] = next2;
            next = max(next, next2);
            i5++;
        }
        while (it.hasNext()) {
            E next3 = it.next();
            if (compare(next3, next) < 0) {
                int i6 = i5 + 1;
                objArr[i5] = next3;
                if (i6 == i4) {
                    int i7 = i4 - 1;
                    int i8 = 0;
                    int i9 = 0;
                    while (i9 < i7) {
                        int iA = a(objArr, i9, i7, ((i9 + i7) + 1) >>> 1);
                        if (iA > i) {
                            i2 = iA - 1;
                            i3 = i9;
                        } else {
                            if (iA >= i) {
                                break;
                            }
                            int iMax = Math.max(iA, i9 + 1);
                            i2 = i7;
                            i3 = iMax;
                            i8 = iA;
                        }
                        i9 = i3;
                        i7 = i2;
                    }
                    next = objArr[i8];
                    for (int i10 = i8 + 1; i10 < i; i10++) {
                        next = max(next, objArr[i10]);
                    }
                    i5 = i;
                } else {
                    i5 = i6;
                }
            }
        }
        Arrays.sort(objArr, 0, i5, this);
        return Collections.unmodifiableList(Arrays.asList(ObjectArrays.a(objArr, Math.min(i5, i))));
    }

    private <E extends T> int a(E[] eArr, int i, int i2, int i3) {
        E e = eArr[i3];
        eArr[i3] = eArr[i2];
        eArr[i2] = e;
        int i4 = i;
        while (i < i2) {
            if (compare(eArr[i], e) < 0) {
                ObjectArrays.a(eArr, i4, i);
                i4++;
            }
            i++;
        }
        ObjectArrays.a(eArr, i2, i4);
        return i4;
    }

    public <E extends T> List<E> greatestOf(Iterable<E> iterable, int i) {
        return reverse().leastOf(iterable, i);
    }

    public <E extends T> List<E> greatestOf(Iterator<E> it, int i) {
        return reverse().leastOf(it, i);
    }

    public <E extends T> List<E> sortedCopy(Iterable<E> iterable) {
        Object[] objArrA = Iterables.a((Iterable<?>) iterable);
        Arrays.sort(objArrA, this);
        return Lists.newArrayList(Arrays.asList(objArrA));
    }

    public <E extends T> ImmutableList<E> immutableSortedCopy(Iterable<E> iterable) {
        Object[] objArrA = Iterables.a((Iterable<?>) iterable);
        for (Object obj : objArrA) {
            Preconditions.checkNotNull(obj);
        }
        Arrays.sort(objArrA, this);
        return ImmutableList.a(objArrA);
    }

    public boolean isOrdered(Iterable<? extends T> iterable) {
        Iterator<? extends T> it = iterable.iterator();
        if (it.hasNext()) {
            T next = it.next();
            while (it.hasNext()) {
                T next2 = it.next();
                if (compare(next, next2) > 0) {
                    return false;
                }
                next = next2;
            }
        }
        return true;
    }

    public boolean isStrictlyOrdered(Iterable<? extends T> iterable) {
        Iterator<? extends T> it = iterable.iterator();
        if (it.hasNext()) {
            T next = it.next();
            while (it.hasNext()) {
                T next2 = it.next();
                if (compare(next, next2) >= 0) {
                    return false;
                }
                next = next2;
            }
        }
        return true;
    }

    public int binarySearch(List<? extends T> list, @Nullable T t) {
        return Collections.binarySearch(list, t, this);
    }

    @VisibleForTesting
    public static class c extends ClassCastException {
        private static final long serialVersionUID = 0;
        final Object a;

        /* JADX WARN: Illegal instructions before constructor call */
        public c(Object obj) {
            String strValueOf = String.valueOf(obj);
            super(new StringBuilder(String.valueOf(strValueOf).length() + 22).append("Cannot compare value: ").append(strValueOf).toString());
            this.a = obj;
        }
    }
}
