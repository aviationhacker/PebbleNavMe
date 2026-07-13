package com.google.android.gms.search;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: loaded from: classes.dex */
public class GoogleNowAuthState implements SafeParcelable {
    public static final Parcelable.Creator<GoogleNowAuthState> CREATOR = new zza();
    final int a;
    String b;
    String c;
    long d;

    GoogleNowAuthState(int i, String str, String str2, long j) {
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = j;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getAccessToken() {
        return this.c;
    }

    public String getAuthCode() {
        return this.b;
    }

    public long getNextAllowedTimeMillis() {
        return this.d;
    }

    public String toString() {
        return "mAuthCode = " + this.b + "\nmAccessToken = " + this.c + "\nmNextAllowedTimeMillis = " + this.d;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zza.a(this, parcel, i);
    }
}
