package com.batescorp.pebble.nav.listener;

import android.content.Context;
import android.content.ContextWrapper;
import android.util.Log;
import com.batescorp.pebble.nav.lib.NotificationHandler;
import com.getpebble.android.kit.PebbleKit;
import com.getpebble.android.kit.util.PebbleDictionary;
import com.google.common.base.Splitter;
import java.util.Iterator;
import java.util.LinkedList;
import org.eclipse.jetty.http.HttpStatus;

/* JADX INFO: loaded from: classes.dex */
public class PebbleMessageQueue {
    private ContextWrapper b;
    private int c = 0;
    private boolean d = true;
    private String e = null;
    private String f = null;
    LinkedList<b> a = new LinkedList<>();

    enum a {
        BEGIN,
        DATA,
        END,
        TURN_DISTANCE
    }

    public PebbleMessageQueue(ContextWrapper contextWrapper) {
        this.b = contextWrapper;
        PebbleKit.registerReceivedDataHandler(getApplicationContext(), new PebbleKit.PebbleDataReceiver(NotificationHandler.PEBBLE_NAV_UUID) { // from class: com.batescorp.pebble.nav.listener.PebbleMessageQueue.1
            @Override // com.getpebble.android.kit.PebbleKit.PebbleDataReceiver
            public void receiveData(Context context, int i, PebbleDictionary pebbleDictionary) {
                Log.i("PebbleMessageQueue", "Pebble - Received value=" + pebbleDictionary.getUnsignedIntegerAsLong(0) + " for key: 0");
                PebbleKit.sendAckToPebble(PebbleMessageQueue.this.getApplicationContext(), i);
            }
        });
        PebbleKit.registerReceivedAckHandler(getApplicationContext(), new PebbleKit.PebbleAckReceiver(NotificationHandler.PEBBLE_NAV_UUID) { // from class: com.batescorp.pebble.nav.listener.PebbleMessageQueue.2
            @Override // com.getpebble.android.kit.PebbleKit.PebbleAckReceiver
            public void receiveAck(Context context, int i) {
                Log.i("PebbleMessageQueue", "Pebble - Received ack for transaction " + i + " : " + context.getPackageName());
                PebbleMessageQueue.this.a(i, true);
            }
        });
        PebbleKit.registerReceivedNackHandler(getApplicationContext(), new PebbleKit.PebbleNackReceiver(NotificationHandler.PEBBLE_NAV_UUID) { // from class: com.batescorp.pebble.nav.listener.PebbleMessageQueue.3
            @Override // com.getpebble.android.kit.PebbleKit.PebbleNackReceiver
            public void receiveNack(Context context, int i) {
                Log.i("PebbleMessageQueue", "Pebble - Received nack for transaction " + i + " : " + context.getPackageName());
                PebbleMessageQueue.this.a(i, false);
            }
        });
    }

    protected ContextWrapper getApplicationContext() {
        return this.b;
    }

    private synchronized void a() {
        if (this.a.size() <= 0 && this.e != null) {
            this.a.add(new b(a.BEGIN));
            Iterator<String> it = Splitter.fixedLength(20).split(this.e).iterator();
            while (it.hasNext()) {
                this.a.add(new b(a.DATA, it.next()));
            }
            this.a.add(new b(a.END));
            this.e = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(int i, boolean z) {
        if (this.c == i) {
            this.d = true;
            if (z) {
                this.a.pop();
            }
            c();
        }
    }

    private synchronized void b() {
        if (this.a.size() <= 0 && this.f != null) {
            this.a.add(new b(a.TURN_DISTANCE, this.f));
            this.f = null;
        }
    }

    private synchronized void c() {
        b first;
        Log.i("PebbleMessageQueue", "Pebble - sendToPebble (checking) " + this.d + " : " + this.c);
        if (this.d) {
            a();
            b();
            if (this.a.size() > 0 && (first = this.a.getFirst()) != null) {
                this.d = false;
                this.c = (this.c % HttpStatus.OK_200) + 1;
                PebbleDictionary pebbleDictionary = new PebbleDictionary();
                switch (first.a()) {
                    case BEGIN:
                        pebbleDictionary.addInt32(0, 0);
                        break;
                    case DATA:
                        pebbleDictionary.addString(1, first.b);
                        break;
                    case END:
                        pebbleDictionary.addInt32(2, 0);
                        break;
                    case TURN_DISTANCE:
                        Log.i("PebbleMessageQueue", "Pebble - sendToPebble (TURN_DISTANCE) : " + first.b);
                        pebbleDictionary.addString(3, first.b);
                        break;
                }
                Log.i("PebbleMessageQueue", "Pebble - sendToPebble (sending)  : " + first.a() + " : transaction " + this.c);
                PebbleKit.sendDataToPebbleWithTransactionId(getApplicationContext(), NotificationHandler.PEBBLE_NAV_UUID, pebbleDictionary, this.c);
            }
        }
    }

    class b {
        a a;
        String b;

        public b(a aVar) {
            this.a = aVar;
        }

        public b(a aVar, String str) {
            this.a = aVar;
            this.b = str;
        }

        public a a() {
            return this.a;
        }
    }
}
