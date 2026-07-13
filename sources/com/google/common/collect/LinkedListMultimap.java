package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.Multimaps;
import com.google.common.collect.Sets;
import defpackage.hh;
import defpackage.hi;
import defpackage.hu;
import defpackage.ko;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractSequentialList;
import java.util.Collection;
import java.util.Collections;
import java.util.ConcurrentModificationException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(emulated = true, serializable = true)
public class LinkedListMultimap<K, V> extends hi<K, V> implements ListMultimap<K, V>, Serializable {

    @GwtIncompatible("java serialization not supported")
    private static final long serialVersionUID = 0;
    private transient f<K, V> a;
    private transient f<K, V> b;
    private transient Map<K, e<K, V>> c;
    private transient int d;
    private transient int e;

    @Override // defpackage.hi, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public /* bridge */ /* synthetic */ Map asMap() {
        return super.asMap();
    }

    @Override // defpackage.hi, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ boolean containsEntry(@Nullable Object obj, @Nullable Object obj2) {
        return super.containsEntry(obj, obj2);
    }

    @Override // defpackage.hi, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public /* bridge */ /* synthetic */ boolean equals(@Nullable Object obj) {
        return super.equals(obj);
    }

    @Override // defpackage.hi, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // defpackage.hi, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ Set keySet() {
        return super.keySet();
    }

    @Override // defpackage.hi, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ Multiset keys() {
        return super.keys();
    }

    @Override // defpackage.hi, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ boolean putAll(Multimap multimap) {
        return super.putAll(multimap);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.hi, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ boolean putAll(@Nullable Object obj, Iterable iterable) {
        return super.putAll(obj, iterable);
    }

    @Override // defpackage.hi, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ boolean remove(@Nullable Object obj, @Nullable Object obj2) {
        return super.remove(obj, obj2);
    }

    @Override // defpackage.hi
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    static final class f<K, V> extends hh<K, V> {
        final K a;
        V b;
        f<K, V> c;
        f<K, V> d;
        f<K, V> e;
        f<K, V> f;

        f(@Nullable K k, @Nullable V v) {
            this.a = k;
            this.b = v;
        }

        @Override // defpackage.hh, java.util.Map.Entry
        public K getKey() {
            return this.a;
        }

        @Override // defpackage.hh, java.util.Map.Entry
        public V getValue() {
            return this.b;
        }

        @Override // defpackage.hh, java.util.Map.Entry
        public V setValue(@Nullable V v) {
            V v2 = this.b;
            this.b = v;
            return v2;
        }
    }

    static class e<K, V> {
        f<K, V> a;
        f<K, V> b;
        int c;

        e(f<K, V> fVar) {
            this.a = fVar;
            this.b = fVar;
            fVar.f = null;
            fVar.e = null;
            this.c = 1;
        }
    }

    public static <K, V> LinkedListMultimap<K, V> create() {
        return new LinkedListMultimap<>();
    }

    public static <K, V> LinkedListMultimap<K, V> create(int i) {
        return new LinkedListMultimap<>(i);
    }

    public static <K, V> LinkedListMultimap<K, V> create(Multimap<? extends K, ? extends V> multimap) {
        return new LinkedListMultimap<>(multimap);
    }

    LinkedListMultimap() {
        this.c = Maps.newHashMap();
    }

    private LinkedListMultimap(int i) {
        this.c = new HashMap(i);
    }

    private LinkedListMultimap(Multimap<? extends K, ? extends V> multimap) {
        this(multimap.keySet().size());
        putAll(multimap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public f<K, V> a(@Nullable K k, @Nullable V v, @Nullable f<K, V> fVar) {
        f<K, V> fVar2 = new f<>(k, v);
        if (this.a == null) {
            this.b = fVar2;
            this.a = fVar2;
            this.c.put(k, new e<>(fVar2));
            this.e++;
        } else if (fVar == null) {
            this.b.c = fVar2;
            fVar2.d = this.b;
            this.b = fVar2;
            e<K, V> eVar = this.c.get(k);
            if (eVar == null) {
                this.c.put(k, new e<>(fVar2));
                this.e++;
            } else {
                eVar.c++;
                f<K, V> fVar3 = eVar.b;
                fVar3.e = fVar2;
                fVar2.f = fVar3;
                eVar.b = fVar2;
            }
        } else {
            this.c.get(k).c++;
            fVar2.d = fVar.d;
            fVar2.f = fVar.f;
            fVar2.c = fVar;
            fVar2.e = fVar;
            if (fVar.f == null) {
                this.c.get(k).a = fVar2;
            } else {
                fVar.f.e = fVar2;
            }
            if (fVar.d == null) {
                this.a = fVar2;
            } else {
                fVar.d.c = fVar2;
            }
            fVar.d = fVar2;
            fVar.f = fVar2;
        }
        this.d++;
        return fVar2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(f<K, V> fVar) {
        if (fVar.d != null) {
            fVar.d.c = fVar.c;
        } else {
            this.a = fVar.c;
        }
        if (fVar.c != null) {
            fVar.c.d = fVar.d;
        } else {
            this.b = fVar.d;
        }
        if (fVar.f == null && fVar.e == null) {
            this.c.remove(fVar.a).c = 0;
            this.e++;
        } else {
            e<K, V> eVar = this.c.get(fVar.a);
            eVar.c--;
            if (fVar.f == null) {
                eVar.a = fVar.e;
            } else {
                fVar.f.e = fVar.e;
            }
            if (fVar.e == null) {
                eVar.b = fVar.f;
            } else {
                fVar.e.f = fVar.f;
            }
        }
        this.d--;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(@Nullable Object obj) {
        Iterators.b(new h(obj));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(@Nullable Object obj) {
        if (obj == null) {
            throw new NoSuchElementException();
        }
    }

    class g implements ListIterator<Map.Entry<K, V>> {
        int a;
        f<K, V> b;
        f<K, V> c;
        f<K, V> d;
        int e;

        g(int i) {
            this.e = LinkedListMultimap.this.e;
            int size = LinkedListMultimap.this.size();
            Preconditions.checkPositionIndex(i, size);
            if (i >= size / 2) {
                this.d = LinkedListMultimap.this.b;
                this.a = size;
                while (true) {
                    int i2 = i + 1;
                    if (i >= size) {
                        break;
                    }
                    previous();
                    i = i2;
                }
            } else {
                this.b = LinkedListMultimap.this.a;
                while (true) {
                    int i3 = i - 1;
                    if (i <= 0) {
                        break;
                    }
                    next();
                    i = i3;
                }
            }
            this.c = null;
        }

        private void c() {
            if (LinkedListMultimap.this.e != this.e) {
                throw new ConcurrentModificationException();
            }
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            c();
            return this.b != null;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public f<K, V> next() {
            c();
            LinkedListMultimap.c(this.b);
            f<K, V> fVar = this.b;
            this.c = fVar;
            this.d = fVar;
            this.b = this.b.c;
            this.a++;
            return this.c;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public void remove() {
            c();
            hu.a(this.c != null);
            if (this.c != this.b) {
                this.d = this.c.d;
                this.a--;
            } else {
                this.b = this.c.c;
            }
            LinkedListMultimap.this.a((f) this.c);
            this.c = null;
            this.e = LinkedListMultimap.this.e;
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            c();
            return this.d != null;
        }

        @Override // java.util.ListIterator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public f<K, V> previous() {
            c();
            LinkedListMultimap.c(this.d);
            f<K, V> fVar = this.d;
            this.c = fVar;
            this.b = fVar;
            this.d = this.d.d;
            this.a--;
            return this.c;
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.a;
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return this.a - 1;
        }

        @Override // java.util.ListIterator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void set(Map.Entry<K, V> entry) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ListIterator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void add(Map.Entry<K, V> entry) {
            throw new UnsupportedOperationException();
        }

        void a(V v) {
            Preconditions.checkState(this.c != null);
            this.c.b = v;
        }
    }

    class d implements Iterator<K> {
        final Set<K> a;
        f<K, V> b;
        f<K, V> c;
        int d;

        private d() {
            this.a = Sets.newHashSetWithExpectedSize(LinkedListMultimap.this.keySet().size());
            this.b = LinkedListMultimap.this.a;
            this.d = LinkedListMultimap.this.e;
        }

        private void a() {
            if (LinkedListMultimap.this.e != this.d) {
                throw new ConcurrentModificationException();
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            a();
            return this.b != null;
        }

        @Override // java.util.Iterator
        public K next() {
            a();
            LinkedListMultimap.c(this.b);
            this.c = this.b;
            this.a.add(this.c.a);
            do {
                this.b = this.b.c;
                if (this.b == null) {
                    break;
                }
            } while (!this.a.add(this.b.a));
            return this.c.a;
        }

        @Override // java.util.Iterator
        public void remove() {
            a();
            hu.a(this.c != null);
            LinkedListMultimap.this.b(this.c.a);
            this.c = null;
            this.d = LinkedListMultimap.this.e;
        }
    }

    class h implements ListIterator<V> {
        final Object a;
        int b;
        f<K, V> c;
        f<K, V> d;
        f<K, V> e;

        h(Object obj) {
            this.a = obj;
            e eVar = (e) LinkedListMultimap.this.c.get(obj);
            this.c = eVar == null ? null : eVar.a;
        }

        public h(Object obj, @Nullable int i) {
            e eVar = (e) LinkedListMultimap.this.c.get(obj);
            int i2 = eVar == null ? 0 : eVar.c;
            Preconditions.checkPositionIndex(i, i2);
            if (i >= i2 / 2) {
                this.e = eVar == null ? null : eVar.b;
                this.b = i2;
                while (true) {
                    int i3 = i + 1;
                    if (i >= i2) {
                        break;
                    }
                    previous();
                    i = i3;
                }
            } else {
                this.c = eVar == null ? null : eVar.a;
                while (true) {
                    int i4 = i - 1;
                    if (i <= 0) {
                        break;
                    }
                    next();
                    i = i4;
                }
            }
            this.a = obj;
            this.d = null;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            return this.c != null;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public V next() {
            LinkedListMultimap.c(this.c);
            f<K, V> fVar = this.c;
            this.d = fVar;
            this.e = fVar;
            this.c = this.c.e;
            this.b++;
            return this.d.b;
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return this.e != null;
        }

        @Override // java.util.ListIterator
        public V previous() {
            LinkedListMultimap.c(this.e);
            f<K, V> fVar = this.e;
            this.d = fVar;
            this.c = fVar;
            this.e = this.e.f;
            this.b--;
            return this.d.b;
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.b;
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return this.b - 1;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public void remove() {
            hu.a(this.d != null);
            if (this.d != this.c) {
                this.e = this.d.f;
                this.b--;
            } else {
                this.c = this.d.e;
            }
            LinkedListMultimap.this.a((f) this.d);
            this.d = null;
        }

        @Override // java.util.ListIterator
        public void set(V v) {
            Preconditions.checkState(this.d != null);
            this.d.b = v;
        }

        @Override // java.util.ListIterator
        public void add(V v) {
            this.e = LinkedListMultimap.this.a(this.a, v, this.c);
            this.b++;
            this.d = null;
        }
    }

    @Override // com.google.common.collect.Multimap
    public int size() {
        return this.d;
    }

    @Override // defpackage.hi, com.google.common.collect.Multimap
    public boolean isEmpty() {
        return this.a == null;
    }

    @Override // com.google.common.collect.Multimap
    public boolean containsKey(@Nullable Object obj) {
        return this.c.containsKey(obj);
    }

    @Override // defpackage.hi, com.google.common.collect.Multimap
    public boolean containsValue(@Nullable Object obj) {
        return values().contains(obj);
    }

    @Override // defpackage.hi, com.google.common.collect.Multimap
    public boolean put(@Nullable K k, @Nullable V v) {
        a(k, v, null);
        return true;
    }

    @Override // defpackage.hi, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public List<V> replaceValues(@Nullable K k, Iterable<? extends V> iterable) {
        List<V> listD = d(k);
        h hVar = new h(k);
        Iterator<? extends V> it = iterable.iterator();
        while (hVar.hasNext() && it.hasNext()) {
            hVar.next();
            hVar.set(it.next());
        }
        while (hVar.hasNext()) {
            hVar.next();
            hVar.remove();
        }
        while (it.hasNext()) {
            hVar.add(it.next());
        }
        return listD;
    }

    private List<V> d(@Nullable Object obj) {
        return Collections.unmodifiableList(Lists.newArrayList(new h(obj)));
    }

    @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public List<V> removeAll(@Nullable Object obj) {
        List<V> listD = d(obj);
        b(obj);
        return listD;
    }

    @Override // com.google.common.collect.Multimap
    public void clear() {
        this.a = null;
        this.b = null;
        this.c.clear();
        this.d = 0;
        this.e++;
    }

    @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public List<V> get(@Nullable final K k) {
        return new AbstractSequentialList<V>() { // from class: com.google.common.collect.LinkedListMultimap.1
            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public int size() {
                e eVar = (e) LinkedListMultimap.this.c.get(k);
                if (eVar == null) {
                    return 0;
                }
                return eVar.c;
            }

            @Override // java.util.AbstractSequentialList, java.util.AbstractList, java.util.List
            public ListIterator<V> listIterator(int i) {
                return new h(k, i);
            }
        };
    }

    class b extends Sets.f<K> {
        b() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return LinkedListMultimap.this.c.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new d();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return LinkedListMultimap.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return !LinkedListMultimap.this.removeAll(obj).isEmpty();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // defpackage.hi
    protected Set<K> f() {
        return new b();
    }

    @Override // defpackage.hi, com.google.common.collect.Multimap
    public List<V> values() {
        return (List) super.values();
    }

    class c extends AbstractSequentialList<V> {
        c() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return LinkedListMultimap.this.d;
        }

        @Override // java.util.AbstractSequentialList, java.util.AbstractList, java.util.List
        public ListIterator<V> listIterator(int i) {
            final g gVar = new g(i);
            return new ko<Map.Entry<K, V>, V>(gVar) { // from class: com.google.common.collect.LinkedListMultimap.c.1
                /* JADX INFO: Access modifiers changed from: package-private */
                @Override // defpackage.kn
                public V a(Map.Entry<K, V> entry) {
                    return entry.getValue();
                }

                @Override // defpackage.ko, java.util.ListIterator
                public void set(V v) {
                    gVar.a(v);
                }
            };
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // defpackage.hi
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public List<V> l() {
        return new c();
    }

    @Override // defpackage.hi, com.google.common.collect.Multimap
    public List<Map.Entry<K, V>> entries() {
        return (List) super.entries();
    }

    class a extends AbstractSequentialList<Map.Entry<K, V>> {
        a() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return LinkedListMultimap.this.d;
        }

        @Override // java.util.AbstractSequentialList, java.util.AbstractList, java.util.List
        public ListIterator<Map.Entry<K, V>> listIterator(int i) {
            return new g(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // defpackage.hi
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public List<Map.Entry<K, V>> j() {
        return new a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // defpackage.hi
    public Iterator<Map.Entry<K, V>> h() {
        throw new AssertionError("should never be called");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // defpackage.hi
    public Map<K, Collection<V>> i() {
        return new Multimaps.a(this);
    }

    @GwtIncompatible("java.io.ObjectOutputStream")
    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(size());
        for (Map.Entry<K, V> entry : entries()) {
            objectOutputStream.writeObject(entry.getKey());
            objectOutputStream.writeObject(entry.getValue());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @GwtIncompatible("java.io.ObjectInputStream")
    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        this.c = Maps.newLinkedHashMap();
        int i = objectInputStream.readInt();
        for (int i2 = 0; i2 < i; i2++) {
            put(objectInputStream.readObject(), objectInputStream.readObject());
        }
    }
}
