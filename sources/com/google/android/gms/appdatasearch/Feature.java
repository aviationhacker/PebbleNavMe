package com.google.android.gms.appdatasearch;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: loaded from: classes.dex */
public class Feature implements SafeParcelable {
    public static final zze CREATOR = new zze();
    final int a;
    final Bundle b;
    public final int id;

    Feature(int i, int i2, Bundle bundle) {
        this.a = i;
        this.id = i2;
        this.b = bundle;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        zze zzeVar = CREATOR;
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zze zzeVar = CREATOR;
        zze.a(this, parcel, i);
    }
}
