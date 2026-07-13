package defpackage;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.collect.BiMap;
import com.google.common.collect.ForwardingMap;
import com.google.common.collect.ForwardingMapEntry;
import com.google.common.collect.ForwardingSet;
import com.google.common.collect.Maps;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(emulated = true)
public abstract class hc<K, V> extends ForwardingMap<K, V> implements BiMap<K, V>, Serializable {

    @GwtIncompatible("Not needed in emulated source.")
    private static final long serialVersionUID = 0;
    transient hc<V, K> a;
    private transient Map<K, V> b;
    private transient Set<K> c;
    private transient Set<V> d;
    private transient Set<Map.Entry<K, V>> e;

    protected hc(Map<K, V> map, Map<V, K> map2) {
        a(map, map2);
    }

    private hc(Map<K, V> map, hc<V, K> hcVar) {
        this.b = map;
        this.a = hcVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.ForwardingMap, com.google.common.collect.ForwardingObject
    public Map<K, V> delegate() {
        return this.b;
    }

    protected K a(@Nullable K k) {
        return k;
    }

    protected V b(@Nullable V v) {
        return v;
    }

    protected void a(Map<K, V> map, Map<V, K> map2) {
        Preconditions.checkState(this.b == null);
        Preconditions.checkState(this.a == null);
        Preconditions.checkArgument(map.isEmpty());
        Preconditions.checkArgument(map2.isEmpty());
        Preconditions.checkArgument(map != map2);
        this.b = map;
        this.a = new b(map2, this);
    }

    void a(hc<V, K> hcVar) {
        this.a = hcVar;
    }

    @Override // com.google.common.collect.ForwardingMap, java.util.Map
    public boolean containsValue(@Nullable Object obj) {
        return this.a.containsKey(obj);
    }

    @Override // com.google.common.collect.ForwardingMap, java.util.Map, com.google.common.collect.BiMap
    public V put(@Nullable K k, @Nullable V v) {
        return a(k, v, false);
    }

    public V forcePut(@Nullable K k, @Nullable V v) {
        return a(k, v, true);
    }

    private V a(@Nullable K k, @Nullable V v, boolean z) {
        a(k);
        b(v);
        boolean zContainsKey = containsKey(k);
        if (!zContainsKey || !Objects.equal(v, get(k))) {
            if (z) {
                inverse().remove(v);
            } else {
                Preconditions.checkArgument(!containsValue(v), "value already present: %s", v);
            }
            V vPut = this.b.put(k, v);
            a(k, zContainsKey, vPut, v);
            return vPut;
        }
        return v;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(K k, boolean z, V v, V v2) {
        if (z) {
            d(v);
        }
        this.a.b.put(v2, k);
    }

    @Override // com.google.common.collect.ForwardingMap, java.util.Map
    public V remove(@Nullable Object obj) {
        if (containsKey(obj)) {
            return c(obj);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public V c(Object obj) {
        V vRemove = this.b.remove(obj);
        d(vRemove);
        return vRemove;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(V v) {
        this.a.b.remove(v);
    }

    @Override // com.google.common.collect.ForwardingMap, java.util.Map, com.google.common.collect.BiMap
    public void putAll(Map<? extends K, ? extends V> map) {
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // com.google.common.collect.ForwardingMap, java.util.Map
    public void clear() {
        this.b.clear();
        this.a.b.clear();
    }

    public BiMap<V, K> inverse() {
        return this.a;
    }

    @Override // com.google.common.collect.ForwardingMap, java.util.Map
    public Set<K> keySet() {
        Set<K> set = this.c;
        if (set != null) {
            return set;
        }
        c cVar = new c();
        this.c = cVar;
        return cVar;
    }

    class c extends ForwardingSet<K> {
        private c() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public Set<K> delegate() {
            return hc.this.b.keySet();
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public void clear() {
            hc.this.clear();
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            if (contains(obj)) {
                hc.this.c(obj);
                return true;
            }
            return false;
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
        public boolean removeAll(Collection<?> collection) {
            return standardRemoveAll(collection);
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            return standardRetainAll(collection);
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.lang.Iterable
        public Iterator<K> iterator() {
            return Maps.a(hc.this.entrySet().iterator());
        }
    }

    @Override // com.google.common.collect.ForwardingMap, java.util.Map, com.google.common.collect.BiMap
    public Set<V> values() {
        Set<V> set = this.d;
        if (set != null) {
            return set;
        }
        d dVar = new d();
        this.d = dVar;
        return dVar;
    }

    class d extends ForwardingSet<V> {
        final Set<V> a;

        private d() {
            this.a = hc.this.a.keySet();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public Set<V> delegate() {
            return this.a;
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return Maps.b(hc.this.entrySet().iterator());
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public Object[] toArray() {
            return standardToArray();
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) standardToArray(tArr);
        }

        @Override // com.google.common.collect.ForwardingObject
        public String toString() {
            return standardToString();
        }
    }

    @Override // com.google.common.collect.ForwardingMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.e;
        if (set != null) {
            return set;
        }
        a aVar = new a();
        this.e = aVar;
        return aVar;
    }

    class a extends ForwardingSet<Map.Entry<K, V>> {
        final Set<Map.Entry<K, V>> a;

        private a() {
            this.a = hc.this.b.entrySet();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public Set<Map.Entry<K, V>> delegate() {
            return this.a;
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public void clear() {
            hc.this.clear();
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            if (!this.a.contains(obj)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            ((hc) hc.this.a).b.remove(entry.getValue());
            this.a.remove(entry);
            return true;
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.lang.Iterable
        public Iterator<Map.Entry<K, V>> iterator() {
            final Iterator<Map.Entry<K, V>> it = this.a.iterator();
            return new Iterator<Map.Entry<K, V>>() { // from class: hc.a.1
                Map.Entry<K, V> a;

                @Override // java.util.Iterator
                public boolean hasNext() {
                    return it.hasNext();
                }

                @Override // java.util.Iterator
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public Map.Entry<K, V> next() {
                    this.a = (Map.Entry) it.next();
                    final Map.Entry<K, V> entry = this.a;
                    return new ForwardingMapEntry<K, V>() { // from class: hc.a.1.1
                        /* JADX INFO: Access modifiers changed from: protected */
                        @Override // com.google.common.collect.ForwardingMapEntry, com.google.common.collect.ForwardingObject
                        public Map.Entry<K, V> delegate() {
                            return entry;
                        }

                        @Override // com.google.common.collect.ForwardingMapEntry, java.util.Map.Entry
                        public V setValue(V v) {
                            Preconditions.checkState(a.this.contains(this), "entry no longer in map");
                            if (!Objects.equal(v, getValue())) {
                                Preconditions.checkArgument(!hc.this.containsValue(v), "value already present: %s", v);
                                V v2 = (V) entry.setValue(v);
                                Preconditions.checkState(Objects.equal(v, hc.this.get(getKey())), "entry no longer in map");
                                hc.this.a(getKey(), true, v2, v);
                                return v2;
                            }
                            return v;
                        }
                    };
                }

                @Override // java.util.Iterator
                public void remove() {
                    hu.a(this.a != null);
                    V value = this.a.getValue();
                    it.remove();
                    hc.this.d(value);
                }
            };
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public Object[] toArray() {
            return standardToArray();
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) standardToArray(tArr);
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return Maps.a(delegate(), obj);
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
        public boolean containsAll(Collection<?> collection) {
            return standardContainsAll(collection);
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
        public boolean removeAll(Collection<?> collection) {
            return standardRemoveAll(collection);
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            return standardRetainAll(collection);
        }
    }

    static class b<K, V> extends hc<K, V> {

        @GwtIncompatible("Not needed in emulated source.")
        private static final long serialVersionUID = 0;

        @Override // defpackage.hc, com.google.common.collect.ForwardingMap, com.google.common.collect.ForwardingObject
        protected /* bridge */ /* synthetic */ Object delegate() {
            return super.delegate();
        }

        @Override // defpackage.hc, com.google.common.collect.ForwardingMap, java.util.Map, com.google.common.collect.BiMap
        public /* bridge */ /* synthetic */ Collection values() {
            return super.values();
        }

        private b(Map<K, V> map, hc<V, K> hcVar) {
            super(map, hcVar);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // defpackage.hc
        protected K a(K k) {
            return this.a.b(k);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // defpackage.hc
        protected V b(V v) {
            return this.a.a(v);
        }

        @GwtIncompatible("java.io.ObjectOuputStream")
        private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.defaultWriteObject();
            objectOutputStream.writeObject(inverse());
        }

        @GwtIncompatible("java.io.ObjectInputStream")
        private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
            objectInputStream.defaultReadObject();
            a((hc) objectInputStream.readObject());
        }

        @GwtIncompatible("Not needed in the emulated source.")
        Object readResolve() {
            return inverse().inverse();
        }
    }
}
