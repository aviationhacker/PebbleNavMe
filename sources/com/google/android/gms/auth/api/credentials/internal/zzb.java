package com.google.android.gms.auth.api.credentials.internal;

import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.auth.api.credentials.CredentialRequestResult;
import com.google.android.gms.common.api.Status;

/* JADX INFO: loaded from: classes.dex */
public final class zzb implements CredentialRequestResult {
    private final Status a;
    private final Credential b;

    public zzb(Status status, Credential credential) {
        this.a = status;
        this.b = credential;
    }

    public static zzb zzh(Status status) {
        return new zzb(status, null);
    }

    @Override // com.google.android.gms.auth.api.credentials.CredentialRequestResult
    public Credential getCredential() {
        return this.b;
    }

    @Override // com.google.android.gms.common.api.Result
    public Status getStatus() {
        return this.a;
    }
}
