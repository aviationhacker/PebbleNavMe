package com.google.android.gms.appdatasearch;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.appdatasearch.GetRecentContextCall;
import com.google.android.gms.auth.api.credentials.CredentialsApi;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.zza;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class zzg implements Parcelable.Creator<GetRecentContextCall.Response> {
    static void a(GetRecentContextCall.Response response, Parcel parcel, int i) {
        int iZzaq = com.google.android.gms.common.internal.safeparcel.zzb.zzaq(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, CredentialsApi.ACTIVITY_RESULT_ADD_ACCOUNT, response.a);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 1, (Parcelable) response.zzQA, i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 2, response.zzQB, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, response.zzQC, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzI(parcel, iZzaq);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzaj, reason: merged with bridge method [inline-methods] */
    public GetRecentContextCall.Response[] newArray(int i) {
        return new GetRecentContextCall.Response[i];
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzw, reason: merged with bridge method [inline-methods] */
    public GetRecentContextCall.Response createFromParcel(Parcel parcel) {
        String[] strArrZzB;
        ArrayList arrayListZzc;
        Status status;
        int iZzg;
        String[] strArr = null;
        int iZzap = com.google.android.gms.common.internal.safeparcel.zza.zzap(parcel);
        int i = 0;
        ArrayList arrayList = null;
        Status status2 = null;
        while (parcel.dataPosition() < iZzap) {
            int iZzao = com.google.android.gms.common.internal.safeparcel.zza.zzao(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzbM(iZzao)) {
                case 1:
                    iZzg = i;
                    ArrayList arrayList2 = arrayList;
                    status = (Status) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, iZzao, Status.CREATOR);
                    strArrZzB = strArr;
                    arrayListZzc = arrayList2;
                    break;
                case 2:
                    status = status2;
                    iZzg = i;
                    String[] strArr2 = strArr;
                    arrayListZzc = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, iZzao, UsageInfo.CREATOR);
                    strArrZzB = strArr2;
                    break;
                case 3:
                    strArrZzB = com.google.android.gms.common.internal.safeparcel.zza.zzB(parcel, iZzao);
                    arrayListZzc = arrayList;
                    status = status2;
                    iZzg = i;
                    break;
                case CredentialsApi.ACTIVITY_RESULT_ADD_ACCOUNT /* 1000 */:
                    String[] strArr3 = strArr;
                    arrayListZzc = arrayList;
                    status = status2;
                    iZzg = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzao);
                    strArrZzB = strArr3;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzao);
                    strArrZzB = strArr;
                    arrayListZzc = arrayList;
                    status = status2;
                    iZzg = i;
                    break;
            }
            i = iZzg;
            status2 = status;
            arrayList = arrayListZzc;
            strArr = strArrZzB;
        }
        if (parcel.dataPosition() != iZzap) {
            throw new zza.C0006zza("Overread allowed size end=" + iZzap, parcel);
        }
        return new GetRecentContextCall.Response(i, status2, arrayList, strArr);
    }
}
