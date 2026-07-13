package com.google.android.gms.appdatasearch;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.credentials.CredentialsApi;
import com.google.android.gms.common.internal.safeparcel.zza;

/* JADX INFO: loaded from: classes.dex */
public class zzj implements Parcelable.Creator<UsageInfo> {
    static void a(UsageInfo usageInfo, Parcel parcel, int i) {
        int iZzaq = com.google.android.gms.common.internal.safeparcel.zzb.zzaq(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 1, (Parcelable) usageInfo.b, i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, CredentialsApi.ACTIVITY_RESULT_ADD_ACCOUNT, usageInfo.a);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, usageInfo.c);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 3, usageInfo.d);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, usageInfo.zzub, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 5, (Parcelable) usageInfo.e, i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 6, usageInfo.f);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 7, usageInfo.g);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 8, usageInfo.h);
        com.google.android.gms.common.internal.safeparcel.zzb.zzI(parcel, iZzaq);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzap, reason: merged with bridge method [inline-methods] */
    public UsageInfo[] newArray(int i) {
        return new UsageInfo[i];
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzy, reason: merged with bridge method [inline-methods] */
    public UsageInfo createFromParcel(Parcel parcel) {
        DocumentContents documentContents = null;
        int iZzg = 0;
        int iZzap = com.google.android.gms.common.internal.safeparcel.zza.zzap(parcel);
        long jZzi = 0;
        int iZzg2 = -1;
        boolean zZzc = false;
        String strZzp = null;
        int iZzg3 = 0;
        DocumentId documentId = null;
        int iZzg4 = 0;
        while (parcel.dataPosition() < iZzap) {
            int iZzao = com.google.android.gms.common.internal.safeparcel.zza.zzao(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzbM(iZzao)) {
                case 1:
                    documentId = (DocumentId) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, iZzao, DocumentId.CREATOR);
                    break;
                case 2:
                    jZzi = com.google.android.gms.common.internal.safeparcel.zza.zzi(parcel, iZzao);
                    break;
                case 3:
                    iZzg3 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzao);
                    break;
                case 4:
                    strZzp = com.google.android.gms.common.internal.safeparcel.zza.zzp(parcel, iZzao);
                    break;
                case 5:
                    documentContents = (DocumentContents) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, iZzao, DocumentContents.CREATOR);
                    break;
                case 6:
                    zZzc = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, iZzao);
                    break;
                case 7:
                    iZzg2 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzao);
                    break;
                case 8:
                    iZzg = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzao);
                    break;
                case CredentialsApi.ACTIVITY_RESULT_ADD_ACCOUNT /* 1000 */:
                    iZzg4 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzao);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzao);
                    break;
            }
        }
        if (parcel.dataPosition() != iZzap) {
            throw new zza.C0006zza("Overread allowed size end=" + iZzap, parcel);
        }
        return new UsageInfo(iZzg4, documentId, jZzi, iZzg3, strZzp, documentContents, zZzc, iZzg2, iZzg);
    }
}
