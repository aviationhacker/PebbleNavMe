package com.google.android.gms.auth;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: loaded from: classes.dex */
public class AccountChangeEventsRequest implements SafeParcelable {
    public static final Parcelable.Creator<AccountChangeEventsRequest> CREATOR = new zzb();
    final int a;
    int b;

    @Deprecated
    String c;
    Account d;

    public AccountChangeEventsRequest() {
        this.a = 1;
    }

    AccountChangeEventsRequest(int i, int i2, String str, Account account) {
        this.a = i;
        this.b = i2;
        this.c = str;
        if (account != null || TextUtils.isEmpty(str)) {
            this.d = account;
        } else {
            this.d = new Account(str, GoogleAuthUtil.GOOGLE_ACCOUNT_TYPE);
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Account getAccount() {
        return this.d;
    }

    public String getAccountName() {
        return this.c;
    }

    public int getEventIndex() {
        return this.b;
    }

    public AccountChangeEventsRequest setAccount(Account account) {
        this.d = account;
        return this;
    }

    public AccountChangeEventsRequest setAccountName(String str) {
        this.c = str;
        return this;
    }

    public AccountChangeEventsRequest setEventIndex(int i) {
        this.b = i;
        return this;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzb.a(this, parcel, i);
    }
}
