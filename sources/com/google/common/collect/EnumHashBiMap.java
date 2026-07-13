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
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(emulated = true)
public final class EnumHashBiMap<K extends Enum<K>, V> extends hc<K, V> {

    @GwtIncompatible("only needed in emulated source.")
    private static final long serialVersionUID = 0;
    private transient Class<K> b;

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

    @Override // defpackage.hc, com.google.common.collect.ForwardingMap, java.util.Map
    public /* bridge */ /* synthetic */ Object remove(@Nullable Object obj) {
        return super.remove(obj);
    }

    @Override // defpackage.hc, com.google.common.collect.ForwardingMap, java.util.Map, com.google.common.collect.BiMap
    public /* bridge */ /* synthetic */ Set values() {
        return super.values();
    }

    public static <K extends Enum<K>, V> EnumHashBiMap<K, V> create(Class<K> cls) {
        return new EnumHashBiMap<>(cls);
    }

    public static <K extends Enum<K>, V> EnumHashBiMap<K, V> create(Map<K, ? extends V> map) {
        EnumHashBiMap<K, V> enumHashBiMapCreate = create(EnumBiMap.a((Map) map));
        enumHashBiMapCreate.putAll(map);
        return enumHashBiMapCreate;
    }

    private EnumHashBiMap(Class<K> cls) {
        super(kr.a(new EnumMap(cls)), Maps.newHashMapWithExpectedSize(cls.getEnumConstants().length));
        this.b = cls;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // defpackage.hc
    public K a(K k) {
        return (K) Preconditions.checkNotNull(k);
    }

    @Override // defpackage.hc, com.google.common.collect.ForwardingMap, java.util.Map, com.google.common.collect.BiMap
    public V put(K k, @Nullable V v) {
        return (V) super.put(k, (Object) v);
    }

    @Override // defpackage.hc, com.google.common.collect.BiMap
    public V forcePut(K k, @Nullable V v) {
        return (V) super.forcePut(k, (Object) v);
    }

    public Class<K> keyType() {
        return this.b;
    }

    @GwtIncompatible("java.io.ObjectOutputStream")
    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(this.b);
        ka.a(this, objectOutputStream);
    }

    @GwtIncompatible("java.io.ObjectInputStream")
    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        this.b = (Class) objectInputStream.readObject();
        a(kr.a(new EnumMap(this.b)), new HashMap((this.b.getEnumConstants().length * 3) / 2));
        ka.a(this, objectInputStream);
    }
}
