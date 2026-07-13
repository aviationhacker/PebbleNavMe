package com.google.android.gms.common.api;

import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.internal.zzlc;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class Batch extends zzlc<BatchResult> {
    private int a;
    private boolean b;
    private boolean c;
    private final PendingResult<?>[] d;
    private final Object e;

    public static final class Builder {
        private List<PendingResult<?>> a = new ArrayList();
        private GoogleApiClient b;

        public Builder(GoogleApiClient googleApiClient) {
            this.b = googleApiClient;
        }

        public <R extends Result> BatchResultToken<R> add(PendingResult<R> pendingResult) {
            BatchResultToken<R> batchResultToken = new BatchResultToken<>(this.a.size());
            this.a.add(pendingResult);
            return batchResultToken;
        }

        public Batch build() {
            return new Batch(this.a, this.b);
        }
    }

    private Batch(List<PendingResult<?>> list, GoogleApiClient googleApiClient) {
        super(googleApiClient);
        this.e = new Object();
        this.a = list.size();
        this.d = new PendingResult[this.a];
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= list.size()) {
                return;
            }
            PendingResult<?> pendingResult = list.get(i2);
            this.d[i2] = pendingResult;
            pendingResult.zza(new PendingResult.zza() { // from class: com.google.android.gms.common.api.Batch.1
                @Override // com.google.android.gms.common.api.PendingResult.zza
                public void zzt(Status status) {
                    synchronized (Batch.this.e) {
                        if (Batch.this.isCanceled()) {
                            return;
                        }
                        if (status.isCanceled()) {
                            Batch.this.c = true;
                        } else if (!status.isSuccess()) {
                            Batch.this.b = true;
                        }
                        Batch.b(Batch.this);
                        if (Batch.this.a == 0) {
                            if (Batch.this.c) {
                                Batch.super.cancel();
                            } else {
                                Batch.this.zzb(new BatchResult(Batch.this.b ? new Status(13) : Status.zzabb, Batch.this.d));
                            }
                        }
                    }
                }
            });
            i = i2 + 1;
        }
    }

    static /* synthetic */ int b(Batch batch) {
        int i = batch.a;
        batch.a = i - 1;
        return i;
    }

    @Override // com.google.android.gms.internal.zzlc, com.google.android.gms.common.api.PendingResult
    public void cancel() {
        super.cancel();
        for (PendingResult<?> pendingResult : this.d) {
            pendingResult.cancel();
        }
    }

    @Override // com.google.android.gms.internal.zzlc
    /* JADX INFO: renamed from: createFailedResult, reason: merged with bridge method [inline-methods] */
    public BatchResult zzb(Status status) {
        return new BatchResult(status, this.d);
    }
}
