package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import com.google.android.gms.common.GoogleApiAvailability;

/* JADX INFO: loaded from: classes.dex */
public abstract class gl extends BroadcastReceiver {
    protected Context a;

    protected gl() {
    }

    public static <T extends gl> T a(Context context, T t) {
        return (T) a(context, t, GoogleApiAvailability.getInstance());
    }

    public static <T extends gl> T a(Context context, T t, GoogleApiAvailability googleApiAvailability) {
        IntentFilter intentFilter = new IntentFilter("android.intent.action.PACKAGE_ADDED");
        intentFilter.addDataScheme("package");
        context.registerReceiver(t, intentFilter);
        t.a = context;
        if (googleApiAvailability.zzj(context, "com.google.android.gms")) {
            return t;
        }
        t.a();
        t.b();
        return null;
    }

    public abstract void a();

    public synchronized void b() {
        if (this.a != null) {
            this.a.unregisterReceiver(this);
        }
        this.a = null;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Uri data = intent.getData();
        if ("com.google.android.gms".equals(data != null ? data.getSchemeSpecificPart() : null)) {
            a();
            b();
        }
    }
}
