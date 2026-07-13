package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzx;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class AccountChangeEventsResponse implements SafeParcelable {
    public static final Parcelable.Creator<AccountChangeEventsResponse> CREATOR = new zzc();
    final int a;
    final List<AccountChangeEvent> b;

    AccountChangeEventsResponse(int i, List<AccountChangeEvent> list) {
        this.a = i;
        this.b = (List) zzx.zzw(list);
    }

    public AccountChangeEventsResponse(List<AccountChangeEvent> list) {
        this.a = 1;
        this.b = (List) zzx.zzw(list);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public List<AccountChangeEvent> getEvents() {
        return this.b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzc.a(this, parcel, i);
    }
}
