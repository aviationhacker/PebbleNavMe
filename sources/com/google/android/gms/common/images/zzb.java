package com.google.android.gms.common.images;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;

/* JADX INFO: loaded from: classes.dex */
public class zzb implements Parcelable.Creator<WebImage> {
    static void a(WebImage webImage, Parcel parcel, int i) {
        int iZzaq = com.google.android.gms.common.internal.safeparcel.zzb.zzaq(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, webImage.a());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, (Parcelable) webImage.getUrl(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 3, webImage.getWidth());
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 4, webImage.getHeight());
        com.google.android.gms.common.internal.safeparcel.zzb.zzI(parcel, iZzaq);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzah, reason: merged with bridge method [inline-methods] */
    public WebImage createFromParcel(Parcel parcel) {
        int iZzg;
        int iZzg2;
        Uri uri;
        int iZzg3;
        int i = 0;
        int iZzap = com.google.android.gms.common.internal.safeparcel.zza.zzap(parcel);
        Uri uri2 = null;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < iZzap) {
            int iZzao = com.google.android.gms.common.internal.safeparcel.zza.zzao(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzbM(iZzao)) {
                case 1:
                    int i4 = i;
                    iZzg2 = i2;
                    uri = uri2;
                    iZzg3 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzao);
                    iZzg = i4;
                    break;
                case 2:
                    iZzg3 = i3;
                    int i5 = i2;
                    uri = (Uri) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, iZzao, Uri.CREATOR);
                    iZzg = i;
                    iZzg2 = i5;
                    break;
                case 3:
                    uri = uri2;
                    iZzg3 = i3;
                    int i6 = i;
                    iZzg2 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzao);
                    iZzg = i6;
                    break;
                case 4:
                    iZzg = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzao);
                    iZzg2 = i2;
                    uri = uri2;
                    iZzg3 = i3;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzao);
                    iZzg = i;
                    iZzg2 = i2;
                    uri = uri2;
                    iZzg3 = i3;
                    break;
            }
            i3 = iZzg3;
            uri2 = uri;
            i2 = iZzg2;
            i = iZzg;
        }
        if (parcel.dataPosition() != iZzap) {
            throw new zza.C0006zza("Overread allowed size end=" + iZzap, parcel);
        }
        return new WebImage(i3, uri2, i2, i);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzbz, reason: merged with bridge method [inline-methods] */
    public WebImage[] newArray(int i) {
        return new WebImage[i];
    }
}
