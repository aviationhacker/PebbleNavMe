package com.google.android.gms.auth.api.proxy;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.credentials.CredentialsApi;
import com.google.android.gms.common.internal.safeparcel.zza;

/* JADX INFO: loaded from: classes.dex */
public class zzc implements Parcelable.Creator<ProxyResponse> {
    static void a(ProxyResponse proxyResponse, Parcel parcel, int i) {
        int iZzaq = com.google.android.gms.common.internal.safeparcel.zzb.zzaq(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, proxyResponse.googlePlayServicesStatusCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, CredentialsApi.ACTIVITY_RESULT_ADD_ACCOUNT, proxyResponse.a);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, (Parcelable) proxyResponse.recoveryAction, i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 3, proxyResponse.statusCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, proxyResponse.b, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 5, proxyResponse.body, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzI(parcel, iZzaq);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzN, reason: merged with bridge method [inline-methods] */
    public ProxyResponse createFromParcel(Parcel parcel) {
        byte[] bArrZzs = null;
        int iZzg = 0;
        int iZzap = com.google.android.gms.common.internal.safeparcel.zza.zzap(parcel);
        Bundle bundleZzr = null;
        PendingIntent pendingIntent = null;
        int iZzg2 = 0;
        int iZzg3 = 0;
        while (parcel.dataPosition() < iZzap) {
            int iZzao = com.google.android.gms.common.internal.safeparcel.zza.zzao(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzbM(iZzao)) {
                case 1:
                    iZzg2 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzao);
                    break;
                case 2:
                    pendingIntent = (PendingIntent) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, iZzao, PendingIntent.CREATOR);
                    break;
                case 3:
                    iZzg = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzao);
                    break;
                case 4:
                    bundleZzr = com.google.android.gms.common.internal.safeparcel.zza.zzr(parcel, iZzao);
                    break;
                case 5:
                    bArrZzs = com.google.android.gms.common.internal.safeparcel.zza.zzs(parcel, iZzao);
                    break;
                case CredentialsApi.ACTIVITY_RESULT_ADD_ACCOUNT /* 1000 */:
                    iZzg3 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzao);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzao);
                    break;
            }
        }
        if (parcel.dataPosition() != iZzap) {
            throw new zza.C0006zza("Overread allowed size end=" + iZzap, parcel);
        }
        return new ProxyResponse(iZzg3, iZzg2, pendingIntent, iZzg, bundleZzr, bArrZzs);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzaE, reason: merged with bridge method [inline-methods] */
    public ProxyResponse[] newArray(int i) {
        return new ProxyResponse[i];
    }
}
