package defpackage;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.base.Predicates;
import com.google.common.collect.AbstractIterator;
import com.google.common.collect.Collections2;
import com.google.common.collect.Iterators;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.google.common.collect.Multimap;
import com.google.common.collect.Multimaps;
import com.google.common.collect.Multiset;
import com.google.common.collect.Multisets;
import com.google.common.collect.SetMultimap;
import com.google.common.collect.Sets;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible
public class il<K, V> extends hi<K, V> implements iq<K, V> {
    final Multimap<K, V> a;
    final Predicate<? super Map.Entry<K, V>> b;

    public il(Multimap<K, V> multimap, Predicate<? super Map.Entry<K, V>> predicate) {
        this.a = (Multimap) Preconditions.checkNotNull(multimap);
        this.b = (Predicate) Preconditions.checkNotNull(predicate);
    }

    @Override // defpackage.iq
    public Multimap<K, V> a() {
        return this.a;
    }

    @Override // defpackage.iq
    public Predicate<? super Map.Entry<K, V>> b() {
        return this.b;
    }

    @Override // com.google.common.collect.Multimap
    public int size() {
        return entries().size();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(K k, V v) {
        return this.b.apply(Maps.immutableEntry(k, v));
    }

    final class c implements Predicate<V> {
        private final K b;

        c(K k) {
            this.b = k;
        }

        @Override // com.google.common.base.Predicate
        public boolean apply(@Nullable V v) {
            return il.this.a(this.b, v);
        }
    }

    static <E> Collection<E> a(Collection<E> collection, Predicate<? super E> predicate) {
        return collection instanceof Set ? Sets.filter((Set) collection, predicate) : Collections2.filter(collection, predicate);
    }

    @Override // com.google.common.collect.Multimap
    public boolean containsKey(@Nullable Object obj) {
        return asMap().get(obj) != null;
    }

    @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public Collection<V> removeAll(@Nullable Object obj) {
        return (Collection) MoreObjects.firstNonNull(asMap().remove(obj), c());
    }

    Collection<V> c() {
        return this.a instanceof SetMultimap ? Collections.emptySet() : Collections.emptyList();
    }

    @Override // com.google.common.collect.Multimap
    public void clear() {
        entries().clear();
    }

    @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public Collection<V> get(K k) {
        return a((Collection) this.a.get(k), (Predicate) new c(k));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // defpackage.hi
    protected Collection<Map.Entry<K, V>> j() {
        return a((Collection) this.a.entries(), (Predicate) this.b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // defpackage.hi
    public Collection<V> l() {
        return new ir(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // defpackage.hi
    public Iterator<Map.Entry<K, V>> h() {
        throw new AssertionError("should never be called");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // defpackage.hi
    public Map<K, Collection<V>> i() {
        return new a();
    }

    @Override // defpackage.hi, com.google.common.collect.Multimap
    public Set<K> keySet() {
        return asMap().keySet();
    }

    boolean a(Predicate<? super Map.Entry<K, Collection<V>>> predicate) {
        Iterator<Map.Entry<K, Collection<V>>> it = this.a.asMap().entrySet().iterator();
        boolean z = false;
        while (true) {
            boolean z2 = z;
            if (it.hasNext()) {
                Map.Entry<K, Collection<V>> next = it.next();
                K key = next.getKey();
                Collection collectionA = a((Collection) next.getValue(), (Predicate) new c(key));
                if (!collectionA.isEmpty() && predicate.apply(Maps.immutableEntry(key, collectionA))) {
                    if (collectionA.size() == next.getValue().size()) {
                        it.remove();
                    } else {
                        collectionA.clear();
                    }
                    z2 = true;
                }
                z = z2;
            } else {
                return z2;
            }
        }
    }

    class a extends Maps.ad<K, Collection<V>> {
        a() {
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(@Nullable Object obj) {
            return get(obj) != null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public void clear() {
            il.this.clear();
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Collection<V> get(@Nullable Object obj) {
            Collection<V> collection = il.this.a.asMap().get(obj);
            if (collection == null) {
                return null;
            }
            Collection<V> collectionA = il.a((Collection) collection, (Predicate) new c(obj));
            if (collectionA.isEmpty()) {
                collectionA = null;
            }
            return collectionA;
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Collection<V> remove(@Nullable Object obj) {
            Collection<V> collection = il.this.a.asMap().get(obj);
            if (collection == null) {
                return null;
            }
            ArrayList arrayListNewArrayList = Lists.newArrayList();
            Iterator<V> it = collection.iterator();
            while (it.hasNext()) {
                V next = it.next();
                if (il.this.a(obj, next)) {
                    it.remove();
                    arrayListNewArrayList.add(next);
                }
            }
            if (arrayListNewArrayList.isEmpty()) {
                return null;
            }
            if (il.this.a instanceof SetMultimap) {
                return Collections.unmodifiableSet(Sets.newLinkedHashSet(arrayListNewArrayList));
            }
            return Collections.unmodifiableList(arrayListNewArrayList);
        }

        class b extends Maps.n<K, Collection<V>> {
            b() {
                super(a.this);
            }

            @Override // com.google.common.collect.Sets.f, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean removeAll(Collection<?> collection) {
                return il.this.a(Maps.a(Predicates.in(collection)));
            }

            @Override // com.google.common.collect.Sets.f, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean retainAll(Collection<?> collection) {
                return il.this.a(Maps.a(Predicates.not(Predicates.in(collection))));
            }

            @Override // com.google.common.collect.Maps.n, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(@Nullable Object obj) {
                return a.this.remove(obj) != null;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.Maps.ad
        public Set<K> h() {
            return new b();
        }

        /* JADX INFO: renamed from: il$a$a, reason: collision with other inner class name */
        class C0036a extends Maps.f<K, Collection<V>> {
            C0036a() {
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.collect.Maps.f
            public Map<K, Collection<V>> a() {
                return a.this;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<K, Collection<V>>> iterator() {
                return new AbstractIterator<Map.Entry<K, Collection<V>>>() { // from class: il.a.a.1
                    final Iterator<Map.Entry<K, Collection<V>>> a;

                    {
                        this.a = il.this.a.asMap().entrySet().iterator();
                    }

                    /* JADX INFO: Access modifiers changed from: protected */
                    @Override // com.google.common.collect.AbstractIterator
                    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                    public Map.Entry<K, Collection<V>> computeNext() {
                        while (this.a.hasNext()) {
                            Map.Entry<K, Collection<V>> next = this.a.next();
                            K key = next.getKey();
                            Collection collectionA = il.a((Collection) next.getValue(), (Predicate) new c(key));
                            if (!collectionA.isEmpty()) {
                                return Maps.immutableEntry(key, collectionA);
                            }
                        }
                        return endOfData();
                    }
                };
            }

            @Override // com.google.common.collect.Maps.f, com.google.common.collect.Sets.f, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean removeAll(Collection<?> collection) {
                return il.this.a(Predicates.in(collection));
            }

            @Override // com.google.common.collect.Maps.f, com.google.common.collect.Sets.f, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean retainAll(Collection<?> collection) {
                return il.this.a(Predicates.not(Predicates.in(collection)));
            }

            @Override // com.google.common.collect.Maps.f, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                return Iterators.size(iterator());
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.Maps.ad
        public Set<Map.Entry<K, Collection<V>>> a() {
            return new C0036a();
        }

        class c extends Maps.ac<K, Collection<V>> {
            c() {
                super(a.this);
            }

            @Override // com.google.common.collect.Maps.ac, java.util.AbstractCollection, java.util.Collection
            public boolean remove(@Nullable Object obj) {
                if (obj instanceof Collection) {
                    Collection collection = (Collection) obj;
                    Iterator<Map.Entry<K, Collection<V>>> it = il.this.a.asMap().entrySet().iterator();
                    while (it.hasNext()) {
                        Map.Entry<K, Collection<V>> next = it.next();
                        Collection collectionA = il.a((Collection) next.getValue(), (Predicate) new c(next.getKey()));
                        if (!collectionA.isEmpty() && collection.equals(collectionA)) {
                            if (collectionA.size() == next.getValue().size()) {
                                it.remove();
                            } else {
                                collectionA.clear();
                            }
                            return true;
                        }
                    }
                }
                return false;
            }

            @Override // com.google.common.collect.Maps.ac, java.util.AbstractCollection, java.util.Collection
            public boolean removeAll(Collection<?> collection) {
                return il.this.a(Maps.b(Predicates.in(collection)));
            }

            @Override // com.google.common.collect.Maps.ac, java.util.AbstractCollection, java.util.Collection
            public boolean retainAll(Collection<?> collection) {
                return il.this.a(Maps.b(Predicates.not(Predicates.in(collection))));
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.Maps.ad
        public Collection<Collection<V>> b() {
            return new c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // defpackage.hi
    protected Multiset<K> k() {
        return new b();
    }

    class b extends Multimaps.g<K, V> {
        b() {
            super(il.this);
        }

        @Override // com.google.common.collect.Multimaps.g, defpackage.hj, com.google.common.collect.Multiset
        public int remove(@Nullable Object obj, int i) {
            hu.a(i, "occurrences");
            if (i == 0) {
                return count(obj);
            }
            Collection<V> collection = il.this.a.asMap().get(obj);
            if (collection == null) {
                return 0;
            }
            Iterator<V> it = collection.iterator();
            int i2 = 0;
            while (it.hasNext()) {
                if (il.this.a(obj, it.next()) && (i2 = i2 + 1) <= i) {
                    it.remove();
                }
            }
            return i2;
        }

        @Override // defpackage.hj, com.google.common.collect.Multiset
        public Set<Multiset.Entry<K>> entrySet() {
            return new Multisets.c<K>() { // from class: il.b.1
                /* JADX INFO: Access modifiers changed from: package-private */
                @Override // com.google.common.collect.Multisets.c
                public Multiset<K> a() {
                    return b.this;
                }

                @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
                public Iterator<Multiset.Entry<K>> iterator() {
                    return b.this.a();
                }

                @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
                public int size() {
                    return il.this.keySet().size();
                }

                private boolean a(final Predicate<? super Multiset.Entry<K>> predicate) {
                    return il.this.a(new Predicate<Map.Entry<K, Collection<V>>>() { // from class: il.b.1.1
                        @Override // com.google.common.base.Predicate
                        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                        public boolean apply(Map.Entry<K, Collection<V>> entry) {
                            return predicate.apply(Multisets.immutableEntry(entry.getKey(), entry.getValue().size()));
                        }
                    });
                }

                @Override // com.google.common.collect.Sets.f, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
                public boolean removeAll(Collection<?> collection) {
                    return a(Predicates.in(collection));
                }

                @Override // com.google.common.collect.Sets.f, java.util.AbstractCollection, java.util.Collection, java.util.Set
                public boolean retainAll(Collection<?> collection) {
                    return a(Predicates.not(Predicates.in(collection)));
                }
            };
        }
    }
}
