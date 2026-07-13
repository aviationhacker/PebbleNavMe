package defpackage;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.Collections2;
import com.google.common.collect.Iterators;
import com.google.common.collect.Maps;
import com.google.common.collect.Sets;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.RandomAccess;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(emulated = true)
public abstract class hf<K, V> extends hi<K, V> implements Serializable {
    private static final long serialVersionUID = 2447537837011683357L;
    private transient Map<K, Collection<V>> a;
    private transient int b;

    protected abstract Collection<V> c();

    static /* synthetic */ int b(hf hfVar) {
        int i2 = hfVar.b;
        hfVar.b = i2 - 1;
        return i2;
    }

    static /* synthetic */ int c(hf hfVar) {
        int i2 = hfVar.b;
        hfVar.b = i2 + 1;
        return i2;
    }

    protected hf(Map<K, Collection<V>> map) {
        Preconditions.checkArgument(map.isEmpty());
        this.a = map;
    }

    protected final void a(Map<K, Collection<V>> map) {
        this.a = map;
        this.b = 0;
        for (Collection<V> collection : map.values()) {
            Preconditions.checkArgument(!collection.isEmpty());
            this.b = collection.size() + this.b;
        }
    }

    Collection<V> d() {
        return a((Collection) c());
    }

    protected Collection<V> a(@Nullable K k2) {
        return c();
    }

    protected Map<K, Collection<V>> e() {
        return this.a;
    }

    @Override // com.google.common.collect.Multimap
    public int size() {
        return this.b;
    }

    @Override // com.google.common.collect.Multimap
    public boolean containsKey(@Nullable Object obj) {
        return this.a.containsKey(obj);
    }

    @Override // defpackage.hi, com.google.common.collect.Multimap
    public boolean put(@Nullable K k2, @Nullable V v) {
        Collection<V> collection = this.a.get(k2);
        if (collection == null) {
            Collection<V> collectionA = a(k2);
            if (collectionA.add(v)) {
                this.b++;
                this.a.put(k2, collectionA);
                return true;
            }
            throw new AssertionError("New Collection violated the Collection spec");
        }
        if (collection.add(v)) {
            this.b++;
            return true;
        }
        return false;
    }

    private Collection<V> b(@Nullable K k2) {
        Collection<V> collection = this.a.get(k2);
        if (collection == null) {
            Collection<V> collectionA = a(k2);
            this.a.put(k2, collectionA);
            return collectionA;
        }
        return collection;
    }

    @Override // defpackage.hi, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public Collection<V> replaceValues(@Nullable K k2, Iterable<? extends V> iterable) {
        Iterator<? extends V> it = iterable.iterator();
        if (!it.hasNext()) {
            return removeAll(k2);
        }
        Collection<V> collectionB = b(k2);
        Collection<V> collectionC = c();
        collectionC.addAll(collectionB);
        this.b -= collectionB.size();
        collectionB.clear();
        while (it.hasNext()) {
            if (collectionB.add(it.next())) {
                this.b++;
            }
        }
        return a((Collection) collectionC);
    }

    @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public Collection<V> removeAll(@Nullable Object obj) {
        Collection<V> collectionRemove = this.a.remove(obj);
        if (collectionRemove == null) {
            return d();
        }
        Collection<V> collectionC = c();
        collectionC.addAll(collectionRemove);
        this.b -= collectionRemove.size();
        collectionRemove.clear();
        return a((Collection) collectionC);
    }

    protected Collection<V> a(Collection<V> collection) {
        if (collection instanceof SortedSet) {
            return Collections.unmodifiableSortedSet((SortedSet) collection);
        }
        if (collection instanceof Set) {
            return Collections.unmodifiableSet((Set) collection);
        }
        if (collection instanceof List) {
            return Collections.unmodifiableList((List) collection);
        }
        return Collections.unmodifiableCollection(collection);
    }

    @Override // com.google.common.collect.Multimap
    public void clear() {
        Iterator<Collection<V>> it = this.a.values().iterator();
        while (it.hasNext()) {
            it.next().clear();
        }
        this.a.clear();
        this.b = 0;
    }

    @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public Collection<V> get(@Nullable K k2) {
        Collection<V> collectionA = this.a.get(k2);
        if (collectionA == null) {
            collectionA = a(k2);
        }
        return a(k2, collectionA);
    }

    protected Collection<V> a(@Nullable K k2, Collection<V> collection) {
        if (collection instanceof SortedSet) {
            return new m(k2, (SortedSet) collection, null);
        }
        if (collection instanceof Set) {
            return new l(k2, (Set) collection);
        }
        if (collection instanceof List) {
            return a(k2, (List) collection, null);
        }
        return new i(k2, collection, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<V> a(@Nullable K k2, List<V> list, @Nullable hf<K, V>.i iVar) {
        return list instanceof RandomAccess ? new f(k2, list, iVar) : new j(k2, list, iVar);
    }

    public class i extends AbstractCollection<V> {
        final K b;
        Collection<V> c;
        final hf<K, V>.i d;
        final Collection<V> e;

        i(K k, @Nullable Collection<V> collection, hf<K, V>.i iVar) {
            this.b = k;
            this.c = collection;
            this.d = iVar;
            this.e = iVar == null ? null : iVar.e();
        }

        void a() {
            Collection<V> collection;
            if (this.d != null) {
                this.d.a();
                if (this.d.e() != this.e) {
                    throw new ConcurrentModificationException();
                }
            } else if (this.c.isEmpty() && (collection = (Collection) hf.this.a.get(this.b)) != null) {
                this.c = collection;
            }
        }

        void b() {
            if (this.d != null) {
                this.d.b();
            } else if (this.c.isEmpty()) {
                hf.this.a.remove(this.b);
            }
        }

        K c() {
            return this.b;
        }

        void d() {
            if (this.d == null) {
                hf.this.a.put(this.b, this.c);
            } else {
                this.d.d();
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            a();
            return this.c.size();
        }

        @Override // java.util.Collection
        public boolean equals(@Nullable Object obj) {
            if (obj == this) {
                return true;
            }
            a();
            return this.c.equals(obj);
        }

        @Override // java.util.Collection
        public int hashCode() {
            a();
            return this.c.hashCode();
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            a();
            return this.c.toString();
        }

        Collection<V> e() {
            return this.c;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            a();
            return new a();
        }

        class a implements Iterator<V> {
            final Iterator<V> a;
            final Collection<V> b;

            a() {
                this.b = i.this.c;
                this.a = hf.this.b((Collection) i.this.c);
            }

            a(Iterator<V> it) {
                this.b = i.this.c;
                this.a = it;
            }

            void a() {
                i.this.a();
                if (i.this.c != this.b) {
                    throw new ConcurrentModificationException();
                }
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                a();
                return this.a.hasNext();
            }

            @Override // java.util.Iterator
            public V next() {
                a();
                return this.a.next();
            }

            @Override // java.util.Iterator
            public void remove() {
                this.a.remove();
                hf.b(hf.this);
                i.this.b();
            }

            Iterator<V> b() {
                a();
                return this.a;
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean add(V v) {
            a();
            boolean zIsEmpty = this.c.isEmpty();
            boolean zAdd = this.c.add(v);
            if (zAdd) {
                hf.c(hf.this);
                if (zIsEmpty) {
                    d();
                }
            }
            return zAdd;
        }

        hf<K, V>.i f() {
            return this.d;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean addAll(Collection<? extends V> collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean zAddAll = this.c.addAll(collection);
            if (zAddAll) {
                int size2 = this.c.size();
                hf.this.b = (size2 - size) + hf.this.b;
                if (size == 0) {
                    d();
                    return zAddAll;
                }
                return zAddAll;
            }
            return zAddAll;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            a();
            return this.c.contains(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            a();
            return this.c.containsAll(collection);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            int size = size();
            if (size != 0) {
                this.c.clear();
                hf.this.b -= size;
                b();
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(Object obj) {
            a();
            boolean zRemove = this.c.remove(obj);
            if (zRemove) {
                hf.b(hf.this);
                b();
            }
            return zRemove;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean zRemoveAll = this.c.removeAll(collection);
            if (zRemoveAll) {
                int size2 = this.c.size();
                hf.this.b = (size2 - size) + hf.this.b;
                b();
                return zRemoveAll;
            }
            return zRemoveAll;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            Preconditions.checkNotNull(collection);
            int size = size();
            boolean zRetainAll = this.c.retainAll(collection);
            if (zRetainAll) {
                int size2 = this.c.size();
                hf.this.b = (size2 - size) + hf.this.b;
                b();
            }
            return zRetainAll;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Iterator<V> b(Collection<V> collection) {
        return collection instanceof List ? ((List) collection).listIterator() : collection.iterator();
    }

    class l extends hf<K, V>.i implements Set<V> {
        l(K k, @Nullable Set<V> set) {
            super(k, set, null);
        }

        @Override // hf.i, java.util.AbstractCollection, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean zA = Sets.a((Set<?>) this.c, collection);
            if (zA) {
                int size2 = this.c.size();
                hf.this.b = (size2 - size) + hf.this.b;
                b();
                return zA;
            }
            return zA;
        }
    }

    class m extends hf<K, V>.i implements SortedSet<V> {
        m(K k, @Nullable SortedSet<V> sortedSet, hf<K, V>.i iVar) {
            super(k, sortedSet, iVar);
        }

        SortedSet<V> h() {
            return (SortedSet) e();
        }

        @Override // java.util.SortedSet
        public Comparator<? super V> comparator() {
            return h().comparator();
        }

        @Override // java.util.SortedSet
        public V first() {
            a();
            return h().first();
        }

        @Override // java.util.SortedSet
        public V last() {
            a();
            return h().last();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r5v2, types: [hf$i] */
        /* JADX WARN: Type inference failed for: r5v3 */
        /* JADX WARN: Type inference failed for: r5v4 */
        @Override // java.util.SortedSet
        public SortedSet<V> headSet(V v) {
            a();
            hf hfVar = hf.this;
            Object objC = c();
            SortedSet<V> sortedSetHeadSet = h().headSet(v);
            hf<K, V>.i iVarF = f();
            ?? F = this;
            if (iVarF != null) {
                F = f();
            }
            return new m(objC, sortedSetHeadSet, F);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r5v2, types: [hf$i] */
        /* JADX WARN: Type inference failed for: r5v3 */
        /* JADX WARN: Type inference failed for: r5v4 */
        @Override // java.util.SortedSet
        public SortedSet<V> subSet(V v, V v2) {
            a();
            hf hfVar = hf.this;
            Object objC = c();
            SortedSet<V> sortedSetSubSet = h().subSet(v, v2);
            hf<K, V>.i iVarF = f();
            ?? F = this;
            if (iVarF != null) {
                F = f();
            }
            return new m(objC, sortedSetSubSet, F);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r5v2, types: [hf$i] */
        /* JADX WARN: Type inference failed for: r5v3 */
        /* JADX WARN: Type inference failed for: r5v4 */
        @Override // java.util.SortedSet
        public SortedSet<V> tailSet(V v) {
            a();
            hf hfVar = hf.this;
            Object objC = c();
            SortedSet<V> sortedSetTailSet = h().tailSet(v);
            hf<K, V>.i iVarF = f();
            ?? F = this;
            if (iVarF != null) {
                F = f();
            }
            return new m(objC, sortedSetTailSet, F);
        }
    }

    @GwtIncompatible("NavigableSet")
    public class k extends hf<K, V>.m implements NavigableSet<V> {
        public k(K k, @Nullable NavigableSet<V> navigableSet, hf<K, V>.i iVar) {
            super(k, navigableSet, iVar);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // hf.m
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public NavigableSet<V> h() {
            return (NavigableSet) super.h();
        }

        @Override // java.util.NavigableSet
        public V lower(V v) {
            return h().lower(v);
        }

        @Override // java.util.NavigableSet
        public V floor(V v) {
            return h().floor(v);
        }

        @Override // java.util.NavigableSet
        public V ceiling(V v) {
            return h().ceiling(v);
        }

        @Override // java.util.NavigableSet
        public V higher(V v) {
            return h().higher(v);
        }

        @Override // java.util.NavigableSet
        public V pollFirst() {
            return (V) Iterators.a(iterator());
        }

        @Override // java.util.NavigableSet
        public V pollLast() {
            return (V) Iterators.a(descendingIterator());
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r4v2, types: [hf$i] */
        /* JADX WARN: Type inference failed for: r4v3 */
        /* JADX WARN: Type inference failed for: r4v4 */
        private NavigableSet<V> a(NavigableSet<V> navigableSet) {
            hf hfVar = hf.this;
            K k = this.b;
            hf<K, V>.i iVarF = f();
            ?? F = this;
            if (iVarF != null) {
                F = f();
            }
            return new k(k, navigableSet, F);
        }

        @Override // java.util.NavigableSet
        public NavigableSet<V> descendingSet() {
            return a(h().descendingSet());
        }

        @Override // java.util.NavigableSet
        public Iterator<V> descendingIterator() {
            return new i.a(h().descendingIterator());
        }

        @Override // java.util.NavigableSet
        public NavigableSet<V> subSet(V v, boolean z, V v2, boolean z2) {
            return a(h().subSet(v, z, v2, z2));
        }

        @Override // java.util.NavigableSet
        public NavigableSet<V> headSet(V v, boolean z) {
            return a(h().headSet(v, z));
        }

        @Override // java.util.NavigableSet
        public NavigableSet<V> tailSet(V v, boolean z) {
            return a(h().tailSet(v, z));
        }
    }

    class j extends hf<K, V>.i implements List<V> {
        j(K k, @Nullable List<V> list, hf<K, V>.i iVar) {
            super(k, list, iVar);
        }

        List<V> g() {
            return (List) e();
        }

        @Override // java.util.List
        public boolean addAll(int i, Collection<? extends V> collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean zAddAll = g().addAll(i, collection);
            if (zAddAll) {
                int size2 = e().size();
                hf.this.b = (size2 - size) + hf.this.b;
                if (size == 0) {
                    d();
                    return zAddAll;
                }
                return zAddAll;
            }
            return zAddAll;
        }

        @Override // java.util.List
        public V get(int i) {
            a();
            return g().get(i);
        }

        @Override // java.util.List
        public V set(int i, V v) {
            a();
            return g().set(i, v);
        }

        @Override // java.util.List
        public void add(int i, V v) {
            a();
            boolean zIsEmpty = e().isEmpty();
            g().add(i, v);
            hf.c(hf.this);
            if (zIsEmpty) {
                d();
            }
        }

        @Override // java.util.List
        public V remove(int i) {
            a();
            V vRemove = g().remove(i);
            hf.b(hf.this);
            b();
            return vRemove;
        }

        @Override // java.util.List
        public int indexOf(Object obj) {
            a();
            return g().indexOf(obj);
        }

        @Override // java.util.List
        public int lastIndexOf(Object obj) {
            a();
            return g().lastIndexOf(obj);
        }

        @Override // java.util.List
        public ListIterator<V> listIterator() {
            a();
            return new a();
        }

        @Override // java.util.List
        public ListIterator<V> listIterator(int i) {
            a();
            return new a(i);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r4v2, types: [hf$i] */
        /* JADX WARN: Type inference failed for: r4v3 */
        /* JADX WARN: Type inference failed for: r4v4 */
        @Override // java.util.List
        public List<V> subList(int i, int i2) {
            a();
            hf hfVar = hf.this;
            Object objC = c();
            List<V> listSubList = g().subList(i, i2);
            hf<K, V>.i iVarF = f();
            ?? F = this;
            if (iVarF != null) {
                F = f();
            }
            return hfVar.a(objC, listSubList, F);
        }

        class a extends hf<K, V>.i.a implements ListIterator<V> {
            a() {
                super();
            }

            public a(int i) {
                super(j.this.g().listIterator(i));
            }

            private ListIterator<V> c() {
                return (ListIterator) b();
            }

            @Override // java.util.ListIterator
            public boolean hasPrevious() {
                return c().hasPrevious();
            }

            @Override // java.util.ListIterator
            public V previous() {
                return c().previous();
            }

            @Override // java.util.ListIterator
            public int nextIndex() {
                return c().nextIndex();
            }

            @Override // java.util.ListIterator
            public int previousIndex() {
                return c().previousIndex();
            }

            @Override // java.util.ListIterator
            public void set(V v) {
                c().set(v);
            }

            @Override // java.util.ListIterator
            public void add(V v) {
                boolean zIsEmpty = j.this.isEmpty();
                c().add(v);
                hf.c(hf.this);
                if (zIsEmpty) {
                    j.this.d();
                }
            }
        }
    }

    class f extends hf<K, V>.j implements RandomAccess {
        f(K k, @Nullable List<V> list, hf<K, V>.i iVar) {
            super(k, list, iVar);
        }
    }

    @Override // defpackage.hi
    protected Set<K> f() {
        return this.a instanceof SortedMap ? new h((SortedMap) this.a) : new c(this.a);
    }

    class c extends Maps.n<K, Collection<V>> {
        c(Map<K, Collection<V>> map) {
            super(map);
        }

        @Override // com.google.common.collect.Maps.n, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            final Iterator<Map.Entry<K, Collection<V>>> it = c().entrySet().iterator();
            return new Iterator<K>() { // from class: hf.c.1
                Map.Entry<K, Collection<V>> a;

                @Override // java.util.Iterator
                public boolean hasNext() {
                    return it.hasNext();
                }

                @Override // java.util.Iterator
                public K next() {
                    this.a = (Map.Entry) it.next();
                    return this.a.getKey();
                }

                @Override // java.util.Iterator
                public void remove() {
                    hu.a(this.a != null);
                    Collection<V> value = this.a.getValue();
                    it.remove();
                    hf.this.b -= value.size();
                    value.clear();
                }
            };
        }

        @Override // com.google.common.collect.Maps.n, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            int i;
            Collection<V> collectionRemove = c().remove(obj);
            if (collectionRemove != null) {
                int size = collectionRemove.size();
                collectionRemove.clear();
                hf.this.b -= size;
                i = size;
            } else {
                i = 0;
            }
            return i > 0;
        }

        @Override // com.google.common.collect.Maps.n, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            Iterators.b(iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean containsAll(Collection<?> collection) {
            return c().keySet().containsAll(collection);
        }

        @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
        public boolean equals(@Nullable Object obj) {
            return this == obj || c().keySet().equals(obj);
        }

        @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
        public int hashCode() {
            return c().keySet().hashCode();
        }
    }

    class h extends hf<K, V>.c implements SortedSet<K> {
        h(SortedMap<K, Collection<V>> sortedMap) {
            super(sortedMap);
        }

        SortedMap<K, Collection<V>> b() {
            return (SortedMap) super.c();
        }

        @Override // java.util.SortedSet
        public Comparator<? super K> comparator() {
            return b().comparator();
        }

        @Override // java.util.SortedSet
        public K first() {
            return b().firstKey();
        }

        public SortedSet<K> headSet(K k) {
            return new h(b().headMap(k));
        }

        @Override // java.util.SortedSet
        public K last() {
            return b().lastKey();
        }

        public SortedSet<K> subSet(K k, K k2) {
            return new h(b().subMap(k, k2));
        }

        public SortedSet<K> tailSet(K k) {
            return new h(b().tailMap(k));
        }
    }

    @GwtIncompatible("NavigableSet")
    public class e extends hf<K, V>.h implements NavigableSet<K> {
        public e(NavigableMap<K, Collection<V>> navigableMap) {
            super(navigableMap);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // hf.h
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public NavigableMap<K, Collection<V>> b() {
            return (NavigableMap) super.b();
        }

        @Override // java.util.NavigableSet
        public K lower(K k) {
            return b().lowerKey(k);
        }

        @Override // java.util.NavigableSet
        public K floor(K k) {
            return b().floorKey(k);
        }

        @Override // java.util.NavigableSet
        public K ceiling(K k) {
            return b().ceilingKey(k);
        }

        @Override // java.util.NavigableSet
        public K higher(K k) {
            return b().higherKey(k);
        }

        @Override // java.util.NavigableSet
        public K pollFirst() {
            return (K) Iterators.a(iterator());
        }

        @Override // java.util.NavigableSet
        public K pollLast() {
            return (K) Iterators.a(descendingIterator());
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> descendingSet() {
            return new e(b().descendingMap());
        }

        @Override // java.util.NavigableSet
        public Iterator<K> descendingIterator() {
            return descendingSet().iterator();
        }

        @Override // hf.h, java.util.SortedSet, java.util.NavigableSet
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public NavigableSet<K> headSet(K k) {
            return headSet(k, false);
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> headSet(K k, boolean z) {
            return new e(b().headMap(k, z));
        }

        @Override // hf.h, java.util.SortedSet, java.util.NavigableSet
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public NavigableSet<K> subSet(K k, K k2) {
            return subSet(k, true, k2, false);
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> subSet(K k, boolean z, K k2, boolean z2) {
            return new e(b().subMap(k, z, k2, z2));
        }

        @Override // hf.h, java.util.SortedSet, java.util.NavigableSet
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public NavigableSet<K> tailSet(K k) {
            return tailSet(k, true);
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> tailSet(K k, boolean z) {
            return new e(b().tailMap(k, z));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int c(Object obj) {
        Collection collection = (Collection) Maps.c(this.a, obj);
        int size = 0;
        if (collection != null) {
            size = collection.size();
            collection.clear();
            this.b -= size;
        }
        return size;
    }

    abstract class b<T> implements Iterator<T> {
        final Iterator<Map.Entry<K, Collection<V>>> b;
        K c = null;
        Collection<V> d = null;
        Iterator<V> e = Iterators.b();

        abstract T a(K k, V v);

        b() {
            this.b = hf.this.a.entrySet().iterator();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.b.hasNext() || this.e.hasNext();
        }

        @Override // java.util.Iterator
        public T next() {
            if (!this.e.hasNext()) {
                Map.Entry<K, Collection<V>> next = this.b.next();
                this.c = next.getKey();
                this.d = next.getValue();
                this.e = this.d.iterator();
            }
            return a(this.c, this.e.next());
        }

        @Override // java.util.Iterator
        public void remove() {
            this.e.remove();
            if (this.d.isEmpty()) {
                this.b.remove();
            }
            hf.b(hf.this);
        }
    }

    @Override // defpackage.hi, com.google.common.collect.Multimap
    public Collection<V> values() {
        return super.values();
    }

    @Override // defpackage.hi
    protected Iterator<V> g() {
        return new hf<K, V>.b<V>() { // from class: hf.1
            @Override // hf.b
            V a(K k2, V v) {
                return v;
            }
        };
    }

    @Override // defpackage.hi, com.google.common.collect.Multimap
    public Collection<Map.Entry<K, V>> entries() {
        return super.entries();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // defpackage.hi
    public Iterator<Map.Entry<K, V>> h() {
        return new hf<K, V>.b<Map.Entry<K, V>>() { // from class: hf.2
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // hf.b
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public Map.Entry<K, V> a(K k2, V v) {
                return Maps.immutableEntry(k2, v);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // defpackage.hi
    public Map<K, Collection<V>> i() {
        return this.a instanceof SortedMap ? new g((SortedMap) this.a) : new a(this.a);
    }

    class a extends Maps.ad<K, Collection<V>> {
        final transient Map<K, Collection<V>> a;

        a(Map<K, Collection<V>> map) {
            this.a = map;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.Maps.ad
        public Set<Map.Entry<K, Collection<V>>> a() {
            return new C0034a();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return Maps.b((Map<?, ?>) this.a, obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Collection<V> get(Object obj) {
            Collection<V> collection = (Collection) Maps.a(this.a, obj);
            if (collection == null) {
                return null;
            }
            return hf.this.a(obj, collection);
        }

        @Override // com.google.common.collect.Maps.ad, java.util.AbstractMap, java.util.Map
        public Set<K> keySet() {
            return hf.this.keySet();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int size() {
            return this.a.size();
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Collection<V> remove(Object obj) {
            Collection<V> collectionRemove = this.a.remove(obj);
            if (collectionRemove == null) {
                return null;
            }
            Collection<V> collectionC = hf.this.c();
            collectionC.addAll(collectionRemove);
            hf.this.b -= collectionRemove.size();
            collectionRemove.clear();
            return collectionC;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean equals(@Nullable Object obj) {
            return this == obj || this.a.equals(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int hashCode() {
            return this.a.hashCode();
        }

        @Override // java.util.AbstractMap
        public String toString() {
            return this.a.toString();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public void clear() {
            if (this.a == hf.this.a) {
                hf.this.clear();
            } else {
                Iterators.b(new b());
            }
        }

        Map.Entry<K, Collection<V>> a(Map.Entry<K, Collection<V>> entry) {
            K key = entry.getKey();
            return Maps.immutableEntry(key, hf.this.a(key, entry.getValue()));
        }

        /* JADX INFO: renamed from: hf$a$a, reason: collision with other inner class name */
        class C0034a extends Maps.f<K, Collection<V>> {
            C0034a() {
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.collect.Maps.f
            public Map<K, Collection<V>> a() {
                return a.this;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<K, Collection<V>>> iterator() {
                return a.this.new b();
            }

            @Override // com.google.common.collect.Maps.f, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(Object obj) {
                return Collections2.a(a.this.a.entrySet(), obj);
            }

            @Override // com.google.common.collect.Maps.f, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(Object obj) {
                if (contains(obj)) {
                    hf.this.c(((Map.Entry) obj).getKey());
                    return true;
                }
                return false;
            }
        }

        class b implements Iterator<Map.Entry<K, Collection<V>>> {
            final Iterator<Map.Entry<K, Collection<V>>> a;
            Collection<V> b;

            b() {
                this.a = a.this.a.entrySet().iterator();
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.a.hasNext();
            }

            @Override // java.util.Iterator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Map.Entry<K, Collection<V>> next() {
                Map.Entry<K, Collection<V>> next = this.a.next();
                this.b = next.getValue();
                return a.this.a((Map.Entry) next);
            }

            @Override // java.util.Iterator
            public void remove() {
                this.a.remove();
                hf.this.b -= this.b.size();
                this.b.clear();
            }
        }
    }

    class g extends hf<K, V>.a implements SortedMap<K, Collection<V>> {
        SortedSet<K> d;

        g(SortedMap<K, Collection<V>> sortedMap) {
            super(sortedMap);
        }

        SortedMap<K, Collection<V>> g() {
            return (SortedMap) this.a;
        }

        @Override // java.util.SortedMap
        public Comparator<? super K> comparator() {
            return g().comparator();
        }

        @Override // java.util.SortedMap
        public K firstKey() {
            return g().firstKey();
        }

        @Override // java.util.SortedMap
        public K lastKey() {
            return g().lastKey();
        }

        public SortedMap<K, Collection<V>> headMap(K k) {
            return new g(g().headMap(k));
        }

        public SortedMap<K, Collection<V>> subMap(K k, K k2) {
            return new g(g().subMap(k, k2));
        }

        public SortedMap<K, Collection<V>> tailMap(K k) {
            return new g(g().tailMap(k));
        }

        @Override // hf.a, com.google.common.collect.Maps.ad, java.util.AbstractMap, java.util.Map
        /* JADX INFO: renamed from: f */
        public SortedSet<K> keySet() {
            SortedSet<K> sortedSet = this.d;
            if (sortedSet != null) {
                return sortedSet;
            }
            SortedSet<K> sortedSetH = h();
            this.d = sortedSetH;
            return sortedSetH;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.Maps.ad
        /* JADX INFO: renamed from: e */
        public SortedSet<K> h() {
            return new h(g());
        }
    }

    @GwtIncompatible("NavigableAsMap")
    public class d extends hf<K, V>.g implements NavigableMap<K, Collection<V>> {
        public d(NavigableMap<K, Collection<V>> navigableMap) {
            super(navigableMap);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // hf.g
        /* JADX INFO: renamed from: a_, reason: merged with bridge method [inline-methods] */
        public NavigableMap<K, Collection<V>> g() {
            return (NavigableMap) super.g();
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> lowerEntry(K k) {
            Map.Entry<K, Collection<V>> entryLowerEntry = g().lowerEntry(k);
            if (entryLowerEntry == null) {
                return null;
            }
            return a((Map.Entry) entryLowerEntry);
        }

        @Override // java.util.NavigableMap
        public K lowerKey(K k) {
            return g().lowerKey(k);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> floorEntry(K k) {
            Map.Entry<K, Collection<V>> entryFloorEntry = g().floorEntry(k);
            if (entryFloorEntry == null) {
                return null;
            }
            return a((Map.Entry) entryFloorEntry);
        }

        @Override // java.util.NavigableMap
        public K floorKey(K k) {
            return g().floorKey(k);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> ceilingEntry(K k) {
            Map.Entry<K, Collection<V>> entryCeilingEntry = g().ceilingEntry(k);
            if (entryCeilingEntry == null) {
                return null;
            }
            return a((Map.Entry) entryCeilingEntry);
        }

        @Override // java.util.NavigableMap
        public K ceilingKey(K k) {
            return g().ceilingKey(k);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> higherEntry(K k) {
            Map.Entry<K, Collection<V>> entryHigherEntry = g().higherEntry(k);
            if (entryHigherEntry == null) {
                return null;
            }
            return a((Map.Entry) entryHigherEntry);
        }

        @Override // java.util.NavigableMap
        public K higherKey(K k) {
            return g().higherKey(k);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> firstEntry() {
            Map.Entry<K, Collection<V>> entryFirstEntry = g().firstEntry();
            if (entryFirstEntry == null) {
                return null;
            }
            return a((Map.Entry) entryFirstEntry);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> lastEntry() {
            Map.Entry<K, Collection<V>> entryLastEntry = g().lastEntry();
            if (entryLastEntry == null) {
                return null;
            }
            return a((Map.Entry) entryLastEntry);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> pollFirstEntry() {
            return a((Iterator) entrySet().iterator());
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> pollLastEntry() {
            return a((Iterator) descendingMap().entrySet().iterator());
        }

        Map.Entry<K, Collection<V>> a(Iterator<Map.Entry<K, Collection<V>>> it) {
            if (!it.hasNext()) {
                return null;
            }
            Map.Entry<K, Collection<V>> next = it.next();
            Collection<V> collectionC = hf.this.c();
            collectionC.addAll(next.getValue());
            it.remove();
            return Maps.immutableEntry(next.getKey(), hf.this.a((Collection) collectionC));
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, Collection<V>> descendingMap() {
            return new d(g().descendingMap());
        }

        @Override // hf.g, hf.a, com.google.common.collect.Maps.ad, java.util.AbstractMap, java.util.Map
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public NavigableSet<K> keySet() {
            return (NavigableSet) super.keySet();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // hf.g, com.google.common.collect.Maps.ad
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public NavigableSet<K> h() {
            return new e(g());
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> navigableKeySet() {
            return f();
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> descendingKeySet() {
            return descendingMap().navigableKeySet();
        }

        @Override // hf.g, java.util.SortedMap, java.util.NavigableMap
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public NavigableMap<K, Collection<V>> subMap(K k, K k2) {
            return subMap(k, true, k2, false);
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, Collection<V>> subMap(K k, boolean z, K k2, boolean z2) {
            return new d(g().subMap(k, z, k2, z2));
        }

        @Override // hf.g, java.util.SortedMap, java.util.NavigableMap
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public NavigableMap<K, Collection<V>> headMap(K k) {
            return headMap(k, false);
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, Collection<V>> headMap(K k, boolean z) {
            return new d(g().headMap(k, z));
        }

        @Override // hf.g, java.util.SortedMap, java.util.NavigableMap
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public NavigableMap<K, Collection<V>> tailMap(K k) {
            return tailMap(k, true);
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, Collection<V>> tailMap(K k, boolean z) {
            return new d(g().tailMap(k, z));
        }
    }
}
