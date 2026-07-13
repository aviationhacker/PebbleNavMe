package com.google.android.gms.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzlb;
import defpackage.gm;

/* JADX INFO: loaded from: classes.dex */
public final class zzlz implements zzly {

    static class a extends zzlw {
        private final zzlb.zzb<Status> a;

        public a(zzlb.zzb<Status> zzbVar) {
            this.a = zzbVar;
        }

        @Override // com.google.android.gms.internal.zzlw, com.google.android.gms.internal.zzmc
        public void zzbN(int i) {
            this.a.zzp(new Status(i));
        }
    }

    @Override // com.google.android.gms.internal.zzly
    public PendingResult<Status> zzb(GoogleApiClient googleApiClient) {
        return googleApiClient.zzb(new gm.a(googleApiClient) { // from class: com.google.android.gms.internal.zzlz.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzlb.zza
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void zza(zzmb zzmbVar) {
                zzmbVar.zzpc().zza(new a(this));
            }
        });
    }
}
