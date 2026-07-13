package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import defpackage.hc;
import defpackage.ka;
import defpackage.kr;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.lang.Enum;
import java.util.EnumMap;
import java.util.Map;
import java.util.Set;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(emulated = true)
public final class EnumBiMap<K extends Enum<K>, V extends Enum<V>> extends hc<K, V> {

    @GwtIncompatible("not needed in emulated source.")
    private static final long serialVersionUID = 0;
    private transient Class<K> b;
    private transient Class<V> c;

    @Override // defpackage.hc, com.google.common.collect.ForwardingMap, java.util.Map
    public /* bridge */ /* synthetic */ void clear() {
        super.clear();
    }

    @Override // defpackage.hc, com.google.common.collect.ForwardingMap, java.util.Map
    public /* bridge */ /* synthetic */ boolean containsValue(@Nullable Object obj) {
        return super.containsValue(obj);
    }

    @Override // defpackage.hc, com.google.common.collect.ForwardingMap, java.util.Map
    public /* bridge */ /* synthetic */ Set entrySet() {
        return super.entrySet();
    }

    @Override // defpackage.hc, com.google.common.collect.BiMap
    public /* bridge */ /* synthetic */ BiMap inverse() {
        return super.inverse();
    }

    @Override // defpackage.hc, com.google.common.collect.ForwardingMap, java.util.Map
    public /* bridge */ /* synthetic */ Set keySet() {
        return super.keySet();
    }

    @Override // defpackage.hc, com.google.common.collect.ForwardingMap, java.util.Map, com.google.common.collect.BiMap
    public /* bridge */ /* synthetic */ void putAll(Map map) {
        super.putAll(map);
    }

    @Override // defpackage.hc, com.google.common.collect.ForwardingMap, java.util.Map, com.google.common.collect.BiMap
    public /* bridge */ /* synthetic */ Set values() {
        return super.values();
    }

    public static <K extends Enum<K>, V extends Enum<V>> EnumBiMap<K, V> create(Class<K> cls, Class<V> cls2) {
        return new EnumBiMap<>(cls, cls2);
    }

    public static <K extends Enum<K>, V extends Enum<V>> EnumBiMap<K, V> create(Map<K, V> map) {
        EnumBiMap<K, V> enumBiMapCreate = create(a((Map) map), b((Map) map));
        enumBiMapCreate.putAll(map);
        return enumBiMapCreate;
    }

    private EnumBiMap(Class<K> cls, Class<V> cls2) {
        super(kr.a(new EnumMap(cls)), kr.a(new EnumMap(cls2)));
        this.b = cls;
        this.c = cls2;
    }

    static <K extends Enum<K>> Class<K> a(Map<K, ?> map) {
        if (map instanceof EnumBiMap) {
            return ((EnumBiMap) map).keyType();
        }
        if (map instanceof EnumHashBiMap) {
            return ((EnumHashBiMap) map).keyType();
        }
        Preconditions.checkArgument(!map.isEmpty());
        return map.keySet().iterator().next().getDeclaringClass();
    }

    private static <V extends Enum<V>> Class<V> b(Map<?, V> map) {
        if (map instanceof EnumBiMap) {
            return ((EnumBiMap) map).c;
        }
        Preconditions.checkArgument(!map.isEmpty());
        return map.values().iterator().next().getDeclaringClass();
    }

    public Class<K> keyType() {
        return this.b;
    }

    public Class<V> valueType() {
        return this.c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // defpackage.hc
    public K a(K k) {
        return (K) Preconditions.checkNotNull(k);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // defpackage.hc
    public V b(V v) {
        return (V) Preconditions.checkNotNull(v);
    }

    @GwtIncompatible("java.io.ObjectOutputStream")
    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(this.b);
        objectOutputStream.writeObject(this.c);
        ka.a(this, objectOutputStream);
    }

    @GwtIncompatible("java.io.ObjectInputStream")
    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        this.b = (Class) objectInputStream.readObject();
        this.c = (Class) objectInputStream.readObject();
        a(kr.a(new EnumMap(this.b)), kr.a(new EnumMap(this.c)));
        ka.a(this, objectInputStream);
    }
}
