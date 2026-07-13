package com.jabistudio.androidjhlabs.filter.util;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;

/* JADX INFO: loaded from: classes.dex */
public class AndroidUtils {
    public static int dipTopx(float f, Context context) {
        return (int) TypedValue.applyDimension(1, f, context.getResources().getDisplayMetrics());
    }

    public static float pxTodip(int i, Context context) {
        return i / context.getResources().getDisplayMetrics().density;
    }

    public static Bitmap drawableToBitmap(Drawable drawable) {
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(intrinsicWidth, intrinsicHeight, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        drawable.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
        drawable.draw(canvas);
        return bitmapCreateBitmap;
    }

    public static int[] drawableToIntArray(Drawable drawable) {
        Bitmap bitmapDrawableToBitmap = drawableToBitmap(drawable);
        int width = bitmapDrawableToBitmap.getWidth();
        int height = bitmapDrawableToBitmap.getHeight();
        int[] iArr = new int[width * height];
        bitmapDrawableToBitmap.getPixels(iArr, 0, width, 0, 0, width, height);
        return iArr;
    }

    public static int[] bitmapToIntArray(Bitmap bitmap) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int[] iArr = new int[width * height];
        bitmap.getPixels(iArr, 0, width, 0, 0, width, height);
        return iArr;
    }

    public static int getBitmapOfWidth(Resources resources, int i) {
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeResource(resources, i, options);
            return options.outWidth;
        } catch (Exception e) {
            return 0;
        }
    }

    public static int getBitmapOfHeight(Resources resources, int i) {
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeResource(resources, i, options);
            return options.outHeight;
        } catch (Exception e) {
            return 0;
        }
    }
}
