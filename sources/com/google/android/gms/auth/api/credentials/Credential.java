package com.google.android.gms.auth.api.credentials;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzx;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class Credential implements SafeParcelable {
    public static final Parcelable.Creator<Credential> CREATOR = new zza();
    public static final String EXTRA_KEY = "com.google.android.gms.credentials.Credential";
    final int a;
    private final String b;
    private final String c;
    private final Uri d;
    private final List<IdToken> e;
    private final String f;
    private final String g;
    private final String h;
    private final String i;

    public static class Builder {
        private final String a;
        private String b;
        private Uri c;
        private List<IdToken> d;
        private String e;
        private String f;
        private String g;
        private String h;

        public Builder(Credential credential) {
            this.a = credential.b;
            this.b = credential.c;
            this.c = credential.d;
            this.d = credential.e;
            this.e = credential.f;
            this.f = credential.g;
            this.g = credential.h;
            this.h = credential.i;
        }

        public Builder(String str) {
            this.a = str;
        }

        public Credential build() {
            if (TextUtils.isEmpty(this.e) || TextUtils.isEmpty(this.f)) {
                return new Credential(3, this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h);
            }
            throw new IllegalStateException("Only one of password or accountType may be set");
        }

        public Builder setAccountType(String str) {
            String scheme = Uri.parse(str).getScheme();
            zzx.zzaa("http".equalsIgnoreCase(scheme) || "https".equalsIgnoreCase(scheme));
            this.f = str;
            return this;
        }

        public Builder setName(String str) {
            this.b = str;
            return this;
        }

        public Builder setPassword(String str) {
            this.e = str;
            return this;
        }

        public Builder setProfilePictureUri(Uri uri) {
            this.c = uri;
            return this;
        }
    }

    Credential(int i, String str, String str2, Uri uri, List<IdToken> list, String str3, String str4, String str5, String str6) {
        this.a = i;
        this.b = (String) zzx.zzw(str);
        this.c = str2;
        this.d = uri;
        this.e = list == null ? Collections.emptyList() : Collections.unmodifiableList(list);
        this.f = str3;
        this.g = str4;
        this.h = str5;
        this.i = str6;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Credential)) {
            return false;
        }
        Credential credential = (Credential) obj;
        return TextUtils.equals(this.b, credential.b) && TextUtils.equals(this.c, credential.c) && zzw.equal(this.d, credential.d) && TextUtils.equals(this.f, credential.f) && TextUtils.equals(this.g, credential.g) && TextUtils.equals(this.h, credential.h);
    }

    public String getAccountType() {
        return this.g;
    }

    public String getGeneratedPassword() {
        return this.h;
    }

    public String getId() {
        return this.b;
    }

    public List<IdToken> getIdTokens() {
        return this.e;
    }

    public String getName() {
        return this.c;
    }

    public String getPassword() {
        return this.f;
    }

    public Uri getProfilePictureUri() {
        return this.d;
    }

    public int hashCode() {
        return zzw.hashCode(this.b, this.c, this.d, this.f, this.g, this.h);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zza.a(this, parcel, i);
    }

    public String zzlI() {
        return this.i;
    }
}
