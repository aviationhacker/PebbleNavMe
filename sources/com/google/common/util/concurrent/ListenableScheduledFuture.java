package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import java.util.concurrent.ScheduledFuture;

/* JADX INFO: loaded from: classes.dex */
@Beta
public interface ListenableScheduledFuture<V> extends ListenableFuture<V>, ScheduledFuture<V> {
}
