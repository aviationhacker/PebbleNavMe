package com.jabistudio.androidjhlabs.filter;

import android.graphics.Point;
import android.graphics.Rect;

/* JADX INFO: loaded from: classes.dex */
public class RotateFilter extends TransformFilter {
    private float a;
    private float b;
    private float c;
    private boolean d;

    public RotateFilter() {
        this(3.1415927f);
    }

    public RotateFilter(float f) {
        this(f, true);
    }

    public RotateFilter(float f, boolean z) {
        this.d = true;
        setAngle(f);
        this.d = z;
    }

    public void setAngle(float f) {
        this.a = f;
        this.b = (float) Math.cos(this.a);
        this.c = (float) Math.sin(this.a);
    }

    public float getAngle() {
        return this.a;
    }

    @Override // com.jabistudio.androidjhlabs.filter.TransformFilter
    protected void transformSpace(Rect rect) {
        int iMax = Integer.MIN_VALUE;
        if (this.d) {
            Point point = new Point(0, 0);
            int i = rect.right;
            int i2 = rect.bottom;
            int i3 = rect.left;
            int i4 = rect.top;
            int iMin = Integer.MAX_VALUE;
            int iMin2 = Integer.MAX_VALUE;
            int iMax2 = Integer.MIN_VALUE;
            for (int i5 = 0; i5 < 4; i5++) {
                switch (i5) {
                    case 0:
                        a(i3, i4, point);
                        break;
                    case 1:
                        a(i3 + i, i4, point);
                        break;
                    case 2:
                        a(i3, i4 + i2, point);
                        break;
                    case 3:
                        a(i3 + i, i4 + i2, point);
                        break;
                }
                iMin2 = Math.min(iMin2, point.x);
                iMin = Math.min(iMin, point.y);
                iMax2 = Math.max(iMax2, point.x);
                iMax = Math.max(iMax, point.y);
            }
            rect.left = iMin2;
            rect.top = iMin;
            rect.right = iMax2 - rect.left;
            rect.bottom = iMax - rect.top;
        }
    }

    private void a(int i, int i2, Point point) {
        point.x = (int) ((i * this.b) + (i2 * this.c));
        point.y = (int) ((i2 * this.b) - (i * this.c));
    }

    @Override // com.jabistudio.androidjhlabs.filter.TransformFilter
    protected void transformInverse(int i, int i2, float[] fArr) {
        fArr[0] = (i * this.b) - (i2 * this.c);
        fArr[1] = (i2 * this.b) + (i * this.c);
    }

    public String toString() {
        return "Rotate " + ((int) (((double) (this.a * 180.0f)) / 3.141592653589793d));
    }
}
