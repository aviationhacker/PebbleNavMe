package defpackage;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import defpackage.ja;
import defpackage.jb;
import java.util.Map;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(emulated = true, serializable = true)
public final class js<K, V> extends ImmutableMap<K, V> {
    private static final long serialVersionUID = 0;
    private final transient Map.Entry<K, V>[] a;
    private final transient ja<K, V>[] c;
    private final transient int d;

    public static <K, V> js<K, V> a(Map.Entry<K, V>... entryArr) {
        return a(entryArr.length, entryArr);
    }

    public static <K, V> js<K, V> a(int i, Map.Entry<K, V>[] entryArr) {
        ja bVar;
        Preconditions.checkPositionIndex(i, entryArr.length);
        Map.Entry<K, V>[] entryArrA = i == entryArr.length ? entryArr : ja.a(i);
        int iA = iv.a(i, 1.2d);
        ja[] jaVarArrA = ja.a(iA);
        int i2 = iA - 1;
        for (int i3 = 0; i3 < i; i3++) {
            Map.Entry<K, V> entry = entryArr[i3];
            K key = entry.getKey();
            V value = entry.getValue();
            hu.a(key, value);
            int iA2 = iv.a(key.hashCode()) & i2;
            ja jaVar = jaVarArrA[iA2];
            if (jaVar == null) {
                bVar = (entry instanceof ja) && ((ja) entry).c() ? (ja) entry : new ja(key, value);
            } else {
                bVar = new ja.b(key, value, jaVar);
            }
            jaVarArrA[iA2] = bVar;
            entryArrA[i3] = bVar;
            a(key, bVar, (ja<?, ?>) jaVar);
        }
        return new js<>(entryArrA, jaVarArrA, i2);
    }

    private js(Map.Entry<K, V>[] entryArr, ja<K, V>[] jaVarArr, int i) {
        this.a = entryArr;
        this.c = jaVarArr;
        this.d = i;
    }

    static void a(Object obj, Map.Entry<?, ?> entry, @Nullable ja<?, ?> jaVar) {
        while (jaVar != null) {
            a(!obj.equals(jaVar.getKey()), "key", entry, jaVar);
            jaVar = jaVar.a();
        }
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public V get(@Nullable Object obj) {
        return (V) a(obj, this.c, this.d);
    }

    @Nullable
    static <V> V a(@Nullable Object obj, ja<?, V>[] jaVarArr, int i) {
        if (obj == null) {
            return null;
        }
        for (ja<?, V> jaVarA = jaVarArr[iv.a(obj.hashCode()) & i]; jaVarA != null; jaVarA = jaVarA.a()) {
            if (obj.equals(jaVarA.getKey())) {
                return jaVarA.getValue();
            }
        }
        return null;
    }

    @Override // java.util.Map
    public int size() {
        return this.a.length;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableMap
    public boolean b() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableMap
    public ImmutableSet<Map.Entry<K, V>> e() {
        return new jb.b(this, this.a);
    }
}
