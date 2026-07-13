package com.google.android.gms.appdatasearch;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.credentials.CredentialsApi;
import com.google.android.gms.common.internal.safeparcel.zza;

/* JADX INFO: loaded from: classes.dex */
public class zzi implements Parcelable.Creator<RegisterSectionInfo> {
    static void a(RegisterSectionInfo registerSectionInfo, Parcel parcel, int i) {
        int iZzaq = com.google.android.gms.common.internal.safeparcel.zzb.zzaq(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 1, registerSectionInfo.name, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, CredentialsApi.ACTIVITY_RESULT_ADD_ACCOUNT, registerSectionInfo.a);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, registerSectionInfo.zzQF, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, registerSectionInfo.zzQG);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 4, registerSectionInfo.weight);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 5, registerSectionInfo.zzQH);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 6, registerSectionInfo.zzQI, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 7, (Parcelable[]) registerSectionInfo.zzQJ, i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 8, registerSectionInfo.b, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 11, registerSectionInfo.zzQL, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzI(parcel, iZzaq);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzam, reason: merged with bridge method [inline-methods] */
    public RegisterSectionInfo[] newArray(int i) {
        return new RegisterSectionInfo[i];
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzx, reason: merged with bridge method [inline-methods] */
    public RegisterSectionInfo createFromParcel(Parcel parcel) {
        boolean zZzc = false;
        String strZzp = null;
        int iZzap = com.google.android.gms.common.internal.safeparcel.zza.zzap(parcel);
        int iZzg = 1;
        int[] iArrZzv = null;
        Feature[] featureArr = null;
        String strZzp2 = null;
        boolean zZzc2 = false;
        String strZzp3 = null;
        String strZzp4 = null;
        int iZzg2 = 0;
        while (parcel.dataPosition() < iZzap) {
            int iZzao = com.google.android.gms.common.internal.safeparcel.zza.zzao(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzbM(iZzao)) {
                case 1:
                    strZzp4 = com.google.android.gms.common.internal.safeparcel.zza.zzp(parcel, iZzao);
                    break;
                case 2:
                    strZzp3 = com.google.android.gms.common.internal.safeparcel.zza.zzp(parcel, iZzao);
                    break;
                case 3:
                    zZzc2 = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, iZzao);
                    break;
                case 4:
                    iZzg = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzao);
                    break;
                case 5:
                    zZzc = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, iZzao);
                    break;
                case 6:
                    strZzp2 = com.google.android.gms.common.internal.safeparcel.zza.zzp(parcel, iZzao);
                    break;
                case 7:
                    featureArr = (Feature[]) com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzao, Feature.CREATOR);
                    break;
                case 8:
                    iArrZzv = com.google.android.gms.common.internal.safeparcel.zza.zzv(parcel, iZzao);
                    break;
                case 11:
                    strZzp = com.google.android.gms.common.internal.safeparcel.zza.zzp(parcel, iZzao);
                    break;
                case CredentialsApi.ACTIVITY_RESULT_ADD_ACCOUNT /* 1000 */:
                    iZzg2 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzao);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzao);
                    break;
            }
        }
        if (parcel.dataPosition() != iZzap) {
            throw new zza.C0006zza("Overread allowed size end=" + iZzap, parcel);
        }
        return new RegisterSectionInfo(iZzg2, strZzp4, strZzp3, zZzc2, iZzg, zZzc, strZzp2, featureArr, iArrZzv, strZzp);
    }
}
