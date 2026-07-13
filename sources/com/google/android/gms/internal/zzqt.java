package com.google.android.gms.internal;

import android.util.Log;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzlb;
import com.google.android.gms.internal.zzqq;
import com.google.android.gms.search.GoogleNowAuthState;
import com.google.android.gms.search.SearchAuth;
import com.google.android.gms.search.SearchAuthApi;

/* JADX INFO: loaded from: classes.dex */
public class zzqt implements SearchAuthApi {

    static abstract class a extends zzqq.zza {
        a() {
        }

        @Override // com.google.android.gms.internal.zzqq
        public void zza(Status status, GoogleNowAuthState googleNowAuthState) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.android.gms.internal.zzqq
        public void zzbb(Status status) {
            throw new UnsupportedOperationException();
        }
    }

    static class b extends zzlb.zza<Status, zzqs> {
        private final GoogleApiClient a;
        private final String b;
        private final boolean c;

        protected b(GoogleApiClient googleApiClient, String str) {
            super(SearchAuth.zzRk, googleApiClient);
            this.c = Log.isLoggable("SearchAuth", 3);
            this.a = googleApiClient;
            this.b = str;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzlc
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Status zzb(Status status) {
            if (this.c) {
                Log.d("SearchAuth", "ClearTokenImpl received failure: " + status.getStatusMessage());
            }
            return status;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzlb.zza
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void zza(zzqs zzqsVar) {
            if (this.c) {
                Log.d("SearchAuth", "ClearTokenImpl started");
            }
            String packageName = this.a.getContext().getPackageName();
            zzqsVar.zzpc().zzb(new a() { // from class: com.google.android.gms.internal.zzqt.b.1
                @Override // com.google.android.gms.internal.zzqt.a, com.google.android.gms.internal.zzqq
                public void zzbb(Status status) {
                    if (b.this.c) {
                        Log.d("SearchAuth", "ClearTokenImpl success");
                    }
                    b.this.zzb(status);
                }
            }, packageName, this.b);
        }
    }

    static class c extends zzlb.zza<SearchAuthApi.GoogleNowAuthResult, zzqs> {
        private final GoogleApiClient a;
        private final String b;
        private final boolean c;

        protected c(GoogleApiClient googleApiClient, String str) {
            super(SearchAuth.zzRk, googleApiClient);
            this.c = Log.isLoggable("SearchAuth", 3);
            this.a = googleApiClient;
            this.b = str;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzlc
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public SearchAuthApi.GoogleNowAuthResult zzb(Status status) {
            if (this.c) {
                Log.d("SearchAuth", "GetGoogleNowAuthImpl received failure: " + status.getStatusMessage());
            }
            return new d(status, null);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzlb.zza
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void zza(zzqs zzqsVar) {
            if (this.c) {
                Log.d("SearchAuth", "GetGoogleNowAuthImpl started");
            }
            String packageName = this.a.getContext().getPackageName();
            zzqsVar.zzpc().zza(new a() { // from class: com.google.android.gms.internal.zzqt.c.1
                @Override // com.google.android.gms.internal.zzqt.a, com.google.android.gms.internal.zzqq
                public void zza(Status status, GoogleNowAuthState googleNowAuthState) {
                    if (c.this.c) {
                        Log.d("SearchAuth", "GetGoogleNowAuthImpl success");
                    }
                    c.this.zzb(new d(status, googleNowAuthState));
                }
            }, packageName, this.b);
        }
    }

    static class d implements SearchAuthApi.GoogleNowAuthResult {
        private final Status a;
        private final GoogleNowAuthState b;

        d(Status status, GoogleNowAuthState googleNowAuthState) {
            this.a = status;
            this.b = googleNowAuthState;
        }

        @Override // com.google.android.gms.search.SearchAuthApi.GoogleNowAuthResult
        public GoogleNowAuthState getGoogleNowAuthState() {
            return this.b;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.a;
        }
    }

    @Override // com.google.android.gms.search.SearchAuthApi
    public PendingResult<Status> clearToken(GoogleApiClient googleApiClient, String str) {
        return googleApiClient.zza(new b(googleApiClient, str));
    }

    @Override // com.google.android.gms.search.SearchAuthApi
    public PendingResult<SearchAuthApi.GoogleNowAuthResult> getGoogleNowAuth(GoogleApiClient googleApiClient, String str) {
        return googleApiClient.zza(new c(googleApiClient, str));
    }
}
