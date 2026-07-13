package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.Scopes;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class GoogleSignInConfig implements Api.ApiOptions.Optional, SafeParcelable {
    final int a;
    private final ArrayList<Scope> b;
    private Account c;
    private boolean d;
    private final boolean e;
    private final boolean f;
    private String g;
    public static final Scope zzTe = new Scope(Scopes.PROFILE);
    public static final Scope zzTf = new Scope("email");
    public static final Scope zzTg = new Scope("openid");
    public static final GoogleSignInConfig zzTh = new zza().zzmc();
    public static final Parcelable.Creator<GoogleSignInConfig> CREATOR = new zze();

    public static final class zza {
        private Set<Scope> a = new HashSet(Arrays.asList(GoogleSignInConfig.zzTg));
        private boolean b;
        private boolean c;
        private boolean d;
        private String e;
        private Account f;

        public GoogleSignInConfig zzmc() {
            return new GoogleSignInConfig(this.a, this.f, this.d, this.b, this.c, this.e);
        }
    }

    GoogleSignInConfig(int i, ArrayList<Scope> arrayList, Account account, boolean z, boolean z2, boolean z3, String str) {
        this.a = i;
        this.b = arrayList;
        this.c = account;
        this.d = z;
        this.e = z2;
        this.f = z3;
        this.g = str;
    }

    private GoogleSignInConfig(Set<Scope> set, Account account, boolean z, boolean z2, boolean z3, String str) {
        this(1, (ArrayList<Scope>) new ArrayList(set), account, z, z2, z3, str);
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
            GoogleSignInConfig googleSignInConfig = (GoogleSignInConfig) obj;
            if (this.b.size() != googleSignInConfig.zzlS().size() || !this.b.containsAll(googleSignInConfig.zzlS())) {
                return false;
            }
            if (this.c == null) {
                if (googleSignInConfig.getAccount() != null) {
                    return false;
                }
            } else if (!this.c.equals(googleSignInConfig.getAccount())) {
                return false;
            }
            if (TextUtils.isEmpty(this.g)) {
                if (!TextUtils.isEmpty(googleSignInConfig.zzmb())) {
                    return false;
                }
            } else if (!this.g.equals(googleSignInConfig.zzmb())) {
                return false;
            }
            if (this.f == googleSignInConfig.zzma() && this.d == googleSignInConfig.zzlY()) {
                return this.e == googleSignInConfig.zzlZ();
            }
            return false;
        } catch (ClassCastException e) {
            return false;
        }
    }

    public Account getAccount() {
        return this.c;
    }

    public int hashCode() {
        ArrayList arrayList = new ArrayList();
        Iterator<Scope> it = this.b.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().zznG());
        }
        Collections.sort(arrayList);
        return new com.google.android.gms.auth.api.signin.internal.zzc().zzl(arrayList).zzl(this.c).zzl(this.g).zzP(this.f).zzP(this.d).zzP(this.e).zzmd();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zze.a(this, parcel, i);
    }

    public ArrayList<Scope> zzlS() {
        return new ArrayList<>(this.b);
    }

    public boolean zzlY() {
        return this.d;
    }

    public boolean zzlZ() {
        return this.e;
    }

    public boolean zzma() {
        return this.f;
    }

    public String zzmb() {
        return this.g;
    }
}
