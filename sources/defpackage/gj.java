package defpackage;

import android.content.Context;
import com.google.android.gms.auth.api.Auth;
import com.google.android.gms.auth.api.proxy.ProxyApi;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzki;
import com.google.android.gms.internal.zzkk;
import com.google.android.gms.internal.zzlb;

/* JADX INFO: loaded from: classes.dex */
public abstract class gj extends zzlb.zza<ProxyApi.ProxyResult, zzki> {
    public gj(GoogleApiClient googleApiClient) {
        super(Auth.zzRE, googleApiClient);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzlc
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ProxyApi.ProxyResult zzb(Status status) {
        return new gk(status);
    }

    public abstract void a(Context context, zzkk zzkkVar);

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzlb.zza
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final void zza(zzki zzkiVar) {
        a(zzkiVar.getContext(), zzkiVar.zzpc());
    }
}
