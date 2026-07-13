package com.batescorp.pebble.nav.listener;

import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.batescorp.pebble.nav.lib.NotificationHandler;
import com.batescorp.pebble.nav.service.NavProcessingService;
import com.getpebble.android.kit.PebbleKit;
import com.getpebble.android.kit.util.PebbleDictionary;

/* JADX INFO: loaded from: classes.dex */
public class PebbleDataReceiver extends PebbleKit.PebbleDataReceiver {
    public PebbleDataReceiver() {
        super(NotificationHandler.PEBBLE_NAV_UUID);
    }

    @Override // com.getpebble.android.kit.PebbleKit.PebbleDataReceiver
    public void receiveData(Context context, int i, PebbleDictionary pebbleDictionary) {
        PebbleKit.sendAckToPebble(context, i);
        Log.d("PebbleDataReceiver", "receiveData transactionId = " + i);
        if (pebbleDictionary.contains(0)) {
            a(context, 0, pebbleDictionary.getInteger(0));
            return;
        }
        if (pebbleDictionary.contains(1)) {
            a(context, 1, pebbleDictionary.getInteger(1));
            return;
        }
        if (pebbleDictionary.contains(2)) {
            a(context, 2, pebbleDictionary.getInteger(2));
            return;
        }
        if (pebbleDictionary.contains(3)) {
            a(context, 3, pebbleDictionary.getInteger(3));
            return;
        }
        if (pebbleDictionary.contains(4)) {
            a(context, 4, pebbleDictionary.getInteger(4));
            return;
        }
        if (pebbleDictionary.contains(5)) {
            a(context, 5, pebbleDictionary.getInteger(5));
            return;
        }
        if (pebbleDictionary.contains(6)) {
            a(context, 6, pebbleDictionary.getInteger(6));
            return;
        }
        if (pebbleDictionary.contains(7)) {
            a(context, 7, (Long) 0L);
            return;
        }
        if (pebbleDictionary.contains(8)) {
            a(context, 8, pebbleDictionary.getInteger(8));
            return;
        }
        if (pebbleDictionary.contains(9)) {
            a(context, 9, (Long) 0L);
            return;
        }
        if (pebbleDictionary.contains(10)) {
            a(context, 10, (Long) 0L);
            return;
        }
        if (pebbleDictionary.contains(11)) {
            a(context, 11, (Long) 0L);
            return;
        }
        if (pebbleDictionary.contains(12)) {
            a(context, 12, pebbleDictionary.getInteger(12));
        } else if (pebbleDictionary.contains(13)) {
            a(context, 13, pebbleDictionary.getString(13));
        } else if (pebbleDictionary.contains(14)) {
            a(context, 14, pebbleDictionary.getInteger(14));
        }
    }

    private void a(Context context, int i, Long l) {
        Log.d("PebbleDataReceiver", "startService 001 : " + i + " : " + l);
        Intent intent = new Intent(context, (Class<?>) NavProcessingService.class);
        intent.setAction("com.pebble.PebbleDataReceiver");
        intent.putExtra("key", i);
        intent.putExtra("value", l);
        context.startService(intent);
        Log.d("PebbleDataReceiver", "startService 002 : " + i + " : " + l);
    }

    private void a(Context context, int i, String str) {
        Log.d("PebbleDataReceiver", "startService 001 : " + i + " : " + str);
        Intent intent = new Intent(context, (Class<?>) NavProcessingService.class);
        intent.setAction("com.pebble.PebbleDataReceiver");
        intent.putExtra("key", i);
        intent.putExtra("value", str);
        context.startService(intent);
        Log.d("PebbleDataReceiver", "startService 002 : " + i + " : " + str);
    }
}
