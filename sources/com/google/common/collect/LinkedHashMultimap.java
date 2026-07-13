package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Objects;
import com.google.common.collect.Sets;
import defpackage.hm;
import defpackage.hu;
import defpackage.iv;
import defpackage.ix;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(emulated = true, serializable = true)
public final class LinkedHashMultimap<K, V> extends hm<K, V> {

    @GwtIncompatible("java serialization not supported")
    private static final long serialVersionUID = 1;

    @VisibleForTesting
    transient int a;
    private transient a<K, V> b;

    interface c<K, V> {
        c<K, V> a();

        void a(c<K, V> cVar);

        c<K, V> b();

        void b(c<K, V> cVar);
    }

    @Override // defpackage.hm, defpackage.hi, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public /* bridge */ /* synthetic */ Map asMap() {
        return super.asMap();
    }

    @Override // defpackage.hi, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ boolean containsEntry(@Nullable Object obj, @Nullable Object obj2) {
        return super.containsEntry(obj, obj2);
    }

    @Override // defpackage.hf, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ boolean containsKey(@Nullable Object obj) {
        return super.containsKey(obj);
    }

    @Override // defpackage.hi, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ boolean containsValue(@Nullable Object obj) {
        return super.containsValue(obj);
    }

    @Override // defpackage.hm, defpackage.hi, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public /* bridge */ /* synthetic */ boolean equals(@Nullable Object obj) {
        return super.equals(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.hm, defpackage.hf, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public /* bridge */ /* synthetic */ Set get(@Nullable Object obj) {
        return super.get(obj);
    }

    @Override // defpackage.hi, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // defpackage.hi, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    @Override // defpackage.hi, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ Set keySet() {
        return super.keySet();
    }

    @Override // defpackage.hi, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ Multiset keys() {
        return super.keys();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.hm, defpackage.hf, defpackage.hi, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ boolean put(@Nullable Object obj, @Nullable Object obj2) {
        return super.put(obj, obj2);
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

    @Override // defpackage.hm, defpackage.hf, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public /* bridge */ /* synthetic */ Set removeAll(@Nullable Object obj) {
        return super.removeAll(obj);
    }

    @Override // defpackage.hf, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ int size() {
        return super.size();
    }

    @Override // defpackage.hi
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    public static <K, V> LinkedHashMultimap<K, V> create() {
        return new LinkedHashMultimap<>(16, 2);
    }

    public static <K, V> LinkedHashMultimap<K, V> create(int i, int i2) {
        return new LinkedHashMultimap<>(Maps.a(i), Maps.a(i2));
    }

    public static <K, V> LinkedHashMultimap<K, V> create(Multimap<? extends K, ? extends V> multimap) {
        LinkedHashMultimap<K, V> linkedHashMultimapCreate = create(multimap.keySet().size(), 2);
        linkedHashMultimapCreate.putAll(multimap);
        return linkedHashMultimapCreate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <K, V> void b(c<K, V> cVar, c<K, V> cVar2) {
        cVar.b(cVar2);
        cVar2.a(cVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <K, V> void b(a<K, V> aVar, a<K, V> aVar2) {
        aVar.a((a) aVar2);
        aVar2.b((a) aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <K, V> void b(c<K, V> cVar) {
        b(cVar.a(), cVar.b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <K, V> void b(a<K, V> aVar) {
        b((a) aVar.c(), (a) aVar.d());
    }

    @VisibleForTesting
    static final class a<K, V> extends ix<K, V> implements c<K, V> {
        final int a;

        @Nullable
        a<K, V> b;
        c<K, V> c;
        c<K, V> d;
        a<K, V> e;
        a<K, V> f;

        a(@Nullable K k, @Nullable V v, int i, @Nullable a<K, V> aVar) {
            super(k, v);
            this.a = i;
            this.b = aVar;
        }

        boolean a(@Nullable Object obj, int i) {
            return this.a == i && Objects.equal(getValue(), obj);
        }

        @Override // com.google.common.collect.LinkedHashMultimap.c
        public c<K, V> a() {
            return this.c;
        }

        @Override // com.google.common.collect.LinkedHashMultimap.c
        public c<K, V> b() {
            return this.d;
        }

        @Override // com.google.common.collect.LinkedHashMultimap.c
        public void a(c<K, V> cVar) {
            this.c = cVar;
        }

        @Override // com.google.common.collect.LinkedHashMultimap.c
        public void b(c<K, V> cVar) {
            this.d = cVar;
        }

        public a<K, V> c() {
            return this.e;
        }

        public a<K, V> d() {
            return this.f;
        }

        public void a(a<K, V> aVar) {
            this.f = aVar;
        }

        public void b(a<K, V> aVar) {
            this.e = aVar;
        }
    }

    private LinkedHashMultimap(int i, int i2) {
        super(new LinkedHashMap(i));
        this.a = 2;
        hu.a(i2, "expectedValuesPerKey");
        this.a = i2;
        this.b = new a<>(null, null, 0, null);
        b((a) this.b, (a) this.b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // defpackage.hm, defpackage.hf
    /* JADX INFO: renamed from: a */
    public Set<V> c() {
        return new LinkedHashSet(this.a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // defpackage.hf
    protected Collection<V> a(K k) {
        return new b(k, this.a);
    }

    @Override // defpackage.hm, defpackage.hf, defpackage.hi, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public Set<V> replaceValues(@Nullable K k, Iterable<? extends V> iterable) {
        return super.replaceValues((Object) k, (Iterable) iterable);
    }

    @Override // defpackage.hm, defpackage.hf, defpackage.hi, com.google.common.collect.Multimap
    public Set<Map.Entry<K, V>> entries() {
        return super.entries();
    }

    @Override // defpackage.hf, defpackage.hi, com.google.common.collect.Multimap
    public Collection<V> values() {
        return super.values();
    }

    @VisibleForTesting
    final class b extends Sets.f<V> implements c<K, V> {

        @VisibleForTesting
        a<K, V>[] a;
        private final K c;
        private int d = 0;
        private int e = 0;
        private c<K, V> f = this;
        private c<K, V> g = this;

        b(K k, int i) {
            this.c = k;
            this.a = new a[iv.a(i, 1.0d)];
        }

        private int c() {
            return this.a.length - 1;
        }

        @Override // com.google.common.collect.LinkedHashMultimap.c
        public c<K, V> a() {
            return this.g;
        }

        @Override // com.google.common.collect.LinkedHashMultimap.c
        public c<K, V> b() {
            return this.f;
        }

        @Override // com.google.common.collect.LinkedHashMultimap.c
        public void a(c<K, V> cVar) {
            this.g = cVar;
        }

        @Override // com.google.common.collect.LinkedHashMultimap.c
        public void b(c<K, V> cVar) {
            this.f = cVar;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<V> iterator() {
            return new Iterator<V>() { // from class: com.google.common.collect.LinkedHashMultimap.b.1
                c<K, V> a;
                a<K, V> b;
                int c;

                {
                    this.a = b.this.f;
                    this.c = b.this.e;
                }

                private void a() {
                    if (b.this.e != this.c) {
                        throw new ConcurrentModificationException();
                    }
                }

                @Override // java.util.Iterator
                public boolean hasNext() {
                    a();
                    return this.a != b.this;
                }

                @Override // java.util.Iterator
                public V next() {
                    if (!hasNext()) {
                        throw new NoSuchElementException();
                    }
                    a<K, V> aVar = (a) this.a;
                    V value = aVar.getValue();
                    this.b = aVar;
                    this.a = aVar.b();
                    return value;
                }

                @Override // java.util.Iterator
                public void remove() {
                    a();
                    hu.a(this.b != null);
                    b.this.remove(this.b.getValue());
                    this.c = b.this.e;
                    this.b = null;
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.d;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@Nullable Object obj) {
            int iA = iv.a(obj);
            for (a<K, V> aVar = this.a[c() & iA]; aVar != null; aVar = aVar.b) {
                if (aVar.a(obj, iA)) {
                    return true;
                }
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean add(@Nullable V v) {
            int iA = iv.a(v);
            int iC = iA & c();
            a<K, V> aVar = this.a[iC];
            for (a<K, V> aVar2 = aVar; aVar2 != null; aVar2 = aVar2.b) {
                if (aVar2.a(v, iA)) {
                    return false;
                }
            }
            a<K, V> aVar3 = new a<>(this.c, v, iA, aVar);
            LinkedHashMultimap.b(this.g, aVar3);
            LinkedHashMultimap.b(aVar3, this);
            LinkedHashMultimap.b((a) LinkedHashMultimap.this.b.c(), (a) aVar3);
            LinkedHashMultimap.b((a) aVar3, LinkedHashMultimap.this.b);
            this.a[iC] = aVar3;
            this.d++;
            this.e++;
            d();
            return true;
        }

        private void d() {
            if (iv.a(this.d, this.a.length, 1.0d)) {
                a<K, V>[] aVarArr = new a[this.a.length * 2];
                this.a = aVarArr;
                int length = aVarArr.length - 1;
                for (c<K, V> cVarB = this.f; cVarB != this; cVarB = cVarB.b()) {
                    a<K, V> aVar = (a) cVarB;
                    int i = aVar.a & length;
                    aVar.b = aVarArr[i];
                    aVarArr[i] = aVar;
                }
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(@Nullable Object obj) {
            int iA = iv.a(obj);
            int iC = iA & c();
            a<K, V> aVar = null;
            for (a<K, V> aVar2 = this.a[iC]; aVar2 != null; aVar2 = aVar2.b) {
                if (!aVar2.a(obj, iA)) {
                    aVar = aVar2;
                } else {
                    if (aVar == null) {
                        this.a[iC] = aVar2.b;
                    } else {
                        aVar.b = aVar2.b;
                    }
                    LinkedHashMultimap.b((c) aVar2);
                    LinkedHashMultimap.b((a) aVar2);
                    this.d--;
                    this.e++;
                    return true;
                }
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            Arrays.fill(this.a, (Object) null);
            this.d = 0;
            for (c<K, V> cVarB = this.f; cVarB != this; cVarB = cVarB.b()) {
                LinkedHashMultimap.b((a) cVarB);
            }
            LinkedHashMultimap.b(this, this);
            this.e++;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // defpackage.hf, defpackage.hi
    public Iterator<Map.Entry<K, V>> h() {
        return new Iterator<Map.Entry<K, V>>() { // from class: com.google.common.collect.LinkedHashMultimap.1
            a<K, V> a;
            a<K, V> b;

            {
                this.a = LinkedHashMultimap.this.b.f;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.a != LinkedHashMultimap.this.b;
            }

            @Override // java.util.Iterator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Map.Entry<K, V> next() {
                if (!hasNext()) {
                    throw new NoSuchElementException();
                }
                a<K, V> aVar = this.a;
                this.b = aVar;
                this.a = this.a.f;
                return aVar;
            }

            @Override // java.util.Iterator
            public void remove() {
                hu.a(this.b != null);
                LinkedHashMultimap.this.remove(this.b.getKey(), this.b.getValue());
                this.b = null;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // defpackage.hf, defpackage.hi
    protected Iterator<V> g() {
        return Maps.b(h());
    }

    @Override // defpackage.hf, com.google.common.collect.Multimap
    public void clear() {
        super.clear();
        b((a) this.b, (a) this.b);
    }

    @GwtIncompatible("java.io.ObjectOutputStream")
    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(keySet().size());
        Iterator it = keySet().iterator();
        while (it.hasNext()) {
            objectOutputStream.writeObject(it.next());
        }
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
        this.b = new a<>(null, null, 0, null);
        b((a) this.b, (a) this.b);
        this.a = 2;
        int i = objectInputStream.readInt();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (int i2 = 0; i2 < i; i2++) {
            Object object = objectInputStream.readObject();
            linkedHashMap.put(object, a(object));
        }
        int i3 = objectInputStream.readInt();
        for (int i4 = 0; i4 < i3; i4++) {
            ((Collection) linkedHashMap.get(objectInputStream.readObject())).add(objectInputStream.readObject());
        }
        a((Map) linkedHashMap);
    }
}
