package com.google.android.gms.auth.api.signin;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class zzb implements Parcelable.Creator<FacebookSignInConfig> {
    static void a(FacebookSignInConfig facebookSignInConfig, Parcel parcel, int i) {
        int iZzaq = com.google.android.gms.common.internal.safeparcel.zzb.zzaq(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, facebookSignInConfig.a);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, (Parcelable) facebookSignInConfig.zzlR(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, 3, facebookSignInConfig.zzlS(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzI(parcel, iZzaq);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzP, reason: merged with bridge method [inline-methods] */
    public FacebookSignInConfig createFromParcel(Parcel parcel) {
        ArrayList<String> arrayListZzD;
        Intent intent;
        int iZzg;
        ArrayList<String> arrayList = null;
        int iZzap = com.google.android.gms.common.internal.safeparcel.zza.zzap(parcel);
        int i = 0;
        Intent intent2 = null;
        while (parcel.dataPosition() < iZzap) {
            int iZzao = com.google.android.gms.common.internal.safeparcel.zza.zzao(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzbM(iZzao)) {
                case 1:
                    ArrayList<String> arrayList2 = arrayList;
                    intent = intent2;
                    iZzg = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzao);
                    arrayListZzD = arrayList2;
                    break;
                case 2:
                    Intent intent3 = (Intent) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, iZzao, Intent.CREATOR);
                    iZzg = i;
                    arrayListZzD = arrayList;
                    intent = intent3;
                    break;
                case 3:
                    arrayListZzD = com.google.android.gms.common.internal.safeparcel.zza.zzD(parcel, iZzao);
                    intent = intent2;
                    iZzg = i;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzao);
                    arrayListZzD = arrayList;
                    intent = intent2;
                    iZzg = i;
                    break;
            }
            i = iZzg;
            intent2 = intent;
            arrayList = arrayListZzD;
        }
        if (parcel.dataPosition() != iZzap) {
            throw new zza.C0006zza("Overread allowed size end=" + iZzap, parcel);
        }
        return new FacebookSignInConfig(i, intent2, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzaG, reason: merged with bridge method [inline-methods] */
    public FacebookSignInConfig[] newArray(int i) {
        return new FacebookSignInConfig[i];
    }
}
