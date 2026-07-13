package com.batescorp.pebble.nav.activity;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import com.batescorp.pebble.nav.R;
import com.batescorp.pebble.nav.util.LockUtil;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes.dex */
public class UnlockActivity extends Activity {
    private static final String TAG = "UnlockActivity";
    private Timer timeoutTimer = null;
    private long timerStart = 0;

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_unlock);
        Log.d(TAG, "Start keyguard dismisser!");
        if (!LockUtil.needToUnlock(this)) {
            done();
        }
        if (Build.VERSION.SDK_INT < 21) {
            done();
            return;
        }
        getWindow().addFlags(4194304);
        this.timeoutTimer = new Timer("Start-Timer");
        this.timerStart = System.currentTimeMillis();
        this.timeoutTimer.schedule(new checkNavRunningTask(), 0L, 100L);
    }

    class checkNavRunningTask extends TimerTask {
        private checkNavRunningTask() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            Log.d(UnlockActivity.TAG, "checkNavRunningTask");
            if (System.currentTimeMillis() - UnlockActivity.this.timerStart > 5000 || !LockUtil.needToUnlock(UnlockActivity.this)) {
                UnlockActivity.this.done();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void done() {
        if (this.timeoutTimer != null) {
            this.timeoutTimer.cancel();
            this.timeoutTimer = null;
        }
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(getIntent().getStringExtra("uri")));
        intent.addFlags(274726912);
        intent.setClassName("com.google.android.apps.maps", "com.google.android.maps.MapsActivity");
        startActivity(intent);
        finish();
    }
}
