package android.support.v4.util;

import defpackage.ck;
import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class ArrayMap<K, V> extends SimpleArrayMap<K, V> implements Map<K, V> {
    ck<K, V> a;

    public ArrayMap() {
    }

    public ArrayMap(int i) {
        super(i);
    }

    public ArrayMap(SimpleArrayMap simpleArrayMap) {
        super(simpleArrayMap);
    }

    private ck<K, V> b() {
        if (this.a == null) {
            this.a = new ck<K, V>() { // from class: android.support.v4.util.ArrayMap.1
                /* JADX INFO: Access modifiers changed from: protected */
                @Override // defpackage.ck
                public int a() {
                    return ArrayMap.this.h;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // defpackage.ck
                public Object a(int i, int i2) {
                    return ArrayMap.this.g[(i << 1) + i2];
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // defpackage.ck
                public int a(Object obj) {
                    return ArrayMap.this.indexOfKey(obj);
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // defpackage.ck
                public int b(Object obj) {
                    return ArrayMap.this.a(obj);
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // defpackage.ck
                public Map<K, V> b() {
                    return ArrayMap.this;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // defpackage.ck
                public void a(K k, V v) {
                    ArrayMap.this.put(k, v);
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // defpackage.ck
                public V a(int i, V v) {
                    return ArrayMap.this.setValueAt(i, v);
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // defpackage.ck
                public void a(int i) {
                    ArrayMap.this.removeAt(i);
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // defpackage.ck
                public void c() {
                    ArrayMap.this.clear();
                }
            };
        }
        return this.a;
    }

    public boolean containsAll(Collection<?> collection) {
        return ck.a((Map) this, collection);
    }

    @Override // java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        ensureCapacity(this.h + map.size());
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    public boolean removeAll(Collection<?> collection) {
        return ck.b(this, collection);
    }

    public boolean retainAll(Collection<?> collection) {
        return ck.c(this, collection);
    }

    @Override // java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        return b().d();
    }

    @Override // java.util.Map
    public Set<K> keySet() {
        return b().e();
    }

    @Override // java.util.Map
    public Collection<V> values() {
        return b().f();
    }
}
