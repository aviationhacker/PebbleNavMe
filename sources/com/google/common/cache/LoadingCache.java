package com.google.common.cache;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Function;
import com.google.common.collect.ImmutableMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible
public interface LoadingCache<K, V> extends Function<K, V>, Cache<K, V> {
    @Override // com.google.common.base.Function
    @Deprecated
    V apply(K k);

    @Override // com.google.common.cache.Cache
    ConcurrentMap<K, V> asMap();

    V get(K k);

    ImmutableMap<K, V> getAll(Iterable<? extends K> iterable);

    V getUnchecked(K k);

    void refresh(K k);
}
