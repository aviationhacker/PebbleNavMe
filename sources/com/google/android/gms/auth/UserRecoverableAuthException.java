package com.google.android.gms.auth;

import android.content.Intent;

/* JADX INFO: loaded from: classes.dex */
public class UserRecoverableAuthException extends GoogleAuthException {
    private final Intent a;

    public UserRecoverableAuthException(String str, Intent intent) {
        super(str);
        this.a = intent;
    }

    public Intent getIntent() {
        if (this.a == null) {
            return null;
        }
        return new Intent(this.a);
    }
}
