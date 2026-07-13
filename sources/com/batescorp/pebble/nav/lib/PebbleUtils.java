package com.batescorp.pebble.nav.lib;

import android.app.Activity;
import android.app.DownloadManager;
import android.content.Intent;
import android.net.Uri;
import android.util.Log;
import android.widget.Toast;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public class PebbleUtils {
    private static final String[] a = {"com.getpebble.android", "com.getpebble.android.basalt"};

    /* JADX WARN: Removed duplicated region for block: B:22:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:80:? A[Catch: Throwable -> 0x00b2, all -> 0x00e4, SYNTHETIC, TRY_ENTER, TRY_LEAVE, TryCatch #5 {all -> 0x00e4, blocks: (B:7:0x002f, B:9:0x005b, B:10:0x0077, B:39:0x00cf, B:51:0x00e7, B:48:0x00e0, B:23:0x00ae, B:54:0x00f0, B:53:0x00ec, B:24:0x00b1), top: B:71:0x002f }] */
    /* JADX WARN: Removed duplicated region for block: B:83:? A[Catch: IOException -> 0x00c0, SYNTHETIC, TRY_ENTER, TRY_LEAVE, TryCatch #9 {IOException -> 0x00c0, blocks: (B:5:0x0022, B:42:0x00d6, B:56:0x00f4, B:45:0x00db, B:31:0x00bc, B:59:0x00fd, B:58:0x00f9, B:32:0x00bf), top: B:74:0x0022, inners: #1, #10 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.io.File a(android.app.Activity r10, java.lang.String r11) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 260
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.batescorp.pebble.nav.lib.PebbleUtils.a(android.app.Activity, java.lang.String):java.io.File");
    }

    public static void sendToDownloads(Activity activity, String str) throws Throwable {
        File fileA = a(activity, str);
        ((DownloadManager) activity.getSystemService("download")).addCompletedDownload(fileA.getName(), fileA.getName(), true, "application/octet-stream", fileA.getAbsolutePath(), fileA.length(), true);
    }

    public static void sendToPebbleFromResource(Activity activity, String str) throws Throwable {
        boolean z;
        Log.w("PebbleUtils", "copy_watchface_from_assets()");
        File fileA = a(activity, str);
        if (fileA == null) {
            Log.w("PebbleUtils", "Failed to save file");
            Toast.makeText(activity, "pbw not saved", 0).show();
            return;
        }
        String[] strArr = a;
        int length = strArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                z = false;
                break;
            } else if (!a(strArr[i], activity, fileA)) {
                i++;
            } else {
                z = true;
                break;
            }
        }
        if (!z) {
            Log.w("PebbleUtils", "pebble_app_not_installed");
            Toast.makeText(activity, "Pebble app not loaded", 0).show();
        }
    }

    private static boolean a(String str, Activity activity, File file) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.fromFile(file));
        intent.setClassName(str, "com.getpebble.android.ui.UpdateActivity");
        Log.i("PebbleUtils", "launch pebble to load pbw using " + str);
        try {
            activity.startActivity(intent);
            return true;
        } catch (Exception e) {
            Log.w("PebbleUtils", "pebbleApp not found " + str, e);
            return false;
        }
    }
}
