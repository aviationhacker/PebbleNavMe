package com.google.android.gms.auth.api.consent;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.firstparty.shared.ScopeDetail;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzx;

/* JADX INFO: loaded from: classes.dex */
public class GetConsentIntentRequest implements SafeParcelable {
    public static final Parcelable.Creator<GetConsentIntentRequest> CREATOR = new zzb();
    final ScopeDetail[] a;
    private final int b;
    private final String c;
    private final int d;
    private final String e;
    private final Account f;
    private final boolean g;
    private final int h;

    GetConsentIntentRequest(int i, String str, int i2, String str2, Account account, ScopeDetail[] scopeDetailArr, boolean z, int i3) {
        this.b = i;
        this.c = str;
        this.d = i2;
        this.e = str2;
        this.f = (Account) zzx.zzw(account);
        this.a = scopeDetailArr;
        this.g = z;
        this.h = i3;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Account getAccount() {
        return this.f;
    }

    public String getCallingPackage() {
        return this.c;
    }

    public int getCallingUid() {
        return this.d;
    }

    public int getVersionCode() {
        return this.b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzb.a(this, parcel, i);
    }

    public String zzlF() {
        return this.e;
    }

    public boolean zzlG() {
        return this.g;
    }

    public int zzlH() {
        return this.h;
    }
}
