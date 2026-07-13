package com.google.android.gms.internal;

import android.accounts.Account;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import com.getpebble.android.kit.Constants;
import com.google.android.gms.appdatasearch.DocumentContents;
import com.google.android.gms.appdatasearch.DocumentSection;
import com.google.android.gms.appdatasearch.RegisterSectionInfo;
import com.google.android.gms.appdatasearch.UsageInfo;
import com.google.android.gms.appindexing.Action;
import com.google.android.gms.auth.GoogleAuthUtil;
import com.google.android.gms.internal.zzox;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class zzjt {
    private static DocumentSection a(String str, zzox.zzc zzcVar) {
        return new DocumentSection(zzse.zzf(zzcVar), new RegisterSectionInfo.zza(str).zzM(true).zzbB(str).zzbA("blob").zzlt());
    }

    static zzox.zzc a(Bundle bundle) {
        zzox.zzc zzcVar = new zzox.zzc();
        ArrayList arrayList = new ArrayList();
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            zzox.zzb zzbVar = new zzox.zzb();
            zzbVar.name = str;
            zzbVar.zzaCZ = new zzox.zzd();
            if (obj instanceof String) {
                zzbVar.zzaCZ.zzagS = (String) obj;
            } else if (obj instanceof Bundle) {
                zzbVar.zzaCZ.zzaDe = a((Bundle) obj);
            } else {
                Log.e("SearchIndex", "Unsupported value: " + obj);
            }
            arrayList.add(zzbVar);
        }
        if (bundle.containsKey("type")) {
            zzcVar.type = bundle.getString("type");
        }
        zzcVar.zzaDa = (zzox.zzb[]) arrayList.toArray(new zzox.zzb[arrayList.size()]);
        return zzcVar;
    }

    public static UsageInfo zza(Action action, long j, String str, int i) {
        int i2;
        boolean z = false;
        Bundle bundle = new Bundle();
        bundle.putAll(action.zzlx());
        Bundle bundle2 = bundle.getBundle("object");
        Uri uri = bundle2.containsKey("id") ? Uri.parse(bundle2.getString("id")) : null;
        String string = bundle2.getString(Constants.CUST_NAME);
        String string2 = bundle2.getString("type");
        Intent intentZza = zzju.zza(str, Uri.parse(bundle2.getString("url")));
        DocumentContents.zza zzaVarZza = UsageInfo.zza(intentZza, string, uri, string2, null);
        if (bundle.containsKey(".private:ssbContext")) {
            zzaVarZza.zza(DocumentSection.zzh(bundle.getByteArray(".private:ssbContext")));
            bundle.remove(".private:ssbContext");
        }
        if (bundle.containsKey(".private:accountName")) {
            zzaVarZza.zzb(new Account(bundle.getString(".private:accountName"), GoogleAuthUtil.GOOGLE_ACCOUNT_TYPE));
            bundle.remove(".private:accountName");
        }
        if (bundle.containsKey(".private:isContextOnly") && bundle.getBoolean(".private:isContextOnly")) {
            i2 = 4;
            bundle.remove(".private:isContextOnly");
        } else {
            i2 = 0;
        }
        if (bundle.containsKey(".private:isDeviceOnly")) {
            z = bundle.getBoolean(".private:isDeviceOnly", false);
            bundle.remove(".private:isDeviceOnly");
        }
        zzaVarZza.zza(a(".private:action", a(bundle)));
        return new UsageInfo.zza().zza(UsageInfo.zza(str, intentZza)).zzw(j).zzan(i2).zza(zzaVarZza.zzlo()).zzO(z).zzao(i).zzlv();
    }
}
