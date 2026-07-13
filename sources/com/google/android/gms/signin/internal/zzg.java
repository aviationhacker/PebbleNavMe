package com.google.android.gms.signin.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.zza;

/* JADX INFO: loaded from: classes.dex */
public class zzg implements Parcelable.Creator<RecordConsentRequest> {
    static void a(RecordConsentRequest recordConsentRequest, Parcel parcel, int i) {
        int iZzaq = com.google.android.gms.common.internal.safeparcel.zzb.zzaq(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, recordConsentRequest.a);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, (Parcelable) recordConsentRequest.getAccount(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, (Parcelable[]) recordConsentRequest.zzCj(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, recordConsentRequest.zzmb(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzI(parcel, iZzaq);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzgD, reason: merged with bridge method [inline-methods] */
    public RecordConsentRequest createFromParcel(Parcel parcel) {
        String strZzp;
        Scope[] scopeArr;
        Account account;
        int iZzg;
        String str = null;
        int iZzap = com.google.android.gms.common.internal.safeparcel.zza.zzap(parcel);
        int i = 0;
        Scope[] scopeArr2 = null;
        Account account2 = null;
        while (parcel.dataPosition() < iZzap) {
            int iZzao = com.google.android.gms.common.internal.safeparcel.zza.zzao(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzbM(iZzao)) {
                case 1:
                    String str2 = str;
                    scopeArr = scopeArr2;
                    account = account2;
                    iZzg = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, iZzao);
                    strZzp = str2;
                    break;
                case 2:
                    iZzg = i;
                    Scope[] scopeArr3 = scopeArr2;
                    account = (Account) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, iZzao, Account.CREATOR);
                    strZzp = str;
                    scopeArr = scopeArr3;
                    break;
                case 3:
                    account = account2;
                    iZzg = i;
                    String str3 = str;
                    scopeArr = (Scope[]) com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzao, Scope.CREATOR);
                    strZzp = str3;
                    break;
                case 4:
                    strZzp = com.google.android.gms.common.internal.safeparcel.zza.zzp(parcel, iZzao);
                    scopeArr = scopeArr2;
                    account = account2;
                    iZzg = i;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, iZzao);
                    strZzp = str;
                    scopeArr = scopeArr2;
                    account = account2;
                    iZzg = i;
                    break;
            }
            i = iZzg;
            account2 = account;
            scopeArr2 = scopeArr;
            str = strZzp;
        }
        if (parcel.dataPosition() != iZzap) {
            throw new zza.C0006zza("Overread allowed size end=" + iZzap, parcel);
        }
        return new RecordConsentRequest(i, account2, scopeArr2, str);
    }

    @Override // android.os.Parcelable.Creator
    /* JADX INFO: renamed from: zzjr, reason: merged with bridge method [inline-methods] */
    public RecordConsentRequest[] newArray(int i) {
        return new RecordConsentRequest[i];
    }
}
