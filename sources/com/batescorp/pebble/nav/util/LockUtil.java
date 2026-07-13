package com.batescorp.pebble.nav.util;

import android.annotation.TargetApi;
import android.app.KeyguardManager;
import android.content.ContextWrapper;
import android.os.Build;
import android.os.PowerManager;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class LockUtil {
    @TargetApi(16)
    public static boolean needToUnlock(ContextWrapper contextWrapper) {
        Log.d("LockUtil", "needToUnlock");
        if (!((PowerManager) contextWrapper.getSystemService("power")).isScreenOn()) {
            Log.d("LockUtil", "needToUnlock - screen off");
            return true;
        }
        KeyguardManager keyguardManager = (KeyguardManager) contextWrapper.getSystemService("keyguard");
        if (Build.VERSION.SDK_INT >= 18) {
            if (keyguardManager.isKeyguardLocked()) {
                Log.d("LockUtil", "needToUnlock - lockscreen");
                return true;
            }
        } else if (keyguardManager.inKeyguardRestrictedInputMode()) {
            Log.d("LockUtil", "needToUnlock - lockscreen");
            return true;
        }
        return false;
    }
}
