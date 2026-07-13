package com.jabistudio.androidjhlabs.filter;

import android.graphics.Point;
import com.jabistudio.androidjhlabs.filter.math.ImageMath;

/* JADX INFO: loaded from: classes.dex */
public class FieldWarpFilter extends TransformFilter {
    private float a = 1.0f;
    private float b = 1.0f;
    private float c = 2.0f;
    private Line[] d;
    private Line[] e;
    private Line[] f;

    public static class Line {
        public int dx;
        public int dy;
        public float length;
        public float lengthSquared;
        public int x1;
        public int x2;
        public int y1;
        public int y2;

        public Line(int i, int i2, int i3, int i4) {
            this.x1 = i;
            this.y1 = i2;
            this.x2 = i3;
            this.y2 = i4;
        }

        public void setup() {
            this.dx = this.x2 - this.x1;
            this.dy = this.y2 - this.y1;
            this.lengthSquared = (this.dx * this.dx) + (this.dy * this.dy);
            this.length = (float) Math.sqrt(this.lengthSquared);
        }
    }

    public void setAmount(float f) {
        this.a = f;
    }

    public float getAmount() {
        return this.a;
    }

    public void setPower(float f) {
        this.b = f;
    }

    public float getPower() {
        return this.b;
    }

    public void setStrength(float f) {
        this.c = f;
    }

    public float getStrength() {
        return this.c;
    }

    public void setInLines(Line[] lineArr) {
        this.d = lineArr;
    }

    public Line[] getInLines() {
        return this.d;
    }

    public void setOutLines(Line[] lineArr) {
        this.e = lineArr;
    }

    public Line[] getOutLines() {
        return this.e;
    }

    protected void transform(int i, int i2, Point point) {
    }

    @Override // com.jabistudio.androidjhlabs.filter.TransformFilter
    protected void transformInverse(int i, int i2, float[] fArr) {
        float fSqrt;
        float f = (1.5f * this.c) + 0.5f;
        float f2 = this.b;
        float f3 = 0.0f;
        float f4 = 0.0f;
        float f5 = 0.0f;
        for (int i3 = 0; i3 < this.d.length; i3++) {
            Line line = this.d[i3];
            Line line2 = this.f[i3];
            float f6 = i - line2.x1;
            float f7 = i2 - line2.y1;
            float f8 = ((line2.dx * f6) + (line2.dy * f7)) / line2.lengthSquared;
            float f9 = ((line2.dx * f7) - (line2.dy * f6)) / line2.length;
            if (f8 <= 0.0f) {
                fSqrt = (float) Math.sqrt((f6 * f6) + (f7 * f7));
            } else if (f8 >= 1.0f) {
                float f10 = i - line2.x2;
                float f11 = i2 - line2.y2;
                fSqrt = (float) Math.sqrt((f10 * f10) + (f11 * f11));
            } else {
                fSqrt = f9 >= 0.0f ? f9 : -f9;
            }
            float f12 = (line.x1 + (line.dx * f8)) - ((line.dy * f9) / line.length);
            float f13 = ((f9 * line.dx) / line.length) + (f8 * line.dy) + line.y1;
            float fPow = (float) Math.pow(Math.pow(line2.length, f2) / ((double) (fSqrt + 0.001f)), f);
            f4 += (f12 - i) * fPow;
            f5 += (f13 - i2) * fPow;
            f3 += fPow;
        }
        fArr[0] = (f4 / f3) + i + 0.5f;
        fArr[1] = (f5 / f3) + i2 + 0.5f;
    }

    @Override // com.jabistudio.androidjhlabs.filter.TransformFilter
    public int[] filter(int[] iArr, int i, int i2) {
        if (this.d != null && this.e != null) {
            this.f = new Line[this.d.length];
            for (int i3 = 0; i3 < this.d.length; i3++) {
                Line[] lineArr = this.f;
                Line line = new Line(ImageMath.lerp(this.a, this.d[i3].x1, this.e[i3].x1), ImageMath.lerp(this.a, this.d[i3].y1, this.e[i3].y1), ImageMath.lerp(this.a, this.d[i3].x2, this.e[i3].x2), ImageMath.lerp(this.a, this.d[i3].y2, this.e[i3].y2));
                lineArr[i3] = line;
                line.setup();
                this.d[i3].setup();
            }
            int[] iArrFilter = super.filter(iArr, i, i2);
            this.f = null;
            return iArrFilter;
        }
        return iArr;
    }

    public String toString() {
        return "Distort/Field Warp...";
    }
}
