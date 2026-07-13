package defpackage;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableBiMap;
import com.google.common.collect.ImmutableCollection;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Maps;
import com.google.common.collect.UnmodifiableIterator;
import defpackage.ja;
import defpackage.jb;
import java.io.Serializable;
import java.util.Map;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(emulated = true, serializable = true)
public class jq<K, V> extends ImmutableBiMap<K, V> {
    public static final jq<Object, Object> a = new jq<>(null, null, ImmutableMap.b, 0, 0);
    private final transient ja<K, V>[] c;
    private final transient ja<K, V>[] d;
    private final transient Map.Entry<K, V>[] e;
    private final transient int f;
    private final transient int g;
    private transient ImmutableBiMap<V, K> h;

    public static <K, V> jq<K, V> a(Map.Entry<K, V>... entryArr) {
        return a(entryArr.length, entryArr);
    }

    public static <K, V> jq<K, V> a(int i, Map.Entry<K, V>[] entryArr) {
        ja aVar;
        Preconditions.checkPositionIndex(i, entryArr.length);
        int iA = iv.a(i, 1.2d);
        int i2 = iA - 1;
        ja[] jaVarArrA = ja.a(iA);
        ja[] jaVarArrA2 = ja.a(iA);
        Map.Entry<K, V>[] entryArrA = i == entryArr.length ? entryArr : ja.a(i);
        int i3 = 0;
        int i4 = 0;
        while (true) {
            int i5 = i4;
            if (i5 < i) {
                Map.Entry<K, V> entry = entryArr[i5];
                K key = entry.getKey();
                V value = entry.getValue();
                hu.a(key, value);
                int iHashCode = key.hashCode();
                int iHashCode2 = value.hashCode();
                int iA2 = iv.a(iHashCode) & i2;
                int iA3 = iv.a(iHashCode2) & i2;
                ja jaVar = jaVarArrA[iA2];
                js.a((Object) key, (Map.Entry<?, ?>) entry, (ja<?, ?>) jaVar);
                ja jaVar2 = jaVarArrA2[iA3];
                a(value, entry, jaVar2);
                if (jaVar2 == null && jaVar == null) {
                    aVar = (entry instanceof ja) && ((ja) entry).c() ? (ja) entry : new ja(key, value);
                } else {
                    aVar = new ja.a(key, value, jaVar, jaVar2);
                }
                jaVarArrA[iA2] = aVar;
                jaVarArrA2[iA3] = aVar;
                entryArrA[i5] = aVar;
                i3 += iHashCode ^ iHashCode2;
                i4 = i5 + 1;
            } else {
                return new jq<>(jaVarArrA, jaVarArrA2, entryArrA, i2, i3);
            }
        }
    }

    private jq(ja<K, V>[] jaVarArr, ja<K, V>[] jaVarArr2, Map.Entry<K, V>[] entryArr, int i, int i2) {
        this.c = jaVarArr;
        this.d = jaVarArr2;
        this.e = entryArr;
        this.f = i;
        this.g = i2;
    }

    private static void a(Object obj, Map.Entry<?, ?> entry, @Nullable ja<?, ?> jaVar) {
        while (jaVar != null) {
            a(!obj.equals(jaVar.getValue()), "value", entry, jaVar);
            jaVar = jaVar.b();
        }
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    @Nullable
    public V get(@Nullable Object obj) {
        if (this.c == null) {
            return null;
        }
        return (V) js.a(obj, this.c, this.f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableMap
    public ImmutableSet<Map.Entry<K, V>> e() {
        return isEmpty() ? ImmutableSet.of() : new jb.b(this, this.e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableMap
    public boolean f() {
        return true;
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public int hashCode() {
        return this.g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableMap
    public boolean b() {
        return false;
    }

    @Override // java.util.Map
    public int size() {
        return this.e.length;
    }

    @Override // com.google.common.collect.ImmutableBiMap, com.google.common.collect.BiMap
    public ImmutableBiMap<V, K> inverse() {
        if (isEmpty()) {
            return ImmutableBiMap.of();
        }
        ImmutableBiMap<V, K> immutableBiMap = this.h;
        if (immutableBiMap == null) {
            a aVar = new a();
            this.h = aVar;
            return aVar;
        }
        return immutableBiMap;
    }

    final class a extends ImmutableBiMap<V, K> {
        private a() {
        }

        @Override // java.util.Map
        public int size() {
            return inverse().size();
        }

        @Override // com.google.common.collect.ImmutableBiMap, com.google.common.collect.BiMap
        public ImmutableBiMap<K, V> inverse() {
            return jq.this;
        }

        @Override // com.google.common.collect.ImmutableMap, java.util.Map
        public K get(@Nullable Object obj) {
            if (obj == null || jq.this.d == null) {
                return null;
            }
            for (ja jaVarB = jq.this.d[iv.a(obj.hashCode()) & jq.this.f]; jaVarB != null; jaVarB = jaVarB.b()) {
                if (obj.equals(jaVarB.getValue())) {
                    return jaVarB.getKey();
                }
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableMap
        public ImmutableSet<Map.Entry<V, K>> e() {
            return new C0038a();
        }

        /* JADX INFO: renamed from: jq$a$a, reason: collision with other inner class name */
        final class C0038a extends jb<V, K> {
            C0038a() {
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // defpackage.jb
            protected ImmutableMap<V, K> b() {
                return a.this;
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // defpackage.jb, com.google.common.collect.ImmutableSet
            public boolean e() {
                return true;
            }

            @Override // defpackage.jb, com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
            public int hashCode() {
                return jq.this.g;
            }

            @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
            public UnmodifiableIterator<Map.Entry<V, K>> iterator() {
                return asList().iterator();
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.collect.ImmutableCollection
            public ImmutableList<Map.Entry<V, K>> f() {
                return new iw<Map.Entry<V, K>>() { // from class: jq.a.a.1
                    @Override // java.util.List
                    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                    public Map.Entry<V, K> get(int i) {
                        Map.Entry entry = jq.this.e[i];
                        return Maps.immutableEntry(entry.getValue(), entry.getKey());
                    }

                    /* JADX INFO: Access modifiers changed from: package-private */
                    @Override // defpackage.iw
                    protected ImmutableCollection<Map.Entry<V, K>> b() {
                        return C0038a.this;
                    }
                };
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableMap
        public boolean b() {
            return false;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableBiMap, com.google.common.collect.ImmutableMap
        public Object writeReplace() {
            return new b(jq.this);
        }
    }

    static class b<K, V> implements Serializable {
        private static final long serialVersionUID = 1;
        private final ImmutableBiMap<K, V> a;

        b(ImmutableBiMap<K, V> immutableBiMap) {
            this.a = immutableBiMap;
        }

        Object readResolve() {
            return this.a.inverse();
        }
    }
}
