package defpackage;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.Iterators;
import com.google.common.collect.Maps;
import com.google.common.collect.Multimap;
import com.google.common.collect.Multimaps;
import com.google.common.collect.Multiset;
import com.google.common.collect.SetMultimap;
import com.google.common.collect.Sets;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible
public abstract class hi<K, V> implements Multimap<K, V> {
    private transient Collection<Map.Entry<K, V>> a;
    private transient Set<K> b;
    private transient Multiset<K> c;
    private transient Collection<V> d;
    private transient Map<K, Collection<V>> e;

    public abstract Iterator<Map.Entry<K, V>> h();

    public abstract Map<K, Collection<V>> i();

    protected hi() {
    }

    @Override // com.google.common.collect.Multimap
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // com.google.common.collect.Multimap
    public boolean containsValue(@Nullable Object obj) {
        Iterator<Collection<V>> it = asMap().values().iterator();
        while (it.hasNext()) {
            if (it.next().contains(obj)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.common.collect.Multimap
    public boolean containsEntry(@Nullable Object obj, @Nullable Object obj2) {
        Collection<V> collection = asMap().get(obj);
        return collection != null && collection.contains(obj2);
    }

    @Override // com.google.common.collect.Multimap
    public boolean remove(@Nullable Object obj, @Nullable Object obj2) {
        Collection<V> collection = asMap().get(obj);
        return collection != null && collection.remove(obj2);
    }

    @Override // com.google.common.collect.Multimap
    public boolean put(@Nullable K k, @Nullable V v) {
        return get(k).add(v);
    }

    @Override // com.google.common.collect.Multimap
    public boolean putAll(@Nullable K k, Iterable<? extends V> iterable) {
        Preconditions.checkNotNull(iterable);
        if (iterable instanceof Collection) {
            Collection<? extends V> collection = (Collection) iterable;
            return !collection.isEmpty() && get(k).addAll(collection);
        }
        Iterator<? extends V> it = iterable.iterator();
        return it.hasNext() && Iterators.addAll(get(k), it);
    }

    @Override // com.google.common.collect.Multimap
    public boolean putAll(Multimap<? extends K, ? extends V> multimap) {
        boolean zPut = false;
        Iterator<Map.Entry<? extends K, ? extends V>> it = multimap.entries().iterator();
        while (true) {
            boolean z = zPut;
            if (it.hasNext()) {
                Map.Entry<? extends K, ? extends V> next = it.next();
                zPut = put(next.getKey(), next.getValue()) | z;
            } else {
                return z;
            }
        }
    }

    @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public Collection<V> replaceValues(@Nullable K k, Iterable<? extends V> iterable) {
        Preconditions.checkNotNull(iterable);
        Collection<V> collectionRemoveAll = removeAll(k);
        putAll(k, iterable);
        return collectionRemoveAll;
    }

    @Override // com.google.common.collect.Multimap
    public Collection<Map.Entry<K, V>> entries() {
        Collection<Map.Entry<K, V>> collection = this.a;
        if (collection != null) {
            return collection;
        }
        Collection<Map.Entry<K, V>> collectionJ = j();
        this.a = collectionJ;
        return collectionJ;
    }

    protected Collection<Map.Entry<K, V>> j() {
        return this instanceof SetMultimap ? new b() : new a();
    }

    class a extends Multimaps.f<K, V> {
        private a() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.Multimaps.f
        public Multimap<K, V> a() {
            return hi.this;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<Map.Entry<K, V>> iterator() {
            return hi.this.h();
        }
    }

    class b extends hi<K, V>.a implements Set<Map.Entry<K, V>> {
        private b() {
            super();
        }

        @Override // java.util.Collection, java.util.Set
        public int hashCode() {
            return Sets.a(this);
        }

        @Override // java.util.Collection, java.util.Set
        public boolean equals(@Nullable Object obj) {
            return Sets.a(this, obj);
        }
    }

    @Override // com.google.common.collect.Multimap
    public Set<K> keySet() {
        Set<K> set = this.b;
        if (set != null) {
            return set;
        }
        Set<K> setF = f();
        this.b = setF;
        return setF;
    }

    protected Set<K> f() {
        return new Maps.n(asMap());
    }

    @Override // com.google.common.collect.Multimap
    public Multiset<K> keys() {
        Multiset<K> multiset = this.c;
        if (multiset != null) {
            return multiset;
        }
        Multiset<K> multisetK = k();
        this.c = multisetK;
        return multisetK;
    }

    protected Multiset<K> k() {
        return new Multimaps.g(this);
    }

    @Override // com.google.common.collect.Multimap
    public Collection<V> values() {
        Collection<V> collection = this.d;
        if (collection != null) {
            return collection;
        }
        Collection<V> collectionL = l();
        this.d = collectionL;
        return collectionL;
    }

    public Collection<V> l() {
        return new c();
    }

    class c extends AbstractCollection<V> {
        c() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return hi.this.g();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return hi.this.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(@Nullable Object obj) {
            return hi.this.containsValue(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            hi.this.clear();
        }
    }

    protected Iterator<V> g() {
        return Maps.b(entries().iterator());
    }

    @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public Map<K, Collection<V>> asMap() {
        Map<K, Collection<V>> map = this.e;
        if (map != null) {
            return map;
        }
        Map<K, Collection<V>> mapI = i();
        this.e = mapI;
        return mapI;
    }

    @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public boolean equals(@Nullable Object obj) {
        return Multimaps.a(this, obj);
    }

    @Override // com.google.common.collect.Multimap
    public int hashCode() {
        return asMap().hashCode();
    }

    public String toString() {
        return asMap().toString();
    }
}
