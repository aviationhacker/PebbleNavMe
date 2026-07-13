package com.google.gson.internal;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class LinkedHashTreeMap<K, V> extends AbstractMap<K, V> implements Serializable {
    static final /* synthetic */ boolean g;
    private static final Comparator<Comparable> h;
    Comparator<? super K> a;
    f<K, V>[] b;
    final f<K, V> c;
    int d;
    int e;
    int f;
    private LinkedHashTreeMap<K, V>.c i;
    private LinkedHashTreeMap<K, V>.d j;

    static {
        g = !LinkedHashTreeMap.class.desiredAssertionStatus();
        h = new Comparator<Comparable>() { // from class: com.google.gson.internal.LinkedHashTreeMap.1
            @Override // java.util.Comparator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public int compare(Comparable comparable, Comparable comparable2) {
                return comparable.compareTo(comparable2);
            }
        };
    }

    public LinkedHashTreeMap() {
        this(h);
    }

    public LinkedHashTreeMap(Comparator<? super K> comparator) {
        this.d = 0;
        this.e = 0;
        this.a = comparator == null ? h : comparator;
        this.c = new f<>();
        this.b = new f[16];
        this.f = (this.b.length / 2) + (this.b.length / 4);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.d;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        f<K, V> fVarA = a(obj);
        if (fVarA != null) {
            return fVarA.h;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        return a(obj) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V put(K k, V v) {
        if (k == null) {
            throw new NullPointerException("key == null");
        }
        f<K, V> fVarA = a((Object) k, true);
        V v2 = fVarA.h;
        fVarA.h = v;
        return v2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        Arrays.fill(this.b, (Object) null);
        this.d = 0;
        this.e++;
        f<K, V> fVar = this.c;
        f<K, V> fVar2 = fVar.d;
        while (fVar2 != fVar) {
            f<K, V> fVar3 = fVar2.d;
            fVar2.e = null;
            fVar2.d = null;
            fVar2 = fVar3;
        }
        fVar.e = fVar;
        fVar.d = fVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        f<K, V> fVarB = b(obj);
        if (fVarB != null) {
            return fVarB.h;
        }
        return null;
    }

    f<K, V> a(K k, boolean z) {
        int i;
        f<K, V> fVar;
        int iCompare;
        Comparator<? super K> comparator = this.a;
        f<K, V>[] fVarArr = this.b;
        int iA = a(k.hashCode());
        int length = iA & (fVarArr.length - 1);
        f<K, V> fVar2 = fVarArr[length];
        if (fVar2 == null) {
            i = 0;
        } else {
            Comparable comparable = comparator == h ? (Comparable) k : null;
            while (true) {
                if (comparable != null) {
                    iCompare = comparable.compareTo(fVar2.f);
                } else {
                    iCompare = comparator.compare(k, fVar2.f);
                }
                if (iCompare == 0) {
                    return fVar2;
                }
                f<K, V> fVar3 = iCompare < 0 ? fVar2.b : fVar2.c;
                if (fVar3 == null) {
                    i = iCompare;
                    break;
                }
                fVar2 = fVar3;
            }
        }
        if (!z) {
            return null;
        }
        f<K, V> fVar4 = this.c;
        if (fVar2 == null) {
            if (comparator == h && !(k instanceof Comparable)) {
                throw new ClassCastException(k.getClass().getName() + " is not Comparable");
            }
            fVar = new f<>(fVar2, k, iA, fVar4, fVar4.e);
            fVarArr[length] = fVar;
        } else {
            fVar = new f<>(fVar2, k, iA, fVar4, fVar4.e);
            if (i < 0) {
                fVar2.b = fVar;
            } else {
                fVar2.c = fVar;
            }
            b(fVar2, true);
        }
        int i2 = this.d;
        this.d = i2 + 1;
        if (i2 > this.f) {
            a();
        }
        this.e++;
        return fVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    f<K, V> a(Object obj) {
        if (obj == 0) {
            return null;
        }
        try {
            return a(obj, false);
        } catch (ClassCastException e2) {
            return null;
        }
    }

    f<K, V> a(Map.Entry<?, ?> entry) {
        f<K, V> fVarA = a(entry.getKey());
        if (fVarA != null && a(fVarA.h, entry.getValue())) {
            return fVarA;
        }
        return null;
    }

    private boolean a(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    private static int a(int i) {
        int i2 = ((i >>> 20) ^ (i >>> 12)) ^ i;
        return (i2 >>> 4) ^ ((i2 >>> 7) ^ i2);
    }

    void a(f<K, V> fVar, boolean z) {
        int i;
        int i2 = 0;
        if (z) {
            fVar.e.d = fVar.d;
            fVar.d.e = fVar.e;
            fVar.e = null;
            fVar.d = null;
        }
        f<K, V> fVar2 = fVar.b;
        f<K, V> fVar3 = fVar.c;
        f<K, V> fVar4 = fVar.a;
        if (fVar2 != null && fVar3 != null) {
            f<K, V> fVarB = fVar2.i > fVar3.i ? fVar2.b() : fVar3.a();
            a((f) fVarB, false);
            f<K, V> fVar5 = fVar.b;
            if (fVar5 != null) {
                i = fVar5.i;
                fVarB.b = fVar5;
                fVar5.a = fVarB;
                fVar.b = null;
            } else {
                i = 0;
            }
            f<K, V> fVar6 = fVar.c;
            if (fVar6 != null) {
                i2 = fVar6.i;
                fVarB.c = fVar6;
                fVar6.a = fVarB;
                fVar.c = null;
            }
            fVarB.i = Math.max(i, i2) + 1;
            a((f) fVar, (f) fVarB);
            return;
        }
        if (fVar2 != null) {
            a((f) fVar, (f) fVar2);
            fVar.b = null;
        } else if (fVar3 != null) {
            a((f) fVar, (f) fVar3);
            fVar.c = null;
        } else {
            a((f) fVar, (f) null);
        }
        b(fVar4, false);
        this.d--;
        this.e++;
    }

    f<K, V> b(Object obj) {
        f<K, V> fVarA = a(obj);
        if (fVarA != null) {
            a((f) fVarA, true);
        }
        return fVarA;
    }

    private void a(f<K, V> fVar, f<K, V> fVar2) {
        f<K, V> fVar3 = fVar.a;
        fVar.a = null;
        if (fVar2 != null) {
            fVar2.a = fVar3;
        }
        if (fVar3 != null) {
            if (fVar3.b == fVar) {
                fVar3.b = fVar2;
                return;
            } else {
                if (!g && fVar3.c != fVar) {
                    throw new AssertionError();
                }
                fVar3.c = fVar2;
                return;
            }
        }
        this.b[fVar.g & (this.b.length - 1)] = fVar2;
    }

    private void b(f<K, V> fVar, boolean z) {
        while (fVar != null) {
            f<K, V> fVar2 = fVar.b;
            f<K, V> fVar3 = fVar.c;
            int i = fVar2 != null ? fVar2.i : 0;
            int i2 = fVar3 != null ? fVar3.i : 0;
            int i3 = i - i2;
            if (i3 == -2) {
                f<K, V> fVar4 = fVar3.b;
                f<K, V> fVar5 = fVar3.c;
                int i4 = (fVar4 != null ? fVar4.i : 0) - (fVar5 != null ? fVar5.i : 0);
                if (i4 == -1 || (i4 == 0 && !z)) {
                    a((f) fVar);
                } else {
                    if (!g && i4 != 1) {
                        throw new AssertionError();
                    }
                    b((f) fVar3);
                    a((f) fVar);
                }
                if (z) {
                    return;
                }
            } else if (i3 == 2) {
                f<K, V> fVar6 = fVar2.b;
                f<K, V> fVar7 = fVar2.c;
                int i5 = (fVar6 != null ? fVar6.i : 0) - (fVar7 != null ? fVar7.i : 0);
                if (i5 == 1 || (i5 == 0 && !z)) {
                    b((f) fVar);
                } else {
                    if (!g && i5 != -1) {
                        throw new AssertionError();
                    }
                    a((f) fVar2);
                    b((f) fVar);
                }
                if (z) {
                    return;
                }
            } else if (i3 == 0) {
                fVar.i = i + 1;
                if (z) {
                    return;
                }
            } else {
                if (!g && i3 != -1 && i3 != 1) {
                    throw new AssertionError();
                }
                fVar.i = Math.max(i, i2) + 1;
                if (!z) {
                    return;
                }
            }
            fVar = fVar.a;
        }
    }

    private void a(f<K, V> fVar) {
        f<K, V> fVar2 = fVar.b;
        f<K, V> fVar3 = fVar.c;
        f<K, V> fVar4 = fVar3.b;
        f<K, V> fVar5 = fVar3.c;
        fVar.c = fVar4;
        if (fVar4 != null) {
            fVar4.a = fVar;
        }
        a((f) fVar, (f) fVar3);
        fVar3.b = fVar;
        fVar.a = fVar3;
        fVar.i = Math.max(fVar2 != null ? fVar2.i : 0, fVar4 != null ? fVar4.i : 0) + 1;
        fVar3.i = Math.max(fVar.i, fVar5 != null ? fVar5.i : 0) + 1;
    }

    private void b(f<K, V> fVar) {
        f<K, V> fVar2 = fVar.b;
        f<K, V> fVar3 = fVar.c;
        f<K, V> fVar4 = fVar2.b;
        f<K, V> fVar5 = fVar2.c;
        fVar.b = fVar5;
        if (fVar5 != null) {
            fVar5.a = fVar;
        }
        a((f) fVar, (f) fVar2);
        fVar2.c = fVar;
        fVar.a = fVar2;
        fVar.i = Math.max(fVar3 != null ? fVar3.i : 0, fVar5 != null ? fVar5.i : 0) + 1;
        fVar2.i = Math.max(fVar.i, fVar4 != null ? fVar4.i : 0) + 1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        LinkedHashTreeMap<K, V>.c cVar = this.i;
        if (cVar != null) {
            return cVar;
        }
        LinkedHashTreeMap<K, V>.c cVar2 = new c();
        this.i = cVar2;
        return cVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        LinkedHashTreeMap<K, V>.d dVar = this.j;
        if (dVar != null) {
            return dVar;
        }
        LinkedHashTreeMap<K, V>.d dVar2 = new d();
        this.j = dVar2;
        return dVar2;
    }

    static final class f<K, V> implements Map.Entry<K, V> {
        f<K, V> a;
        f<K, V> b;
        f<K, V> c;
        f<K, V> d;
        f<K, V> e;
        final K f;
        final int g;
        V h;
        int i;

        f() {
            this.f = null;
            this.g = -1;
            this.e = this;
            this.d = this;
        }

        f(f<K, V> fVar, K k, int i, f<K, V> fVar2, f<K, V> fVar3) {
            this.a = fVar;
            this.f = k;
            this.g = i;
            this.i = 1;
            this.d = fVar2;
            this.e = fVar3;
            fVar3.d = this;
            fVar2.e = this;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.f;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.h;
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            V v2 = this.h;
            this.h = v;
            return v2;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            if (this.f == null) {
                if (entry.getKey() != null) {
                    return false;
                }
            } else if (!this.f.equals(entry.getKey())) {
                return false;
            }
            if (this.h == null) {
                if (entry.getValue() != null) {
                    return false;
                }
            } else if (!this.h.equals(entry.getValue())) {
                return false;
            }
            return true;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            return (this.f == null ? 0 : this.f.hashCode()) ^ (this.h != null ? this.h.hashCode() : 0);
        }

        public String toString() {
            return this.f + "=" + this.h;
        }

        public f<K, V> a() {
            for (f<K, V> fVar = this.b; fVar != null; fVar = fVar.b) {
                this = fVar;
            }
            return this;
        }

        public f<K, V> b() {
            for (f<K, V> fVar = this.c; fVar != null; fVar = fVar.c) {
                this = fVar;
            }
            return this;
        }
    }

    private void a() {
        this.b = a((f[]) this.b);
        this.f = (this.b.length / 2) + (this.b.length / 4);
    }

    static <K, V> f<K, V>[] a(f<K, V>[] fVarArr) {
        int length = fVarArr.length;
        f<K, V>[] fVarArr2 = new f[length * 2];
        b bVar = new b();
        a aVar = new a();
        a aVar2 = new a();
        for (int i = 0; i < length; i++) {
            f<K, V> fVar = fVarArr[i];
            if (fVar != null) {
                bVar.a(fVar);
                int i2 = 0;
                int i3 = 0;
                while (true) {
                    f<K, V> fVarA = bVar.a();
                    if (fVarA == null) {
                        break;
                    }
                    if ((fVarA.g & length) == 0) {
                        i3++;
                    } else {
                        i2++;
                    }
                }
                aVar.a(i3);
                aVar2.a(i2);
                bVar.a(fVar);
                while (true) {
                    f<K, V> fVarA2 = bVar.a();
                    if (fVarA2 == null) {
                        break;
                    }
                    if ((fVarA2.g & length) == 0) {
                        aVar.a(fVarA2);
                    } else {
                        aVar2.a(fVarA2);
                    }
                }
                fVarArr2[i] = i3 > 0 ? aVar.a() : null;
                fVarArr2[i + length] = i2 > 0 ? aVar2.a() : null;
            }
        }
        return fVarArr2;
    }

    static class b<K, V> {
        private f<K, V> a;

        b() {
        }

        void a(f<K, V> fVar) {
            f<K, V> fVar2 = null;
            while (fVar != null) {
                fVar.a = fVar2;
                fVar2 = fVar;
                fVar = fVar.b;
            }
            this.a = fVar2;
        }

        public f<K, V> a() {
            f<K, V> fVar = this.a;
            if (fVar == null) {
                return null;
            }
            f<K, V> fVar2 = fVar.a;
            fVar.a = null;
            for (f<K, V> fVar3 = fVar.c; fVar3 != null; fVar3 = fVar3.b) {
                fVar3.a = fVar2;
                fVar2 = fVar3;
            }
            this.a = fVar2;
            return fVar;
        }
    }

    static final class a<K, V> {
        private f<K, V> a;
        private int b;
        private int c;
        private int d;

        a() {
        }

        void a(int i) {
            this.b = ((Integer.highestOneBit(i) * 2) - 1) - i;
            this.d = 0;
            this.c = 0;
            this.a = null;
        }

        void a(f<K, V> fVar) {
            fVar.c = null;
            fVar.a = null;
            fVar.b = null;
            fVar.i = 1;
            if (this.b > 0 && (this.d & 1) == 0) {
                this.d++;
                this.b--;
                this.c++;
            }
            fVar.a = this.a;
            this.a = fVar;
            this.d++;
            if (this.b > 0 && (this.d & 1) == 0) {
                this.d++;
                this.b--;
                this.c++;
            }
            for (int i = 4; (this.d & (i - 1)) == i - 1; i *= 2) {
                if (this.c == 0) {
                    f<K, V> fVar2 = this.a;
                    f<K, V> fVar3 = fVar2.a;
                    f<K, V> fVar4 = fVar3.a;
                    fVar3.a = fVar4.a;
                    this.a = fVar3;
                    fVar3.b = fVar4;
                    fVar3.c = fVar2;
                    fVar3.i = fVar2.i + 1;
                    fVar4.a = fVar3;
                    fVar2.a = fVar3;
                } else if (this.c == 1) {
                    f<K, V> fVar5 = this.a;
                    f<K, V> fVar6 = fVar5.a;
                    this.a = fVar6;
                    fVar6.c = fVar5;
                    fVar6.i = fVar5.i + 1;
                    fVar5.a = fVar6;
                    this.c = 0;
                } else if (this.c == 2) {
                    this.c = 0;
                }
            }
        }

        f<K, V> a() {
            f<K, V> fVar = this.a;
            if (fVar.a != null) {
                throw new IllegalStateException();
            }
            return fVar;
        }
    }

    abstract class e<T> implements Iterator<T> {
        f<K, V> b;
        f<K, V> c;
        int d;

        private e() {
            this.b = LinkedHashTreeMap.this.c.d;
            this.c = null;
            this.d = LinkedHashTreeMap.this.e;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.b != LinkedHashTreeMap.this.c;
        }

        final f<K, V> b() {
            f<K, V> fVar = this.b;
            if (fVar == LinkedHashTreeMap.this.c) {
                throw new NoSuchElementException();
            }
            if (LinkedHashTreeMap.this.e != this.d) {
                throw new ConcurrentModificationException();
            }
            this.b = fVar.d;
            this.c = fVar;
            return fVar;
        }

        @Override // java.util.Iterator
        public final void remove() {
            if (this.c == null) {
                throw new IllegalStateException();
            }
            LinkedHashTreeMap.this.a((f) this.c, true);
            this.c = null;
            this.d = LinkedHashTreeMap.this.e;
        }
    }

    final class c extends AbstractSet<Map.Entry<K, V>> {
        c() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return LinkedHashTreeMap.this.d;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new LinkedHashTreeMap<K, V>.e<Map.Entry<K, V>>() { // from class: com.google.gson.internal.LinkedHashTreeMap.c.1
                {
                    LinkedHashTreeMap linkedHashTreeMap = LinkedHashTreeMap.this;
                }

                @Override // java.util.Iterator
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public Map.Entry<K, V> next() {
                    return b();
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return (obj instanceof Map.Entry) && LinkedHashTreeMap.this.a((Map.Entry<?, ?>) obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            f<K, V> fVarA;
            if (!(obj instanceof Map.Entry) || (fVarA = LinkedHashTreeMap.this.a((Map.Entry<?, ?>) obj)) == null) {
                return false;
            }
            LinkedHashTreeMap.this.a((f) fVarA, true);
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            LinkedHashTreeMap.this.clear();
        }
    }

    final class d extends AbstractSet<K> {
        d() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return LinkedHashTreeMap.this.d;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new LinkedHashTreeMap<K, V>.e<K>() { // from class: com.google.gson.internal.LinkedHashTreeMap.d.1
                {
                    LinkedHashTreeMap linkedHashTreeMap = LinkedHashTreeMap.this;
                }

                @Override // java.util.Iterator
                public K next() {
                    return b().f;
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return LinkedHashTreeMap.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return LinkedHashTreeMap.this.b(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            LinkedHashTreeMap.this.clear();
        }
    }

    private Object writeReplace() {
        return new LinkedHashMap(this);
    }
}
