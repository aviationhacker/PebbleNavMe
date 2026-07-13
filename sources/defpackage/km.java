package defpackage;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import com.google.common.collect.BiMap;
import com.google.common.collect.Collections2;
import com.google.common.collect.ForwardingMapEntry;
import com.google.common.collect.ImmutableBiMap;
import com.google.common.collect.ImmutableListMultimap;
import com.google.common.collect.ImmutableMultimap;
import com.google.common.collect.ImmutableMultiset;
import com.google.common.collect.ImmutableSetMultimap;
import com.google.common.collect.Iterators;
import com.google.common.collect.ListMultimap;
import com.google.common.collect.Maps;
import com.google.common.collect.Multimap;
import com.google.common.collect.Multiset;
import com.google.common.collect.ObjectArrays;
import com.google.common.collect.SetMultimap;
import com.google.common.collect.Sets;
import com.google.common.collect.SortedSetMultimap;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Collection;
import java.util.Comparator;
import java.util.Deque;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.Queue;
import java.util.RandomAccess;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(emulated = true)
public final class km {

    static class o implements Serializable {

        @GwtIncompatible("not needed in emulated source")
        private static final long serialVersionUID = 0;
        final Object g;
        final Object h;

        o(Object obj, @Nullable Object obj2) {
            this.g = Preconditions.checkNotNull(obj);
            this.h = obj2 == null ? this : obj2;
        }

        /* JADX INFO: renamed from: c */
        Object d() {
            return this.g;
        }

        public String toString() {
            String string;
            synchronized (this.h) {
                string = this.g.toString();
            }
            return string;
        }

        @GwtIncompatible("java.io.ObjectOutputStream")
        private void writeObject(ObjectOutputStream objectOutputStream) {
            synchronized (this.h) {
                objectOutputStream.defaultWriteObject();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <E> Collection<E> c(Collection<E> collection, @Nullable Object obj) {
        return new e(collection, obj);
    }

    @VisibleForTesting
    static class e<E> extends o implements Collection<E> {
        private static final long serialVersionUID = 0;

        private e(Collection<E> collection, @Nullable Object obj) {
            super(collection, obj);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // km.o
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Collection<E> d() {
            return (Collection) super.d();
        }

        @Override // java.util.Collection
        public boolean add(E e) {
            boolean zAdd;
            synchronized (this.h) {
                zAdd = d().add(e);
            }
            return zAdd;
        }

        @Override // java.util.Collection
        public boolean addAll(Collection<? extends E> collection) {
            boolean zAddAll;
            synchronized (this.h) {
                zAddAll = d().addAll(collection);
            }
            return zAddAll;
        }

        @Override // java.util.Collection
        public void clear() {
            synchronized (this.h) {
                d().clear();
            }
        }

        public boolean contains(Object obj) {
            boolean zContains;
            synchronized (this.h) {
                zContains = d().contains(obj);
            }
            return zContains;
        }

        public boolean containsAll(Collection<?> collection) {
            boolean zContainsAll;
            synchronized (this.h) {
                zContainsAll = d().containsAll(collection);
            }
            return zContainsAll;
        }

        @Override // java.util.Collection
        public boolean isEmpty() {
            boolean zIsEmpty;
            synchronized (this.h) {
                zIsEmpty = d().isEmpty();
            }
            return zIsEmpty;
        }

        public Iterator<E> iterator() {
            return d().iterator();
        }

        public boolean remove(Object obj) {
            boolean zRemove;
            synchronized (this.h) {
                zRemove = d().remove(obj);
            }
            return zRemove;
        }

        public boolean removeAll(Collection<?> collection) {
            boolean zRemoveAll;
            synchronized (this.h) {
                zRemoveAll = d().removeAll(collection);
            }
            return zRemoveAll;
        }

        public boolean retainAll(Collection<?> collection) {
            boolean zRetainAll;
            synchronized (this.h) {
                zRetainAll = d().retainAll(collection);
            }
            return zRetainAll;
        }

        @Override // java.util.Collection
        public int size() {
            int size;
            synchronized (this.h) {
                size = d().size();
            }
            return size;
        }

        public Object[] toArray() {
            Object[] array;
            synchronized (this.h) {
                array = d().toArray();
            }
            return array;
        }

        public <T> T[] toArray(T[] tArr) {
            T[] tArr2;
            synchronized (this.h) {
                tArr2 = (T[]) d().toArray(tArr);
            }
            return tArr2;
        }
    }

    @VisibleForTesting
    static <E> Set<E> a(Set<E> set, @Nullable Object obj) {
        return new r(set, obj);
    }

    static class r<E> extends e<E> implements Set<E> {
        private static final long serialVersionUID = 0;

        r(Set<E> set, @Nullable Object obj) {
            super(set, obj);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // km.e, km.o
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public Set<E> d() {
            return (Set) super.d();
        }

        public boolean equals(Object obj) {
            boolean zEquals;
            if (obj == this) {
                return true;
            }
            synchronized (this.h) {
                zEquals = d().equals(obj);
            }
            return zEquals;
        }

        @Override // java.util.Collection, java.util.Set
        public int hashCode() {
            int iHashCode;
            synchronized (this.h) {
                iHashCode = d().hashCode();
            }
            return iHashCode;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <E> SortedSet<E> b(SortedSet<E> sortedSet, @Nullable Object obj) {
        return new u(sortedSet, obj);
    }

    static class u<E> extends r<E> implements SortedSet<E> {
        private static final long serialVersionUID = 0;

        u(SortedSet<E> sortedSet, @Nullable Object obj) {
            super(sortedSet, obj);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // km.r
        public SortedSet<E> d() {
            return (SortedSet) super.d();
        }

        @Override // java.util.SortedSet
        public Comparator<? super E> comparator() {
            Comparator<? super E> comparator;
            synchronized (this.h) {
                comparator = d().comparator();
            }
            return comparator;
        }

        public SortedSet<E> subSet(E e, E e2) {
            SortedSet<E> sortedSetB;
            synchronized (this.h) {
                sortedSetB = km.b((SortedSet) d().subSet(e, e2), this.h);
            }
            return sortedSetB;
        }

        public SortedSet<E> headSet(E e) {
            SortedSet<E> sortedSetB;
            synchronized (this.h) {
                sortedSetB = km.b((SortedSet) d().headSet(e), this.h);
            }
            return sortedSetB;
        }

        public SortedSet<E> tailSet(E e) {
            SortedSet<E> sortedSetB;
            synchronized (this.h) {
                sortedSetB = km.b((SortedSet) d().tailSet(e), this.h);
            }
            return sortedSetB;
        }

        @Override // java.util.SortedSet
        public E first() {
            E eFirst;
            synchronized (this.h) {
                eFirst = d().first();
            }
            return eFirst;
        }

        @Override // java.util.SortedSet
        public E last() {
            E eLast;
            synchronized (this.h) {
                eLast = d().last();
            }
            return eLast;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <E> List<E> b(List<E> list, @Nullable Object obj) {
        return list instanceof RandomAccess ? new q(list, obj) : new h(list, obj);
    }

    static class h<E> extends e<E> implements List<E> {
        private static final long serialVersionUID = 0;

        h(List<E> list, @Nullable Object obj) {
            super(list, obj);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // km.e, km.o
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public List<E> d() {
            return (List) super.d();
        }

        @Override // java.util.List
        public void add(int i, E e) {
            synchronized (this.h) {
                c().add(i, e);
            }
        }

        @Override // java.util.List
        public boolean addAll(int i, Collection<? extends E> collection) {
            boolean zAddAll;
            synchronized (this.h) {
                zAddAll = c().addAll(i, collection);
            }
            return zAddAll;
        }

        @Override // java.util.List
        public E get(int i) {
            E e;
            synchronized (this.h) {
                e = c().get(i);
            }
            return e;
        }

        @Override // java.util.List
        public int indexOf(Object obj) {
            int iIndexOf;
            synchronized (this.h) {
                iIndexOf = c().indexOf(obj);
            }
            return iIndexOf;
        }

        @Override // java.util.List
        public int lastIndexOf(Object obj) {
            int iLastIndexOf;
            synchronized (this.h) {
                iLastIndexOf = c().lastIndexOf(obj);
            }
            return iLastIndexOf;
        }

        @Override // java.util.List
        public ListIterator<E> listIterator() {
            return c().listIterator();
        }

        @Override // java.util.List
        public ListIterator<E> listIterator(int i) {
            return c().listIterator(i);
        }

        @Override // java.util.List
        public E remove(int i) {
            E eRemove;
            synchronized (this.h) {
                eRemove = c().remove(i);
            }
            return eRemove;
        }

        @Override // java.util.List
        public E set(int i, E e) {
            E e2;
            synchronized (this.h) {
                e2 = c().set(i, e);
            }
            return e2;
        }

        @Override // java.util.List
        public List<E> subList(int i, int i2) {
            List<E> listB;
            synchronized (this.h) {
                listB = km.b((List) c().subList(i, i2), this.h);
            }
            return listB;
        }

        @Override // java.util.Collection, java.util.List
        public boolean equals(Object obj) {
            boolean zEquals;
            if (obj == this) {
                return true;
            }
            synchronized (this.h) {
                zEquals = c().equals(obj);
            }
            return zEquals;
        }

        @Override // java.util.Collection, java.util.List
        public int hashCode() {
            int iHashCode;
            synchronized (this.h) {
                iHashCode = c().hashCode();
            }
            return iHashCode;
        }
    }

    static class q<E> extends h<E> implements RandomAccess {
        private static final long serialVersionUID = 0;

        q(List<E> list, @Nullable Object obj) {
            super(list, obj);
        }
    }

    static <E> Multiset<E> a(Multiset<E> multiset, @Nullable Object obj) {
        return ((multiset instanceof l) || (multiset instanceof ImmutableMultiset)) ? multiset : new l(multiset, obj);
    }

    static class l<E> extends e<E> implements Multiset<E> {
        private static final long serialVersionUID = 0;
        transient Set<E> a;
        transient Set<Multiset.Entry<E>> b;

        l(Multiset<E> multiset, @Nullable Object obj) {
            super(multiset, obj);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // km.e, km.o
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Multiset<E> d() {
            return (Multiset) super.d();
        }

        @Override // com.google.common.collect.Multiset
        public int count(Object obj) {
            int iCount;
            synchronized (this.h) {
                iCount = d().count(obj);
            }
            return iCount;
        }

        @Override // com.google.common.collect.Multiset
        public int add(E e, int i) {
            int iAdd;
            synchronized (this.h) {
                iAdd = d().add(e, i);
            }
            return iAdd;
        }

        @Override // com.google.common.collect.Multiset
        public int remove(Object obj, int i) {
            int iRemove;
            synchronized (this.h) {
                iRemove = d().remove(obj, i);
            }
            return iRemove;
        }

        @Override // com.google.common.collect.Multiset
        public int setCount(E e, int i) {
            int count;
            synchronized (this.h) {
                count = d().setCount(e, i);
            }
            return count;
        }

        @Override // com.google.common.collect.Multiset
        public boolean setCount(E e, int i, int i2) {
            boolean count;
            synchronized (this.h) {
                count = d().setCount(e, i, i2);
            }
            return count;
        }

        @Override // com.google.common.collect.Multiset
        public Set<E> elementSet() {
            Set<E> set;
            synchronized (this.h) {
                if (this.a == null) {
                    this.a = km.c((Set) d().elementSet(), this.h);
                }
                set = this.a;
            }
            return set;
        }

        @Override // com.google.common.collect.Multiset
        public Set<Multiset.Entry<E>> entrySet() {
            Set<Multiset.Entry<E>> set;
            synchronized (this.h) {
                if (this.b == null) {
                    this.b = km.c((Set) d().entrySet(), this.h);
                }
                set = this.b;
            }
            return set;
        }

        @Override // java.util.Collection, com.google.common.collect.Multiset
        public boolean equals(Object obj) {
            boolean zEquals;
            if (obj == this) {
                return true;
            }
            synchronized (this.h) {
                zEquals = d().equals(obj);
            }
            return zEquals;
        }

        @Override // java.util.Collection, com.google.common.collect.Multiset
        public int hashCode() {
            int iHashCode;
            synchronized (this.h) {
                iHashCode = d().hashCode();
            }
            return iHashCode;
        }
    }

    public static <K, V> Multimap<K, V> a(Multimap<K, V> multimap, @Nullable Object obj) {
        return ((multimap instanceof k) || (multimap instanceof ImmutableMultimap)) ? multimap : new k(multimap, obj);
    }

    static class k<K, V> extends o implements Multimap<K, V> {
        private static final long serialVersionUID = 0;
        transient Set<K> a;
        transient Collection<V> b;
        transient Collection<Map.Entry<K, V>> c;
        transient Map<K, Collection<V>> d;
        transient Multiset<K> e;

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // km.o
        /* JADX INFO: renamed from: b */
        public Multimap<K, V> d() {
            return (Multimap) super.d();
        }

        k(Multimap<K, V> multimap, @Nullable Object obj) {
            super(multimap, obj);
        }

        @Override // com.google.common.collect.Multimap
        public int size() {
            int size;
            synchronized (this.h) {
                size = d().size();
            }
            return size;
        }

        @Override // com.google.common.collect.Multimap
        public boolean isEmpty() {
            boolean zIsEmpty;
            synchronized (this.h) {
                zIsEmpty = d().isEmpty();
            }
            return zIsEmpty;
        }

        @Override // com.google.common.collect.Multimap
        public boolean containsKey(Object obj) {
            boolean zContainsKey;
            synchronized (this.h) {
                zContainsKey = d().containsKey(obj);
            }
            return zContainsKey;
        }

        @Override // com.google.common.collect.Multimap
        public boolean containsValue(Object obj) {
            boolean zContainsValue;
            synchronized (this.h) {
                zContainsValue = d().containsValue(obj);
            }
            return zContainsValue;
        }

        @Override // com.google.common.collect.Multimap
        public boolean containsEntry(Object obj, Object obj2) {
            boolean zContainsEntry;
            synchronized (this.h) {
                zContainsEntry = d().containsEntry(obj, obj2);
            }
            return zContainsEntry;
        }

        public Collection<V> get(K k) {
            Collection<V> collectionD;
            synchronized (this.h) {
                collectionD = km.d(d().get(k), this.h);
            }
            return collectionD;
        }

        @Override // com.google.common.collect.Multimap
        public boolean put(K k, V v) {
            boolean zPut;
            synchronized (this.h) {
                zPut = d().put(k, v);
            }
            return zPut;
        }

        @Override // com.google.common.collect.Multimap
        public boolean putAll(K k, Iterable<? extends V> iterable) {
            boolean zPutAll;
            synchronized (this.h) {
                zPutAll = d().putAll(k, iterable);
            }
            return zPutAll;
        }

        @Override // com.google.common.collect.Multimap
        public boolean putAll(Multimap<? extends K, ? extends V> multimap) {
            boolean zPutAll;
            synchronized (this.h) {
                zPutAll = d().putAll(multimap);
            }
            return zPutAll;
        }

        public Collection<V> replaceValues(K k, Iterable<? extends V> iterable) {
            Collection<V> collectionReplaceValues;
            synchronized (this.h) {
                collectionReplaceValues = d().replaceValues(k, iterable);
            }
            return collectionReplaceValues;
        }

        @Override // com.google.common.collect.Multimap
        public boolean remove(Object obj, Object obj2) {
            boolean zRemove;
            synchronized (this.h) {
                zRemove = d().remove(obj, obj2);
            }
            return zRemove;
        }

        public Collection<V> removeAll(Object obj) {
            Collection<V> collectionRemoveAll;
            synchronized (this.h) {
                collectionRemoveAll = d().removeAll(obj);
            }
            return collectionRemoveAll;
        }

        @Override // com.google.common.collect.Multimap
        public void clear() {
            synchronized (this.h) {
                d().clear();
            }
        }

        @Override // com.google.common.collect.Multimap
        public Set<K> keySet() {
            Set<K> set;
            synchronized (this.h) {
                if (this.a == null) {
                    this.a = km.c((Set) d().keySet(), this.h);
                }
                set = this.a;
            }
            return set;
        }

        @Override // com.google.common.collect.Multimap
        public Collection<V> values() {
            Collection<V> collection;
            synchronized (this.h) {
                if (this.b == null) {
                    this.b = km.c(d().values(), this.h);
                }
                collection = this.b;
            }
            return collection;
        }

        @Override // com.google.common.collect.Multimap
        public Collection<Map.Entry<K, V>> entries() {
            Collection<Map.Entry<K, V>> collection;
            synchronized (this.h) {
                if (this.c == null) {
                    this.c = km.d(d().entries(), this.h);
                }
                collection = this.c;
            }
            return collection;
        }

        @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public Map<K, Collection<V>> asMap() {
            Map<K, Collection<V>> map;
            synchronized (this.h) {
                if (this.d == null) {
                    this.d = new a(d().asMap(), this.h);
                }
                map = this.d;
            }
            return map;
        }

        @Override // com.google.common.collect.Multimap
        public Multiset<K> keys() {
            Multiset<K> multiset;
            synchronized (this.h) {
                if (this.e == null) {
                    this.e = km.a((Multiset) d().keys(), this.h);
                }
                multiset = this.e;
            }
            return multiset;
        }

        @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public boolean equals(Object obj) {
            boolean zEquals;
            if (obj == this) {
                return true;
            }
            synchronized (this.h) {
                zEquals = d().equals(obj);
            }
            return zEquals;
        }

        @Override // com.google.common.collect.Multimap
        public int hashCode() {
            int iHashCode;
            synchronized (this.h) {
                iHashCode = d().hashCode();
            }
            return iHashCode;
        }
    }

    public static <K, V> ListMultimap<K, V> a(ListMultimap<K, V> listMultimap, @Nullable Object obj) {
        return ((listMultimap instanceof i) || (listMultimap instanceof ImmutableListMultimap)) ? listMultimap : new i(listMultimap, obj);
    }

    static class i<K, V> extends k<K, V> implements ListMultimap<K, V> {
        private static final long serialVersionUID = 0;

        i(ListMultimap<K, V> listMultimap, @Nullable Object obj) {
            super(listMultimap, obj);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // km.k, km.o
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public ListMultimap<K, V> d() {
            return (ListMultimap) super.d();
        }

        @Override // km.k, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public List<V> get(K k) {
            List<V> listB;
            synchronized (this.h) {
                listB = km.b((List) b().get((Object) k), this.h);
            }
            return listB;
        }

        @Override // km.k, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public List<V> removeAll(Object obj) {
            List<V> listRemoveAll;
            synchronized (this.h) {
                listRemoveAll = b().removeAll(obj);
            }
            return listRemoveAll;
        }

        @Override // km.k, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public List<V> replaceValues(K k, Iterable<? extends V> iterable) {
            List<V> listReplaceValues;
            synchronized (this.h) {
                listReplaceValues = b().replaceValues((Object) k, (Iterable) iterable);
            }
            return listReplaceValues;
        }
    }

    public static <K, V> SetMultimap<K, V> a(SetMultimap<K, V> setMultimap, @Nullable Object obj) {
        return ((setMultimap instanceof s) || (setMultimap instanceof ImmutableSetMultimap)) ? setMultimap : new s(setMultimap, obj);
    }

    static class s<K, V> extends k<K, V> implements SetMultimap<K, V> {
        private static final long serialVersionUID = 0;
        transient Set<Map.Entry<K, V>> f;

        s(SetMultimap<K, V> setMultimap, @Nullable Object obj) {
            super(setMultimap, obj);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // km.k, km.o
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public SetMultimap<K, V> d() {
            return (SetMultimap) super.d();
        }

        @Override // km.k, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public Set<V> get(K k) {
            Set<V> setA;
            synchronized (this.h) {
                setA = km.a((Set) d().get((Object) k), this.h);
            }
            return setA;
        }

        @Override // km.k, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public Set<V> removeAll(Object obj) {
            Set<V> setRemoveAll;
            synchronized (this.h) {
                setRemoveAll = d().removeAll(obj);
            }
            return setRemoveAll;
        }

        @Override // km.k, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public Set<V> replaceValues(K k, Iterable<? extends V> iterable) {
            Set<V> setReplaceValues;
            synchronized (this.h) {
                setReplaceValues = d().replaceValues((Object) k, (Iterable) iterable);
            }
            return setReplaceValues;
        }

        @Override // km.k, com.google.common.collect.Multimap
        public Set<Map.Entry<K, V>> entries() {
            Set<Map.Entry<K, V>> set;
            synchronized (this.h) {
                if (this.f == null) {
                    this.f = km.a((Set) d().entries(), this.h);
                }
                set = this.f;
            }
            return set;
        }
    }

    public static <K, V> SortedSetMultimap<K, V> a(SortedSetMultimap<K, V> sortedSetMultimap, @Nullable Object obj) {
        return sortedSetMultimap instanceof v ? sortedSetMultimap : new v(sortedSetMultimap, obj);
    }

    static class v<K, V> extends s<K, V> implements SortedSetMultimap<K, V> {
        private static final long serialVersionUID = 0;

        v(SortedSetMultimap<K, V> sortedSetMultimap, @Nullable Object obj) {
            super(sortedSetMultimap, obj);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // km.s, km.k, km.o
        public SortedSetMultimap<K, V> d() {
            return (SortedSetMultimap) super.d();
        }

        @Override // km.s, km.k, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public SortedSet<V> get(K k) {
            SortedSet<V> sortedSetB;
            synchronized (this.h) {
                sortedSetB = km.b((SortedSet) d().get((Object) k), this.h);
            }
            return sortedSetB;
        }

        @Override // km.s, km.k, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public SortedSet<V> removeAll(Object obj) {
            SortedSet<V> sortedSetRemoveAll;
            synchronized (this.h) {
                sortedSetRemoveAll = d().removeAll(obj);
            }
            return sortedSetRemoveAll;
        }

        @Override // km.s, km.k, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public SortedSet<V> replaceValues(K k, Iterable<? extends V> iterable) {
            SortedSet<V> sortedSetReplaceValues;
            synchronized (this.h) {
                sortedSetReplaceValues = d().replaceValues((Object) k, (Iterable) iterable);
            }
            return sortedSetReplaceValues;
        }

        @Override // com.google.common.collect.SortedSetMultimap
        public Comparator<? super V> valueComparator() {
            Comparator<? super V> comparatorValueComparator;
            synchronized (this.h) {
                comparatorValueComparator = d().valueComparator();
            }
            return comparatorValueComparator;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <E> Collection<E> d(Collection<E> collection, @Nullable Object obj) {
        if (collection instanceof SortedSet) {
            return b((SortedSet) collection, obj);
        }
        if (collection instanceof Set) {
            return a((Set) collection, obj);
        }
        if (collection instanceof List) {
            return b((List) collection, obj);
        }
        return c(collection, obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <E> Set<E> c(Set<E> set, @Nullable Object obj) {
        return set instanceof SortedSet ? b((SortedSet) set, obj) : a((Set) set, obj);
    }

    static class b<K, V> extends r<Map.Entry<K, Collection<V>>> {
        private static final long serialVersionUID = 0;

        b(Set<Map.Entry<K, Collection<V>>> set, @Nullable Object obj) {
            super(set, obj);
        }

        @Override // km.e, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, Collection<V>>> iterator() {
            return new kn<Map.Entry<K, Collection<V>>, Map.Entry<K, Collection<V>>>(super.iterator()) { // from class: km.b.1
                /* JADX INFO: Access modifiers changed from: package-private */
                @Override // defpackage.kn
                public Map.Entry<K, Collection<V>> a(final Map.Entry<K, Collection<V>> entry) {
                    return new ForwardingMapEntry<K, Collection<V>>() { // from class: km.b.1.1
                        /* JADX INFO: Access modifiers changed from: protected */
                        @Override // com.google.common.collect.ForwardingMapEntry, com.google.common.collect.ForwardingObject
                        public Map.Entry<K, Collection<V>> delegate() {
                            return entry;
                        }

                        @Override // com.google.common.collect.ForwardingMapEntry, java.util.Map.Entry
                        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                        public Collection<V> getValue() {
                            return km.d((Collection) entry.getValue(), b.this.h);
                        }
                    };
                }
            };
        }

        @Override // km.e, java.util.Collection, java.util.Set
        public Object[] toArray() {
            Object[] objArrA;
            synchronized (this.h) {
                objArrA = ObjectArrays.a(d());
            }
            return objArrA;
        }

        @Override // km.e, java.util.Collection, java.util.Set
        public <T> T[] toArray(T[] tArr) {
            T[] tArr2;
            synchronized (this.h) {
                tArr2 = (T[]) ObjectArrays.a((Collection<?>) d(), (Object[]) tArr);
            }
            return tArr2;
        }

        @Override // km.e, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            boolean zA;
            synchronized (this.h) {
                zA = Maps.a(d(), obj);
            }
            return zA;
        }

        @Override // km.e, java.util.Collection, java.util.Set
        public boolean containsAll(Collection<?> collection) {
            boolean zA;
            synchronized (this.h) {
                zA = Collections2.a((Collection<?>) d(), collection);
            }
            return zA;
        }

        @Override // km.r, java.util.Collection, java.util.Set
        public boolean equals(Object obj) {
            boolean zA;
            if (obj == this) {
                return true;
            }
            synchronized (this.h) {
                zA = Sets.a(d(), obj);
            }
            return zA;
        }

        @Override // km.e, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            boolean zB;
            synchronized (this.h) {
                zB = Maps.b(d(), obj);
            }
            return zB;
        }

        @Override // km.e, java.util.Collection, java.util.Set
        public boolean removeAll(Collection<?> collection) {
            boolean zRemoveAll;
            synchronized (this.h) {
                zRemoveAll = Iterators.removeAll(d().iterator(), collection);
            }
            return zRemoveAll;
        }

        @Override // km.e, java.util.Collection, java.util.Set
        public boolean retainAll(Collection<?> collection) {
            boolean zRetainAll;
            synchronized (this.h) {
                zRetainAll = Iterators.retainAll(d().iterator(), collection);
            }
            return zRetainAll;
        }
    }

    static class j<K, V> extends o implements Map<K, V> {
        private static final long serialVersionUID = 0;
        transient Set<K> c;
        transient Collection<V> d;
        transient Set<Map.Entry<K, V>> e;

        j(Map<K, V> map, @Nullable Object obj) {
            super(map, obj);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // km.o
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Map<K, V> d() {
            return (Map) super.d();
        }

        @Override // java.util.Map
        public void clear() {
            synchronized (this.h) {
                d().clear();
            }
        }

        @Override // java.util.Map
        public boolean containsKey(Object obj) {
            boolean zContainsKey;
            synchronized (this.h) {
                zContainsKey = d().containsKey(obj);
            }
            return zContainsKey;
        }

        public boolean containsValue(Object obj) {
            boolean zContainsValue;
            synchronized (this.h) {
                zContainsValue = d().containsValue(obj);
            }
            return zContainsValue;
        }

        public Set<Map.Entry<K, V>> entrySet() {
            Set<Map.Entry<K, V>> set;
            synchronized (this.h) {
                if (this.e == null) {
                    this.e = km.a((Set) d().entrySet(), this.h);
                }
                set = this.e;
            }
            return set;
        }

        public V get(Object obj) {
            V v;
            synchronized (this.h) {
                v = d().get(obj);
            }
            return v;
        }

        @Override // java.util.Map
        public boolean isEmpty() {
            boolean zIsEmpty;
            synchronized (this.h) {
                zIsEmpty = d().isEmpty();
            }
            return zIsEmpty;
        }

        @Override // java.util.Map
        public Set<K> keySet() {
            Set<K> set;
            synchronized (this.h) {
                if (this.c == null) {
                    this.c = km.a((Set) d().keySet(), this.h);
                }
                set = this.c;
            }
            return set;
        }

        @Override // java.util.Map
        public V put(K k, V v) {
            V vPut;
            synchronized (this.h) {
                vPut = d().put(k, v);
            }
            return vPut;
        }

        @Override // java.util.Map
        public void putAll(Map<? extends K, ? extends V> map) {
            synchronized (this.h) {
                d().putAll(map);
            }
        }

        @Override // java.util.Map
        public V remove(Object obj) {
            V vRemove;
            synchronized (this.h) {
                vRemove = d().remove(obj);
            }
            return vRemove;
        }

        @Override // java.util.Map
        public int size() {
            int size;
            synchronized (this.h) {
                size = d().size();
            }
            return size;
        }

        public Collection<V> values() {
            Collection<V> collection;
            synchronized (this.h) {
                if (this.d == null) {
                    this.d = km.c(d().values(), this.h);
                }
                collection = this.d;
            }
            return collection;
        }

        @Override // java.util.Map
        public boolean equals(Object obj) {
            boolean zEquals;
            if (obj == this) {
                return true;
            }
            synchronized (this.h) {
                zEquals = d().equals(obj);
            }
            return zEquals;
        }

        @Override // java.util.Map
        public int hashCode() {
            int iHashCode;
            synchronized (this.h) {
                iHashCode = d().hashCode();
            }
            return iHashCode;
        }
    }

    static <K, V> SortedMap<K, V> a(SortedMap<K, V> sortedMap, @Nullable Object obj) {
        return new t(sortedMap, obj);
    }

    static class t<K, V> extends j<K, V> implements SortedMap<K, V> {
        private static final long serialVersionUID = 0;

        t(SortedMap<K, V> sortedMap, @Nullable Object obj) {
            super(sortedMap, obj);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // km.j, km.o
        public SortedMap<K, V> d() {
            return (SortedMap) super.d();
        }

        @Override // java.util.SortedMap
        public Comparator<? super K> comparator() {
            Comparator<? super K> comparator;
            synchronized (this.h) {
                comparator = d().comparator();
            }
            return comparator;
        }

        @Override // java.util.SortedMap
        public K firstKey() {
            K kFirstKey;
            synchronized (this.h) {
                kFirstKey = d().firstKey();
            }
            return kFirstKey;
        }

        public SortedMap<K, V> headMap(K k) {
            SortedMap<K, V> sortedMapA;
            synchronized (this.h) {
                sortedMapA = km.a(d().headMap(k), this.h);
            }
            return sortedMapA;
        }

        @Override // java.util.SortedMap
        public K lastKey() {
            K kLastKey;
            synchronized (this.h) {
                kLastKey = d().lastKey();
            }
            return kLastKey;
        }

        public SortedMap<K, V> subMap(K k, K k2) {
            SortedMap<K, V> sortedMapA;
            synchronized (this.h) {
                sortedMapA = km.a(d().subMap(k, k2), this.h);
            }
            return sortedMapA;
        }

        public SortedMap<K, V> tailMap(K k) {
            SortedMap<K, V> sortedMapA;
            synchronized (this.h) {
                sortedMapA = km.a(d().tailMap(k), this.h);
            }
            return sortedMapA;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <K, V> BiMap<K, V> a(BiMap<K, V> biMap, @Nullable Object obj) {
        BiMap biMap2 = null;
        Object[] objArr = 0;
        if ((biMap instanceof d) || (biMap instanceof ImmutableBiMap)) {
            return biMap;
        }
        return new d(biMap, obj, biMap2);
    }

    @VisibleForTesting
    static class d<K, V> extends j<K, V> implements BiMap<K, V>, Serializable {
        private static final long serialVersionUID = 0;
        private transient Set<V> a;
        private transient BiMap<V, K> b;

        private d(BiMap<K, V> biMap, @Nullable Object obj, @Nullable BiMap<V, K> biMap2) {
            super(biMap, obj);
            this.b = biMap2;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // km.j, km.o
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public BiMap<K, V> d() {
            return (BiMap) super.d();
        }

        @Override // km.j, java.util.Map
        public Set<V> values() {
            Set<V> set;
            synchronized (this.h) {
                if (this.a == null) {
                    this.a = km.a((Set) b().values(), this.h);
                }
                set = this.a;
            }
            return set;
        }

        @Override // com.google.common.collect.BiMap
        public V forcePut(K k, V v) {
            V vForcePut;
            synchronized (this.h) {
                vForcePut = b().forcePut(k, v);
            }
            return vForcePut;
        }

        @Override // com.google.common.collect.BiMap
        public BiMap<V, K> inverse() {
            BiMap<V, K> biMap;
            synchronized (this.h) {
                if (this.b == null) {
                    this.b = new d(b().inverse(), this.h, this);
                }
                biMap = this.b;
            }
            return biMap;
        }
    }

    static class a<K, V> extends j<K, Collection<V>> {
        private static final long serialVersionUID = 0;
        transient Set<Map.Entry<K, Collection<V>>> a;
        transient Collection<Collection<V>> b;

        a(Map<K, Collection<V>> map, @Nullable Object obj) {
            super(map, obj);
        }

        @Override // km.j, java.util.Map
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Collection<V> get(Object obj) {
            Collection<V> collectionD;
            synchronized (this.h) {
                Collection collection = (Collection) super.get(obj);
                collectionD = collection == null ? null : km.d(collection, this.h);
            }
            return collectionD;
        }

        @Override // km.j, java.util.Map
        public Set<Map.Entry<K, Collection<V>>> entrySet() {
            Set<Map.Entry<K, Collection<V>>> set;
            synchronized (this.h) {
                if (this.a == null) {
                    this.a = new b(d().entrySet(), this.h);
                }
                set = this.a;
            }
            return set;
        }

        @Override // km.j, java.util.Map
        public Collection<Collection<V>> values() {
            Collection<Collection<V>> collection;
            synchronized (this.h) {
                if (this.b == null) {
                    this.b = new c(d().values(), this.h);
                }
                collection = this.b;
            }
            return collection;
        }

        @Override // km.j, java.util.Map
        public boolean containsValue(Object obj) {
            return values().contains(obj);
        }
    }

    static class c<V> extends e<Collection<V>> {
        private static final long serialVersionUID = 0;

        c(Collection<Collection<V>> collection, @Nullable Object obj) {
            super(collection, obj);
        }

        @Override // km.e, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Collection<V>> iterator() {
            return new kn<Collection<V>, Collection<V>>(super.iterator()) { // from class: km.c.1
                /* JADX INFO: Access modifiers changed from: package-private */
                @Override // defpackage.kn
                public Collection<V> a(Collection<V> collection) {
                    return km.d(collection, c.this.h);
                }
            };
        }
    }

    @GwtIncompatible("NavigableSet")
    @VisibleForTesting
    static class n<E> extends u<E> implements NavigableSet<E> {
        private static final long serialVersionUID = 0;
        transient NavigableSet<E> a;

        n(NavigableSet<E> navigableSet, @Nullable Object obj) {
            super(navigableSet, obj);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // km.u, km.r
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public NavigableSet<E> d() {
            return (NavigableSet) super.d();
        }

        @Override // java.util.NavigableSet
        public E ceiling(E e) {
            E eCeiling;
            synchronized (this.h) {
                eCeiling = d().ceiling(e);
            }
            return eCeiling;
        }

        @Override // java.util.NavigableSet
        public Iterator<E> descendingIterator() {
            return d().descendingIterator();
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> descendingSet() {
            NavigableSet<E> navigableSetA;
            synchronized (this.h) {
                if (this.a == null) {
                    navigableSetA = km.a((NavigableSet) d().descendingSet(), this.h);
                    this.a = navigableSetA;
                } else {
                    navigableSetA = this.a;
                }
            }
            return navigableSetA;
        }

        @Override // java.util.NavigableSet
        public E floor(E e) {
            E eFloor;
            synchronized (this.h) {
                eFloor = d().floor(e);
            }
            return eFloor;
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> headSet(E e, boolean z) {
            NavigableSet<E> navigableSetA;
            synchronized (this.h) {
                navigableSetA = km.a((NavigableSet) d().headSet(e, z), this.h);
            }
            return navigableSetA;
        }

        @Override // java.util.NavigableSet
        public E higher(E e) {
            E eHigher;
            synchronized (this.h) {
                eHigher = d().higher(e);
            }
            return eHigher;
        }

        @Override // java.util.NavigableSet
        public E lower(E e) {
            E eLower;
            synchronized (this.h) {
                eLower = d().lower(e);
            }
            return eLower;
        }

        @Override // java.util.NavigableSet
        public E pollFirst() {
            E ePollFirst;
            synchronized (this.h) {
                ePollFirst = d().pollFirst();
            }
            return ePollFirst;
        }

        @Override // java.util.NavigableSet
        public E pollLast() {
            E ePollLast;
            synchronized (this.h) {
                ePollLast = d().pollLast();
            }
            return ePollLast;
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> subSet(E e, boolean z, E e2, boolean z2) {
            NavigableSet<E> navigableSetA;
            synchronized (this.h) {
                navigableSetA = km.a((NavigableSet) d().subSet(e, z, e2, z2), this.h);
            }
            return navigableSetA;
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> tailSet(E e, boolean z) {
            NavigableSet<E> navigableSetA;
            synchronized (this.h) {
                navigableSetA = km.a((NavigableSet) d().tailSet(e, z), this.h);
            }
            return navigableSetA;
        }

        @Override // km.u, java.util.SortedSet, java.util.NavigableSet
        public SortedSet<E> headSet(E e) {
            return headSet(e, false);
        }

        @Override // km.u, java.util.SortedSet, java.util.NavigableSet
        public SortedSet<E> subSet(E e, E e2) {
            return subSet(e, true, e2, false);
        }

        @Override // km.u, java.util.SortedSet, java.util.NavigableSet
        public SortedSet<E> tailSet(E e) {
            return tailSet(e, true);
        }
    }

    @GwtIncompatible("NavigableSet")
    static <E> NavigableSet<E> a(NavigableSet<E> navigableSet, @Nullable Object obj) {
        return new n(navigableSet, obj);
    }

    @GwtIncompatible("NavigableSet")
    public static <E> NavigableSet<E> a(NavigableSet<E> navigableSet) {
        return a((NavigableSet) navigableSet, (Object) null);
    }

    @GwtIncompatible("NavigableMap")
    public static <K, V> NavigableMap<K, V> a(NavigableMap<K, V> navigableMap) {
        return a((NavigableMap) navigableMap, (Object) null);
    }

    @GwtIncompatible("NavigableMap")
    static <K, V> NavigableMap<K, V> a(NavigableMap<K, V> navigableMap, @Nullable Object obj) {
        return new m(navigableMap, obj);
    }

    @GwtIncompatible("NavigableMap")
    @VisibleForTesting
    static class m<K, V> extends t<K, V> implements NavigableMap<K, V> {
        private static final long serialVersionUID = 0;
        transient NavigableSet<K> a;
        transient NavigableMap<K, V> b;
        transient NavigableSet<K> f;

        m(NavigableMap<K, V> navigableMap, @Nullable Object obj) {
            super(navigableMap, obj);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // km.t
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public NavigableMap<K, V> d() {
            return (NavigableMap) super.d();
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> ceilingEntry(K k) {
            Map.Entry<K, V> entryB;
            synchronized (this.h) {
                entryB = km.b(d().ceilingEntry(k), this.h);
            }
            return entryB;
        }

        @Override // java.util.NavigableMap
        public K ceilingKey(K k) {
            K kCeilingKey;
            synchronized (this.h) {
                kCeilingKey = d().ceilingKey(k);
            }
            return kCeilingKey;
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> descendingKeySet() {
            NavigableSet<K> navigableSetA;
            synchronized (this.h) {
                if (this.a == null) {
                    navigableSetA = km.a((NavigableSet) d().descendingKeySet(), this.h);
                    this.a = navigableSetA;
                } else {
                    navigableSetA = this.a;
                }
            }
            return navigableSetA;
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> descendingMap() {
            NavigableMap<K, V> navigableMapA;
            synchronized (this.h) {
                if (this.b == null) {
                    navigableMapA = km.a((NavigableMap) d().descendingMap(), this.h);
                    this.b = navigableMapA;
                } else {
                    navigableMapA = this.b;
                }
            }
            return navigableMapA;
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> firstEntry() {
            Map.Entry<K, V> entryB;
            synchronized (this.h) {
                entryB = km.b(d().firstEntry(), this.h);
            }
            return entryB;
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> floorEntry(K k) {
            Map.Entry<K, V> entryB;
            synchronized (this.h) {
                entryB = km.b(d().floorEntry(k), this.h);
            }
            return entryB;
        }

        @Override // java.util.NavigableMap
        public K floorKey(K k) {
            K kFloorKey;
            synchronized (this.h) {
                kFloorKey = d().floorKey(k);
            }
            return kFloorKey;
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> headMap(K k, boolean z) {
            NavigableMap<K, V> navigableMapA;
            synchronized (this.h) {
                navigableMapA = km.a((NavigableMap) d().headMap(k, z), this.h);
            }
            return navigableMapA;
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> higherEntry(K k) {
            Map.Entry<K, V> entryB;
            synchronized (this.h) {
                entryB = km.b(d().higherEntry(k), this.h);
            }
            return entryB;
        }

        @Override // java.util.NavigableMap
        public K higherKey(K k) {
            K kHigherKey;
            synchronized (this.h) {
                kHigherKey = d().higherKey(k);
            }
            return kHigherKey;
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> lastEntry() {
            Map.Entry<K, V> entryB;
            synchronized (this.h) {
                entryB = km.b(d().lastEntry(), this.h);
            }
            return entryB;
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> lowerEntry(K k) {
            Map.Entry<K, V> entryB;
            synchronized (this.h) {
                entryB = km.b(d().lowerEntry(k), this.h);
            }
            return entryB;
        }

        @Override // java.util.NavigableMap
        public K lowerKey(K k) {
            K kLowerKey;
            synchronized (this.h) {
                kLowerKey = d().lowerKey(k);
            }
            return kLowerKey;
        }

        @Override // km.j, java.util.Map
        public Set<K> keySet() {
            return navigableKeySet();
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> navigableKeySet() {
            NavigableSet<K> navigableSetA;
            synchronized (this.h) {
                if (this.f == null) {
                    navigableSetA = km.a((NavigableSet) d().navigableKeySet(), this.h);
                    this.f = navigableSetA;
                } else {
                    navigableSetA = this.f;
                }
            }
            return navigableSetA;
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> pollFirstEntry() {
            Map.Entry<K, V> entryB;
            synchronized (this.h) {
                entryB = km.b(d().pollFirstEntry(), this.h);
            }
            return entryB;
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> pollLastEntry() {
            Map.Entry<K, V> entryB;
            synchronized (this.h) {
                entryB = km.b(d().pollLastEntry(), this.h);
            }
            return entryB;
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> subMap(K k, boolean z, K k2, boolean z2) {
            NavigableMap<K, V> navigableMapA;
            synchronized (this.h) {
                navigableMapA = km.a((NavigableMap) d().subMap(k, z, k2, z2), this.h);
            }
            return navigableMapA;
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> tailMap(K k, boolean z) {
            NavigableMap<K, V> navigableMapA;
            synchronized (this.h) {
                navigableMapA = km.a((NavigableMap) d().tailMap(k, z), this.h);
            }
            return navigableMapA;
        }

        @Override // km.t, java.util.SortedMap, java.util.NavigableMap
        public SortedMap<K, V> headMap(K k) {
            return headMap(k, false);
        }

        @Override // km.t, java.util.SortedMap, java.util.NavigableMap
        public SortedMap<K, V> subMap(K k, K k2) {
            return subMap(k, true, k2, false);
        }

        @Override // km.t, java.util.SortedMap, java.util.NavigableMap
        public SortedMap<K, V> tailMap(K k) {
            return tailMap(k, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @GwtIncompatible("works but is needed only for NavigableMap")
    public static <K, V> Map.Entry<K, V> b(@Nullable Map.Entry<K, V> entry, @Nullable Object obj) {
        if (entry == null) {
            return null;
        }
        return new g(entry, obj);
    }

    @GwtIncompatible("works but is needed only for NavigableMap")
    static class g<K, V> extends o implements Map.Entry<K, V> {
        private static final long serialVersionUID = 0;

        g(Map.Entry<K, V> entry, @Nullable Object obj) {
            super(entry, obj);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // km.o
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Map.Entry<K, V> d() {
            return (Map.Entry) super.d();
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            boolean zEquals;
            synchronized (this.h) {
                zEquals = d().equals(obj);
            }
            return zEquals;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            int iHashCode;
            synchronized (this.h) {
                iHashCode = d().hashCode();
            }
            return iHashCode;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            K key;
            synchronized (this.h) {
                key = d().getKey();
            }
            return key;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            V value;
            synchronized (this.h) {
                value = d().getValue();
            }
            return value;
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            V value;
            synchronized (this.h) {
                value = d().setValue(v);
            }
            return value;
        }
    }

    public static <E> Queue<E> a(Queue<E> queue, @Nullable Object obj) {
        return queue instanceof p ? queue : new p(queue, obj);
    }

    static class p<E> extends e<E> implements Queue<E> {
        private static final long serialVersionUID = 0;

        p(Queue<E> queue, @Nullable Object obj) {
            super(queue, obj);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // km.e, km.o
        public Queue<E> d() {
            return (Queue) super.d();
        }

        @Override // java.util.Queue
        public E element() {
            E eElement;
            synchronized (this.h) {
                eElement = d().element();
            }
            return eElement;
        }

        @Override // java.util.Queue
        public boolean offer(E e) {
            boolean zOffer;
            synchronized (this.h) {
                zOffer = d().offer(e);
            }
            return zOffer;
        }

        @Override // java.util.Queue
        public E peek() {
            E ePeek;
            synchronized (this.h) {
                ePeek = d().peek();
            }
            return ePeek;
        }

        @Override // java.util.Queue
        public E poll() {
            E ePoll;
            synchronized (this.h) {
                ePoll = d().poll();
            }
            return ePoll;
        }

        @Override // java.util.Queue
        public E remove() {
            E eRemove;
            synchronized (this.h) {
                eRemove = d().remove();
            }
            return eRemove;
        }
    }

    @GwtIncompatible("Deque")
    public static <E> Deque<E> a(Deque<E> deque, @Nullable Object obj) {
        return new f(deque, obj);
    }

    @GwtIncompatible("Deque")
    static final class f<E> extends p<E> implements Deque<E> {
        private static final long serialVersionUID = 0;

        f(Deque<E> deque, @Nullable Object obj) {
            super(deque, obj);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // km.p
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public Deque<E> d() {
            return (Deque) super.d();
        }

        @Override // java.util.Deque
        public void addFirst(E e) {
            synchronized (this.h) {
                c().addFirst(e);
            }
        }

        @Override // java.util.Deque
        public void addLast(E e) {
            synchronized (this.h) {
                c().addLast(e);
            }
        }

        @Override // java.util.Deque
        public boolean offerFirst(E e) {
            boolean zOfferFirst;
            synchronized (this.h) {
                zOfferFirst = c().offerFirst(e);
            }
            return zOfferFirst;
        }

        @Override // java.util.Deque
        public boolean offerLast(E e) {
            boolean zOfferLast;
            synchronized (this.h) {
                zOfferLast = c().offerLast(e);
            }
            return zOfferLast;
        }

        @Override // java.util.Deque
        public E removeFirst() {
            E eRemoveFirst;
            synchronized (this.h) {
                eRemoveFirst = c().removeFirst();
            }
            return eRemoveFirst;
        }

        @Override // java.util.Deque
        public E removeLast() {
            E eRemoveLast;
            synchronized (this.h) {
                eRemoveLast = c().removeLast();
            }
            return eRemoveLast;
        }

        @Override // java.util.Deque
        public E pollFirst() {
            E ePollFirst;
            synchronized (this.h) {
                ePollFirst = c().pollFirst();
            }
            return ePollFirst;
        }

        @Override // java.util.Deque
        public E pollLast() {
            E ePollLast;
            synchronized (this.h) {
                ePollLast = c().pollLast();
            }
            return ePollLast;
        }

        @Override // java.util.Deque
        public E getFirst() {
            E first;
            synchronized (this.h) {
                first = c().getFirst();
            }
            return first;
        }

        @Override // java.util.Deque
        public E getLast() {
            E last;
            synchronized (this.h) {
                last = c().getLast();
            }
            return last;
        }

        @Override // java.util.Deque
        public E peekFirst() {
            E ePeekFirst;
            synchronized (this.h) {
                ePeekFirst = c().peekFirst();
            }
            return ePeekFirst;
        }

        @Override // java.util.Deque
        public E peekLast() {
            E ePeekLast;
            synchronized (this.h) {
                ePeekLast = c().peekLast();
            }
            return ePeekLast;
        }

        @Override // java.util.Deque
        public boolean removeFirstOccurrence(Object obj) {
            boolean zRemoveFirstOccurrence;
            synchronized (this.h) {
                zRemoveFirstOccurrence = c().removeFirstOccurrence(obj);
            }
            return zRemoveFirstOccurrence;
        }

        @Override // java.util.Deque
        public boolean removeLastOccurrence(Object obj) {
            boolean zRemoveLastOccurrence;
            synchronized (this.h) {
                zRemoveLastOccurrence = c().removeLastOccurrence(obj);
            }
            return zRemoveLastOccurrence;
        }

        @Override // java.util.Deque
        public void push(E e) {
            synchronized (this.h) {
                c().push(e);
            }
        }

        @Override // java.util.Deque
        public E pop() {
            E ePop;
            synchronized (this.h) {
                ePop = c().pop();
            }
            return ePop;
        }

        @Override // java.util.Deque
        public Iterator<E> descendingIterator() {
            Iterator<E> itDescendingIterator;
            synchronized (this.h) {
                itDescendingIterator = c().descendingIterator();
            }
            return itDescendingIterator;
        }
    }
}
