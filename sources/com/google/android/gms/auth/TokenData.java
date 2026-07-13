package com.google.android.gms.auth;

import android.os.Bundle;
import android.os.Parcel;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzx;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class TokenData implements SafeParcelable {
    public static final zzd CREATOR = new zzd();
    final int a;
    private final String b;
    private final Long c;
    private final boolean d;
    private final boolean e;
    private final List<String> f;

    TokenData(int i, String str, Long l, boolean z, boolean z2, List<String> list) {
        this.a = i;
        this.b = zzx.zzcr(str);
        this.c = l;
        this.d = z;
        this.e = z2;
        this.f = list;
    }

    public static TokenData zza(Bundle bundle, String str) {
        bundle.setClassLoader(TokenData.class.getClassLoader());
        Bundle bundle2 = bundle.getBundle(str);
        if (bundle2 == null) {
            return null;
        }
        bundle2.setClassLoader(TokenData.class.getClassLoader());
        return (TokenData) bundle2.getParcelable("TokenData");
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof TokenData)) {
            return false;
        }
        TokenData tokenData = (TokenData) obj;
        return TextUtils.equals(this.b, tokenData.b) && zzw.equal(this.c, tokenData.c) && this.d == tokenData.d && this.e == tokenData.e && zzw.equal(this.f, tokenData.f);
    }

    public String getToken() {
        return this.b;
    }

    public int hashCode() {
        return zzw.hashCode(this.b, this.c, Boolean.valueOf(this.d), Boolean.valueOf(this.e), this.f);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzd.a(this, parcel, i);
    }

    public Long zzlA() {
        return this.c;
    }

    public boolean zzlB() {
        return this.d;
    }

    public boolean zzlC() {
        return this.e;
    }

    public List<String> zzlD() {
        return this.f;
    }
}
