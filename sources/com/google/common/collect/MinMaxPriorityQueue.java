package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import com.google.common.math.IntMath;
import com.google.j2objc.annotations.Weak;
import defpackage.hu;
import java.util.AbstractQueue;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Queue;

/* JADX INFO: loaded from: classes.dex */
@Beta
public final class MinMaxPriorityQueue<E> extends AbstractQueue<E> {

    @VisibleForTesting
    final int a;
    private final MinMaxPriorityQueue<E>.a b;
    private final MinMaxPriorityQueue<E>.a c;
    private Object[] d;
    private int e;
    private int f;

    public static <E extends Comparable<E>> MinMaxPriorityQueue<E> create() {
        return new Builder(Ordering.natural()).create();
    }

    public static <E extends Comparable<E>> MinMaxPriorityQueue<E> create(Iterable<? extends E> iterable) {
        return new Builder(Ordering.natural()).create(iterable);
    }

    public static <B> Builder<B> orderedBy(Comparator<B> comparator) {
        return new Builder<>(comparator);
    }

    public static Builder<Comparable> expectedSize(int i) {
        return new Builder(Ordering.natural()).expectedSize(i);
    }

    public static Builder<Comparable> maximumSize(int i) {
        return new Builder(Ordering.natural()).maximumSize(i);
    }

    @Beta
    public static final class Builder<B> {
        private final Comparator<B> a;
        private int b;
        private int c;

        private Builder(Comparator<B> comparator) {
            this.b = -1;
            this.c = Integer.MAX_VALUE;
            this.a = (Comparator) Preconditions.checkNotNull(comparator);
        }

        public Builder<B> expectedSize(int i) {
            Preconditions.checkArgument(i >= 0);
            this.b = i;
            return this;
        }

        public Builder<B> maximumSize(int i) {
            Preconditions.checkArgument(i > 0);
            this.c = i;
            return this;
        }

        public <T extends B> MinMaxPriorityQueue<T> create() {
            return create(Collections.emptySet());
        }

        public <T extends B> MinMaxPriorityQueue<T> create(Iterable<? extends T> iterable) {
            MinMaxPriorityQueue<T> minMaxPriorityQueue = new MinMaxPriorityQueue<>(this, MinMaxPriorityQueue.a(this.b, this.c, iterable));
            Iterator<? extends T> it = iterable.iterator();
            while (it.hasNext()) {
                minMaxPriorityQueue.offer(it.next());
            }
            return minMaxPriorityQueue;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public <T extends B> Ordering<T> a() {
            return Ordering.from(this.a);
        }
    }

    private MinMaxPriorityQueue(Builder<? super E> builder, int i) {
        Ordering orderingA = builder.a();
        this.b = new a(orderingA);
        this.c = new a(orderingA.reverse());
        this.b.b = this.c;
        this.c.b = this.b;
        this.a = ((Builder) builder).c;
        this.d = new Object[i];
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public int size() {
        return this.e;
    }

    @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection, java.util.Queue
    public boolean add(E e) {
        offer(e);
        return true;
    }

    @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection
    public boolean addAll(Collection<? extends E> collection) {
        boolean z = false;
        Iterator<? extends E> it = collection.iterator();
        while (it.hasNext()) {
            offer(it.next());
            z = true;
        }
        return z;
    }

    @Override // java.util.Queue
    public boolean offer(E e) {
        Preconditions.checkNotNull(e);
        this.f++;
        int i = this.e;
        this.e = i + 1;
        b();
        e(i).a(i, e);
        return this.e <= this.a || pollLast() != e;
    }

    @Override // java.util.Queue
    public E poll() {
        if (isEmpty()) {
            return null;
        }
        return d(0);
    }

    E a(int i) {
        return (E) this.d[i];
    }

    @Override // java.util.Queue
    public E peek() {
        if (isEmpty()) {
            return null;
        }
        return a(0);
    }

    private int a() {
        switch (this.e) {
            case 1:
                break;
            case 2:
                break;
            default:
                if (this.c.a(1, 2) > 0) {
                    break;
                }
                break;
        }
        return 1;
    }

    public E pollFirst() {
        return poll();
    }

    public E removeFirst() {
        return remove();
    }

    public E peekFirst() {
        return peek();
    }

    public E pollLast() {
        if (isEmpty()) {
            return null;
        }
        return d(a());
    }

    public E removeLast() {
        if (isEmpty()) {
            throw new NoSuchElementException();
        }
        return d(a());
    }

    public E peekLast() {
        if (isEmpty()) {
            return null;
        }
        return a(a());
    }

    @VisibleForTesting
    b<E> b(int i) {
        Preconditions.checkPositionIndex(i, this.e);
        this.f++;
        this.e--;
        if (this.e == i) {
            this.d[this.e] = null;
            return null;
        }
        E eA = a(this.e);
        int iA = e(this.e).a(eA);
        E eA2 = a(this.e);
        this.d[this.e] = null;
        b<E> bVarA = a(i, eA2);
        if (iA >= i) {
            return bVarA;
        }
        if (bVarA == null) {
            return new b<>(eA, eA2);
        }
        return new b<>(eA, bVarA.b);
    }

    private b<E> a(int i, E e) {
        MinMaxPriorityQueue<E>.a aVarE = e(i);
        int iC = aVarE.c(i);
        int iB = aVarE.b(iC, e);
        if (iB == iC) {
            return aVarE.a(i, iC, e);
        }
        if (iB < i) {
            return new b<>(e, a(i));
        }
        return null;
    }

    static class b<E> {
        final E a;
        final E b;

        b(E e, E e2) {
            this.a = e;
            this.b = e2;
        }
    }

    private E d(int i) {
        E eA = a(i);
        b(i);
        return eA;
    }

    private MinMaxPriorityQueue<E>.a e(int i) {
        return c(i) ? this.b : this.c;
    }

    @VisibleForTesting
    static boolean c(int i) {
        int i2 = i + 1;
        Preconditions.checkState(i2 > 0, "negative index");
        return (1431655765 & i2) > (i2 & (-1431655766));
    }

    class a {
        final Ordering<E> a;

        @Weak
        MinMaxPriorityQueue<E>.a b;

        a(Ordering<E> ordering) {
            this.a = ordering;
        }

        int a(int i, int i2) {
            return this.a.compare((E) MinMaxPriorityQueue.this.a(i), (E) MinMaxPriorityQueue.this.a(i2));
        }

        b<E> a(int i, int i2, E e) {
            Object objA;
            int iD = d(i2, e);
            if (iD == i2) {
                return null;
            }
            if (iD < i) {
                objA = MinMaxPriorityQueue.this.a(i);
            } else {
                objA = MinMaxPriorityQueue.this.a(f(i));
            }
            if (this.b.b(iD, e) < i) {
                return new b<>(e, objA);
            }
            return null;
        }

        void a(int i, E e) {
            int iC = c(i, e);
            if (iC != i) {
                this = this.b;
                i = iC;
            }
            this.b(i, e);
        }

        int b(int i, E e) {
            while (i > 2) {
                int iG = g(i);
                Object objA = MinMaxPriorityQueue.this.a(iG);
                if (this.a.compare((E) objA, e) <= 0) {
                    break;
                }
                MinMaxPriorityQueue.this.d[i] = objA;
                i = iG;
            }
            MinMaxPriorityQueue.this.d[i] = e;
            return i;
        }

        int b(int i, int i2) {
            if (i >= MinMaxPriorityQueue.this.e) {
                return -1;
            }
            Preconditions.checkState(i > 0);
            int iMin = Math.min(i, MinMaxPriorityQueue.this.e - i2) + i2;
            int i3 = i;
            for (int i4 = i + 1; i4 < iMin; i4++) {
                if (a(i4, i3) < 0) {
                    i3 = i4;
                }
            }
            return i3;
        }

        int a(int i) {
            return b(d(i), 2);
        }

        int b(int i) {
            int iD = d(i);
            if (iD < 0) {
                return -1;
            }
            return b(d(iD), 4);
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x0060  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        int c(int r6, E r7) {
            /*
                r5 = this;
                r1 = 0
                if (r6 != 0) goto Lc
                com.google.common.collect.MinMaxPriorityQueue r0 = com.google.common.collect.MinMaxPriorityQueue.this
                java.lang.Object[] r0 = com.google.common.collect.MinMaxPriorityQueue.a(r0)
                r0[r1] = r7
            Lb:
                return r1
            Lc:
                int r3 = r5.f(r6)
                com.google.common.collect.MinMaxPriorityQueue r0 = com.google.common.collect.MinMaxPriorityQueue.this
                java.lang.Object r1 = r0.a(r3)
                if (r3 == 0) goto L60
                int r0 = r5.f(r3)
                int r2 = r5.e(r0)
                if (r2 == r3) goto L60
                int r0 = r5.d(r2)
                com.google.common.collect.MinMaxPriorityQueue r4 = com.google.common.collect.MinMaxPriorityQueue.this
                int r4 = com.google.common.collect.MinMaxPriorityQueue.b(r4)
                if (r0 < r4) goto L60
                com.google.common.collect.MinMaxPriorityQueue r0 = com.google.common.collect.MinMaxPriorityQueue.this
                java.lang.Object r0 = r0.a(r2)
                com.google.common.collect.Ordering<E> r4 = r5.a
                int r4 = r4.compare(r0, r1)
                if (r4 >= 0) goto L60
                r1 = r2
            L3d:
                com.google.common.collect.Ordering<E> r2 = r5.a
                int r2 = r2.compare(r0, r7)
                if (r2 >= 0) goto L56
                com.google.common.collect.MinMaxPriorityQueue r2 = com.google.common.collect.MinMaxPriorityQueue.this
                java.lang.Object[] r2 = com.google.common.collect.MinMaxPriorityQueue.a(r2)
                r2[r6] = r0
                com.google.common.collect.MinMaxPriorityQueue r0 = com.google.common.collect.MinMaxPriorityQueue.this
                java.lang.Object[] r0 = com.google.common.collect.MinMaxPriorityQueue.a(r0)
                r0[r1] = r7
                goto Lb
            L56:
                com.google.common.collect.MinMaxPriorityQueue r0 = com.google.common.collect.MinMaxPriorityQueue.this
                java.lang.Object[] r0 = com.google.common.collect.MinMaxPriorityQueue.a(r0)
                r0[r6] = r7
                r1 = r6
                goto Lb
            L60:
                r0 = r1
                r1 = r3
                goto L3d
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.MinMaxPriorityQueue.a.c(int, java.lang.Object):int");
        }

        int a(E e) {
            int iE;
            int iF = f(MinMaxPriorityQueue.this.e);
            if (iF != 0 && (iE = e(f(iF))) != iF && d(iE) >= MinMaxPriorityQueue.this.e) {
                Object objA = MinMaxPriorityQueue.this.a(iE);
                if (this.a.compare((E) objA, e) < 0) {
                    MinMaxPriorityQueue.this.d[iE] = e;
                    MinMaxPriorityQueue.this.d[MinMaxPriorityQueue.this.e] = objA;
                    return iE;
                }
            }
            return MinMaxPriorityQueue.this.e;
        }

        int d(int i, E e) {
            int iA = a(i);
            if (iA <= 0 || this.a.compare((E) MinMaxPriorityQueue.this.a(iA), e) >= 0) {
                return c(i, e);
            }
            MinMaxPriorityQueue.this.d[i] = MinMaxPriorityQueue.this.a(iA);
            MinMaxPriorityQueue.this.d[iA] = e;
            return iA;
        }

        int c(int i) {
            while (true) {
                int iB = b(i);
                if (iB > 0) {
                    MinMaxPriorityQueue.this.d[i] = MinMaxPriorityQueue.this.a(iB);
                    i = iB;
                } else {
                    return i;
                }
            }
        }

        private int d(int i) {
            return (i * 2) + 1;
        }

        private int e(int i) {
            return (i * 2) + 2;
        }

        private int f(int i) {
            return (i - 1) / 2;
        }

        private int g(int i) {
            return f(f(i));
        }
    }

    class c implements Iterator<E> {
        private int b;
        private int c;
        private Queue<E> d;
        private List<E> e;
        private E f;
        private boolean g;

        private c() {
            this.b = -1;
            this.c = MinMaxPriorityQueue.this.f;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            a();
            return a(this.b + 1) < MinMaxPriorityQueue.this.size() || !(this.d == null || this.d.isEmpty());
        }

        @Override // java.util.Iterator
        public E next() {
            a();
            int iA = a(this.b + 1);
            if (iA < MinMaxPriorityQueue.this.size()) {
                this.b = iA;
                this.g = true;
                return (E) MinMaxPriorityQueue.this.a(this.b);
            }
            if (this.d != null) {
                this.b = MinMaxPriorityQueue.this.size();
                this.f = this.d.poll();
                if (this.f != null) {
                    this.g = true;
                    return this.f;
                }
            }
            throw new NoSuchElementException("iterator moved past last element in queue.");
        }

        @Override // java.util.Iterator
        public void remove() {
            hu.a(this.g);
            a();
            this.g = false;
            this.c++;
            if (this.b < MinMaxPriorityQueue.this.size()) {
                b<E> bVarB = MinMaxPriorityQueue.this.b(this.b);
                if (bVarB != null) {
                    if (this.d == null) {
                        this.d = new ArrayDeque();
                        this.e = new ArrayList(3);
                    }
                    this.d.add(bVarB.a);
                    this.e.add(bVarB.b);
                }
                this.b--;
                return;
            }
            Preconditions.checkState(a(this.f));
            this.f = null;
        }

        private boolean a(Iterable<E> iterable, E e) {
            Iterator<E> it = iterable.iterator();
            while (it.hasNext()) {
                if (it.next() == e) {
                    return true;
                }
            }
            return false;
        }

        boolean a(Object obj) {
            for (int i = 0; i < MinMaxPriorityQueue.this.e; i++) {
                if (MinMaxPriorityQueue.this.d[i] == obj) {
                    MinMaxPriorityQueue.this.b(i);
                    return true;
                }
            }
            return false;
        }

        void a() {
            if (MinMaxPriorityQueue.this.f != this.c) {
                throw new ConcurrentModificationException();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        private int a(int i) {
            if (this.e != null) {
                while (i < MinMaxPriorityQueue.this.size() && a(this.e, MinMaxPriorityQueue.this.a(i))) {
                    i++;
                }
            }
            return i;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public Iterator<E> iterator() {
        return new c();
    }

    @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection
    public void clear() {
        for (int i = 0; i < this.e; i++) {
            this.d[i] = null;
        }
        this.e = 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public Object[] toArray() {
        Object[] objArr = new Object[this.e];
        System.arraycopy(this.d, 0, objArr, 0, this.e);
        return objArr;
    }

    public Comparator<? super E> comparator() {
        return this.b.a;
    }

    @VisibleForTesting
    static int a(int i, int i2, Iterable<?> iterable) {
        if (i == -1) {
            i = 11;
        }
        if (iterable instanceof Collection) {
            i = Math.max(i, ((Collection) iterable).size());
        }
        return a(i, i2);
    }

    private void b() {
        if (this.e > this.d.length) {
            Object[] objArr = new Object[c()];
            System.arraycopy(this.d, 0, objArr, 0, this.d.length);
            this.d = objArr;
        }
    }

    private int c() {
        int length = this.d.length;
        return a(length < 64 ? (length + 1) * 2 : IntMath.checkedMultiply(length / 2, 3), this.a);
    }

    private static int a(int i, int i2) {
        return Math.min(i - 1, i2) + 1;
    }
}
