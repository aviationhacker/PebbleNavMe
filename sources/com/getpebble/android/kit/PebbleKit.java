package com.getpebble.android.kit;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.support.v4.view.InputDeviceCompat;
import android.util.Base64;
import android.util.Log;
import com.getpebble.android.kit.Constants;
import com.getpebble.android.kit.util.PebbleDictionary;
import java.util.UUID;
import org.json.JSONException;

/* JADX INFO: loaded from: classes.dex */
public final class PebbleKit {
    private PebbleKit() {
    }

    public static void customizeWatchApp(Context context, Constants.PebbleAppType pebbleAppType, String str, Bitmap bitmap) {
        if (pebbleAppType == null) {
            throw new IllegalArgumentException("app type cannot be null");
        }
        if (str.length() > 32) {
            throw new IllegalArgumentException(String.format("app name exceeds maximum length (%d)", 32));
        }
        if (bitmap.getHeight() > 32 || bitmap.getWidth() > 32) {
            throw new IllegalArgumentException(String.format("app icon exceeds maximum dimensions (32px x 32px); got (%dpx x %dpx)", Integer.valueOf(bitmap.getWidth()), Integer.valueOf(bitmap.getHeight())));
        }
        Intent intent = new Intent(Constants.INTENT_APP_CUSTOMIZE);
        intent.putExtra(Constants.CUST_APP_TYPE, pebbleAppType.ord);
        intent.putExtra(Constants.CUST_NAME, str);
        intent.putExtra(Constants.CUST_ICON, bitmap);
        context.sendBroadcast(intent);
    }

    public static boolean isWatchConnected(Context context) throws Throwable {
        Cursor cursor;
        try {
            Cursor cursorA = a(context);
            if (cursorA != null) {
                try {
                    if (cursorA.moveToNext()) {
                        boolean z = cursorA.getInt(0) == 1;
                        if (cursorA == null) {
                            return z;
                        }
                        cursorA.close();
                        return z;
                    }
                } catch (Throwable th) {
                    th = th;
                    cursor = cursorA;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (cursorA != null) {
                cursorA.close();
            }
            return false;
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
        }
    }

    public static boolean areAppMessagesSupported(Context context) throws Throwable {
        Cursor cursor;
        try {
            Cursor cursorA = a(context);
            if (cursorA != null) {
                try {
                    if (cursorA.moveToNext()) {
                        boolean z = cursorA.getInt(1) == 1;
                        if (cursorA == null) {
                            return z;
                        }
                        cursorA.close();
                        return z;
                    }
                } catch (Throwable th) {
                    th = th;
                    cursor = cursorA;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (cursorA != null) {
                cursorA.close();
            }
            return false;
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x000d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.getpebble.android.kit.PebbleKit.FirmwareVersionInfo getWatchFWVersion(android.content.Context r7) throws java.lang.Throwable {
        /*
            r0 = 0
            android.database.Cursor r1 = a(r7)     // Catch: java.lang.Throwable -> L32
            if (r1 == 0) goto Ld
            boolean r2 = r1.moveToNext()     // Catch: java.lang.Throwable -> L3c
            if (r2 != 0) goto L13
        Ld:
            if (r1 == 0) goto L12
            r1.close()
        L12:
            return r0
        L13:
            r0 = 3
            int r2 = r1.getInt(r0)     // Catch: java.lang.Throwable -> L3c
            r0 = 4
            int r3 = r1.getInt(r0)     // Catch: java.lang.Throwable -> L3c
            r0 = 5
            int r4 = r1.getInt(r0)     // Catch: java.lang.Throwable -> L3c
            r0 = 6
            java.lang.String r5 = r1.getString(r0)     // Catch: java.lang.Throwable -> L3c
            com.getpebble.android.kit.PebbleKit$FirmwareVersionInfo r0 = new com.getpebble.android.kit.PebbleKit$FirmwareVersionInfo     // Catch: java.lang.Throwable -> L3c
            r0.<init>(r2, r3, r4, r5)     // Catch: java.lang.Throwable -> L3c
            if (r1 == 0) goto L12
            r1.close()
            goto L12
        L32:
            r1 = move-exception
            r6 = r1
            r1 = r0
            r0 = r6
        L36:
            if (r1 == 0) goto L3b
            r1.close()
        L3b:
            throw r0
        L3c:
            r0 = move-exception
            goto L36
        */
        throw new UnsupportedOperationException("Method not decompiled: com.getpebble.android.kit.PebbleKit.getWatchFWVersion(android.content.Context):com.getpebble.android.kit.PebbleKit$FirmwareVersionInfo");
    }

    public static boolean isDataLoggingSupported(Context context) throws Throwable {
        Cursor cursor;
        try {
            Cursor cursorA = a(context);
            if (cursorA != null) {
                try {
                    if (cursorA.moveToNext()) {
                        boolean z = cursorA.getInt(2) == 1;
                        if (cursorA == null) {
                            return z;
                        }
                        cursorA.close();
                        return z;
                    }
                } catch (Throwable th) {
                    th = th;
                    cursor = cursorA;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (cursorA != null) {
                cursorA.close();
            }
            return false;
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
        }
    }

    public static void startAppOnPebble(Context context, UUID uuid) {
        if (uuid == null) {
            throw new IllegalArgumentException("uuid cannot be null");
        }
        Intent intent = new Intent(Constants.INTENT_APP_START);
        intent.putExtra(Constants.APP_UUID, uuid);
        context.sendBroadcast(intent);
    }

    public static void closeAppOnPebble(Context context, UUID uuid) {
        if (uuid == null) {
            throw new IllegalArgumentException("uuid cannot be null");
        }
        Intent intent = new Intent(Constants.INTENT_APP_STOP);
        intent.putExtra(Constants.APP_UUID, uuid);
        context.sendBroadcast(intent);
    }

    public static void sendDataToPebble(Context context, UUID uuid, PebbleDictionary pebbleDictionary) {
        sendDataToPebbleWithTransactionId(context, uuid, pebbleDictionary, -1);
    }

    public static void sendDataToPebbleWithTransactionId(Context context, UUID uuid, PebbleDictionary pebbleDictionary, int i) {
        if (uuid == null) {
            throw new IllegalArgumentException("uuid cannot be null");
        }
        if (pebbleDictionary == null) {
            throw new IllegalArgumentException("data cannot be null");
        }
        if (pebbleDictionary.size() != 0) {
            Intent intent = new Intent(Constants.INTENT_APP_SEND);
            intent.putExtra(Constants.APP_UUID, uuid);
            intent.putExtra(Constants.TRANSACTION_ID, i);
            intent.putExtra(Constants.MSG_DATA, pebbleDictionary.toJsonString());
            context.sendBroadcast(intent);
        }
    }

    public static void sendAckToPebble(Context context, int i) {
        if ((i & InputDeviceCompat.SOURCE_ANY) != 0) {
            throw new IllegalArgumentException(String.format("transaction id must be between (0, 255); got '%d'", Integer.valueOf(i)));
        }
        Intent intent = new Intent(Constants.INTENT_APP_ACK);
        intent.putExtra(Constants.TRANSACTION_ID, i);
        context.sendBroadcast(intent);
    }

    public static void sendNackToPebble(Context context, int i) {
        if ((i & InputDeviceCompat.SOURCE_ANY) != 0) {
            throw new IllegalArgumentException(String.format("transaction id must be between (0, 255); got '%d'", Integer.valueOf(i)));
        }
        Intent intent = new Intent(Constants.INTENT_APP_NACK);
        intent.putExtra(Constants.TRANSACTION_ID, i);
        context.sendBroadcast(intent);
    }

    public static BroadcastReceiver registerPebbleConnectedReceiver(Context context, BroadcastReceiver broadcastReceiver) {
        return a(context, Constants.INTENT_PEBBLE_CONNECTED, broadcastReceiver);
    }

    public static BroadcastReceiver registerPebbleDisconnectedReceiver(Context context, BroadcastReceiver broadcastReceiver) {
        return a(context, Constants.INTENT_PEBBLE_DISCONNECTED, broadcastReceiver);
    }

    public static BroadcastReceiver registerReceivedDataHandler(Context context, PebbleDataReceiver pebbleDataReceiver) {
        return a(context, Constants.INTENT_APP_RECEIVE, pebbleDataReceiver);
    }

    public static BroadcastReceiver registerReceivedAckHandler(Context context, PebbleAckReceiver pebbleAckReceiver) {
        return a(context, Constants.INTENT_APP_RECEIVE_ACK, pebbleAckReceiver);
    }

    public static BroadcastReceiver registerReceivedNackHandler(Context context, PebbleNackReceiver pebbleNackReceiver) {
        return a(context, Constants.INTENT_APP_RECEIVE_NACK, pebbleNackReceiver);
    }

    private static BroadcastReceiver a(Context context, String str, BroadcastReceiver broadcastReceiver) {
        if (broadcastReceiver == null) {
            return null;
        }
        context.registerReceiver(broadcastReceiver, new IntentFilter(str));
        return broadcastReceiver;
    }

    public static abstract class PebbleDataReceiver extends BroadcastReceiver {
        private final UUID a;

        public abstract void receiveData(Context context, int i, PebbleDictionary pebbleDictionary);

        protected PebbleDataReceiver(UUID uuid) {
            this.a = uuid;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (this.a.equals((UUID) intent.getSerializableExtra(Constants.APP_UUID))) {
                int intExtra = intent.getIntExtra(Constants.TRANSACTION_ID, -1);
                String stringExtra = intent.getStringExtra(Constants.MSG_DATA);
                if (stringExtra != null && !stringExtra.isEmpty()) {
                    try {
                        receiveData(context, intExtra, PebbleDictionary.fromJson(stringExtra));
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }
            }
        }
    }

    public static abstract class PebbleAckReceiver extends BroadcastReceiver {
        private final UUID a;

        public abstract void receiveAck(Context context, int i);

        protected PebbleAckReceiver(UUID uuid) {
            this.a = uuid;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            receiveAck(context, intent.getIntExtra(Constants.TRANSACTION_ID, -1));
        }
    }

    public static abstract class PebbleNackReceiver extends BroadcastReceiver {
        private final UUID a;

        public abstract void receiveNack(Context context, int i);

        protected PebbleNackReceiver(UUID uuid) {
            this.a = uuid;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            receiveNack(context, intent.getIntExtra(Constants.TRANSACTION_ID, -1));
        }
    }

    public static abstract class PebbleDataLogReceiver extends BroadcastReceiver {
        private final UUID a;
        private int b;

        protected PebbleDataLogReceiver(UUID uuid) {
            this.a = uuid;
        }

        public void receiveData(Context context, UUID uuid, Long l, Long l2, Long l3) {
            throw new UnsupportedOperationException("UnsignedInteger handler not implemented");
        }

        public void receiveData(Context context, UUID uuid, Long l, Long l2, byte[] bArr) {
            throw new UnsupportedOperationException("Byte array handler not implemented");
        }

        public void receiveData(Context context, UUID uuid, Long l, Long l2, int i) {
            throw new UnsupportedOperationException("int handler not implemented");
        }

        public void onFinishSession(Context context, UUID uuid, Long l, Long l2) {
        }

        private void a(Context context, Intent intent, UUID uuid, Long l, Long l2) {
            int intExtra = intent.getIntExtra(Constants.PBL_DATA_ID, -1);
            if (intExtra < 0) {
                throw new IllegalArgumentException();
            }
            Log.i("pebble", "DataID: " + intExtra + " LastDataID: " + this.b);
            if (intExtra != this.b) {
                Constants.PebbleDataType pebbleDataTypeFromByte = Constants.PebbleDataType.fromByte(intent.getByteExtra(Constants.PBL_DATA_TYPE, Constants.PebbleDataType.INVALID.ord));
                if (pebbleDataTypeFromByte == null) {
                    throw new IllegalArgumentException();
                }
                switch (pebbleDataTypeFromByte) {
                    case BYTES:
                        byte[] bArrDecode = Base64.decode(intent.getStringExtra(Constants.PBL_DATA_OBJECT), 2);
                        if (bArrDecode == null) {
                            throw new IllegalArgumentException();
                        }
                        receiveData(context, uuid, l, l2, bArrDecode);
                        break;
                        break;
                    case UINT:
                        Long l3 = (Long) intent.getSerializableExtra(Constants.PBL_DATA_OBJECT);
                        if (l3 == null) {
                            throw new IllegalArgumentException();
                        }
                        receiveData(context, uuid, l, l2, l3);
                        break;
                        break;
                    case INT:
                        Integer num = (Integer) intent.getSerializableExtra(Constants.PBL_DATA_OBJECT);
                        if (num == null) {
                            throw new IllegalArgumentException();
                        }
                        receiveData(context, uuid, l, l2, num.intValue());
                        break;
                        break;
                    default:
                        throw new IllegalArgumentException("Invalid type:" + pebbleDataTypeFromByte.toString());
                }
                this.b = intExtra;
                Intent intent2 = new Intent(Constants.INTENT_DL_ACK_DATA);
                intent2.putExtra(Constants.DATA_LOG_UUID, uuid);
                intent2.putExtra(Constants.PBL_DATA_ID, intExtra);
                context.sendBroadcast(intent2);
            }
        }

        private void b(Context context, Intent intent, UUID uuid, Long l, Long l2) {
            onFinishSession(context, uuid, l, l2);
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (this.a.equals((UUID) intent.getSerializableExtra(Constants.APP_UUID))) {
                try {
                    UUID uuid = (UUID) intent.getSerializableExtra(Constants.DATA_LOG_UUID);
                    if (uuid == null) {
                        throw new IllegalArgumentException();
                    }
                    Long l = (Long) intent.getSerializableExtra(Constants.DATA_LOG_TIMESTAMP);
                    if (l == null) {
                        throw new IllegalArgumentException();
                    }
                    Long l2 = (Long) intent.getSerializableExtra(Constants.DATA_LOG_TAG);
                    if (l2 == null) {
                        throw new IllegalArgumentException();
                    }
                    if (intent.getAction() == Constants.INTENT_DL_RECEIVE_DATA) {
                        a(context, intent, uuid, l, l2);
                    } else if (intent.getAction() == Constants.INTENT_DL_FINISH_SESSION) {
                        b(context, intent, uuid, l, l2);
                    }
                } catch (IllegalArgumentException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    public static BroadcastReceiver registerDataLogReceiver(Context context, PebbleDataLogReceiver pebbleDataLogReceiver) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(Constants.INTENT_DL_RECEIVE_DATA);
        intentFilter.addAction(Constants.INTENT_DL_FINISH_SESSION);
        context.registerReceiver(pebbleDataLogReceiver, intentFilter);
        return pebbleDataLogReceiver;
    }

    public static void requestDataLogsForApp(Context context, UUID uuid) {
        Intent intent = new Intent(Constants.INTENT_DL_REQUEST_DATA);
        intent.putExtra(Constants.APP_UUID, uuid);
        context.sendBroadcast(intent);
    }

    public static class FirmwareVersionInfo {
        private final int a;
        private final int b;
        private final int c;
        private final String d;

        FirmwareVersionInfo(int i, int i2, int i3, String str) {
            this.a = i;
            this.b = i2;
            this.c = i3;
            this.d = str;
        }

        public final int getMajor() {
            return this.a;
        }

        public final int getMinor() {
            return this.b;
        }

        public final int getPoint() {
            return this.c;
        }

        public final String getTag() {
            return this.d;
        }
    }

    private static Cursor a(Context context) {
        Cursor cursorQuery = context.getContentResolver().query(Constants.b, null, null, null, null);
        if (cursorQuery != null) {
            if (cursorQuery.moveToFirst() && cursorQuery.getInt(0) == 1) {
                cursorQuery.moveToPrevious();
                return cursorQuery;
            }
            cursorQuery.close();
        }
        return context.getContentResolver().query(Constants.a, null, null, null, null);
    }
}
