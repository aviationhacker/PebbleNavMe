package com.google.android.gms.appdatasearch;

import android.accounts.Account;
import android.os.Parcel;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.zzjr;
import com.google.android.gms.internal.zzjs;
import com.google.android.gms.internal.zzlb;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class GetRecentContextCall {

    public static class Request implements SafeParcelable {
        public static final zzf CREATOR = new zzf();
        final int a;
        public final Account zzQq;
        public final boolean zzQr;
        public final boolean zzQs;
        public final boolean zzQt;
        public final String zzQu;

        public static final class zza {
            private Account a;
            private boolean b;
            private boolean c;
            private boolean d;
            private String e;

            public zza zzL(boolean z) {
                this.c = z;
                return this;
            }

            public zza zzby(String str) {
                this.e = str;
                return this;
            }

            public Request zzlr() {
                return new Request(this.a, this.b, this.c, this.d, this.e);
            }
        }

        public Request() {
            this(null, false, false, false, null);
        }

        Request(int i, Account account, boolean z, boolean z2, boolean z3, String str) {
            this.a = i;
            this.zzQq = account;
            this.zzQr = z;
            this.zzQs = z2;
            this.zzQt = z3;
            this.zzQu = str;
        }

        public Request(Account account, boolean z, boolean z2, boolean z3, String str) {
            this(1, account, z, z2, z3, str);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            zzf zzfVar = CREATOR;
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            zzf zzfVar = CREATOR;
            zzf.a(this, parcel, i);
        }
    }

    public static class Response implements Result, SafeParcelable {
        public static final zzg CREATOR = new zzg();
        final int a;
        public Status zzQA;
        public List<UsageInfo> zzQB;
        public String[] zzQC;

        public Response() {
            this.a = 1;
        }

        Response(int i, Status status, List<UsageInfo> list, String[] strArr) {
            this.a = i;
            this.zzQA = status;
            this.zzQB = list;
            this.zzQC = strArr;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            zzg zzgVar = CREATOR;
            return 0;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.zzQA;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            zzg zzgVar = CREATOR;
            zzg.a(this, parcel, i);
        }
    }

    public static class zza extends zzlb.zza<Response, zzjs> {
        private final Request a;

        public zza(Request request, GoogleApiClient googleApiClient) {
            super(com.google.android.gms.appdatasearch.zza.zzPT, googleApiClient);
            this.a = request;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzlc
        /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
        public Response zzb(Status status) {
            Response response = new Response();
            response.zzQA = status;
            return response;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzlb.zza
        public void zza(zzjs zzjsVar) {
            zzjsVar.zzlw().zza(this.a, new zzjr<Response>(this) { // from class: com.google.android.gms.appdatasearch.GetRecentContextCall.zza.1
                /* JADX WARN: Type inference incomplete: some casts might be missing */
                @Override // com.google.android.gms.internal.zzjr, com.google.android.gms.internal.zzjq
                public void zza(Response response) {
                    this.zzRb.zzp((T) response);
                }
            });
        }
    }
}
