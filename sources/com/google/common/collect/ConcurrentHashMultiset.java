package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import com.google.common.collect.Multiset;
import com.google.common.math.IntMath;
import com.google.common.primitives.Ints;
import defpackage.hj;
import defpackage.hu;
import defpackage.ka;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class ConcurrentHashMultiset<E> extends hj<E> implements Serializable {
    private static final long serialVersionUID = 1;
    private final transient ConcurrentMap<E, AtomicInteger> a;

    static class b {
        static final ka.a<ConcurrentHashMultiset> a = ka.a(ConcurrentHashMultiset.class, "countMap");
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

    @Override // defpackage.hj, java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    public /* bridge */ /* synthetic */ boolean contains(@Nullable Object obj) {
        return super.contains(obj);
    }

    @Override // defpackage.hj, com.google.common.collect.Multiset
    public /* bridge */ /* synthetic */ Set elementSet() {
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

    @Override // defpackage.hj, java.util.Collection, com.google.common.collect.Multiset
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // defpackage.hj, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, com.google.common.collect.Multiset
    public /* bridge */ /* synthetic */ Iterator iterator() {
        return super.iterator();
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

    @Override // defpackage.hj, java.util.AbstractCollection, com.google.common.collect.Multiset
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    public static <E> ConcurrentHashMultiset<E> create() {
        return new ConcurrentHashMultiset<>(new ConcurrentHashMap());
    }

    public static <E> ConcurrentHashMultiset<E> create(Iterable<? extends E> iterable) {
        ConcurrentHashMultiset<E> concurrentHashMultisetCreate = create();
        Iterables.addAll(concurrentHashMultisetCreate, iterable);
        return concurrentHashMultisetCreate;
    }

    @Beta
    public static <E> ConcurrentHashMultiset<E> create(MapMaker mapMaker) {
        return new ConcurrentHashMultiset<>(mapMaker.makeMap());
    }

    @VisibleForTesting
    ConcurrentHashMultiset(ConcurrentMap<E, AtomicInteger> concurrentMap) {
        Preconditions.checkArgument(concurrentMap.isEmpty());
        this.a = concurrentMap;
    }

    @Override // defpackage.hj, com.google.common.collect.Multiset
    public int count(@Nullable Object obj) {
        AtomicInteger atomicInteger = (AtomicInteger) Maps.a(this.a, obj);
        if (atomicInteger == null) {
            return 0;
        }
        return atomicInteger.get();
    }

    @Override // defpackage.hj, java.util.AbstractCollection, java.util.Collection
    public int size() {
        long j = 0;
        Iterator<AtomicInteger> it = this.a.values().iterator();
        while (true) {
            long j2 = j;
            if (it.hasNext()) {
                j = ((long) it.next().get()) + j2;
            } else {
                return Ints.saturatedCast(j2);
            }
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public Object[] toArray() {
        return d().toArray();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        return (T[]) d().toArray(tArr);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private List<E> d() {
        ArrayList arrayListNewArrayListWithExpectedSize = Lists.newArrayListWithExpectedSize(size());
        for (Multiset.Entry entry : entrySet()) {
            Object element = entry.getElement();
            for (int count = entry.getCount(); count > 0; count--) {
                arrayListNewArrayListWithExpectedSize.add(element);
            }
        }
        return arrayListNewArrayListWithExpectedSize;
    }

    @Override // defpackage.hj, com.google.common.collect.Multiset
    public int add(E e, int i) {
        AtomicInteger atomicIntegerPutIfAbsent;
        int i2;
        AtomicInteger atomicInteger;
        Preconditions.checkNotNull(e);
        if (i == 0) {
            return count(e);
        }
        hu.b(i, "occurences");
        do {
            atomicIntegerPutIfAbsent = (AtomicInteger) Maps.a(this.a, e);
            if (atomicIntegerPutIfAbsent == null && (atomicIntegerPutIfAbsent = this.a.putIfAbsent(e, new AtomicInteger(i))) == null) {
                return 0;
            }
            do {
                i2 = atomicIntegerPutIfAbsent.get();
                if (i2 != 0) {
                    try {
                    } catch (ArithmeticException e2) {
                        throw new IllegalArgumentException(new StringBuilder(65).append("Overflow adding ").append(i).append(" occurrences to a count of ").append(i2).toString());
                    }
                } else {
                    atomicInteger = new AtomicInteger(i);
                    if (this.a.putIfAbsent(e, atomicInteger) == null) {
                        break;
                    }
                }
            } while (!atomicIntegerPutIfAbsent.compareAndSet(i2, IntMath.checkedAdd(i2, i)));
            return i2;
        } while (!this.a.replace(e, atomicIntegerPutIfAbsent, atomicInteger));
        return 0;
    }

    @Override // defpackage.hj, com.google.common.collect.Multiset
    public int remove(@Nullable Object obj, int i) {
        int i2;
        int iMax;
        if (i == 0) {
            return count(obj);
        }
        hu.b(i, "occurences");
        AtomicInteger atomicInteger = (AtomicInteger) Maps.a(this.a, obj);
        if (atomicInteger == null) {
            return 0;
        }
        do {
            i2 = atomicInteger.get();
            if (i2 == 0) {
                return 0;
            }
            iMax = Math.max(0, i2 - i);
        } while (!atomicInteger.compareAndSet(i2, iMax));
        if (iMax == 0) {
            this.a.remove(obj, atomicInteger);
        }
        return i2;
    }

    public boolean removeExactly(@Nullable Object obj, int i) {
        int i2;
        int i3;
        if (i == 0) {
            return true;
        }
        hu.b(i, "occurences");
        AtomicInteger atomicInteger = (AtomicInteger) Maps.a(this.a, obj);
        if (atomicInteger == null) {
            return false;
        }
        do {
            i2 = atomicInteger.get();
            if (i2 < i) {
                return false;
            }
            i3 = i2 - i;
        } while (!atomicInteger.compareAndSet(i2, i3));
        if (i3 == 0) {
            this.a.remove(obj, atomicInteger);
        }
        return true;
    }

    @Override // defpackage.hj, com.google.common.collect.Multiset
    public int setCount(E e, int i) {
        AtomicInteger atomicIntegerPutIfAbsent;
        int i2;
        AtomicInteger atomicInteger;
        Preconditions.checkNotNull(e);
        hu.a(i, "count");
        do {
            atomicIntegerPutIfAbsent = (AtomicInteger) Maps.a(this.a, e);
            if (atomicIntegerPutIfAbsent != null || (i != 0 && (atomicIntegerPutIfAbsent = this.a.putIfAbsent(e, new AtomicInteger(i))) != null)) {
                do {
                    i2 = atomicIntegerPutIfAbsent.get();
                    if (i2 == 0) {
                        if (i != 0) {
                            atomicInteger = new AtomicInteger(i);
                            if (this.a.putIfAbsent(e, atomicInteger) == null) {
                                break;
                            }
                        } else {
                            return 0;
                        }
                    }
                } while (!atomicIntegerPutIfAbsent.compareAndSet(i2, i));
                if (i == 0) {
                    this.a.remove(e, atomicIntegerPutIfAbsent);
                }
                return i2;
            }
            return 0;
        } while (!this.a.replace(e, atomicIntegerPutIfAbsent, atomicInteger));
        return 0;
    }

    @Override // defpackage.hj, com.google.common.collect.Multiset
    public boolean setCount(E e, int i, int i2) {
        Preconditions.checkNotNull(e);
        hu.a(i, "oldCount");
        hu.a(i2, "newCount");
        AtomicInteger atomicInteger = (AtomicInteger) Maps.a(this.a, e);
        if (atomicInteger == null) {
            if (i != 0) {
                return false;
            }
            if (i2 == 0) {
                return true;
            }
            return this.a.putIfAbsent(e, new AtomicInteger(i2)) == null;
        }
        int i3 = atomicInteger.get();
        if (i3 != i) {
            return false;
        }
        if (i3 == 0) {
            if (i2 == 0) {
                this.a.remove(e, atomicInteger);
                return true;
            }
            AtomicInteger atomicInteger2 = new AtomicInteger(i2);
            return this.a.putIfAbsent(e, atomicInteger2) == null || this.a.replace(e, atomicInteger, atomicInteger2);
        }
        if (!atomicInteger.compareAndSet(i3, i2)) {
            return false;
        }
        if (i2 == 0) {
            this.a.remove(e, atomicInteger);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // defpackage.hj
    public Set<E> c() {
        final Set<E> setKeySet = this.a.keySet();
        return new ForwardingSet<E>() { // from class: com.google.common.collect.ConcurrentHashMultiset.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
            public Set<E> delegate() {
                return setKeySet;
            }

            @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
            public boolean contains(@Nullable Object obj) {
                return obj != null && Collections2.a(setKeySet, obj);
            }

            @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
            public boolean containsAll(Collection<?> collection) {
                return standardContainsAll(collection);
            }

            @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
            public boolean remove(Object obj) {
                return obj != null && Collections2.b(setKeySet, obj);
            }

            @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
            public boolean removeAll(Collection<?> collection) {
                return standardRemoveAll(collection);
            }
        };
    }

    @Override // defpackage.hj
    public Set<Multiset.Entry<E>> createEntrySet() {
        return new a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // defpackage.hj
    public int b() {
        return this.a.size();
    }

    @Override // defpackage.hj, java.util.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        return this.a.isEmpty();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // defpackage.hj
    public Iterator<Multiset.Entry<E>> a() {
        final AbstractIterator<Multiset.Entry<E>> abstractIterator = new AbstractIterator<Multiset.Entry<E>>() { // from class: com.google.common.collect.ConcurrentHashMultiset.2
            private Iterator<Map.Entry<E, AtomicInteger>> b;

            {
                this.b = ConcurrentHashMultiset.this.a.entrySet().iterator();
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.collect.AbstractIterator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Multiset.Entry<E> computeNext() {
                while (this.b.hasNext()) {
                    Map.Entry<E, AtomicInteger> next = this.b.next();
                    int i = next.getValue().get();
                    if (i != 0) {
                        return Multisets.immutableEntry(next.getKey(), i);
                    }
                }
                return endOfData();
            }
        };
        return new ForwardingIterator<Multiset.Entry<E>>() { // from class: com.google.common.collect.ConcurrentHashMultiset.3
            private Multiset.Entry<E> c;

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.collect.ForwardingIterator, com.google.common.collect.ForwardingObject
            public Iterator<Multiset.Entry<E>> delegate() {
                return abstractIterator;
            }

            @Override // com.google.common.collect.ForwardingIterator, java.util.Iterator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Multiset.Entry<E> next() {
                this.c = (Multiset.Entry) super.next();
                return this.c;
            }

            @Override // com.google.common.collect.ForwardingIterator, java.util.Iterator
            public void remove() {
                hu.a(this.c != null);
                ConcurrentHashMultiset.this.setCount(this.c.getElement(), 0);
                this.c = null;
            }
        };
    }

    @Override // defpackage.hj, java.util.AbstractCollection, java.util.Collection
    public void clear() {
        this.a.clear();
    }

    class a extends hj<E>.b {
        private a() {
            super();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // hj.b, com.google.common.collect.Multisets.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public ConcurrentHashMultiset<E> a() {
            return ConcurrentHashMultiset.this;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public Object[] toArray() {
            return c().toArray();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public <T> T[] toArray(T[] tArr) {
            return (T[]) c().toArray(tArr);
        }

        private List<Multiset.Entry<E>> c() {
            ArrayList arrayListNewArrayListWithExpectedSize = Lists.newArrayListWithExpectedSize(size());
            Iterators.addAll(arrayListNewArrayListWithExpectedSize, iterator());
            return arrayListNewArrayListWithExpectedSize;
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(this.a);
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        b.a.a(this, (ConcurrentMap) objectInputStream.readObject());
    }
}
