package com.google.android.gms.common.api;

import android.os.Looper;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.zzlc;
import com.google.android.gms.internal.zzln;
import com.google.android.gms.internal.zzlo;

/* JADX INFO: loaded from: classes.dex */
public final class PendingResults {

    static final class a<R extends Result> extends zzlc<R> {
        private final R a;

        public a(R r) {
            super(Looper.getMainLooper());
            this.a = r;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzlc
        public R zzb(Status status) {
            if (status.getStatusCode() != this.a.getStatus().getStatusCode()) {
                throw new UnsupportedOperationException("Creating failed results is not supported");
            }
            return this.a;
        }
    }

    static final class b<R extends Result> extends zzlc<R> {
        private final R a;

        public b(GoogleApiClient googleApiClient, R r) {
            super(googleApiClient);
            this.a = r;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzlc
        public R zzb(Status status) {
            return this.a;
        }
    }

    static final class c<R extends Result> extends zzlc<R> {
        public c(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzlc
        public R zzb(Status status) {
            throw new UnsupportedOperationException("Creating failed results is not supported");
        }
    }

    private PendingResults() {
    }

    public static PendingResult<Status> canceledPendingResult() {
        zzlo zzloVar = new zzlo(Looper.getMainLooper());
        zzloVar.cancel();
        return zzloVar;
    }

    public static <R extends Result> PendingResult<R> canceledPendingResult(R r) {
        zzx.zzb(r, "Result must not be null");
        zzx.zzb(r.getStatus().getStatusCode() == 16, "Status code must be CommonStatusCodes.CANCELED");
        a aVar = new a(r);
        aVar.cancel();
        return aVar;
    }

    public static <R extends Result> OptionalPendingResult<R> immediatePendingResult(R r) {
        zzx.zzb(r, "Result must not be null");
        c cVar = new c(null);
        cVar.zzb(r);
        return new zzln(cVar);
    }

    public static PendingResult<Status> immediatePendingResult(Status status) {
        zzx.zzb(status, "Result must not be null");
        zzlo zzloVar = new zzlo(Looper.getMainLooper());
        zzloVar.zzb(status);
        return zzloVar;
    }

    public static <R extends Result> PendingResult<R> zza(R r, GoogleApiClient googleApiClient) {
        zzx.zzb(r, "Result must not be null");
        zzx.zzb(!r.getStatus().isSuccess(), "Status code must not be SUCCESS");
        b bVar = new b(googleApiClient, r);
        bVar.zzb(r);
        return bVar;
    }

    public static PendingResult<Status> zza(Status status, GoogleApiClient googleApiClient) {
        zzx.zzb(status, "Result must not be null");
        zzlo zzloVar = new zzlo(googleApiClient);
        zzloVar.zzb(status);
        return zzloVar;
    }
}
