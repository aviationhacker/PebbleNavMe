package com.jabistudio.androidjhlabs.filter;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;

/* JADX INFO: loaded from: classes.dex */
public class MotionBlurOp {
    private float a = 0.5f;
    private float b = 0.5f;
    private float c;
    private float d;
    private float e;
    private float f;

    public MotionBlurOp() {
    }

    public MotionBlurOp(float f, float f2, float f3, float f4) {
        this.c = f;
        this.d = f2;
        this.e = f3;
        this.f = f4;
    }

    public void setAngle(float f) {
        this.d = f;
    }

    public float getAngle() {
        return this.d;
    }

    public void setDistance(float f) {
        this.c = f;
    }

    public float getDistance() {
        return this.c;
    }

    public void setRotation(float f) {
        this.e = f;
    }

    public float getRotation() {
        return this.e;
    }

    public void setZoom(float f) {
        this.f = f;
    }

    public float getZoom() {
        return this.f;
    }

    public void setCentreX(float f) {
        this.a = f;
    }

    public float getCentreX() {
        return this.a;
    }

    public void setCentreY(float f) {
        this.b = f;
    }

    public float getCentreY() {
        return this.b;
    }

    public void setCentre(float f, float f2) {
        this.a = f;
        this.b = f2;
    }

    private int a(int i) {
        int i2 = 1;
        int i3 = 0;
        while (i2 < i) {
            i2 *= 2;
            i3++;
        }
        return i3;
    }

    public int[] filter(int[] iArr, int i, int i2) {
        int[] iArr2 = new int[i * i2];
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iArr, i, i2, Bitmap.Config.ARGB_8888);
        Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(iArr, i, i2, Bitmap.Config.ARGB_8888);
        Bitmap bitmapCopy = bitmapCreateBitmap.copy(Bitmap.Config.ARGB_8888, true);
        float f = i * this.a;
        float f2 = i2 * this.b;
        float fSqrt = (float) Math.sqrt((f * f) + (f2 * f2));
        float fCos = (float) (((double) this.c) * Math.cos(this.d));
        float f3 = (float) (((double) this.c) * (-Math.sin(this.d)));
        float f4 = this.f;
        float f5 = this.e;
        float fAbs = (fSqrt * this.f) + this.c + Math.abs(this.e * fSqrt);
        int iA = a((int) fAbs);
        float f6 = fCos / fAbs;
        float f7 = f3 / fAbs;
        float f8 = f4 / fAbs;
        float f9 = f5 / fAbs;
        if (iA == 0) {
            bitmapCopy.getPixels(iArr2, 0, i, 0, 0, i, i2);
            bitmapCreateBitmap.recycle();
            bitmapCreateBitmap2.recycle();
            bitmapCopy.recycle();
        } else {
            Bitmap bitmapCopy2 = bitmapCreateBitmap.copy(Bitmap.Config.ARGB_8888, true);
            Paint paint = new Paint();
            paint.setAlpha(128);
            paint.setAntiAlias(true);
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_OVER));
            int i3 = 0;
            Bitmap bitmap = bitmapCreateBitmap2;
            Bitmap bitmap2 = bitmapCopy2;
            float f10 = f8;
            float f11 = f6;
            Bitmap bitmap3 = null;
            float f12 = f9;
            float f13 = f7;
            while (i3 < iA) {
                Canvas canvas = new Canvas(bitmapCopy);
                canvas.translate(f + f11, f2 + f13);
                canvas.scale((float) (1.0001d + ((double) f10)), (float) (1.0001d + ((double) f10)), 0.5f, 0.5f);
                canvas.scale((float) (1.0001d + ((double) f10)), (float) (1.0001d + ((double) f10)));
                if (this.e != 0.0f) {
                    canvas.rotate(f12);
                }
                canvas.translate(-f, -f2);
                canvas.drawBitmap(bitmap, 0.0f, 0.0f, paint);
                f11 *= 2.0f;
                f13 *= 2.0f;
                f10 *= 2.0f;
                f12 *= 2.0f;
                i3++;
                bitmap3 = bitmapCopy;
                bitmap = bitmap2;
                Bitmap bitmap4 = bitmap2;
                bitmap2 = bitmapCopy;
                bitmapCopy = bitmap4;
            }
            bitmapCopy.getPixels(iArr2, 0, i, 0, 0, i, i2);
            if (bitmap3 != null) {
                bitmap3.recycle();
            }
            bitmapCreateBitmap.recycle();
            bitmap.recycle();
            bitmap2.recycle();
            bitmapCopy.recycle();
        }
        return iArr2;
    }

    public String toString() {
        return "Blur/Faster Motion Blur...";
    }
}
