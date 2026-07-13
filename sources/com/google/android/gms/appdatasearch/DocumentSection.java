package com.google.android.gms.appdatasearch;

import android.os.Parcel;
import com.google.android.gms.appdatasearch.RegisterSectionInfo;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzx;

/* JADX INFO: loaded from: classes.dex */
public class DocumentSection implements SafeParcelable {
    final int a;
    final RegisterSectionInfo b;
    public final String zzQj;
    public final int zzQl;
    public final byte[] zzQm;
    public static final int zzQh = Integer.parseInt("-1");
    public static final zzd CREATOR = new zzd();
    private static final RegisterSectionInfo c = new RegisterSectionInfo.zza("SsbContext").zzM(true).zzbA("blob").zzlt();

    DocumentSection(int i, String str, RegisterSectionInfo registerSectionInfo, int i2, byte[] bArr) {
        zzx.zzb(i2 == zzQh || zzh.zzak(i2) != null, "Invalid section type " + i2);
        this.a = i;
        this.zzQj = str;
        this.b = registerSectionInfo;
        this.zzQl = i2;
        this.zzQm = bArr;
        String strZzlq = zzlq();
        if (strZzlq != null) {
            throw new IllegalArgumentException(strZzlq);
        }
    }

    public DocumentSection(String str, RegisterSectionInfo registerSectionInfo) {
        this(1, str, registerSectionInfo, zzQh, null);
    }

    public DocumentSection(String str, RegisterSectionInfo registerSectionInfo, String str2) {
        this(1, str, registerSectionInfo, zzh.zzbz(str2), null);
    }

    public DocumentSection(byte[] bArr, RegisterSectionInfo registerSectionInfo) {
        this(1, null, registerSectionInfo, zzQh, bArr);
    }

    public static DocumentSection zzh(byte[] bArr) {
        return new DocumentSection(bArr, c);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        zzd zzdVar = CREATOR;
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzd zzdVar = CREATOR;
        zzd.a(this, parcel, i);
    }

    public RegisterSectionInfo zzlp() {
        return this.b;
    }

    public String zzlq() {
        if (this.zzQl != zzQh && zzh.zzak(this.zzQl) == null) {
            return "Invalid section type " + this.zzQl;
        }
        if (this.zzQj == null || this.zzQm == null) {
            return null;
        }
        return "Both content and blobContent set";
    }
}
