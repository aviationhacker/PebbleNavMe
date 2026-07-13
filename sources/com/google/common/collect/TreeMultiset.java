package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.collect.Multiset;
import com.google.common.collect.Multisets;
import com.google.common.primitives.Ints;
import defpackage.ho;
import defpackage.hu;
import defpackage.it;
import defpackage.ka;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Collection;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NavigableSet;
import java.util.NoSuchElementException;
import java.util.Set;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(emulated = true)
public final class TreeMultiset<E> extends ho<E> implements Serializable {

    @GwtIncompatible("not needed in emulated source")
    private static final long serialVersionUID = 1;
    private final transient c<b<E>> b;
    private final transient it<E> c;
    private final transient b<E> d;

    enum a {
        SIZE { // from class: com.google.common.collect.TreeMultiset.a.1
            @Override // com.google.common.collect.TreeMultiset.a
            int a(b<?> bVar) {
                return ((b) bVar).b;
            }

            @Override // com.google.common.collect.TreeMultiset.a
            long b(@Nullable b<?> bVar) {
                if (bVar == null) {
                    return 0L;
                }
                return ((b) bVar).d;
            }
        },
        DISTINCT { // from class: com.google.common.collect.TreeMultiset.a.2
            @Override // com.google.common.collect.TreeMultiset.a
            int a(b<?> bVar) {
                return 1;
            }

            @Override // com.google.common.collect.TreeMultiset.a
            long b(@Nullable b<?> bVar) {
                if (bVar == null) {
                    return 0L;
                }
                return ((b) bVar).c;
            }
        };

        abstract int a(b<?> bVar);

        abstract long b(@Nullable b<?> bVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.hj, java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    public /* bridge */ /* synthetic */ boolean add(@Nullable Object obj) {
        return super.add(obj);
    }

    @Override // defpackage.hj, java.util.AbstractCollection, java.util.Collection
    public /* bridge */ /* synthetic */ boolean addAll(Collection collection) {
        return super.addAll(collection);
    }

    @Override // defpackage.hj, java.util.AbstractCollection, java.util.Collection
    public /* bridge */ /* synthetic */ void clear() {
        super.clear();
    }

    @Override // defpackage.ho, com.google.common.collect.SortedMultiset, defpackage.kf
    public /* bridge */ /* synthetic */ Comparator comparator() {
        return super.comparator();
    }

    @Override // defpackage.hj, java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    public /* bridge */ /* synthetic */ boolean contains(@Nullable Object obj) {
        return super.contains(obj);
    }

    @Override // defpackage.ho, com.google.common.collect.SortedMultiset
    public /* bridge */ /* synthetic */ SortedMultiset descendingMultiset() {
        return super.descendingMultiset();
    }

    @Override // defpackage.ho, defpackage.hj, com.google.common.collect.Multiset
    public /* bridge */ /* synthetic */ NavigableSet elementSet() {
        return super.elementSet();
    }

    @Override // defpackage.hj, com.google.common.collect.Multiset
    public /* bridge */ /* synthetic */ Set entrySet() {
        return super.entrySet();
    }

    @Override // defpackage.hj, java.util.Collection, com.google.common.collect.Multiset
    public /* bridge */ /* synthetic */ boolean equals(@Nullable Object obj) {
        return super.equals(obj);
    }

    @Override // defpackage.ho, com.google.common.collect.SortedMultiset
    public /* bridge */ /* synthetic */ Multiset.Entry firstEntry() {
        return super.firstEntry();
    }

    @Override // defpackage.hj, java.util.Collection, com.google.common.collect.Multiset
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // defpackage.hj, java.util.AbstractCollection, java.util.Collection
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    @Override // defpackage.hj, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, com.google.common.collect.Multiset
    public /* bridge */ /* synthetic */ Iterator iterator() {
        return super.iterator();
    }

    @Override // defpackage.ho, com.google.common.collect.SortedMultiset
    public /* bridge */ /* synthetic */ Multiset.Entry lastEntry() {
        return super.lastEntry();
    }

    @Override // defpackage.ho, com.google.common.collect.SortedMultiset
    public /* bridge */ /* synthetic */ Multiset.Entry pollFirstEntry() {
        return super.pollFirstEntry();
    }

    @Override // defpackage.ho, com.google.common.collect.SortedMultiset
    public /* bridge */ /* synthetic */ Multiset.Entry pollLastEntry() {
        return super.pollLastEntry();
    }

    @Override // defpackage.hj, java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    public /* bridge */ /* synthetic */ boolean remove(@Nullable Object obj) {
        return super.remove(obj);
    }

    @Override // defpackage.hj, java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    public /* bridge */ /* synthetic */ boolean removeAll(Collection collection) {
        return super.removeAll(collection);
    }

    @Override // defpackage.hj, java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    public /* bridge */ /* synthetic */ boolean retainAll(Collection collection) {
        return super.retainAll(collection);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.ho, com.google.common.collect.SortedMultiset
    public /* bridge */ /* synthetic */ SortedMultiset subMultiset(@Nullable Object obj, BoundType boundType, @Nullable Object obj2, BoundType boundType2) {
        return super.subMultiset(obj, boundType, obj2, boundType2);
    }

    @Override // defpackage.hj, java.util.AbstractCollection, com.google.common.collect.Multiset
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    public static <E extends Comparable> TreeMultiset<E> create() {
        return new TreeMultiset<>(Ordering.natural());
    }

    public static <E> TreeMultiset<E> create(@Nullable Comparator<? super E> comparator) {
        return comparator == null ? new TreeMultiset<>(Ordering.natural()) : new TreeMultiset<>(comparator);
    }

    public static <E extends Comparable> TreeMultiset<E> create(Iterable<? extends E> iterable) {
        TreeMultiset<E> treeMultisetCreate = create();
        Iterables.addAll(treeMultisetCreate, iterable);
        return treeMultisetCreate;
    }

    TreeMultiset(c<b<E>> cVar, it<E> itVar, b<E> bVar) {
        super(itVar.a());
        this.b = cVar;
        this.c = itVar;
        this.d = bVar;
    }

    TreeMultiset(Comparator<? super E> comparator) {
        super(comparator);
        this.c = it.a((Comparator) comparator);
        this.d = new b<>(null, 1);
        b(this.d, this.d);
        this.b = new c<>();
    }

    private long a(a aVar) {
        b<E> bVarA = this.b.a();
        long jB = aVar.b(bVarA);
        if (this.c.b()) {
            jB -= a(aVar, bVarA);
        }
        if (this.c.c()) {
            return jB - b(aVar, bVarA);
        }
        return jB;
    }

    private long a(a aVar, @Nullable b<E> bVar) {
        if (bVar == null) {
            return 0L;
        }
        int iCompare = comparator().compare(this.c.d(), ((b) bVar).a);
        if (iCompare >= 0) {
            if (iCompare == 0) {
                switch (this.c.e()) {
                    case OPEN:
                        return ((long) aVar.a(bVar)) + aVar.b(((b) bVar).f);
                    case CLOSED:
                        return aVar.b(((b) bVar).f);
                    default:
                        throw new AssertionError();
                }
            }
            return aVar.b(((b) bVar).f) + ((long) aVar.a(bVar)) + a(aVar, ((b) bVar).g);
        }
        return a(aVar, ((b) bVar).f);
    }

    private long b(a aVar, @Nullable b<E> bVar) {
        if (bVar == null) {
            return 0L;
        }
        int iCompare = comparator().compare(this.c.f(), ((b) bVar).a);
        if (iCompare <= 0) {
            if (iCompare == 0) {
                switch (this.c.g()) {
                    case OPEN:
                        return ((long) aVar.a(bVar)) + aVar.b(((b) bVar).g);
                    case CLOSED:
                        return aVar.b(((b) bVar).g);
                    default:
                        throw new AssertionError();
                }
            }
            return aVar.b(((b) bVar).g) + ((long) aVar.a(bVar)) + b(aVar, ((b) bVar).f);
        }
        return b(aVar, ((b) bVar).g);
    }

    @Override // defpackage.hj, java.util.AbstractCollection, java.util.Collection
    public int size() {
        return Ints.saturatedCast(a(a.SIZE));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // defpackage.hj
    public int b() {
        return Ints.saturatedCast(a(a.DISTINCT));
    }

    @Override // defpackage.hj, com.google.common.collect.Multiset
    public int count(@Nullable Object obj) {
        try {
            b<E> bVarA = this.b.a();
            if (!this.c.c(obj) || bVarA == null) {
                return 0;
            }
            return bVarA.a(comparator(), obj);
        } catch (ClassCastException e) {
            return 0;
        } catch (NullPointerException e2) {
            return 0;
        }
    }

    @Override // defpackage.hj, com.google.common.collect.Multiset
    public int add(@Nullable E e, int i) {
        hu.a(i, "occurrences");
        if (i == 0) {
            return count(e);
        }
        Preconditions.checkArgument(this.c.c(e));
        b<E> bVarA = this.b.a();
        if (bVarA == null) {
            comparator().compare(e, e);
            b<E> bVar = new b<>(e, i);
            b(this.d, bVar, this.d);
            this.b.a(bVarA, bVar);
            return 0;
        }
        int[] iArr = new int[1];
        this.b.a(bVarA, bVarA.a(comparator(), e, i, iArr));
        return iArr[0];
    }

    @Override // defpackage.hj, com.google.common.collect.Multiset
    public int remove(@Nullable Object obj, int i) {
        hu.a(i, "occurrences");
        if (i == 0) {
            return count(obj);
        }
        b<E> bVarA = this.b.a();
        int[] iArr = new int[1];
        try {
            if (!this.c.c(obj) || bVarA == null) {
                return 0;
            }
            this.b.a(bVarA, bVarA.b(comparator(), obj, i, iArr));
            return iArr[0];
        } catch (ClassCastException e) {
            return 0;
        } catch (NullPointerException e2) {
            return 0;
        }
    }

    @Override // defpackage.hj, com.google.common.collect.Multiset
    public int setCount(@Nullable E e, int i) {
        hu.a(i, "count");
        if (!this.c.c(e)) {
            Preconditions.checkArgument(i == 0);
            return 0;
        }
        b<E> bVarA = this.b.a();
        if (bVarA == null) {
            if (i <= 0) {
                return 0;
            }
            add(e, i);
            return 0;
        }
        int[] iArr = new int[1];
        this.b.a(bVarA, bVarA.c(comparator(), e, i, iArr));
        return iArr[0];
    }

    @Override // defpackage.hj, com.google.common.collect.Multiset
    public boolean setCount(@Nullable E e, int i, int i2) {
        hu.a(i2, "newCount");
        hu.a(i, "oldCount");
        Preconditions.checkArgument(this.c.c(e));
        b<E> bVarA = this.b.a();
        if (bVarA == null) {
            if (i != 0) {
                return false;
            }
            if (i2 <= 0) {
                return true;
            }
            add(e, i2);
            return true;
        }
        int[] iArr = new int[1];
        this.b.a(bVarA, bVarA.a(comparator(), e, i, i2, iArr));
        return iArr[0] == i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Multiset.Entry<E> b(final b<E> bVar) {
        return new Multisets.a<E>() { // from class: com.google.common.collect.TreeMultiset.1
            @Override // com.google.common.collect.Multiset.Entry
            public E getElement() {
                return (E) bVar.getElement();
            }

            @Override // com.google.common.collect.Multiset.Entry
            public int getCount() {
                int count = bVar.getCount();
                if (count == 0) {
                    return TreeMultiset.this.count(getElement());
                }
                return count;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public b<E> h() {
        b<E> bVarB;
        if (this.b.a() == null) {
            return null;
        }
        if (this.c.b()) {
            E eD = this.c.d();
            bVarB = this.b.a().b(comparator(), eD);
            if (bVarB == null) {
                return null;
            }
            if (this.c.e() == BoundType.OPEN && comparator().compare(eD, bVarB.getElement()) == 0) {
                bVarB = ((b) bVarB).i;
            }
        } else {
            bVarB = ((b) this.d).i;
        }
        if (bVarB == this.d || !this.c.c(bVarB.getElement())) {
            bVarB = null;
        }
        return bVarB;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public b<E> i() {
        b<E> bVarC;
        if (this.b.a() == null) {
            return null;
        }
        if (this.c.c()) {
            E eF = this.c.f();
            bVarC = this.b.a().c(comparator(), eF);
            if (bVarC == null) {
                return null;
            }
            if (this.c.g() == BoundType.OPEN && comparator().compare(eF, bVarC.getElement()) == 0) {
                bVarC = ((b) bVarC).h;
            }
        } else {
            bVarC = ((b) this.d).h;
        }
        if (bVarC == this.d || !this.c.c(bVarC.getElement())) {
            bVarC = null;
        }
        return bVarC;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // defpackage.hj
    public Iterator<Multiset.Entry<E>> a() {
        return new Iterator<Multiset.Entry<E>>() { // from class: com.google.common.collect.TreeMultiset.2
            b<E> a;
            Multiset.Entry<E> b;

            {
                this.a = TreeMultiset.this.h();
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                if (this.a == null) {
                    return false;
                }
                if (TreeMultiset.this.c.b(this.a.getElement())) {
                    this.a = null;
                    return false;
                }
                return true;
            }

            @Override // java.util.Iterator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Multiset.Entry<E> next() {
                if (hasNext()) {
                    Multiset.Entry<E> entryB = TreeMultiset.this.b(this.a);
                    this.b = entryB;
                    if (((b) this.a).i == TreeMultiset.this.d) {
                        this.a = null;
                    } else {
                        this.a = ((b) this.a).i;
                    }
                    return entryB;
                }
                throw new NoSuchElementException();
            }

            @Override // java.util.Iterator
            public void remove() {
                hu.a(this.b != null);
                TreeMultiset.this.setCount(this.b.getElement(), 0);
                this.b = null;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // defpackage.ho
    protected Iterator<Multiset.Entry<E>> e() {
        return new Iterator<Multiset.Entry<E>>() { // from class: com.google.common.collect.TreeMultiset.3
            b<E> a;
            Multiset.Entry<E> b = null;

            {
                this.a = TreeMultiset.this.i();
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                if (this.a == null) {
                    return false;
                }
                if (TreeMultiset.this.c.a(this.a.getElement())) {
                    this.a = null;
                    return false;
                }
                return true;
            }

            @Override // java.util.Iterator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Multiset.Entry<E> next() {
                if (hasNext()) {
                    Multiset.Entry<E> entryB = TreeMultiset.this.b(this.a);
                    this.b = entryB;
                    if (((b) this.a).h == TreeMultiset.this.d) {
                        this.a = null;
                    } else {
                        this.a = ((b) this.a).h;
                    }
                    return entryB;
                }
                throw new NoSuchElementException();
            }

            @Override // java.util.Iterator
            public void remove() {
                hu.a(this.b != null);
                TreeMultiset.this.setCount(this.b.getElement(), 0);
                this.b = null;
            }
        };
    }

    @Override // com.google.common.collect.SortedMultiset
    public SortedMultiset<E> headMultiset(@Nullable E e, BoundType boundType) {
        return new TreeMultiset(this.b, this.c.a(it.b(comparator(), e, boundType)), this.d);
    }

    @Override // com.google.common.collect.SortedMultiset
    public SortedMultiset<E> tailMultiset(@Nullable E e, BoundType boundType) {
        return new TreeMultiset(this.b, this.c.a(it.a(comparator(), e, boundType)), this.d);
    }

    static int a(@Nullable b<?> bVar) {
        if (bVar == null) {
            return 0;
        }
        return ((b) bVar).c;
    }

    static final class c<T> {

        @Nullable
        private T a;

        private c() {
        }

        @Nullable
        public T a() {
            return this.a;
        }

        public void a(@Nullable T t, T t2) {
            if (this.a != t) {
                throw new ConcurrentModificationException();
            }
            this.a = t2;
        }
    }

    static final class b<E> extends Multisets.a<E> {

        @Nullable
        private final E a;
        private int b;
        private int c;
        private long d;
        private int e;
        private b<E> f;
        private b<E> g;
        private b<E> h;
        private b<E> i;

        b(@Nullable E e, int i) {
            Preconditions.checkArgument(i > 0);
            this.a = e;
            this.b = i;
            this.d = i;
            this.c = 1;
            this.e = 1;
            this.f = null;
            this.g = null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public int a(Comparator<? super E> comparator, E e) {
            int iCompare = comparator.compare(e, this.a);
            if (iCompare < 0) {
                if (this.f == null) {
                    return 0;
                }
                return this.f.a(comparator, e);
            }
            if (iCompare > 0) {
                if (this.g != null) {
                    return this.g.a(comparator, e);
                }
                return 0;
            }
            return this.b;
        }

        private b<E> a(E e, int i) {
            this.g = new b<>(e, i);
            TreeMultiset.b(this, this.g, this.i);
            this.e = Math.max(2, this.e);
            this.c++;
            this.d += (long) i;
            return this;
        }

        private b<E> b(E e, int i) {
            this.f = new b<>(e, i);
            TreeMultiset.b(this.h, this.f, this);
            this.e = Math.max(2, this.e);
            this.c++;
            this.d += (long) i;
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        b<E> a(Comparator<? super E> comparator, @Nullable E e, int i, int[] iArr) {
            int iCompare = comparator.compare(e, this.a);
            if (iCompare < 0) {
                b<E> bVar = this.f;
                if (bVar == null) {
                    iArr[0] = 0;
                    return b(e, i);
                }
                int i2 = bVar.e;
                this.f = bVar.a(comparator, e, i, iArr);
                if (iArr[0] == 0) {
                    this.c++;
                }
                this.d += (long) i;
                return this.f.e != i2 ? e() : this;
            }
            if (iCompare > 0) {
                b<E> bVar2 = this.g;
                if (bVar2 == null) {
                    iArr[0] = 0;
                    return a(e, i);
                }
                int i3 = bVar2.e;
                this.g = bVar2.a(comparator, e, i, iArr);
                if (iArr[0] == 0) {
                    this.c++;
                }
                this.d += (long) i;
                return this.g.e != i3 ? e() : this;
            }
            iArr[0] = this.b;
            Preconditions.checkArgument(((long) this.b) + ((long) i) <= 2147483647L);
            this.b += i;
            this.d += (long) i;
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        b<E> b(Comparator<? super E> comparator, @Nullable E e, int i, int[] iArr) {
            int iCompare = comparator.compare(e, this.a);
            if (iCompare < 0) {
                b<E> bVar = this.f;
                if (bVar == null) {
                    iArr[0] = 0;
                    return this;
                }
                this.f = bVar.b(comparator, e, i, iArr);
                if (iArr[0] > 0) {
                    if (i >= iArr[0]) {
                        this.c--;
                        this.d -= (long) iArr[0];
                    } else {
                        this.d -= (long) i;
                    }
                }
                return iArr[0] != 0 ? e() : this;
            }
            if (iCompare > 0) {
                b<E> bVar2 = this.g;
                if (bVar2 == null) {
                    iArr[0] = 0;
                    return this;
                }
                this.g = bVar2.b(comparator, e, i, iArr);
                if (iArr[0] > 0) {
                    if (i >= iArr[0]) {
                        this.c--;
                        this.d -= (long) iArr[0];
                    } else {
                        this.d -= (long) i;
                    }
                }
                return e();
            }
            iArr[0] = this.b;
            if (i >= this.b) {
                return a();
            }
            this.b -= i;
            this.d -= (long) i;
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        b<E> c(Comparator<? super E> comparator, @Nullable E e, int i, int[] iArr) {
            int iCompare = comparator.compare(e, this.a);
            if (iCompare < 0) {
                b<E> bVar = this.f;
                if (bVar == null) {
                    iArr[0] = 0;
                    return i > 0 ? b(e, i) : this;
                }
                this.f = bVar.c(comparator, e, i, iArr);
                if (i == 0 && iArr[0] != 0) {
                    this.c--;
                } else if (i > 0 && iArr[0] == 0) {
                    this.c++;
                }
                this.d += (long) (i - iArr[0]);
                return e();
            }
            if (iCompare > 0) {
                b<E> bVar2 = this.g;
                if (bVar2 == null) {
                    iArr[0] = 0;
                    return i > 0 ? a(e, i) : this;
                }
                this.g = bVar2.c(comparator, e, i, iArr);
                if (i == 0 && iArr[0] != 0) {
                    this.c--;
                } else if (i > 0 && iArr[0] == 0) {
                    this.c++;
                }
                this.d += (long) (i - iArr[0]);
                return e();
            }
            iArr[0] = this.b;
            if (i == 0) {
                return a();
            }
            this.d += (long) (i - this.b);
            this.b = i;
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        b<E> a(Comparator<? super E> comparator, @Nullable E e, int i, int i2, int[] iArr) {
            int iCompare = comparator.compare(e, this.a);
            if (iCompare < 0) {
                b<E> bVar = this.f;
                if (bVar == null) {
                    iArr[0] = 0;
                    if (i == 0 && i2 > 0) {
                        return b(e, i2);
                    }
                    return this;
                }
                this.f = bVar.a(comparator, e, i, i2, iArr);
                if (iArr[0] == i) {
                    if (i2 == 0 && iArr[0] != 0) {
                        this.c--;
                    } else if (i2 > 0 && iArr[0] == 0) {
                        this.c++;
                    }
                    this.d += (long) (i2 - iArr[0]);
                }
                return e();
            }
            if (iCompare > 0) {
                b<E> bVar2 = this.g;
                if (bVar2 == null) {
                    iArr[0] = 0;
                    if (i == 0 && i2 > 0) {
                        return a(e, i2);
                    }
                    return this;
                }
                this.g = bVar2.a(comparator, e, i, i2, iArr);
                if (iArr[0] == i) {
                    if (i2 == 0 && iArr[0] != 0) {
                        this.c--;
                    } else if (i2 > 0 && iArr[0] == 0) {
                        this.c++;
                    }
                    this.d += (long) (i2 - iArr[0]);
                }
                return e();
            }
            iArr[0] = this.b;
            if (i == this.b) {
                if (i2 == 0) {
                    return a();
                }
                this.d += (long) (i2 - this.b);
                this.b = i2;
                return this;
            }
            return this;
        }

        private b<E> a() {
            int i = this.b;
            this.b = 0;
            TreeMultiset.b(this.h, this.i);
            if (this.f == null) {
                return this.g;
            }
            if (this.g == null) {
                return this.f;
            }
            if (this.f.e >= this.g.e) {
                b<E> bVar = this.h;
                bVar.f = this.f.j(bVar);
                bVar.g = this.g;
                bVar.c = this.c - 1;
                bVar.d = this.d - ((long) i);
                return bVar.e();
            }
            b<E> bVar2 = this.i;
            bVar2.g = this.g.i(bVar2);
            bVar2.f = this.f;
            bVar2.c = this.c - 1;
            bVar2.d = this.d - ((long) i);
            return bVar2.e();
        }

        private b<E> i(b<E> bVar) {
            if (this.f == null) {
                return this.g;
            }
            this.f = this.f.i(bVar);
            this.c--;
            this.d -= (long) bVar.b;
            return e();
        }

        private b<E> j(b<E> bVar) {
            if (this.g == null) {
                return this.f;
            }
            this.g = this.g.j(bVar);
            this.c--;
            this.d -= (long) bVar.b;
            return e();
        }

        private void b() {
            this.c = TreeMultiset.a((b<?>) this.f) + 1 + TreeMultiset.a((b<?>) this.g);
            this.d = ((long) this.b) + k(this.f) + k(this.g);
        }

        private void c() {
            this.e = Math.max(l(this.f), l(this.g)) + 1;
        }

        private void d() {
            b();
            c();
        }

        private b<E> e() {
            switch (f()) {
                case -2:
                    if (this.g.f() > 0) {
                        this.g = this.g.h();
                    }
                    return g();
                case 2:
                    if (this.f.f() < 0) {
                        this.f = this.f.g();
                    }
                    return h();
                default:
                    c();
                    return this;
            }
        }

        private int f() {
            return l(this.f) - l(this.g);
        }

        private b<E> g() {
            Preconditions.checkState(this.g != null);
            b<E> bVar = this.g;
            this.g = bVar.f;
            bVar.f = this;
            bVar.d = this.d;
            bVar.c = this.c;
            d();
            bVar.c();
            return bVar;
        }

        private b<E> h() {
            Preconditions.checkState(this.f != null);
            b<E> bVar = this.f;
            this.f = bVar.g;
            bVar.g = this;
            bVar.d = this.d;
            bVar.c = this.c;
            d();
            bVar.c();
            return bVar;
        }

        private static long k(@Nullable b<?> bVar) {
            if (bVar == null) {
                return 0L;
            }
            return ((b) bVar).d;
        }

        private static int l(@Nullable b<?> bVar) {
            if (bVar == null) {
                return 0;
            }
            return ((b) bVar).e;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        @Nullable
        public b<E> b(Comparator<? super E> comparator, E e) {
            int iCompare = comparator.compare(e, this.a);
            if (iCompare < 0) {
                if (this.f != null) {
                    return (b) MoreObjects.firstNonNull(this.f.b(comparator, e), this);
                }
                return this;
            }
            if (iCompare != 0) {
                return this.g == null ? null : this.g.b(comparator, e);
            }
            return this;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        @Nullable
        public b<E> c(Comparator<? super E> comparator, E e) {
            int iCompare = comparator.compare(e, this.a);
            if (iCompare > 0) {
                if (this.g != null) {
                    return (b) MoreObjects.firstNonNull(this.g.c(comparator, e), this);
                }
                return this;
            }
            if (iCompare != 0) {
                return this.f == null ? null : this.f.c(comparator, e);
            }
            return this;
        }

        @Override // com.google.common.collect.Multiset.Entry
        public E getElement() {
            return this.a;
        }

        @Override // com.google.common.collect.Multiset.Entry
        public int getCount() {
            return this.b;
        }

        @Override // com.google.common.collect.Multisets.a, com.google.common.collect.Multiset.Entry
        public String toString() {
            return Multisets.immutableEntry(getElement(), getCount()).toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T> void b(b<T> bVar, b<T> bVar2) {
        ((b) bVar).i = bVar2;
        ((b) bVar2).h = bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T> void b(b<T> bVar, b<T> bVar2, b<T> bVar3) {
        b(bVar, bVar2);
        b(bVar2, bVar3);
    }

    @GwtIncompatible("java.io.ObjectOutputStream")
    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(elementSet().comparator());
        ka.a(this, objectOutputStream);
    }

    @GwtIncompatible("java.io.ObjectInputStream")
    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        Comparator comparator = (Comparator) objectInputStream.readObject();
        ka.a(ho.class, "comparator").a(this, comparator);
        ka.a(TreeMultiset.class, "range").a(this, it.a(comparator));
        ka.a(TreeMultiset.class, "rootReference").a(this, new c());
        b bVar = new b(null, 1);
        ka.a(TreeMultiset.class, "header").a(this, bVar);
        b(bVar, bVar);
        ka.a(this, objectInputStream);
    }
}
