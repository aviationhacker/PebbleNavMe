package defpackage;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.collect.Collections2;
import com.google.common.collect.ForwardingCollection;
import com.google.common.collect.ForwardingList;
import com.google.common.collect.ForwardingSet;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Maps;
import com.google.common.collect.Multimap;
import com.google.common.collect.Multiset;
import com.google.common.collect.Multisets;
import com.google.common.collect.SetMultimap;
import com.google.common.collect.Sets;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible
public class io<K, V> extends hi<K, V> implements iq<K, V> {
    public final Multimap<K, V> a;
    public final Predicate<? super K> b;

    public io(Multimap<K, V> multimap, Predicate<? super K> predicate) {
        this.a = (Multimap) Preconditions.checkNotNull(multimap);
        this.b = (Predicate) Preconditions.checkNotNull(predicate);
    }

    public Multimap<K, V> a() {
        return this.a;
    }

    @Override // defpackage.iq
    public Predicate<? super Map.Entry<K, V>> b() {
        return Maps.a(this.b);
    }

    @Override // com.google.common.collect.Multimap
    public int size() {
        int size = 0;
        Iterator<Collection<V>> it = asMap().values().iterator();
        while (true) {
            int i = size;
            if (it.hasNext()) {
                size = it.next().size() + i;
            } else {
                return i;
            }
        }
    }

    @Override // com.google.common.collect.Multimap
    public boolean containsKey(@Nullable Object obj) {
        if (this.a.containsKey(obj)) {
            return this.b.apply(obj);
        }
        return false;
    }

    @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public Collection<V> removeAll(Object obj) {
        return containsKey(obj) ? this.a.removeAll(obj) : e();
    }

    Collection<V> e() {
        return this.a instanceof SetMultimap ? ImmutableSet.of() : ImmutableList.of();
    }

    @Override // com.google.common.collect.Multimap
    public void clear() {
        keySet().clear();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // defpackage.hi
    protected Set<K> f() {
        return Sets.filter(this.a.keySet(), this.b);
    }

    @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public Collection<V> get(K k) {
        if (this.b.apply(k)) {
            return this.a.get(k);
        }
        if (this.a instanceof SetMultimap) {
            return new b(k);
        }
        return new a(k);
    }

    static class b<K, V> extends ForwardingSet<V> {
        final K a;

        b(K k) {
            this.a = k;
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Queue
        public boolean add(V v) {
            String strValueOf = String.valueOf(this.a);
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(strValueOf).length() + 32).append("Key does not satisfy predicate: ").append(strValueOf).toString());
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public boolean addAll(Collection<? extends V> collection) {
            Preconditions.checkNotNull(collection);
            String strValueOf = String.valueOf(this.a);
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(strValueOf).length() + 32).append("Key does not satisfy predicate: ").append(strValueOf).toString());
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public Set<V> delegate() {
            return Collections.emptySet();
        }
    }

    static class a<K, V> extends ForwardingList<V> {
        final K a;

        a(K k) {
            this.a = k;
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Queue
        public boolean add(V v) {
            add(0, v);
            return true;
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public boolean addAll(Collection<? extends V> collection) {
            addAll(0, collection);
            return true;
        }

        @Override // com.google.common.collect.ForwardingList, java.util.List
        public void add(int i, V v) {
            Preconditions.checkPositionIndex(i, 0);
            String strValueOf = String.valueOf(this.a);
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(strValueOf).length() + 32).append("Key does not satisfy predicate: ").append(strValueOf).toString());
        }

        @Override // com.google.common.collect.ForwardingList, java.util.List
        public boolean addAll(int i, Collection<? extends V> collection) {
            Preconditions.checkNotNull(collection);
            Preconditions.checkPositionIndex(i, 0);
            String strValueOf = String.valueOf(this.a);
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(strValueOf).length() + 32).append("Key does not satisfy predicate: ").append(strValueOf).toString());
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.ForwardingList, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public List<V> delegate() {
            return Collections.emptyList();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // defpackage.hi
    public Iterator<Map.Entry<K, V>> h() {
        throw new AssertionError("should never be called");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // defpackage.hi
    protected Collection<Map.Entry<K, V>> j() {
        return new c();
    }

    class c extends ForwardingCollection<Map.Entry<K, V>> {
        c() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public Collection<Map.Entry<K, V>> delegate() {
            return Collections2.filter(io.this.a.entries(), io.this.b());
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
        public boolean remove(@Nullable Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                if (io.this.a.containsKey(entry.getKey()) && io.this.b.apply((Object) entry.getKey())) {
                    return io.this.a.remove(entry.getKey(), entry.getValue());
                }
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // defpackage.hi
    public Collection<V> l() {
        return new ir(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // defpackage.hi
    public Map<K, Collection<V>> i() {
        return Maps.filterKeys(this.a.asMap(), this.b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // defpackage.hi
    protected Multiset<K> k() {
        return Multisets.filter(this.a.keys(), this.b);
    }
}
