package com.google.android.gms.internal;

import android.graphics.Canvas;
import android.graphics.Path;
import android.net.Uri;
import android.widget.ImageView;

/* JADX INFO: loaded from: classes.dex */
public final class zzlu extends ImageView {
    private Uri a;
    private int b;
    private int c;
    private zza d;
    private int e;
    private float f;

    public interface zza {
        Path zzk(int i, int i2);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.d != null) {
            canvas.clipPath(this.d.zzk(getWidth(), getHeight()));
        }
        super.onDraw(canvas);
        if (this.c != 0) {
            canvas.drawColor(this.c);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i, int i2) {
        int measuredWidth;
        int measuredHeight;
        super.onMeasure(i, i2);
        switch (this.e) {
            case 1:
                measuredHeight = getMeasuredHeight();
                measuredWidth = (int) (measuredHeight * this.f);
                break;
            case 2:
                measuredWidth = getMeasuredWidth();
                measuredHeight = (int) (measuredWidth / this.f);
                break;
            default:
                return;
        }
        setMeasuredDimension(measuredWidth, measuredHeight);
    }

    public void zzbA(int i) {
        this.b = i;
    }

    public void zzj(Uri uri) {
        this.a = uri;
    }

    public int zzoH() {
        return this.b;
    }
}
