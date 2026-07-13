package com.google.android.gms.appdatasearch;

import android.accounts.Account;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzx;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class DocumentContents implements SafeParcelable {
    public static final zzb CREATOR = new zzb();
    final int a;
    public final Account account;
    final DocumentSection[] b;
    public final String zzPY;
    public final boolean zzPZ;

    public static class zza {
        private List<DocumentSection> a;
        private String b;
        private boolean c;
        private Account d;

        public zza zzK(boolean z) {
            this.c = z;
            return this;
        }

        public zza zza(DocumentSection documentSection) {
            if (this.a == null) {
                this.a = new ArrayList();
            }
            this.a.add(documentSection);
            return this;
        }

        public zza zzb(Account account) {
            this.d = account;
            return this;
        }

        public zza zzbx(String str) {
            this.b = str;
            return this;
        }

        public DocumentContents zzlo() {
            return new DocumentContents(this.b, this.c, this.d, this.a != null ? (DocumentSection[]) this.a.toArray(new DocumentSection[this.a.size()]) : null);
        }
    }

    DocumentContents(int i, DocumentSection[] documentSectionArr, String str, boolean z, Account account) {
        this.a = i;
        this.b = documentSectionArr;
        this.zzPY = str;
        this.zzPZ = z;
        this.account = account;
    }

    DocumentContents(String str, boolean z, Account account, DocumentSection... documentSectionArr) {
        this(1, documentSectionArr, str, z, account);
        BitSet bitSet = new BitSet(zzh.zzls());
        for (DocumentSection documentSection : documentSectionArr) {
            int i = documentSection.zzQl;
            if (i != -1) {
                if (bitSet.get(i)) {
                    throw new IllegalArgumentException("Duplicate global search section type " + zzh.zzak(i));
                }
                bitSet.set(i);
            }
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        zzb zzbVar = CREATOR;
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzb zzbVar = CREATOR;
        zzb.a(this, parcel, i);
    }

    public DocumentSection zzbw(String str) {
        zzx.zzcr(str);
        if (this.b == null) {
            return null;
        }
        for (DocumentSection documentSection : this.b) {
            if (str.equals(documentSection.zzlp().name)) {
                return documentSection;
            }
        }
        return null;
    }

    public String zzln() {
        DocumentSection documentSectionZzbw = zzbw("web_url");
        if (documentSectionZzbw != null) {
            return documentSectionZzbw.zzQj;
        }
        return null;
    }
}
