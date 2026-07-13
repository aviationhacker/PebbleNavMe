package com.google.android.gms.auth.api.signin;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.Collections;

/* JADX INFO: loaded from: classes.dex */
public class FacebookSignInConfig implements SafeParcelable {
    public static final Parcelable.Creator<FacebookSignInConfig> CREATOR = new zzb();
    final int a;
    private Intent b;
    private final ArrayList<String> c;

    public FacebookSignInConfig() {
        this(1, null, new ArrayList());
    }

    FacebookSignInConfig(int i, Intent intent, ArrayList<String> arrayList) {
        this.a = i;
        this.b = intent;
        this.c = arrayList;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            FacebookSignInConfig facebookSignInConfig = (FacebookSignInConfig) obj;
            if (this.c.size() == facebookSignInConfig.zzlS().size()) {
                return this.c.containsAll(facebookSignInConfig.zzlS());
            }
            return false;
        } catch (ClassCastException e) {
            return false;
        }
    }

    public int hashCode() {
        Collections.sort(this.c);
        return this.c.hashCode();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzb.a(this, parcel, i);
    }

    public Intent zzlR() {
        return this.b;
    }

    public ArrayList<String> zzlS() {
        return new ArrayList<>(this.c);
    }
}
