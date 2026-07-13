package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.content.Context;
import android.view.View;
import com.google.android.gms.auth.GoogleAuthUtil;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.internal.zzqx;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class zzf {
    private final Account a;
    private final Set<Scope> b;
    private final Set<Scope> c;
    private final Map<Api<?>, zza> d;
    private final int e;
    private final View f;
    private final String g;
    private final String h;
    private final zzqx i;
    private Integer j;

    public static final class zza {
        public final Set<Scope> zzTm;
        public final boolean zzafk;

        public zza(Set<Scope> set, boolean z) {
            zzx.zzw(set);
            this.zzTm = Collections.unmodifiableSet(set);
            this.zzafk = z;
        }
    }

    public zzf(Account account, Set<Scope> set, Map<Api<?>, zza> map, int i, View view, String str, String str2, zzqx zzqxVar) {
        this.a = account;
        this.b = set == null ? Collections.EMPTY_SET : Collections.unmodifiableSet(set);
        this.d = map == null ? Collections.EMPTY_MAP : map;
        this.f = view;
        this.e = i;
        this.g = str;
        this.h = str2;
        this.i = zzqxVar;
        HashSet hashSet = new HashSet(this.b);
        Iterator<zza> it = this.d.values().iterator();
        while (it.hasNext()) {
            hashSet.addAll(it.next().zzTm);
        }
        this.c = Collections.unmodifiableSet(hashSet);
    }

    public static zzf zzak(Context context) {
        return new GoogleApiClient.Builder(context).zznB();
    }

    public Account getAccount() {
        return this.a;
    }

    @Deprecated
    public String getAccountName() {
        if (this.a != null) {
            return this.a.name;
        }
        return null;
    }

    public void zza(Integer num) {
        this.j = num;
    }

    public Set<Scope> zzb(Api<?> api) {
        zza zzaVar = this.d.get(api);
        if (zzaVar == null || zzaVar.zzTm.isEmpty()) {
            return this.b;
        }
        HashSet hashSet = new HashSet(this.b);
        hashSet.addAll(zzaVar.zzTm);
        return hashSet;
    }

    public Account zzoI() {
        return this.a != null ? this.a : new Account("<<default account>>", GoogleAuthUtil.GOOGLE_ACCOUNT_TYPE);
    }

    public int zzoJ() {
        return this.e;
    }

    public Set<Scope> zzoK() {
        return this.b;
    }

    public Set<Scope> zzoL() {
        return this.c;
    }

    public Map<Api<?>, zza> zzoM() {
        return this.d;
    }

    public String zzoN() {
        return this.g;
    }

    public String zzoO() {
        return this.h;
    }

    public View zzoP() {
        return this.f;
    }

    public zzqx zzoQ() {
        return this.i;
    }

    public Integer zzoR() {
        return this.j;
    }
}
