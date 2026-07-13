package com.google.android.gms.auth.api.signin;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.zzmn;
import com.google.android.gms.internal.zzmp;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class GoogleSignInAccount implements SafeParcelable {
    public static final Parcelable.Creator<GoogleSignInAccount> CREATOR = new zzc();
    public static zzmn zzSY = zzmp.zzqt();
    final int a;
    private String b;
    private String c;
    private String d;
    private String e;
    private Uri f;
    private String g;
    private long h;

    GoogleSignInAccount(int i, String str, String str2, String str3, String str4, Uri uri, String str5, long j) {
        this.a = i;
        this.b = zzx.zzcr(str);
        this.c = str2;
        this.d = str3;
        this.e = str4;
        this.f = uri;
        this.g = str5;
        this.h = j;
    }

    private JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("id", getId());
            if (getIdToken() != null) {
                jSONObject.put("tokenId", getIdToken());
            }
            if (getEmail() != null) {
                jSONObject.put("email", getEmail());
            }
            if (getDisplayName() != null) {
                jSONObject.put("displayName", getDisplayName());
            }
            if (zzlT() != null) {
                jSONObject.put("photoUrl", zzlT().toString());
            }
            if (zzlU() != null) {
                jSONObject.put("serverAuthCode", zzlU());
            }
            jSONObject.put("expirationTime", this.h);
            return jSONObject;
        } catch (JSONException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (obj instanceof GoogleSignInAccount) {
            return ((GoogleSignInAccount) obj).zzlW().equals(zzlW());
        }
        return false;
    }

    public String getDisplayName() {
        return this.e;
    }

    public String getEmail() {
        return this.d;
    }

    public String getId() {
        return this.b;
    }

    public String getIdToken() {
        return this.c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzc.a(this, parcel, i);
    }

    public Uri zzlT() {
        return this.f;
    }

    public String zzlU() {
        return this.g;
    }

    public long zzlV() {
        return this.h;
    }

    public String zzlW() {
        return a().toString();
    }
}
