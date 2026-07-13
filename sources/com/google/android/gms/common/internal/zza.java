package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.content.Context;
import android.os.Binder;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.internal.zzp;

/* JADX INFO: loaded from: classes.dex */
public class zza extends zzp.zza {
    int a;
    private Account b;
    private Context c;

    public static Account zzb(zzp zzpVar) {
        Account account = null;
        if (zzpVar != null) {
            long jClearCallingIdentity = Binder.clearCallingIdentity();
            try {
                account = zzpVar.getAccount();
            } catch (RemoteException e) {
                Log.w("AccountAccessor", "Remote account accessor probably died");
            } finally {
                Binder.restoreCallingIdentity(jClearCallingIdentity);
            }
        }
        return account;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zza) {
            return this.b.equals(((zza) obj).b);
        }
        return false;
    }

    @Override // com.google.android.gms.common.internal.zzp
    public Account getAccount() {
        int callingUid = Binder.getCallingUid();
        if (callingUid == this.a) {
            return this.b;
        }
        if (!GooglePlayServicesUtil.zze(this.c, callingUid)) {
            throw new SecurityException("Caller is not GooglePlayServices");
        }
        this.a = callingUid;
        return this.b;
    }
}
