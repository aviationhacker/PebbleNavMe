package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzp;
import java.util.Collection;

/* JADX INFO: loaded from: classes.dex */
public class GetServiceRequest implements SafeParcelable {
    public static final Parcelable.Creator<GetServiceRequest> CREATOR = new zzi();
    final int a;
    final int b;
    int c;
    String d;
    IBinder e;
    Scope[] f;
    Bundle g;
    Account h;

    public GetServiceRequest(int i) {
        this.a = 2;
        this.c = GoogleApiAvailability.GOOGLE_PLAY_SERVICES_VERSION_CODE;
        this.b = i;
    }

    GetServiceRequest(int i, int i2, int i3, String str, IBinder iBinder, Scope[] scopeArr, Bundle bundle, Account account) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = str;
        if (i < 2) {
            this.h = a(iBinder);
        } else {
            this.e = iBinder;
            this.h = account;
        }
        this.f = scopeArr;
        this.g = bundle;
    }

    private Account a(IBinder iBinder) {
        if (iBinder != null) {
            return zza.zzb(zzp.zza.zzaH(iBinder));
        }
        return null;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzi.a(this, parcel, i);
    }

    public GetServiceRequest zzc(Account account) {
        this.h = account;
        return this;
    }

    public GetServiceRequest zzc(zzp zzpVar) {
        if (zzpVar != null) {
            this.e = zzpVar.asBinder();
        }
        return this;
    }

    public GetServiceRequest zzcl(String str) {
        this.d = str;
        return this;
    }

    public GetServiceRequest zzd(Collection<Scope> collection) {
        this.f = (Scope[]) collection.toArray(new Scope[collection.size()]);
        return this;
    }

    public GetServiceRequest zzg(Bundle bundle) {
        this.g = bundle;
        return this;
    }
}
