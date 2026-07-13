package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.base.Predicates;
import com.google.common.base.Supplier;
import com.google.common.collect.ImmutableListMultimap;
import com.google.common.collect.Maps;
import com.google.common.collect.Multiset;
import com.google.common.collect.Multisets;
import com.google.common.collect.Sets;
import com.google.j2objc.annotations.Weak;
import defpackage.he;
import defpackage.hf;
import defpackage.hi;
import defpackage.hj;
import defpackage.hm;
import defpackage.hp;
import defpackage.hu;
import defpackage.il;
import defpackage.im;
import defpackage.in;
import defpackage.io;
import defpackage.ip;
import defpackage.iq;
import defpackage.is;
import defpackage.km;
import defpackage.kn;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.SortedSet;
import javax.annotation.CheckReturnValue;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(emulated = true)
public final class Multimaps {
    private Multimaps() {
    }

    public static <K, V> Multimap<K, V> newMultimap(Map<K, Collection<V>> map, Supplier<? extends Collection<V>> supplier) {
        return new c(map, supplier);
    }

    static class c<K, V> extends hf<K, V> {

        @GwtIncompatible("java serialization not supported")
        private static final long serialVersionUID = 0;
        transient Supplier<? extends Collection<V>> a;

        c(Map<K, Collection<V>> map, Supplier<? extends Collection<V>> supplier) {
            super(map);
            this.a = (Supplier) Preconditions.checkNotNull(supplier);
        }

        @Override // defpackage.hf
        protected Collection<V> c() {
            return this.a.get();
        }

        @GwtIncompatible("java.io.ObjectOutputStream")
        private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.defaultWriteObject();
            objectOutputStream.writeObject(this.a);
            objectOutputStream.writeObject(e());
        }

        @GwtIncompatible("java.io.ObjectInputStream")
        private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
            objectInputStream.defaultReadObject();
            this.a = (Supplier) objectInputStream.readObject();
            a((Map) objectInputStream.readObject());
        }
    }

    public static <K, V> ListMultimap<K, V> newListMultimap(Map<K, Collection<V>> map, Supplier<? extends List<V>> supplier) {
        return new b(map, supplier);
    }

    static class b<K, V> extends he<K, V> {

        @GwtIncompatible("java serialization not supported")
        private static final long serialVersionUID = 0;
        transient Supplier<? extends List<V>> a;

        b(Map<K, Collection<V>> map, Supplier<? extends List<V>> supplier) {
            super(map);
            this.a = (Supplier) Preconditions.checkNotNull(supplier);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // defpackage.he, defpackage.hf
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public List<V> c() {
            return this.a.get();
        }

        @GwtIncompatible("java.io.ObjectOutputStream")
        private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.defaultWriteObject();
            objectOutputStream.writeObject(this.a);
            objectOutputStream.writeObject(e());
        }

        @GwtIncompatible("java.io.ObjectInputStream")
        private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
            objectInputStream.defaultReadObject();
            this.a = (Supplier) objectInputStream.readObject();
            a((Map) objectInputStream.readObject());
        }
    }

    public static <K, V> SetMultimap<K, V> newSetMultimap(Map<K, Collection<V>> map, Supplier<? extends Set<V>> supplier) {
        return new d(map, supplier);
    }

    static class d<K, V> extends hm<K, V> {

        @GwtIncompatible("not needed in emulated source")
        private static final long serialVersionUID = 0;
        transient Supplier<? extends Set<V>> a;

        d(Map<K, Collection<V>> map, Supplier<? extends Set<V>> supplier) {
            super(map);
            this.a = (Supplier) Preconditions.checkNotNull(supplier);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // defpackage.hm, defpackage.hf
        /* JADX INFO: renamed from: a */
        public Set<V> c() {
            return this.a.get();
        }

        @GwtIncompatible("java.io.ObjectOutputStream")
        private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.defaultWriteObject();
            objectOutputStream.writeObject(this.a);
            objectOutputStream.writeObject(e());
        }

        @GwtIncompatible("java.io.ObjectInputStream")
        private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
            objectInputStream.defaultReadObject();
            this.a = (Supplier) objectInputStream.readObject();
            a((Map) objectInputStream.readObject());
        }
    }

    public static <K, V> SortedSetMultimap<K, V> newSortedSetMultimap(Map<K, Collection<V>> map, Supplier<? extends SortedSet<V>> supplier) {
        return new e(map, supplier);
    }

    static class e<K, V> extends hp<K, V> {

        @GwtIncompatible("not needed in emulated source")
        private static final long serialVersionUID = 0;
        transient Supplier<? extends SortedSet<V>> a;
        transient Comparator<? super V> b;

        e(Map<K, Collection<V>> map, Supplier<? extends SortedSet<V>> supplier) {
            super(map);
            this.a = (Supplier) Preconditions.checkNotNull(supplier);
            this.b = supplier.get().comparator();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // defpackage.hp, defpackage.hm, defpackage.hf
        /* JADX INFO: renamed from: n */
        public SortedSet<V> c() {
            return this.a.get();
        }

        @Override // com.google.common.collect.SortedSetMultimap
        public Comparator<? super V> valueComparator() {
            return this.b;
        }

        @GwtIncompatible("java.io.ObjectOutputStream")
        private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.defaultWriteObject();
            objectOutputStream.writeObject(this.a);
            objectOutputStream.writeObject(e());
        }

        @GwtIncompatible("java.io.ObjectInputStream")
        private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
            objectInputStream.defaultReadObject();
            this.a = (Supplier) objectInputStream.readObject();
            this.b = this.a.get().comparator();
            a((Map) objectInputStream.readObject());
        }
    }

    public static <K, V, M extends Multimap<K, V>> M invertFrom(Multimap<? extends V, ? extends K> multimap, M m2) {
        Preconditions.checkNotNull(m2);
        for (Map.Entry<? extends V, ? extends K> entry : multimap.entries()) {
            m2.put(entry.getValue(), entry.getKey());
        }
        return m2;
    }

    public static <K, V> Multimap<K, V> synchronizedMultimap(Multimap<K, V> multimap) {
        return km.a(multimap, (Object) null);
    }

    public static <K, V> Multimap<K, V> unmodifiableMultimap(Multimap<K, V> multimap) {
        return ((multimap instanceof l) || (multimap instanceof ImmutableMultimap)) ? multimap : new l(multimap);
    }

    @Deprecated
    public static <K, V> Multimap<K, V> unmodifiableMultimap(ImmutableMultimap<K, V> immutableMultimap) {
        return (Multimap) Preconditions.checkNotNull(immutableMultimap);
    }

    static class l<K, V> extends ForwardingMultimap<K, V> implements Serializable {
        private static final long serialVersionUID = 0;
        final Multimap<K, V> a;
        transient Collection<Map.Entry<K, V>> b;
        transient Multiset<K> c;
        transient Set<K> d;
        transient Collection<V> e;
        transient Map<K, Collection<V>> f;

        l(Multimap<K, V> multimap) {
            this.a = (Multimap) Preconditions.checkNotNull(multimap);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.ForwardingObject
        public Multimap<K, V> delegate() {
            return this.a;
        }

        @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap
        public void clear() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public Map<K, Collection<V>> asMap() {
            Map<K, Collection<V>> map = this.f;
            if (map == null) {
                Map<K, Collection<V>> mapUnmodifiableMap = Collections.unmodifiableMap(Maps.transformValues(this.a.asMap(), new Function<Collection<V>, Collection<V>>() { // from class: com.google.common.collect.Multimaps.l.1
                    @Override // com.google.common.base.Function
                    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                    public Collection<V> apply(Collection<V> collection) {
                        return Multimaps.c(collection);
                    }
                }));
                this.f = mapUnmodifiableMap;
                return mapUnmodifiableMap;
            }
            return map;
        }

        @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap
        public Collection<Map.Entry<K, V>> entries() {
            Collection<Map.Entry<K, V>> collection = this.b;
            if (collection == null) {
                Collection<Map.Entry<K, V>> collectionD = Multimaps.d(this.a.entries());
                this.b = collectionD;
                return collectionD;
            }
            return collection;
        }

        @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public Collection<V> get(K k) {
            return Multimaps.c(this.a.get(k));
        }

        @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap
        public Multiset<K> keys() {
            Multiset<K> multiset = this.c;
            if (multiset == null) {
                Multiset<K> multisetUnmodifiableMultiset = Multisets.unmodifiableMultiset(this.a.keys());
                this.c = multisetUnmodifiableMultiset;
                return multisetUnmodifiableMultiset;
            }
            return multiset;
        }

        @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap
        public Set<K> keySet() {
            Set<K> set = this.d;
            if (set == null) {
                Set<K> setUnmodifiableSet = Collections.unmodifiableSet(this.a.keySet());
                this.d = setUnmodifiableSet;
                return setUnmodifiableSet;
            }
            return set;
        }

        @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap
        public boolean put(K k, V v) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap
        public boolean putAll(K k, Iterable<? extends V> iterable) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap
        public boolean putAll(Multimap<? extends K, ? extends V> multimap) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap
        public boolean remove(Object obj, Object obj2) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public Collection<V> removeAll(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public Collection<V> replaceValues(K k, Iterable<? extends V> iterable) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap
        public Collection<V> values() {
            Collection<V> collection = this.e;
            if (collection == null) {
                Collection<V> collectionUnmodifiableCollection = Collections.unmodifiableCollection(this.a.values());
                this.e = collectionUnmodifiableCollection;
                return collectionUnmodifiableCollection;
            }
            return collection;
        }
    }

    static class k<K, V> extends l<K, V> implements ListMultimap<K, V> {
        private static final long serialVersionUID = 0;

        k(ListMultimap<K, V> listMultimap) {
            super(listMultimap);
        }

        @Override // com.google.common.collect.Multimaps.l, com.google.common.collect.ForwardingMultimap, com.google.common.collect.ForwardingObject
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ListMultimap<K, V> delegate() {
            return (ListMultimap) super.delegate();
        }

        @Override // com.google.common.collect.Multimaps.l, com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public List<V> get(K k) {
            return Collections.unmodifiableList(delegate().get((Object) k));
        }

        @Override // com.google.common.collect.Multimaps.l, com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public List<V> removeAll(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.Multimaps.l, com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public List<V> replaceValues(K k, Iterable<? extends V> iterable) {
            throw new UnsupportedOperationException();
        }
    }

    static class m<K, V> extends l<K, V> implements SetMultimap<K, V> {
        private static final long serialVersionUID = 0;

        m(SetMultimap<K, V> setMultimap) {
            super(setMultimap);
        }

        @Override // com.google.common.collect.Multimaps.l, com.google.common.collect.ForwardingMultimap, com.google.common.collect.ForwardingObject
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public SetMultimap<K, V> delegate() {
            return (SetMultimap) super.delegate();
        }

        @Override // com.google.common.collect.Multimaps.l, com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public Set<V> get(K k) {
            return Collections.unmodifiableSet(delegate().get((Object) k));
        }

        @Override // com.google.common.collect.Multimaps.l, com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap
        public Set<Map.Entry<K, V>> entries() {
            return Maps.a((Set) delegate().entries());
        }

        @Override // com.google.common.collect.Multimaps.l, com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public Set<V> removeAll(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.Multimaps.l, com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public Set<V> replaceValues(K k, Iterable<? extends V> iterable) {
            throw new UnsupportedOperationException();
        }
    }

    static class n<K, V> extends m<K, V> implements SortedSetMultimap<K, V> {
        private static final long serialVersionUID = 0;

        n(SortedSetMultimap<K, V> sortedSetMultimap) {
            super(sortedSetMultimap);
        }

        @Override // com.google.common.collect.Multimaps.m, com.google.common.collect.Multimaps.l, com.google.common.collect.ForwardingMultimap, com.google.common.collect.ForwardingObject
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public SortedSetMultimap<K, V> delegate() {
            return (SortedSetMultimap) super.delegate();
        }

        @Override // com.google.common.collect.Multimaps.m, com.google.common.collect.Multimaps.l, com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public SortedSet<V> get(K k) {
            return Collections.unmodifiableSortedSet(delegate().get((Object) k));
        }

        @Override // com.google.common.collect.Multimaps.m, com.google.common.collect.Multimaps.l, com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public SortedSet<V> removeAll(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.Multimaps.m, com.google.common.collect.Multimaps.l, com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public SortedSet<V> replaceValues(K k, Iterable<? extends V> iterable) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.SortedSetMultimap
        public Comparator<? super V> valueComparator() {
            return delegate().valueComparator();
        }
    }

    public static <K, V> SetMultimap<K, V> synchronizedSetMultimap(SetMultimap<K, V> setMultimap) {
        return km.a((SetMultimap) setMultimap, (Object) null);
    }

    public static <K, V> SetMultimap<K, V> unmodifiableSetMultimap(SetMultimap<K, V> setMultimap) {
        return ((setMultimap instanceof m) || (setMultimap instanceof ImmutableSetMultimap)) ? setMultimap : new m(setMultimap);
    }

    @Deprecated
    public static <K, V> SetMultimap<K, V> unmodifiableSetMultimap(ImmutableSetMultimap<K, V> immutableSetMultimap) {
        return (SetMultimap) Preconditions.checkNotNull(immutableSetMultimap);
    }

    public static <K, V> SortedSetMultimap<K, V> synchronizedSortedSetMultimap(SortedSetMultimap<K, V> sortedSetMultimap) {
        return km.a((SortedSetMultimap) sortedSetMultimap, (Object) null);
    }

    public static <K, V> SortedSetMultimap<K, V> unmodifiableSortedSetMultimap(SortedSetMultimap<K, V> sortedSetMultimap) {
        return sortedSetMultimap instanceof n ? sortedSetMultimap : new n(sortedSetMultimap);
    }

    public static <K, V> ListMultimap<K, V> synchronizedListMultimap(ListMultimap<K, V> listMultimap) {
        return km.a((ListMultimap) listMultimap, (Object) null);
    }

    public static <K, V> ListMultimap<K, V> unmodifiableListMultimap(ListMultimap<K, V> listMultimap) {
        return ((listMultimap instanceof k) || (listMultimap instanceof ImmutableListMultimap)) ? listMultimap : new k(listMultimap);
    }

    @Deprecated
    public static <K, V> ListMultimap<K, V> unmodifiableListMultimap(ImmutableListMultimap<K, V> immutableListMultimap) {
        return (ListMultimap) Preconditions.checkNotNull(immutableListMultimap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <V> Collection<V> c(Collection<V> collection) {
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

    /* JADX INFO: Access modifiers changed from: private */
    public static <K, V> Collection<Map.Entry<K, V>> d(Collection<Map.Entry<K, V>> collection) {
        return collection instanceof Set ? Maps.a((Set) collection) : new Maps.y(Collections.unmodifiableCollection(collection));
    }

    @Beta
    public static <K, V> Map<K, List<V>> asMap(ListMultimap<K, V> listMultimap) {
        return listMultimap.asMap();
    }

    @Beta
    public static <K, V> Map<K, Set<V>> asMap(SetMultimap<K, V> setMultimap) {
        return setMultimap.asMap();
    }

    @Beta
    public static <K, V> Map<K, SortedSet<V>> asMap(SortedSetMultimap<K, V> sortedSetMultimap) {
        return sortedSetMultimap.asMap();
    }

    @Beta
    public static <K, V> Map<K, Collection<V>> asMap(Multimap<K, V> multimap) {
        return multimap.asMap();
    }

    public static <K, V> SetMultimap<K, V> forMap(Map<K, V> map) {
        return new h(map);
    }

    static class h<K, V> extends hi<K, V> implements SetMultimap<K, V>, Serializable {
        private static final long serialVersionUID = 7845222491160860175L;
        final Map<K, V> a;

        h(Map<K, V> map) {
            this.a = (Map) Preconditions.checkNotNull(map);
        }

        @Override // com.google.common.collect.Multimap
        public int size() {
            return this.a.size();
        }

        @Override // com.google.common.collect.Multimap
        public boolean containsKey(Object obj) {
            return this.a.containsKey(obj);
        }

        @Override // defpackage.hi, com.google.common.collect.Multimap
        public boolean containsValue(Object obj) {
            return this.a.containsValue(obj);
        }

        @Override // defpackage.hi, com.google.common.collect.Multimap
        public boolean containsEntry(Object obj, Object obj2) {
            return this.a.entrySet().contains(Maps.immutableEntry(obj, obj2));
        }

        @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public Set<V> get(final K k) {
            return new Sets.f<V>() { // from class: com.google.common.collect.Multimaps.h.1
                @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
                public Iterator<V> iterator() {
                    return new Iterator<V>() { // from class: com.google.common.collect.Multimaps.h.1.1
                        int a;

                        @Override // java.util.Iterator
                        public boolean hasNext() {
                            return this.a == 0 && h.this.a.containsKey(k);
                        }

                        @Override // java.util.Iterator
                        public V next() {
                            if (!hasNext()) {
                                throw new NoSuchElementException();
                            }
                            this.a++;
                            return h.this.a.get(k);
                        }

                        @Override // java.util.Iterator
                        public void remove() {
                            hu.a(this.a == 1);
                            this.a = -1;
                            h.this.a.remove(k);
                        }
                    };
                }

                @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
                public int size() {
                    return h.this.a.containsKey(k) ? 1 : 0;
                }
            };
        }

        @Override // defpackage.hi, com.google.common.collect.Multimap
        public boolean put(K k, V v) {
            throw new UnsupportedOperationException();
        }

        @Override // defpackage.hi, com.google.common.collect.Multimap
        public boolean putAll(K k, Iterable<? extends V> iterable) {
            throw new UnsupportedOperationException();
        }

        @Override // defpackage.hi, com.google.common.collect.Multimap
        public boolean putAll(Multimap<? extends K, ? extends V> multimap) {
            throw new UnsupportedOperationException();
        }

        @Override // defpackage.hi, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public Set<V> replaceValues(K k, Iterable<? extends V> iterable) {
            throw new UnsupportedOperationException();
        }

        @Override // defpackage.hi, com.google.common.collect.Multimap
        public boolean remove(Object obj, Object obj2) {
            return this.a.entrySet().remove(Maps.immutableEntry(obj, obj2));
        }

        @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public Set<V> removeAll(Object obj) {
            HashSet hashSet = new HashSet(2);
            if (this.a.containsKey(obj)) {
                hashSet.add(this.a.remove(obj));
            }
            return hashSet;
        }

        @Override // com.google.common.collect.Multimap
        public void clear() {
            this.a.clear();
        }

        @Override // defpackage.hi, com.google.common.collect.Multimap
        public Set<K> keySet() {
            return this.a.keySet();
        }

        @Override // defpackage.hi, com.google.common.collect.Multimap
        public Collection<V> values() {
            return this.a.values();
        }

        @Override // defpackage.hi, com.google.common.collect.Multimap
        public Set<Map.Entry<K, V>> entries() {
            return this.a.entrySet();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // defpackage.hi
        public Iterator<Map.Entry<K, V>> h() {
            return this.a.entrySet().iterator();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // defpackage.hi
        public Map<K, Collection<V>> i() {
            return new a(this);
        }

        @Override // defpackage.hi, com.google.common.collect.Multimap
        public int hashCode() {
            return this.a.hashCode();
        }
    }

    public static <K, V1, V2> Multimap<K, V2> transformValues(Multimap<K, V1> multimap, Function<? super V1, V2> function) {
        Preconditions.checkNotNull(function);
        return transformEntries(multimap, Maps.a(function));
    }

    public static <K, V1, V2> Multimap<K, V2> transformEntries(Multimap<K, V1> multimap, Maps.EntryTransformer<? super K, ? super V1, V2> entryTransformer) {
        return new j(multimap, entryTransformer);
    }

    static class j<K, V1, V2> extends hi<K, V2> {
        final Multimap<K, V1> a;
        final Maps.EntryTransformer<? super K, ? super V1, V2> b;

        j(Multimap<K, V1> multimap, Maps.EntryTransformer<? super K, ? super V1, V2> entryTransformer) {
            this.a = (Multimap) Preconditions.checkNotNull(multimap);
            this.b = (Maps.EntryTransformer) Preconditions.checkNotNull(entryTransformer);
        }

        Collection<V2> b(K k, Collection<V1> collection) {
            Function functionA = Maps.a(this.b, k);
            return collection instanceof List ? Lists.transform((List) collection, functionA) : Collections2.transform(collection, functionA);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // defpackage.hi
        public Map<K, Collection<V2>> i() {
            return Maps.transformEntries(this.a.asMap(), new Maps.EntryTransformer<K, Collection<V1>, Collection<V2>>() { // from class: com.google.common.collect.Multimaps.j.1
                @Override // com.google.common.collect.Maps.EntryTransformer
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public Collection<V2> transformEntry(K k, Collection<V1> collection) {
                    return j.this.b(k, collection);
                }
            });
        }

        @Override // com.google.common.collect.Multimap
        public void clear() {
            this.a.clear();
        }

        @Override // com.google.common.collect.Multimap
        public boolean containsKey(Object obj) {
            return this.a.containsKey(obj);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // defpackage.hi
        public Iterator<Map.Entry<K, V2>> h() {
            return Iterators.transform(this.a.entries().iterator(), Maps.b(this.b));
        }

        @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public Collection<V2> get(K k) {
            return b(k, this.a.get(k));
        }

        @Override // defpackage.hi, com.google.common.collect.Multimap
        public boolean isEmpty() {
            return this.a.isEmpty();
        }

        @Override // defpackage.hi, com.google.common.collect.Multimap
        public Set<K> keySet() {
            return this.a.keySet();
        }

        @Override // defpackage.hi, com.google.common.collect.Multimap
        public Multiset<K> keys() {
            return this.a.keys();
        }

        @Override // defpackage.hi, com.google.common.collect.Multimap
        public boolean put(K k, V2 v2) {
            throw new UnsupportedOperationException();
        }

        @Override // defpackage.hi, com.google.common.collect.Multimap
        public boolean putAll(K k, Iterable<? extends V2> iterable) {
            throw new UnsupportedOperationException();
        }

        @Override // defpackage.hi, com.google.common.collect.Multimap
        public boolean putAll(Multimap<? extends K, ? extends V2> multimap) {
            throw new UnsupportedOperationException();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // defpackage.hi, com.google.common.collect.Multimap
        public boolean remove(Object obj, Object obj2) {
            return get(obj).remove(obj2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public Collection<V2> removeAll(Object obj) {
            return b(obj, this.a.removeAll(obj));
        }

        @Override // defpackage.hi, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public Collection<V2> replaceValues(K k, Iterable<? extends V2> iterable) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.Multimap
        public int size() {
            return this.a.size();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // defpackage.hi
        public Collection<V2> l() {
            return Collections2.transform(this.a.entries(), Maps.a(this.b));
        }
    }

    public static <K, V1, V2> ListMultimap<K, V2> transformValues(ListMultimap<K, V1> listMultimap, Function<? super V1, V2> function) {
        Preconditions.checkNotNull(function);
        return transformEntries((ListMultimap) listMultimap, Maps.a(function));
    }

    public static <K, V1, V2> ListMultimap<K, V2> transformEntries(ListMultimap<K, V1> listMultimap, Maps.EntryTransformer<? super K, ? super V1, V2> entryTransformer) {
        return new i(listMultimap, entryTransformer);
    }

    static final class i<K, V1, V2> extends j<K, V1, V2> implements ListMultimap<K, V2> {
        i(ListMultimap<K, V1> listMultimap, Maps.EntryTransformer<? super K, ? super V1, V2> entryTransformer) {
            super(listMultimap, entryTransformer);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.Multimaps.j
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public List<V2> b(K k, Collection<V1> collection) {
            return Lists.transform((List) collection, Maps.a(this.b, k));
        }

        @Override // com.google.common.collect.Multimaps.j, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public List<V2> get(K k) {
            return b(k, this.a.get(k));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.Multimaps.j, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public List<V2> removeAll(Object obj) {
            return b(obj, this.a.removeAll(obj));
        }

        @Override // com.google.common.collect.Multimaps.j, defpackage.hi, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public List<V2> replaceValues(K k, Iterable<? extends V2> iterable) {
            throw new UnsupportedOperationException();
        }
    }

    public static <K, V> ImmutableListMultimap<K, V> index(Iterable<V> iterable, Function<? super V, K> function) {
        return index(iterable.iterator(), function);
    }

    public static <K, V> ImmutableListMultimap<K, V> index(Iterator<V> it, Function<? super V, K> function) {
        Preconditions.checkNotNull(function);
        ImmutableListMultimap.Builder builder = ImmutableListMultimap.builder();
        while (it.hasNext()) {
            V next = it.next();
            Preconditions.checkNotNull(next, it);
            builder.put((Object) function.apply(next), (Object) next);
        }
        return builder.build();
    }

    public static class g<K, V> extends hj<K> {

        @Weak
        final Multimap<K, V> b;

        public g(Multimap<K, V> multimap) {
            this.b = multimap;
        }

        @Override // defpackage.hj
        public Iterator<Multiset.Entry<K>> a() {
            return new kn<Map.Entry<K, Collection<V>>, Multiset.Entry<K>>(this.b.asMap().entrySet().iterator()) { // from class: com.google.common.collect.Multimaps.g.1
                /* JADX INFO: Access modifiers changed from: package-private */
                @Override // defpackage.kn
                public Multiset.Entry<K> a(final Map.Entry<K, Collection<V>> entry) {
                    return new Multisets.a<K>() { // from class: com.google.common.collect.Multimaps.g.1.1
                        @Override // com.google.common.collect.Multiset.Entry
                        public K getElement() {
                            return (K) entry.getKey();
                        }

                        @Override // com.google.common.collect.Multiset.Entry
                        public int getCount() {
                            return ((Collection) entry.getValue()).size();
                        }
                    };
                }
            };
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // defpackage.hj
        public int b() {
            return this.b.asMap().size();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // defpackage.hj
        public Set<Multiset.Entry<K>> createEntrySet() {
            return new a();
        }

        class a extends Multisets.c<K> {
            a() {
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.collect.Multisets.c
            public Multiset<K> a() {
                return g.this;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Multiset.Entry<K>> iterator() {
                return g.this.a();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                return g.this.b();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean isEmpty() {
                return g.this.b.isEmpty();
            }

            @Override // com.google.common.collect.Multisets.c, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(@Nullable Object obj) {
                if (!(obj instanceof Multiset.Entry)) {
                    return false;
                }
                Multiset.Entry entry = (Multiset.Entry) obj;
                Collection<V> collection = g.this.b.asMap().get(entry.getElement());
                return collection != null && collection.size() == entry.getCount();
            }

            @Override // com.google.common.collect.Multisets.c, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(@Nullable Object obj) {
                if (obj instanceof Multiset.Entry) {
                    Multiset.Entry entry = (Multiset.Entry) obj;
                    Collection<V> collection = g.this.b.asMap().get(entry.getElement());
                    if (collection != null && collection.size() == entry.getCount()) {
                        collection.clear();
                        return true;
                    }
                }
                return false;
            }
        }

        @Override // defpackage.hj, java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
        public boolean contains(@Nullable Object obj) {
            return this.b.containsKey(obj);
        }

        @Override // defpackage.hj, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, com.google.common.collect.Multiset
        public Iterator<K> iterator() {
            return Maps.a(this.b.entries().iterator());
        }

        @Override // defpackage.hj, com.google.common.collect.Multiset
        public int count(@Nullable Object obj) {
            Collection collection = (Collection) Maps.a(this.b.asMap(), obj);
            if (collection == null) {
                return 0;
            }
            return collection.size();
        }

        @Override // defpackage.hj, com.google.common.collect.Multiset
        public int remove(@Nullable Object obj, int i) {
            hu.a(i, "occurrences");
            if (i == 0) {
                return count(obj);
            }
            Collection collection = (Collection) Maps.a(this.b.asMap(), obj);
            if (collection == null) {
                return 0;
            }
            int size = collection.size();
            if (i >= size) {
                collection.clear();
            } else {
                Iterator it = collection.iterator();
                for (int i2 = 0; i2 < i; i2++) {
                    it.next();
                    it.remove();
                }
            }
            return size;
        }

        @Override // defpackage.hj, java.util.AbstractCollection, java.util.Collection
        public void clear() {
            this.b.clear();
        }

        @Override // defpackage.hj, com.google.common.collect.Multiset
        public Set<K> elementSet() {
            return this.b.keySet();
        }
    }

    public static abstract class f<K, V> extends AbstractCollection<Map.Entry<K, V>> {
        public abstract Multimap<K, V> a();

        protected f() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return a().size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(@Nullable Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return a().containsEntry(entry.getKey(), entry.getValue());
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(@Nullable Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return a().remove(entry.getKey(), entry.getValue());
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            a().clear();
        }
    }

    static final class a<K, V> extends Maps.ad<K, Collection<V>> {

        @Weak
        private final Multimap<K, V> a;

        a(Multimap<K, V> multimap) {
            this.a = (Multimap) Preconditions.checkNotNull(multimap);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int size() {
            return this.a.keySet().size();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.Maps.ad
        public Set<Map.Entry<K, Collection<V>>> a() {
            return new C0023a();
        }

        void a(Object obj) {
            this.a.keySet().remove(obj);
        }

        /* JADX INFO: renamed from: com.google.common.collect.Multimaps$a$a, reason: collision with other inner class name */
        class C0023a extends Maps.f<K, Collection<V>> {
            C0023a() {
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.collect.Maps.f
            public Map<K, Collection<V>> a() {
                return a.this;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<K, Collection<V>>> iterator() {
                return Maps.a((Set) a.this.a.keySet(), (Function) new Function<K, Collection<V>>() { // from class: com.google.common.collect.Multimaps.a.a.1
                    @Override // com.google.common.base.Function
                    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                    public Collection<V> apply(K k) {
                        return a.this.a.get(k);
                    }
                });
            }

            @Override // com.google.common.collect.Maps.f, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(Object obj) {
                if (!contains(obj)) {
                    return false;
                }
                a.this.a(((Map.Entry) obj).getKey());
                return true;
            }
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Collection<V> get(Object obj) {
            if (containsKey(obj)) {
                return this.a.get(obj);
            }
            return null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public Collection<V> remove(Object obj) {
            if (containsKey(obj)) {
                return this.a.removeAll(obj);
            }
            return null;
        }

        @Override // com.google.common.collect.Maps.ad, java.util.AbstractMap, java.util.Map
        public Set<K> keySet() {
            return this.a.keySet();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean isEmpty() {
            return this.a.isEmpty();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return this.a.containsKey(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public void clear() {
            this.a.clear();
        }
    }

    @CheckReturnValue
    public static <K, V> Multimap<K, V> filterKeys(Multimap<K, V> multimap, Predicate<? super K> predicate) {
        if (multimap instanceof SetMultimap) {
            return filterKeys((SetMultimap) multimap, (Predicate) predicate);
        }
        if (multimap instanceof ListMultimap) {
            return filterKeys((ListMultimap) multimap, (Predicate) predicate);
        }
        if (multimap instanceof io) {
            io ioVar = (io) multimap;
            return new io(ioVar.a, Predicates.and(ioVar.b, predicate));
        }
        if (multimap instanceof iq) {
            return a((iq) multimap, Maps.a(predicate));
        }
        return new io(multimap, predicate);
    }

    @CheckReturnValue
    public static <K, V> SetMultimap<K, V> filterKeys(SetMultimap<K, V> setMultimap, Predicate<? super K> predicate) {
        if (setMultimap instanceof ip) {
            ip ipVar = (ip) setMultimap;
            return new ip(ipVar.a(), Predicates.and(ipVar.b, predicate));
        }
        if (setMultimap instanceof is) {
            return a((is) setMultimap, Maps.a(predicate));
        }
        return new ip(setMultimap, predicate);
    }

    @CheckReturnValue
    public static <K, V> ListMultimap<K, V> filterKeys(ListMultimap<K, V> listMultimap, Predicate<? super K> predicate) {
        if (!(listMultimap instanceof in)) {
            return new in(listMultimap, predicate);
        }
        in inVar = (in) listMultimap;
        return new in(inVar.a(), Predicates.and(inVar.b, predicate));
    }

    @CheckReturnValue
    public static <K, V> Multimap<K, V> filterValues(Multimap<K, V> multimap, Predicate<? super V> predicate) {
        return filterEntries(multimap, Maps.b(predicate));
    }

    @CheckReturnValue
    public static <K, V> SetMultimap<K, V> filterValues(SetMultimap<K, V> setMultimap, Predicate<? super V> predicate) {
        return filterEntries((SetMultimap) setMultimap, Maps.b(predicate));
    }

    @CheckReturnValue
    public static <K, V> Multimap<K, V> filterEntries(Multimap<K, V> multimap, Predicate<? super Map.Entry<K, V>> predicate) {
        Preconditions.checkNotNull(predicate);
        if (multimap instanceof SetMultimap) {
            return filterEntries((SetMultimap) multimap, (Predicate) predicate);
        }
        if (multimap instanceof iq) {
            return a((iq) multimap, (Predicate) predicate);
        }
        return new il((Multimap) Preconditions.checkNotNull(multimap), predicate);
    }

    @CheckReturnValue
    public static <K, V> SetMultimap<K, V> filterEntries(SetMultimap<K, V> setMultimap, Predicate<? super Map.Entry<K, V>> predicate) {
        Preconditions.checkNotNull(predicate);
        return setMultimap instanceof is ? a((is) setMultimap, (Predicate) predicate) : new im((SetMultimap) Preconditions.checkNotNull(setMultimap), predicate);
    }

    private static <K, V> Multimap<K, V> a(iq<K, V> iqVar, Predicate<? super Map.Entry<K, V>> predicate) {
        return new il(iqVar.a(), Predicates.and(iqVar.b(), predicate));
    }

    private static <K, V> SetMultimap<K, V> a(is<K, V> isVar, Predicate<? super Map.Entry<K, V>> predicate) {
        return new im(isVar.a(), Predicates.and(isVar.b(), predicate));
    }

    public static boolean a(Multimap<?, ?> multimap, @Nullable Object obj) {
        if (obj == multimap) {
            return true;
        }
        if (obj instanceof Multimap) {
            return multimap.asMap().equals(((Multimap) obj).asMap());
        }
        return false;
    }
}
