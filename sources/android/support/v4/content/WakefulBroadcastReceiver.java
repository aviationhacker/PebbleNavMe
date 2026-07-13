package android.support.v4.content;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import android.util.Log;
import android.util.SparseArray;
import org.apache.commons.lang3.time.DateUtils;

/* JADX INFO: loaded from: classes.dex */
public abstract class WakefulBroadcastReceiver extends BroadcastReceiver {
    private static final SparseArray<PowerManager.WakeLock> a = new SparseArray<>();
    private static int b = 1;

    public static ComponentName startWakefulService(Context context, Intent intent) {
        synchronized (a) {
            int i = b;
            b++;
            if (b <= 0) {
                b = 1;
            }
            intent.putExtra("android.support.content.wakelockid", i);
            ComponentName componentNameStartService = context.startService(intent);
            if (componentNameStartService == null) {
                return null;
            }
            PowerManager.WakeLock wakeLockNewWakeLock = ((PowerManager) context.getSystemService("power")).newWakeLock(1, "wake:" + componentNameStartService.flattenToShortString());
            wakeLockNewWakeLock.setReferenceCounted(false);
            wakeLockNewWakeLock.acquire(DateUtils.MILLIS_PER_MINUTE);
            a.put(i, wakeLockNewWakeLock);
            return componentNameStartService;
        }
    }

    public static boolean completeWakefulIntent(Intent intent) {
        boolean z = false;
        int intExtra = intent.getIntExtra("android.support.content.wakelockid", 0);
        if (intExtra != 0) {
            synchronized (a) {
                PowerManager.WakeLock wakeLock = a.get(intExtra);
                if (wakeLock != null) {
                    wakeLock.release();
                    a.remove(intExtra);
                    z = true;
                } else {
                    Log.w("WakefulBroadcastReceiver", "No active wake lock id #" + intExtra);
                    z = true;
                }
            }
        }
        return z;
    }
}
