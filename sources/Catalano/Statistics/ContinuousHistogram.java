package Catalano.Statistics;

import Catalano.Core.FloatRange;

/* JADX INFO: loaded from: classes.dex */
public class ContinuousHistogram {
    private int[] a;
    private FloatRange b;
    private float c;
    private float d;
    private float e;
    private float f;
    private float g;
    private int h;

    public int[] getValues() {
        return this.a;
    }

    public float getMean() {
        return this.c;
    }

    public float getStdDev() {
        return this.d;
    }

    public float getMedian() {
        return this.e;
    }

    public float getMin() {
        return this.f;
    }

    public float getMax() {
        return this.g;
    }

    public ContinuousHistogram(int[] iArr, FloatRange floatRange) {
        this.a = iArr;
        this.b = floatRange;
        Update();
    }

    public FloatRange getRange(float f) {
        int i = (int) (this.h * (((1.0f - f) / 2.0f) + f));
        int length = this.a.length;
        int i2 = length - 1;
        int i3 = this.h;
        int i4 = 0;
        while (i4 < length) {
            i3 -= this.a[i4];
            if (i3 < i) {
                break;
            }
            i4++;
        }
        int i5 = this.h;
        int i6 = i2;
        while (i6 >= 0) {
            i5 -= this.a[i6];
            if (i5 < i) {
                break;
            }
            i6--;
        }
        return new FloatRange(((i4 / i2) * this.b.length()) + this.b.getMin(), ((i6 / i2) * this.b.length()) + this.b.getMin());
    }

    public void Update() {
        int length = this.a.length;
        int i = length - 1;
        float length2 = this.b.length();
        float min = this.b.getMin();
        this.g = 0.0f;
        this.f = length;
        this.c = 0.0f;
        this.d = 0.0f;
        this.h = 0;
        double d = 0.0d;
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = this.a[i2];
            if (i3 != 0) {
                if (i2 > this.g) {
                    this.g = i2;
                }
                if (i2 < this.f) {
                    this.f = i2;
                }
            }
            this.h += i3;
            d += (((((double) i2) / ((double) i)) * ((double) length2)) + ((double) min)) * ((double) i3);
        }
        if (this.h != 0) {
            this.c = (float) (d / ((double) this.h));
        }
        this.f = ((this.f / i) * length2) + min;
        this.g = ((this.g / i) * length2) + min;
        double d2 = 0.0d;
        for (int i4 = 0; i4 < length; i4++) {
            int i5 = this.a[i4];
            double d3 = (((((double) i4) / ((double) i)) * ((double) length2)) + ((double) min)) - ((double) this.c);
            d2 += d3 * d3 * ((double) i5);
        }
        if (this.h != 0) {
            this.d = (float) Math.sqrt(d2 / ((double) this.h));
        }
        int i6 = this.h / 2;
        int i7 = 0;
        int i8 = 0;
        while (i7 < length) {
            i8 += this.a[i7];
            if (i8 >= i6) {
                break;
            } else {
                i7++;
            }
        }
        this.e = ((i7 / i) * length2) + min;
    }
}
