package com.batescorp.pebble.nav.util;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.net.Uri;
import android.os.Environment;
import android.support.v4.view.ViewCompat;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public abstract class ImageUtil {
    public static final String TAG = "ImageUtil";

    public static Bitmap getResizedBitmap(Bitmap bitmap, int i, int i2) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        Matrix matrix = new Matrix();
        matrix.postScale(i / width, i2 / height);
        return Bitmap.createBitmap(bitmap, 0, 0, width, height, matrix, false);
    }

    public static Bitmap createBlackWhite(Bitmap bitmap) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        int width = bitmapCreateBitmap.getWidth();
        int height = bitmapCreateBitmap.getHeight();
        bitmapCreateBitmap.getPixels(new int[width * height], 0, width, 0, 0, width, height);
        for (int i = 0; i < height; i++) {
            for (int i2 = 0; i2 < width; i2++) {
                if ((bitmap.getPixel(i2, i) & 255) < 128) {
                    bitmapCreateBitmap.setPixel(i2, i, ViewCompat.MEASURED_STATE_MASK);
                } else {
                    bitmapCreateBitmap.setPixel(i2, i, -1);
                }
            }
        }
        return bitmapCreateBitmap;
    }

    public static double compare(Bitmap bitmap, Bitmap bitmap2) {
        int[] iArr = new int[bitmap.getHeight() * bitmap.getWidth()];
        int[] iArr2 = new int[bitmap2.getHeight() * bitmap2.getWidth()];
        bitmap.getPixels(iArr, 0, bitmap.getWidth(), 0, 0, bitmap.getHeight(), bitmap.getWidth());
        bitmap2.getPixels(iArr2, 0, bitmap2.getWidth(), 0, 0, bitmap2.getHeight(), bitmap2.getWidth());
        int i = 0;
        for (int i2 = 0; i2 < iArr.length; i2++) {
            if (iArr[i2] == iArr2[i2]) {
                i++;
            }
        }
        return (((double) i) / ((double) iArr.length)) * 100.0d;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0082 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v20 */
    /* JADX WARN: Type inference failed for: r1v21 */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v8, types: [java.io.FileOutputStream] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void save(android.content.Context r4, byte[] r5, java.lang.String r6) throws java.lang.Throwable {
        /*
            java.io.File r0 = a()
            java.lang.String r1 = "ImageUtil"
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Dir "
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r3 = r0.getAbsolutePath()
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r2 = r2.toString()
            android.util.Log.d(r1, r2)
            boolean r1 = r0.mkdirs()
            if (r1 == 0) goto L29
            a(r4, r0)
        L29:
            java.io.File r3 = getFile(r6)
            java.lang.String r0 = "ImageUtil"
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "ICON "
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r2 = r3.getAbsolutePath()
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r1 = r1.toString()
            android.util.Log.d(r0, r1)
            r2 = 0
            java.io.FileOutputStream r1 = new java.io.FileOutputStream     // Catch: java.lang.Exception -> L67 java.lang.Throwable -> L7e
            r1.<init>(r3)     // Catch: java.lang.Exception -> L67 java.lang.Throwable -> L7e
            r1.write(r5)     // Catch: java.lang.Throwable -> L92 java.lang.Exception -> L94
            if (r1 == 0) goto L5a
            r1.flush()     // Catch: java.lang.Exception -> L5e
            r1.close()     // Catch: java.lang.Exception -> L5e
        L5a:
            a(r4, r3)
            return
        L5e:
            r0 = move-exception
            java.lang.String r1 = "ImageUtil"
            java.lang.String r2 = "Failed to save image"
            android.util.Log.e(r1, r2, r0)
            goto L5a
        L67:
            r0 = move-exception
            r1 = r2
        L69:
            r0.printStackTrace()     // Catch: java.lang.Throwable -> L92
            if (r1 == 0) goto L5a
            r1.flush()     // Catch: java.lang.Exception -> L75
            r1.close()     // Catch: java.lang.Exception -> L75
            goto L5a
        L75:
            r0 = move-exception
            java.lang.String r1 = "ImageUtil"
            java.lang.String r2 = "Failed to save image"
            android.util.Log.e(r1, r2, r0)
            goto L5a
        L7e:
            r0 = move-exception
            r1 = r2
        L80:
            if (r1 == 0) goto L88
            r1.flush()     // Catch: java.lang.Exception -> L89
            r1.close()     // Catch: java.lang.Exception -> L89
        L88:
            throw r0
        L89:
            r1 = move-exception
            java.lang.String r2 = "ImageUtil"
            java.lang.String r3 = "Failed to save image"
            android.util.Log.e(r2, r3, r1)
            goto L88
        L92:
            r0 = move-exception
            goto L80
        L94:
            r0 = move-exception
            goto L69
        */
        throw new UnsupportedOperationException("Method not decompiled: com.batescorp.pebble.nav.util.ImageUtil.save(android.content.Context, byte[], java.lang.String):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0086 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v20 */
    /* JADX WARN: Type inference failed for: r1v21 */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v8, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r5v0, types: [android.graphics.Bitmap] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void save(android.content.Context r4, android.graphics.Bitmap r5, java.lang.String r6) throws java.lang.Throwable {
        /*
            java.io.File r0 = a()
            java.lang.String r1 = "ImageUtil"
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Dir "
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r3 = r0.getAbsolutePath()
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r2 = r2.toString()
            android.util.Log.d(r1, r2)
            boolean r1 = r0.mkdirs()
            if (r1 == 0) goto L29
            a(r4, r0)
        L29:
            java.io.File r3 = getFile(r6)
            java.lang.String r0 = "ImageUtil"
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "ICON "
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r2 = r3.getAbsolutePath()
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r1 = r1.toString()
            android.util.Log.d(r0, r1)
            r2 = 0
            java.io.FileOutputStream r1 = new java.io.FileOutputStream     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L82
            r1.<init>(r3)     // Catch: java.lang.Exception -> L6b java.lang.Throwable -> L82
            android.graphics.Bitmap$CompressFormat r0 = android.graphics.Bitmap.CompressFormat.PNG     // Catch: java.lang.Throwable -> L96 java.lang.Exception -> L98
            r2 = 85
            r5.compress(r0, r2, r1)     // Catch: java.lang.Throwable -> L96 java.lang.Exception -> L98
            if (r1 == 0) goto L5e
            r1.flush()     // Catch: java.lang.Exception -> L62
            r1.close()     // Catch: java.lang.Exception -> L62
        L5e:
            a(r4, r3)
            return
        L62:
            r0 = move-exception
            java.lang.String r1 = "ImageUtil"
            java.lang.String r2 = "Failed to save image"
            android.util.Log.e(r1, r2, r0)
            goto L5e
        L6b:
            r0 = move-exception
            r1 = r2
        L6d:
            r0.printStackTrace()     // Catch: java.lang.Throwable -> L96
            if (r1 == 0) goto L5e
            r1.flush()     // Catch: java.lang.Exception -> L79
            r1.close()     // Catch: java.lang.Exception -> L79
            goto L5e
        L79:
            r0 = move-exception
            java.lang.String r1 = "ImageUtil"
            java.lang.String r2 = "Failed to save image"
            android.util.Log.e(r1, r2, r0)
            goto L5e
        L82:
            r0 = move-exception
            r1 = r2
        L84:
            if (r1 == 0) goto L8c
            r1.flush()     // Catch: java.lang.Exception -> L8d
            r1.close()     // Catch: java.lang.Exception -> L8d
        L8c:
            throw r0
        L8d:
            r1 = move-exception
            java.lang.String r2 = "ImageUtil"
            java.lang.String r3 = "Failed to save image"
            android.util.Log.e(r2, r3, r1)
            goto L8c
        L96:
            r0 = move-exception
            goto L84
        L98:
            r0 = move-exception
            goto L6d
        */
        throw new UnsupportedOperationException("Method not decompiled: com.batescorp.pebble.nav.util.ImageUtil.save(android.content.Context, android.graphics.Bitmap, java.lang.String):void");
    }

    public static File getFile(String str) {
        return new File(a(), str + ".png");
    }

    private static void a(Context context, File file) {
        Intent intent = new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE");
        intent.setData(Uri.fromFile(file));
        context.sendBroadcast(intent);
    }

    private static File a() {
        return new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES).getAbsolutePath() + File.separator + "NavMe");
    }
}
