package defpackage;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.ImmutableBiMap;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Maps;
import java.util.Map;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(emulated = true, serializable = true)
public final class kb<K, V> extends ImmutableBiMap<K, V> {
    final transient K a;
    final transient V c;
    transient ImmutableBiMap<V, K> d;

    public kb(K k, V v) {
        hu.a(k, v);
        this.a = k;
        this.c = v;
    }

    private kb(K k, V v, ImmutableBiMap<V, K> immutableBiMap) {
        this.a = k;
        this.c = v;
        this.d = immutableBiMap;
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public V get(@Nullable Object obj) {
        if (this.a.equals(obj)) {
            return this.c;
        }
        return null;
    }

    @Override // java.util.Map
    public int size() {
        return 1;
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public boolean containsKey(@Nullable Object obj) {
        return this.a.equals(obj);
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public boolean containsValue(@Nullable Object obj) {
        return this.c.equals(obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableMap
    public boolean b() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableMap
    public ImmutableSet<Map.Entry<K, V>> e() {
        return ImmutableSet.of(Maps.immutableEntry(this.a, this.c));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableMap
    public ImmutableSet<K> c() {
        return ImmutableSet.of(this.a);
    }

    @Override // com.google.common.collect.ImmutableBiMap, com.google.common.collect.BiMap
    public ImmutableBiMap<V, K> inverse() {
        ImmutableBiMap<V, K> immutableBiMap = this.d;
        if (immutableBiMap == null) {
            kb kbVar = new kb(this.c, this.a, this);
            this.d = kbVar;
            return kbVar;
        }
        return immutableBiMap;
    }
}
