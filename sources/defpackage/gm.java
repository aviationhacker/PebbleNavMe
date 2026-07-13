package defpackage;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzlb;
import com.google.android.gms.internal.zzlx;
import com.google.android.gms.internal.zzmb;

/* JADX INFO: loaded from: classes.dex */
public abstract class gm<R extends Result> extends zzlb.zza<R, zzmb> {

    public static abstract class a extends gm<Status> {
        public a(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        @Override // com.google.android.gms.internal.zzlc
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Status zzb(Status status) {
            return status;
        }
    }

    public gm(GoogleApiClient googleApiClient) {
        super(zzlx.zzRk, googleApiClient);
    }
}
