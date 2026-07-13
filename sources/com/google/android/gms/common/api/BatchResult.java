package com.google.android.gms.common.api;

import com.google.android.gms.common.internal.zzx;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class BatchResult implements Result {
    private final Status a;
    private final PendingResult<?>[] b;

    BatchResult(Status status, PendingResult<?>[] pendingResultArr) {
        this.a = status;
        this.b = pendingResultArr;
    }

    @Override // com.google.android.gms.common.api.Result
    public Status getStatus() {
        return this.a;
    }

    public <R extends Result> R take(BatchResultToken<R> batchResultToken) {
        zzx.zzb(batchResultToken.mId < this.b.length, "The result token does not belong to this batch");
        return (R) this.b[batchResultToken.mId].await(0L, TimeUnit.MILLISECONDS);
    }
}
