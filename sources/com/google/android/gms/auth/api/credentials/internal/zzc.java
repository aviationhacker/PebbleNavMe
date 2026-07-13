package com.google.android.gms.auth.api.credentials.internal;

import android.content.Context;
import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.auth.api.credentials.CredentialRequest;
import com.google.android.gms.auth.api.credentials.CredentialRequestResult;
import com.google.android.gms.auth.api.credentials.CredentialsApi;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzlb;
import defpackage.gh;

/* JADX INFO: loaded from: classes.dex */
public final class zzc implements CredentialsApi {

    static class a extends zza {
        private zzlb.zzb<Status> a;

        a(zzlb.zzb<Status> zzbVar) {
            this.a = zzbVar;
        }

        @Override // com.google.android.gms.auth.api.credentials.internal.zza, com.google.android.gms.auth.api.credentials.internal.zzg
        public void zzg(Status status) {
            this.a.zzp(status);
        }
    }

    @Override // com.google.android.gms.auth.api.credentials.CredentialsApi
    public PendingResult<Status> delete(GoogleApiClient googleApiClient, final Credential credential) {
        return googleApiClient.zzb(new gh<Status>(googleApiClient) { // from class: com.google.android.gms.auth.api.credentials.internal.zzc.3
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzlc
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Status zzb(Status status) {
                return status;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // defpackage.gh
            public void a(Context context, zzh zzhVar) {
                zzhVar.zza(new a(this), new DeleteRequest(credential));
            }
        });
    }

    @Override // com.google.android.gms.auth.api.credentials.CredentialsApi
    public PendingResult<Status> disableAutoSignIn(GoogleApiClient googleApiClient) {
        return googleApiClient.zzb(new gh<Status>(googleApiClient) { // from class: com.google.android.gms.auth.api.credentials.internal.zzc.4
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzlc
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Status zzb(Status status) {
                return status;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // defpackage.gh
            public void a(Context context, zzh zzhVar) {
                zzhVar.zza(new a(this));
            }
        });
    }

    @Override // com.google.android.gms.auth.api.credentials.CredentialsApi
    public PendingResult<CredentialRequestResult> request(GoogleApiClient googleApiClient, final CredentialRequest credentialRequest) {
        return googleApiClient.zza(new gh<CredentialRequestResult>(googleApiClient) { // from class: com.google.android.gms.auth.api.credentials.internal.zzc.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzlc
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public CredentialRequestResult zzb(Status status) {
                return zzb.zzh(status);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // defpackage.gh
            public void a(Context context, zzh zzhVar) {
                zzhVar.zza(new zza() { // from class: com.google.android.gms.auth.api.credentials.internal.zzc.1.1
                    @Override // com.google.android.gms.auth.api.credentials.internal.zza, com.google.android.gms.auth.api.credentials.internal.zzg
                    public void zza(Status status, Credential credential) {
                        zzb(new zzb(status, credential));
                    }

                    @Override // com.google.android.gms.auth.api.credentials.internal.zza, com.google.android.gms.auth.api.credentials.internal.zzg
                    public void zzg(Status status) {
                        zzb(zzb.zzh(status));
                    }
                }, credentialRequest);
            }
        });
    }

    @Override // com.google.android.gms.auth.api.credentials.CredentialsApi
    public PendingResult<Status> save(GoogleApiClient googleApiClient, final Credential credential) {
        return googleApiClient.zzb(new gh<Status>(googleApiClient) { // from class: com.google.android.gms.auth.api.credentials.internal.zzc.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzlc
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Status zzb(Status status) {
                return status;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // defpackage.gh
            public void a(Context context, zzh zzhVar) {
                zzhVar.zza(new a(this), new SaveRequest(credential));
            }
        });
    }
}
