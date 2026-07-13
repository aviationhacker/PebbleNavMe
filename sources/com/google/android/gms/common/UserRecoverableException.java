package com.google.android.gms.common;

import android.content.Intent;

/* JADX INFO: loaded from: classes.dex */
public class UserRecoverableException extends Exception {
    private final Intent a;

    public UserRecoverableException(String str, Intent intent) {
        super(str);
        this.a = intent;
    }

    public Intent getIntent() {
        return new Intent(this.a);
    }
}
