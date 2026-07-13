package com.google.android.gms.auth.api.signin;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;

/* JADX INFO: loaded from: classes.dex */
public class zza implements Parcelable.Creator<EmailSignInConfig> {
    static void a(EmailSignInConfig emailSignInConfig, Parcel parcel, int i) {
        int iZzaq = com.google.android.gms.common.internal.safeparcel.zzb.zzaq(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, emailSignInConfig.a);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, (Parcelable) emailSignInConfig.zzlO(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, emailSignInConfig.zzlQ(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, (Parcelable) emailSignInConfig.zzlP(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzI(parcel, iZzaq);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzO, reason: merged with bridge method [inline-methods] */
    public EmailSignInConfig createFromParcel(Parcel parcel) {
        Uri uri;
        String strZzp;
        Uri uri2;
        int iZzg;
        Uri uri3 = null;
        int iZzap = com.google.android.gms.common.internal.safeparcel.zza.zzap(parcel);
        int i = 0;
        String str = null;
        Uri uri4 = null;
        while (parcel.dataPosition() < iZzap) {
            int iZzao = com.google.android.gms.common.internal.safeparcel.zza.zzao(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzbM(iZzao)) {
                case 1:
                    Uri uri5 = uri3;
                    strZzp = str;
                    uri2 = uri4;
                    iZzg = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzao);
                    uri = uri5;
                    break;
                case 2:
                    iZzg = i;
                    String str2 = str;
                    uri2 = (Uri) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, iZzao, Uri.CREATOR);
                    uri = uri3;
                    strZzp = str2;
                    break;
                case 3:
                    uri2 = uri4;
                    iZzg = i;
                    Uri uri6 = uri3;
                    strZzp = com.google.android.gms.common.internal.safeparcel.zza.zzp(parcel, iZzao);
                    uri = uri6;
                    break;
                case 4:
                    uri = (Uri) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, iZzao, Uri.CREATOR);
                    strZzp = str;
                    uri2 = uri4;
                    iZzg = i;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzao);
                    uri = uri3;
                    strZzp = str;
                    uri2 = uri4;
                    iZzg = i;
                    break;
            }
            i = iZzg;
            uri4 = uri2;
            str = strZzp;
            uri3 = uri;
        }
        if (parcel.dataPosition() != iZzap) {
            throw new zza.C0006zza("Overread allowed size end=" + iZzap, parcel);
        }
        return new EmailSignInConfig(i, uri4, str, uri3);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzaF, reason: merged with bridge method [inline-methods] */
    public EmailSignInConfig[] newArray(int i) {
        return new EmailSignInConfig[i];
    }
}
