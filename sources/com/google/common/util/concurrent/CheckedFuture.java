package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import java.lang.Exception;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
@Beta
@GwtCompatible
public interface CheckedFuture<V, X extends Exception> extends ListenableFuture<V> {
    V checkedGet();

    V checkedGet(long j, TimeUnit timeUnit);
}
