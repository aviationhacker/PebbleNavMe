package com.batescorp.pebble.nav.listener;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.batescorp.pebble.nav.processor.NavConfig;
import com.batescorp.pebble.nav.processor.NavState;
import com.batescorp.pebble.nav.service.NavProcessingService;
import com.getpebble.android.kit.Constants;

/* JADX INFO: loaded from: classes.dex */
public class NavMeControlListener extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Log.d("NavMeControlListener", "onReceive - " + intent.getAction());
        if ("com.batescorp.pebble.nav.FLASH_NAVME".equals(intent.getAction())) {
            if (NavConfig.getInstance(context).smartFlash() && !NavState.getInstance(context).isRunning()) {
                Log.d("NavMeControlListener", "Nav not running ignore request");
                return;
            }
            String stringExtra = intent.getStringExtra("UUID");
            int intExtra = intent.getIntExtra("FLASH_TIME", 10);
            Intent intent2 = new Intent();
            intent2.setClass(context, NavProcessingService.class);
            intent2.setAction("com.batescorp.pebble.nav.FLASH_NAVME");
            intent2.putExtra("UUID", stringExtra);
            intent2.putExtra("FLASH_TIME", intExtra);
            context.startService(intent2);
            return;
        }
        if (Constants.INTENT_APP_RECEIVE.equals(intent.getAction())) {
            for (String str : intent.getExtras().keySet()) {
                Log.d("NavMeControlListener", "INTENT_APP_RECEIVE - " + str);
                intent.getExtras().get(str);
            }
            Log.d("NavMeControlListener", "INTENT_APP_RECEIVE - uuid - " + intent.getExtras().get(Constants.APP_UUID).toString());
        }
    }
}
