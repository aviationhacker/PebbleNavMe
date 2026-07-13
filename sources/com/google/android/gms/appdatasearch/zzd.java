package com.google.android.gms.appdatasearch;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.credentials.CredentialsApi;
import com.google.android.gms.common.internal.safeparcel.zza;

/* JADX INFO: loaded from: classes.dex */
public class zzd implements Parcelable.Creator<DocumentSection> {
    static void a(DocumentSection documentSection, Parcel parcel, int i) {
        int iZzaq = com.google.android.gms.common.internal.safeparcel.zzb.zzaq(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 1, documentSection.zzQj, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, CredentialsApi.ACTIVITY_RESULT_ADD_ACCOUNT, documentSection.a);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, (Parcelable) documentSection.b, i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 4, documentSection.zzQl);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 5, documentSection.zzQm, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzI(parcel, iZzaq);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzag, reason: merged with bridge method [inline-methods] */
    public DocumentSection[] newArray(int i) {
        return new DocumentSection[i];
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzt, reason: merged with bridge method [inline-methods] */
    public DocumentSection createFromParcel(Parcel parcel) {
        byte[] bArrZzs = null;
        int iZzap = com.google.android.gms.common.internal.safeparcel.zza.zzap(parcel);
        int iZzg = 0;
        int iZzg2 = -1;
        RegisterSectionInfo registerSectionInfo = null;
        String strZzp = null;
        while (parcel.dataPosition() < iZzap) {
            int iZzao = com.google.android.gms.common.internal.safeparcel.zza.zzao(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzbM(iZzao)) {
                case 1:
                    strZzp = com.google.android.gms.common.internal.safeparcel.zza.zzp(parcel, iZzao);
                    break;
                case 3:
                    registerSectionInfo = (RegisterSectionInfo) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, iZzao, RegisterSectionInfo.CREATOR);
                    break;
                case 4:
                    iZzg2 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzao);
                    break;
                case 5:
                    bArrZzs = com.google.android.gms.common.internal.safeparcel.zza.zzs(parcel, iZzao);
                    break;
                case CredentialsApi.ACTIVITY_RESULT_ADD_ACCOUNT /* 1000 */:
                    iZzg = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzao);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzao);
                    break;
            }
        }
        if (parcel.dataPosition() != iZzap) {
            throw new zza.C0006zza("Overread allowed size end=" + iZzap, parcel);
        }
        return new DocumentSection(iZzg, strZzp, registerSectionInfo, iZzg2, bArrZzs);
    }
}
