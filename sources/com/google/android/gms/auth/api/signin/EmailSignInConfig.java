package com.google.android.gms.auth.api.signin;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Patterns;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzx;

/* JADX INFO: loaded from: classes.dex */
public class EmailSignInConfig implements SafeParcelable {
    public static final Parcelable.Creator<EmailSignInConfig> CREATOR = new zza();
    final int a;
    private final Uri b;
    private String c;
    private Uri d;

    EmailSignInConfig(int i, Uri uri, String str, Uri uri2) {
        zzx.zzb(uri, "Server widget url cannot be null in order to use email/password sign in.");
        zzx.zzh(uri.toString(), "Server widget url cannot be null in order to use email/password sign in.");
        zzx.zzb(Patterns.WEB_URL.matcher(uri.toString()).matches(), "Invalid server widget url");
        this.a = i;
        this.b = uri;
        this.c = str;
        this.d = uri2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (obj != null) {
            try {
                EmailSignInConfig emailSignInConfig = (EmailSignInConfig) obj;
                if (this.b.equals(emailSignInConfig.zzlO())) {
                    if (this.d == null) {
                        if (emailSignInConfig.zzlP() == null) {
                            if (TextUtils.isEmpty(this.c) ? this.c.equals(emailSignInConfig.zzlQ()) : TextUtils.isEmpty(emailSignInConfig.zzlQ())) {
                            }
                        }
                    } else if (this.d.equals(emailSignInConfig.zzlP())) {
                        z = TextUtils.isEmpty(this.c) ? true : true;
                    }
                }
            } catch (ClassCastException e) {
            }
        }
        return z;
    }

    public int hashCode() {
        return new com.google.android.gms.auth.api.signin.internal.zzc().zzl(this.b).zzl(this.d).zzl(this.c).zzmd();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zza.a(this, parcel, i);
    }

    public Uri zzlO() {
        return this.b;
    }

    public Uri zzlP() {
        return this.d;
    }

    public String zzlQ() {
        return this.c;
    }
}
