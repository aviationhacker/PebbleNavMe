package com.google.android.gms.common.internal;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.support.v4.app.Fragment;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class zzh implements DialogInterface.OnClickListener {
    private final Activity a;
    private final Fragment b;
    private final Intent c;
    private final int d;

    public zzh(Activity activity, Intent intent, int i) {
        this.a = activity;
        this.b = null;
        this.c = intent;
        this.d = i;
    }

    public zzh(Fragment fragment, Intent intent, int i) {
        this.a = null;
        this.b = fragment;
        this.c = intent;
        this.d = i;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        try {
            if (this.c != null && this.b != null) {
                this.b.startActivityForResult(this.c, this.d);
            } else if (this.c != null) {
                this.a.startActivityForResult(this.c, this.d);
            }
            dialogInterface.dismiss();
        } catch (ActivityNotFoundException e) {
            Log.e("SettingsRedirect", "Can't redirect to app settings for Google Play services");
        }
    }
}
