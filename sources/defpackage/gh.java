package defpackage;

import android.content.Context;
import com.google.android.gms.auth.api.Auth;
import com.google.android.gms.auth.api.credentials.internal.zze;
import com.google.android.gms.auth.api.credentials.internal.zzh;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.internal.zzlb;

/* JADX INFO: loaded from: classes.dex */
public abstract class gh<R extends Result> extends zzlb.zza<R, zze> {
    protected gh(GoogleApiClient googleApiClient) {
        super(Auth.zzRF, googleApiClient);
    }

    public abstract void a(Context context, zzh zzhVar);

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzlb.zza
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final void zza(zze zzeVar) {
        a(zzeVar.getContext(), zzeVar.zzpc());
    }
}
