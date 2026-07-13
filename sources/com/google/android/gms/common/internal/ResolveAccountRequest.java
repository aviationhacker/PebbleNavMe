package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: loaded from: classes.dex */
public class ResolveAccountRequest implements SafeParcelable {
    public static final Parcelable.Creator<ResolveAccountRequest> CREATOR = new zzy();
    final int a;
    private final Account b;
    private final int c;

    ResolveAccountRequest(int i, Account account, int i2) {
        this.a = i;
        this.b = account;
        this.c = i2;
    }

    public ResolveAccountRequest(Account account, int i) {
        this(1, account, i);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Account getAccount() {
        return this.b;
    }

    public int getSessionId() {
        return this.c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzy.a(this, parcel, i);
    }
}
