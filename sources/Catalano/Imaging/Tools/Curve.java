package Catalano.Imaging.Tools;

import Catalano.Core.FloatPoint;
import java.io.Serializable;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class Curve implements Serializable {
    public float[] x;
    public float[] y;

    public float[] getX() {
        return this.x;
    }

    public void setX(float[] fArr) {
        this.x = fArr;
    }

    public float[] getY() {
        return this.y;
    }

    public void setY(float[] fArr) {
        this.y = fArr;
    }

    public void setXY(float[] fArr, float[] fArr2) {
        this.x = fArr;
        this.y = fArr2;
    }

    public Curve() {
        this.x = new float[0];
        this.y = new float[0];
    }

    public Curve(Curve curve) {
        this.x = (float[]) curve.x.clone();
        this.y = (float[]) curve.y.clone();
    }

    public Curve(float[] fArr, float[] fArr2) {
        this.x = fArr;
        this.y = fArr2;
    }

    public void addPoint(List<FloatPoint> list) {
        Iterator<FloatPoint> it = list.iterator();
        while (it.hasNext()) {
            addPoint(it.next());
        }
    }

    public void addPoint(FloatPoint floatPoint) {
        addPoint(floatPoint.x, floatPoint.y);
    }

    public void addPoint(float f, float f2) {
        int i;
        int length = this.x.length;
        float[] fArr = new float[length + 1];
        float[] fArr2 = new float[length + 1];
        int i2 = 0;
        int i3 = 0;
        int i4 = -1;
        while (i2 < length) {
            if (i4 != -1 || this.x[i2] <= f) {
                int i5 = i3;
                i3 = i4;
                i = i5;
            } else {
                fArr[i3] = f;
                fArr2[i3] = f2;
                i = i3 + 1;
            }
            fArr[i] = this.x[i2];
            fArr2[i] = this.y[i2];
            int i6 = i + 1;
            i2++;
            i4 = i3;
            i3 = i6;
        }
        if (i4 == -1) {
            fArr[i3] = f;
            fArr2[i3] = f2;
        }
        this.x = fArr;
        this.y = fArr2;
    }

    public void removePoint(int i) {
        int i2 = 0;
        int length = this.x.length;
        if (length > 2) {
            float[] fArr = new float[length - 1];
            float[] fArr2 = new float[length - 1];
            int i3 = 0;
            while (i3 < length - 1) {
                if (i3 == i) {
                    i2++;
                }
                fArr[i3] = this.x[i2];
                fArr2[i3] = this.y[i2];
                i3++;
                i2++;
            }
            this.x = fArr;
            this.y = fArr2;
        }
    }

    public void clear() {
        this.y = null;
        this.x = null;
    }

    public int[] makeLut() {
        int length = this.x.length;
        float[] fArr = new float[length + 2];
        float[] fArr2 = new float[length + 2];
        System.arraycopy(this.x, 0, fArr, 1, length);
        System.arraycopy(this.y, 0, fArr2, 1, length);
        fArr[0] = fArr[1];
        fArr2[0] = fArr2[1];
        fArr[length + 1] = fArr[length];
        fArr2[length + 1] = fArr2[length];
        int[] iArr = new int[256];
        for (int i = 0; i < 1024; i++) {
            float f = i / 1024.0f;
            int iSpline = (int) ((Spline(f, fArr.length, fArr) * 255.0f) + 0.5f);
            int iSpline2 = (int) ((Spline(f, fArr.length, fArr2) * 255.0f) + 0.5f);
            if (iSpline > 255) {
                iSpline = 255;
            }
            if (iSpline < 0) {
                iSpline = 0;
            }
            if (iSpline2 > 255) {
                iSpline2 = 255;
            }
            if (iSpline2 < 0) {
                iSpline2 = 0;
            }
            iArr[iSpline] = iSpline2;
        }
        return iArr;
    }

    public static float Spline(float f, int i, float[] fArr) {
        int i2 = i - 3;
        if (i2 < 1) {
            throw new IllegalArgumentException("Too few knots in spline");
        }
        float f2 = f > 1.0f ? 1.0f : f;
        if (f2 < 0.0f) {
            f2 = 0.0f;
        }
        float f3 = i2 * f2;
        int i3 = (int) f3;
        if (i3 > i - 4) {
            i3 = i - 4;
        }
        float f4 = f3 - i3;
        float f5 = fArr[i3];
        float f6 = fArr[i3 + 1];
        float f7 = fArr[i3 + 2];
        float f8 = fArr[i3 + 3];
        return (f8 * 0.0f) + (1.0f * f6) + (f5 * 0.0f) + (0.0f * f7) + ((((((((-0.5f) * f5) + (1.5f * f6) + ((-1.5f) * f7) + (0.5f * f8)) * f4) + (1.0f * f5) + ((-2.5f) * f6) + (2.0f * f7) + ((-0.5f) * f8)) * f4) + ((-0.5f) * f5) + (0.0f * f6) + (0.5f * f7) + (0.0f * f8)) * f4);
    }

    public static float Spline(float f, int i, int[] iArr, int[] iArr2) {
        int i2;
        float f2;
        int i3 = i - 3;
        if (i3 < 1) {
            throw new IllegalArgumentException("Too few knots in spline");
        }
        int i4 = 0;
        while (i4 < i3 && iArr[i4 + 1] <= f) {
            i4++;
        }
        if (i4 > i - 3) {
            i4 = i - 3;
        }
        float f3 = (f - iArr[i4]) / (iArr[i4 + 1] - iArr[i4]);
        int i5 = i4 - 1;
        if (i5 < 0) {
            i2 = 0;
            f2 = 0.0f;
        } else {
            i2 = i5;
            f2 = f3;
        }
        float f4 = iArr2[i2];
        float f5 = iArr2[i2 + 1];
        float f6 = iArr2[i2 + 2];
        float f7 = iArr2[i2 + 3];
        return (f2 * (((((((-0.5f) * f4) + (1.5f * f5) + ((-1.5f) * f6) + (0.5f * f7)) * f2) + (1.0f * f4) + ((-2.5f) * f5) + (2.0f * f6) + ((-0.5f) * f7)) * f2) + ((-0.5f) * f4) + (0.0f * f5) + (0.5f * f6) + (0.0f * f7))) + (f7 * 0.0f) + (f4 * 0.0f) + (f5 * 1.0f) + (0.0f * f6);
    }
}
