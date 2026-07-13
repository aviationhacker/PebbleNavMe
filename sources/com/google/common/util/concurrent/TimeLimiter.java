package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
@Beta
public interface TimeLimiter {
    <T> T callWithTimeout(Callable<T> callable, long j, TimeUnit timeUnit, boolean z);

    <T> T newProxy(T t, Class<T> cls, long j, TimeUnit timeUnit);
}
