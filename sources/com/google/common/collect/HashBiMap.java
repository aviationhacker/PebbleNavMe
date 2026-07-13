package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.collect.Maps;
import defpackage.hh;
import defpackage.hu;
import defpackage.iv;
import defpackage.ix;
import defpackage.ka;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(emulated = true)
public final class HashBiMap<K, V> extends Maps.m<K, V> implements BiMap<K, V>, Serializable {

    @GwtIncompatible("Not needed in emulated source")
    private static final long serialVersionUID = 0;
    private transient a<K, V>[] a;
    private transient a<K, V>[] b;
    private transient a<K, V> c;
    private transient a<K, V> d;
    private transient int e;
    private transient int f;
    private transient int g;
    private transient BiMap<V, K> h;

    @Override // com.google.common.collect.Maps.m, java.util.AbstractMap, java.util.Map
    public /* bridge */ /* synthetic */ Set entrySet() {
        return super.entrySet();
    }

    public static <K, V> HashBiMap<K, V> create() {
        return create(16);
    }

    public static <K, V> HashBiMap<K, V> create(int i) {
        return new HashBiMap<>(i);
    }

    public static <K, V> HashBiMap<K, V> create(Map<? extends K, ? extends V> map) {
        HashBiMap<K, V> hashBiMapCreate = create(map.size());
        hashBiMapCreate.putAll(map);
        return hashBiMapCreate;
    }

    static final class a<K, V> extends ix<K, V> {
        final int a;
        final int b;

        @Nullable
        a<K, V> c;

        @Nullable
        a<K, V> d;

        @Nullable
        a<K, V> e;

        @Nullable
        a<K, V> f;

        a(K k, int i, V v, int i2) {
            super(k, v);
            this.a = i;
            this.b = i2;
        }
    }

    private HashBiMap(int i) {
        a(i);
    }

    private void a(int i) {
        hu.a(i, "expectedSize");
        int iA = iv.a(i, 1.0d);
        this.a = b(iA);
        this.b = b(iA);
        this.c = null;
        this.d = null;
        this.e = 0;
        this.f = iA - 1;
        this.g = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(a<K, V> aVar) {
        a<K, V> aVar2 = null;
        int i = aVar.a & this.f;
        a<K, V> aVar3 = null;
        for (a<K, V> aVar4 = this.a[i]; aVar4 != aVar; aVar4 = aVar4.c) {
            aVar3 = aVar4;
        }
        if (aVar3 == null) {
            this.a[i] = aVar.c;
        } else {
            aVar3.c = aVar.c;
        }
        int i2 = this.f & aVar.b;
        for (a<K, V> aVar5 = this.b[i2]; aVar5 != aVar; aVar5 = aVar5.d) {
            aVar2 = aVar5;
        }
        if (aVar2 == null) {
            this.b[i2] = aVar.d;
        } else {
            aVar2.d = aVar.d;
        }
        if (aVar.f == null) {
            this.c = aVar.e;
        } else {
            aVar.f.e = aVar.e;
        }
        if (aVar.e == null) {
            this.d = aVar.f;
        } else {
            aVar.e.f = aVar.f;
        }
        this.e--;
        this.g++;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(a<K, V> aVar, @Nullable a<K, V> aVar2) {
        int i = aVar.a & this.f;
        aVar.c = this.a[i];
        this.a[i] = aVar;
        int i2 = aVar.b & this.f;
        aVar.d = this.b[i2];
        this.b[i2] = aVar;
        if (aVar2 == null) {
            aVar.f = this.d;
            aVar.e = null;
            if (this.d == null) {
                this.c = aVar;
            } else {
                this.d.e = aVar;
            }
            this.d = aVar;
        } else {
            aVar.f = aVar2.f;
            if (aVar.f == null) {
                this.c = aVar;
            } else {
                aVar.f.e = aVar;
            }
            aVar.e = aVar2.e;
            if (aVar.e == null) {
                this.d = aVar;
            } else {
                aVar.e.f = aVar;
            }
        }
        this.e++;
        this.g++;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public a<K, V> a(@Nullable Object obj, int i) {
        for (a<K, V> aVar = this.a[this.f & i]; aVar != null; aVar = aVar.c) {
            if (i == aVar.a && Objects.equal(obj, aVar.g)) {
                return aVar;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public a<K, V> b(@Nullable Object obj, int i) {
        for (a<K, V> aVar = this.b[this.f & i]; aVar != null; aVar = aVar.d) {
            if (i == aVar.b && Objects.equal(obj, aVar.h)) {
                return aVar;
            }
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(@Nullable Object obj) {
        return a(obj, iv.a(obj)) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsValue(@Nullable Object obj) {
        return b(obj, iv.a(obj)) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    @Nullable
    public V get(@Nullable Object obj) {
        return (V) Maps.c(a(obj, iv.a(obj)));
    }

    @Override // java.util.AbstractMap, java.util.Map, com.google.common.collect.BiMap
    public V put(@Nullable K k, @Nullable V v) {
        return a((Object) k, (Object) v, false);
    }

    @Override // com.google.common.collect.BiMap
    public V forcePut(@Nullable K k, @Nullable V v) {
        return a((Object) k, (Object) v, true);
    }

    private V a(@Nullable K k, @Nullable V v, boolean z) {
        int iA = iv.a(k);
        int iA2 = iv.a(v);
        a<K, V> aVarA = a(k, iA);
        if (aVarA == null || iA2 != aVarA.b || !Objects.equal(v, aVarA.h)) {
            a<K, V> aVarB = b(v, iA2);
            if (aVarB != null) {
                if (z) {
                    a(aVarB);
                } else {
                    String strValueOf = String.valueOf(v);
                    throw new IllegalArgumentException(new StringBuilder(String.valueOf(strValueOf).length() + 23).append("value already present: ").append(strValueOf).toString());
                }
            }
            a<K, V> aVar = new a<>(k, iA, v, iA2);
            if (aVarA != null) {
                a(aVarA);
                a(aVar, aVarA);
                aVarA.f = null;
                aVarA.e = null;
                a();
                return aVarA.h;
            }
            a(aVar, (a) null);
            a();
            return null;
        }
        return v;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public K b(@Nullable V v, @Nullable K k, boolean z) {
        int iA = iv.a(v);
        int iA2 = iv.a(k);
        a<K, V> aVarB = b(v, iA);
        if (aVarB == null || iA2 != aVarB.a || !Objects.equal(k, aVarB.g)) {
            a<K, V> aVarA = a(k, iA2);
            if (aVarA != null) {
                if (z) {
                    a(aVarA);
                } else {
                    String strValueOf = String.valueOf(k);
                    throw new IllegalArgumentException(new StringBuilder(String.valueOf(strValueOf).length() + 23).append("value already present: ").append(strValueOf).toString());
                }
            }
            if (aVarB != null) {
                a(aVarB);
            }
            a(new a<>(k, iA2, v, iA), aVarA);
            if (aVarA != null) {
                aVarA.f = null;
                aVarA.e = null;
            }
            a();
            return (K) Maps.b(aVarB);
        }
        return k;
    }

    private void a() {
        a<K, V>[] aVarArr = this.a;
        if (iv.a(this.e, aVarArr.length, 1.0d)) {
            int length = aVarArr.length * 2;
            this.a = b(length);
            this.b = b(length);
            this.f = length - 1;
            this.e = 0;
            for (a<K, V> aVar = this.c; aVar != null; aVar = aVar.e) {
                a(aVar, aVar);
            }
            this.g++;
        }
    }

    private a<K, V>[] b(int i) {
        return new a[i];
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(@Nullable Object obj) {
        a<K, V> aVarA = a(obj, iv.a(obj));
        if (aVarA == null) {
            return null;
        }
        a(aVarA);
        aVarA.f = null;
        aVarA.e = null;
        return aVarA.h;
    }

    @Override // com.google.common.collect.Maps.m, java.util.AbstractMap, java.util.Map
    public void clear() {
        this.e = 0;
        Arrays.fill(this.a, (Object) null);
        Arrays.fill(this.b, (Object) null);
        this.c = null;
        this.d = null;
        this.g++;
    }

    @Override // com.google.common.collect.Maps.m, java.util.AbstractMap, java.util.Map
    public int size() {
        return this.e;
    }

    abstract class d<T> implements Iterator<T> {
        a<K, V> b;
        a<K, V> c = null;
        int d;

        abstract T b(a<K, V> aVar);

        d() {
            this.b = HashBiMap.this.c;
            this.d = HashBiMap.this.g;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (HashBiMap.this.g != this.d) {
                throw new ConcurrentModificationException();
            }
            return this.b != null;
        }

        @Override // java.util.Iterator
        public T next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            a<K, V> aVar = this.b;
            this.b = aVar.e;
            this.c = aVar;
            return b(aVar);
        }

        @Override // java.util.Iterator
        public void remove() {
            if (HashBiMap.this.g != this.d) {
                throw new ConcurrentModificationException();
            }
            hu.a(this.c != null);
            HashBiMap.this.a(this.c);
            this.d = HashBiMap.this.g;
            this.c = null;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        return new e();
    }

    final class e extends Maps.n<K, V> {
        e() {
            super(HashBiMap.this);
        }

        @Override // com.google.common.collect.Maps.n, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new HashBiMap<K, V>.d<K>() { // from class: com.google.common.collect.HashBiMap.e.1
                {
                    HashBiMap hashBiMap = HashBiMap.this;
                }

                @Override // com.google.common.collect.HashBiMap.d
                K b(a<K, V> aVar) {
                    return aVar.g;
                }
            };
        }

        @Override // com.google.common.collect.Maps.n, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(@Nullable Object obj) {
            a aVarA = HashBiMap.this.a(obj, iv.a(obj));
            if (aVarA != null) {
                HashBiMap.this.a(aVarA);
                aVarA.f = null;
                aVarA.e = null;
                return true;
            }
            return false;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<V> values() {
        return inverse().keySet();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.Maps.m
    public Iterator<Map.Entry<K, V>> b() {
        return new HashBiMap<K, V>.d<Map.Entry<K, V>>() { // from class: com.google.common.collect.HashBiMap.1
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.collect.HashBiMap.d
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Map.Entry<K, V> b(a<K, V> aVar) {
                return new a(aVar);
            }

            /* JADX INFO: renamed from: com.google.common.collect.HashBiMap$1$a */
            class a extends hh<K, V> {
                a<K, V> a;

                a(a<K, V> aVar) {
                    this.a = aVar;
                }

                @Override // defpackage.hh, java.util.Map.Entry
                public K getKey() {
                    return this.a.g;
                }

                @Override // defpackage.hh, java.util.Map.Entry
                public V getValue() {
                    return this.a.h;
                }

                @Override // defpackage.hh, java.util.Map.Entry
                public V setValue(V v) {
                    V v2 = this.a.h;
                    int iA = iv.a(v);
                    if (iA != this.a.b || !Objects.equal(v, v2)) {
                        Preconditions.checkArgument(HashBiMap.this.b(v, iA) == null, "value already present: %s", v);
                        HashBiMap.this.a(this.a);
                        a<K, V> aVar = new a<>(this.a.g, this.a.a, v, iA);
                        HashBiMap.this.a(aVar, this.a);
                        this.a.f = null;
                        this.a.e = null;
                        AnonymousClass1.this.d = HashBiMap.this.g;
                        if (AnonymousClass1.this.c == this.a) {
                            AnonymousClass1.this.c = aVar;
                        }
                        this.a = aVar;
                        return v2;
                    }
                    return v;
                }
            }
        };
    }

    @Override // com.google.common.collect.BiMap
    public BiMap<V, K> inverse() {
        if (this.h != null) {
            return this.h;
        }
        b bVar = new b();
        this.h = bVar;
        return bVar;
    }

    final class b extends AbstractMap<V, K> implements BiMap<V, K>, Serializable {
        private b() {
        }

        BiMap<K, V> a() {
            return HashBiMap.this;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int size() {
            return HashBiMap.this.e;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public void clear() {
            a().clear();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(@Nullable Object obj) {
            return a().containsValue(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public K get(@Nullable Object obj) {
            return (K) Maps.b(HashBiMap.this.b(obj, iv.a(obj)));
        }

        @Override // java.util.AbstractMap, java.util.Map, com.google.common.collect.BiMap
        public K put(@Nullable V v, @Nullable K k) {
            return (K) HashBiMap.this.b((Object) v, (Object) k, false);
        }

        @Override // com.google.common.collect.BiMap
        public K forcePut(@Nullable V v, @Nullable K k) {
            return (K) HashBiMap.this.b((Object) v, (Object) k, true);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public K remove(@Nullable Object obj) {
            a aVarB = HashBiMap.this.b(obj, iv.a(obj));
            if (aVarB == null) {
                return null;
            }
            HashBiMap.this.a(aVarB);
            aVarB.f = null;
            aVarB.e = null;
            return aVarB.g;
        }

        @Override // com.google.common.collect.BiMap
        public BiMap<K, V> inverse() {
            return a();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<V> keySet() {
            return new a();
        }

        final class a extends Maps.n<V, K> {
            a() {
                super(b.this);
            }

            @Override // com.google.common.collect.Maps.n, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(@Nullable Object obj) {
                a aVarB = HashBiMap.this.b(obj, iv.a(obj));
                if (aVarB != null) {
                    HashBiMap.this.a(aVarB);
                    return true;
                }
                return false;
            }

            @Override // com.google.common.collect.Maps.n, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<V> iterator() {
                return new HashBiMap<K, V>.d<V>() { // from class: com.google.common.collect.HashBiMap.b.a.1
                    {
                        HashBiMap hashBiMap = HashBiMap.this;
                    }

                    @Override // com.google.common.collect.HashBiMap.d
                    V b(a<K, V> aVar) {
                        return aVar.h;
                    }
                };
            }
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<K> values() {
            return a().keySet();
        }

        /* JADX INFO: renamed from: com.google.common.collect.HashBiMap$b$1, reason: invalid class name */
        class AnonymousClass1 extends Maps.f<V, K> {
            AnonymousClass1() {
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.collect.Maps.f
            public Map<V, K> a() {
                return b.this;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<V, K>> iterator() {
                return new HashBiMap<K, V>.d<Map.Entry<V, K>>() { // from class: com.google.common.collect.HashBiMap.b.1.1
                    {
                        HashBiMap hashBiMap = HashBiMap.this;
                    }

                    /* JADX INFO: Access modifiers changed from: package-private */
                    @Override // com.google.common.collect.HashBiMap.d
                    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                    public Map.Entry<V, K> b(a<K, V> aVar) {
                        return new a(aVar);
                    }

                    /* JADX INFO: renamed from: com.google.common.collect.HashBiMap$b$1$1$a */
                    class a extends hh<V, K> {
                        a<K, V> a;

                        a(a<K, V> aVar) {
                            this.a = aVar;
                        }

                        @Override // defpackage.hh, java.util.Map.Entry
                        public V getKey() {
                            return this.a.h;
                        }

                        @Override // defpackage.hh, java.util.Map.Entry
                        public K getValue() {
                            return this.a.g;
                        }

                        @Override // defpackage.hh, java.util.Map.Entry
                        public K setValue(K k) {
                            K k2 = this.a.g;
                            int iA = iv.a(k);
                            if (iA != this.a.a || !Objects.equal(k, k2)) {
                                Preconditions.checkArgument(HashBiMap.this.a(k, iA) == null, "value already present: %s", k);
                                HashBiMap.this.a(this.a);
                                a<K, V> aVar = new a<>(k, iA, this.a.h, this.a.b);
                                this.a = aVar;
                                HashBiMap.this.a(aVar, (a) null);
                                C00191.this.d = HashBiMap.this.g;
                                return k2;
                            }
                            return k;
                        }
                    }
                };
            }
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<Map.Entry<V, K>> entrySet() {
            return new AnonymousClass1();
        }

        Object writeReplace() {
            return new c(HashBiMap.this);
        }
    }

    static final class c<K, V> implements Serializable {
        private final HashBiMap<K, V> a;

        c(HashBiMap<K, V> hashBiMap) {
            this.a = hashBiMap;
        }

        Object readResolve() {
            return this.a.inverse();
        }
    }

    @GwtIncompatible("java.io.ObjectOutputStream")
    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        ka.a(this, objectOutputStream);
    }

    @GwtIncompatible("java.io.ObjectInputStream")
    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        a(16);
        ka.a(this, objectInputStream, ka.a(objectInputStream));
    }
}
