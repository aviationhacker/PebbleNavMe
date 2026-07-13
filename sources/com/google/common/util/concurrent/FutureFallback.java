package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;

/* JADX INFO: loaded from: classes.dex */
@Beta
@GwtCompatible
@Deprecated
public interface FutureFallback<V> {
    ListenableFuture<V> create(Throwable th);
}
