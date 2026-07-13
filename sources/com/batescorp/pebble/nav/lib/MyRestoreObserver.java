package com.batescorp.pebble.nav.lib;

import android.app.backup.RestoreObserver;
import android.content.ContextWrapper;
import android.util.Log;
import com.batescorp.pebble.nav.processor.NavLicense;

/* JADX INFO: loaded from: classes.dex */
public class MyRestoreObserver extends RestoreObserver {
    ContextWrapper a;

    public MyRestoreObserver(ContextWrapper contextWrapper) {
        this.a = contextWrapper;
    }

    @Override // android.app.backup.RestoreObserver
    public void restoreStarting(int i) {
        super.restoreStarting(i);
        Log.d("MyRestoreObserver", "restoreStarting - NavLicense - : " + i);
    }

    @Override // android.app.backup.RestoreObserver
    public void onUpdate(int i, String str) {
        super.onUpdate(i, str);
        Log.d("MyRestoreObserver", "onUpdate - NavLicense: " + i + " : " + str);
    }

    @Override // android.app.backup.RestoreObserver
    public void restoreFinished(int i) {
        super.restoreFinished(i);
        Log.d("MyRestoreObserver", "restoreFinished - NavLicense - : " + i);
        if (i == 0) {
            NavLicense.getInstance(this.a).saveStartTime();
        }
    }
}
