package com.google.android.gms.internal;

import defpackage.gn;
import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class zzme<K, V> extends zzmi<K, V> implements Map<K, V> {
    gn<K, V> a;

    private gn<K, V> b() {
        if (this.a == null) {
            this.a = new gn<K, V>() { // from class: com.google.android.gms.internal.zzme.1
                @Override // defpackage.gn
                protected int a() {
                    return zzme.this.h;
                }

                @Override // defpackage.gn
                protected int a(Object obj) {
                    return obj == null ? zzme.this.a() : zzme.this.a(obj, obj.hashCode());
                }

                @Override // defpackage.gn
                protected Object a(int i, int i2) {
                    return zzme.this.g[(i << 1) + i2];
                }

                @Override // defpackage.gn
                protected V a(int i, V v) {
                    return zzme.this.setValueAt(i, v);
                }

                @Override // defpackage.gn
                protected void a(int i) {
                    zzme.this.removeAt(i);
                }

                @Override // defpackage.gn
                protected void a(K k, V v) {
                    zzme.this.put(k, v);
                }

                @Override // defpackage.gn
                protected int b(Object obj) {
                    return zzme.this.a(obj);
                }

                @Override // defpackage.gn
                protected Map<K, V> b() {
                    return zzme.this;
                }

                @Override // defpackage.gn
                protected void c() {
                    zzme.this.clear();
                }
            };
        }
        return this.a;
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
    public void putAll(Map<? extends K, ? extends V> map) {
        ensureCapacity(this.h + map.size());
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map
    public Collection<V> values() {
        return b().f();
    }
}
