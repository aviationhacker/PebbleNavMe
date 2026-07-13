package Catalano.Imaging.Corners;

import Catalano.Core.ArraysUtil;
import Catalano.Core.IntPoint;
import Catalano.Imaging.FastBitmap;
import Catalano.Math.Functions.Gaussian;
import java.lang.reflect.Array;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class HarrisCornersDetector implements ICornersDetector {
    private float[] f;
    private HarrisCornerMeasure a = HarrisCornerMeasure.Harris;
    private float b = 0.04f;
    private float c = 20000.0f;
    private int d = 3;
    private double e = 1.2d;
    private int g = 7;

    public enum HarrisCornerMeasure {
        Harris,
        Noble
    }

    public HarrisCornerMeasure getMeasure() {
        return this.a;
    }

    public void setMeasure(HarrisCornerMeasure harrisCornerMeasure) {
        this.a = harrisCornerMeasure;
    }

    public int getSuppression() {
        return this.d;
    }

    public void setSuppression(int i) {
        this.d = i;
    }

    public float getK() {
        return this.b;
    }

    public void setK(float f) {
        this.b = f;
    }

    public float getThreshold() {
        return this.c;
    }

    public void setThreshold(float f) {
        this.c = f;
    }

    public double getSigma() {
        return this.e;
    }

    public void setSigma(double d) {
        this.e = d;
    }

    public HarrisCornersDetector() {
        a(HarrisCornerMeasure.Harris, this.b, this.c, this.e, this.d, this.g);
    }

    public HarrisCornersDetector(float f) {
        a(HarrisCornerMeasure.Harris, f, this.c, this.e, this.d, this.g);
    }

    public HarrisCornersDetector(float f, float f2) {
        a(HarrisCornerMeasure.Harris, f, f2, this.e, this.d, this.g);
    }

    public HarrisCornersDetector(float f, float f2, double d) {
        a(HarrisCornerMeasure.Harris, f, f2, d, this.d, this.g);
    }

    public HarrisCornersDetector(float f, float f2, double d, int i) {
        a(HarrisCornerMeasure.Harris, f, f2, d, i, this.g);
    }

    public HarrisCornersDetector(HarrisCornerMeasure harrisCornerMeasure, float f, double d, int i) {
        a(harrisCornerMeasure, this.b, f, d, i, this.g);
    }

    public HarrisCornersDetector(HarrisCornerMeasure harrisCornerMeasure, float f, double d) {
        a(harrisCornerMeasure, this.b, f, d, this.d, this.g);
    }

    public HarrisCornersDetector(HarrisCornerMeasure harrisCornerMeasure, float f) {
        a(harrisCornerMeasure, this.b, f, this.e, this.d, this.g);
    }

    public HarrisCornersDetector(HarrisCornerMeasure harrisCornerMeasure) {
        a(harrisCornerMeasure, this.b, this.c, this.e, this.d, this.g);
    }

    private void a(HarrisCornerMeasure harrisCornerMeasure, float f, float f2, double d, int i, int i2) {
        this.a = harrisCornerMeasure;
        this.c = f2;
        this.b = f;
        this.d = i;
        this.e = d;
        this.g = i2;
        a();
    }

    private void a() {
        this.f = ArraysUtil.toFloat(new Gaussian(this.e).Kernel1D(this.g));
    }

    @Override // Catalano.Imaging.Corners.ICornersDetector
    public ArrayList<IntPoint> ProcessImage(FastBitmap fastBitmap) {
        float f;
        float f2;
        if (!fastBitmap.isGrayscale()) {
            FastBitmap fastBitmap2 = new FastBitmap(fastBitmap);
            fastBitmap2.toGrayscale();
            fastBitmap = fastBitmap2;
        }
        int width = fastBitmap.getWidth();
        int height = fastBitmap.getHeight();
        float[][] fArr = (float[][]) Array.newInstance((Class<?>) Float.TYPE, height, width);
        float[][] fArr2 = (float[][]) Array.newInstance((Class<?>) Float.TYPE, height, width);
        float[][] fArr3 = (float[][]) Array.newInstance((Class<?>) Float.TYPE, height, width);
        int i = 1;
        while (true) {
            int i2 = i;
            if (i2 >= height - 1) {
                break;
            }
            for (int i3 = 1; i3 < width - 1; i3++) {
                int gray = fastBitmap.getGray(i2 - 1, i3 + 1);
                int gray2 = fastBitmap.getGray(i2, i3 + 1);
                int gray3 = fastBitmap.getGray(i2 + 1, i3 + 1);
                int gray4 = fastBitmap.getGray(i2 - 1, i3 - 1);
                int gray5 = fastBitmap.getGray(i2, i3 - 1);
                int gray6 = fastBitmap.getGray(i2 + 1, i3 - 1);
                float f3 = (((gray2 + gray) + gray3) - ((gray5 + gray4) + gray6)) * 0.16666667f;
                float gray7 = ((gray3 + (gray6 + fastBitmap.getGray(i2 + 1, i3))) - (gray + (gray4 + fastBitmap.getGray(i2 - 1, i3)))) * 0.16666667f;
                fArr[i2][i3] = f3 * f3;
                fArr2[i2][i3] = gray7 * gray7;
                fArr3[i2][i3] = gray7 * f3;
            }
            i = i2 + 1;
        }
        if (this.e > 0.0d) {
            float[][] fArr4 = (float[][]) Array.newInstance((Class<?>) Float.TYPE, height, width);
            a(fArr, fArr4, this.f);
            a(fArr2, fArr4, this.f);
            a(fArr3, fArr4, this.f);
        }
        float[][] fArr5 = (float[][]) Array.newInstance((Class<?>) Float.TYPE, height, width);
        for (int i4 = 0; i4 < height; i4++) {
            for (int i5 = 0; i5 < width; i5++) {
                float f4 = fArr[i4][i5];
                float f5 = fArr2[i4][i5];
                float f6 = fArr3[i4][i5];
                if (this.a == HarrisCornerMeasure.Harris) {
                    f2 = ((f4 * f5) - (f6 * f6)) - (((f4 + f5) * (f4 + f5)) * this.b);
                } else {
                    f2 = ((f4 * f5) - (f6 * f6)) / ((f4 + f5) + 1.1920929E-7f);
                }
                if (f2 > this.c) {
                    fArr5[i4][i5] = f2;
                }
            }
        }
        ArrayList<IntPoint> arrayList = new ArrayList<>();
        int i6 = this.d;
        int i7 = height - this.d;
        for (int i8 = i6; i8 < i7; i8++) {
            int i9 = this.d;
            int i10 = width - this.d;
            for (int i11 = i9; i11 < i10; i11++) {
                float f7 = fArr5[i8][i11];
                int i12 = -this.d;
                while (f7 != 0.0f && i12 <= this.d) {
                    int i13 = -this.d;
                    while (true) {
                        if (i13 > this.d) {
                            f = f7;
                            break;
                        }
                        if (fArr5[i8 + i12][i11 + i13] <= f7) {
                            i13++;
                        } else {
                            f = 0.0f;
                            break;
                        }
                    }
                    i12++;
                    f7 = f;
                }
                if (f7 != 0.0f) {
                    arrayList.add(new IntPoint(i8, i11));
                }
            }
        }
        return arrayList;
    }

    private void a(float[][] fArr, float[][] fArr2, float[] fArr3) {
        int length = fArr[0].length;
        int length2 = fArr.length;
        int length3 = fArr3.length / 2;
        for (int i = 0; i < length2; i++) {
            for (int i2 = length3; i2 < length - length3; i2++) {
                float f = 0.0f;
                for (int i3 = 0; i3 < fArr3.length; i3++) {
                    f += fArr[i][(i2 + i3) - length3] * fArr3[i3];
                }
                fArr2[i][i2] = f;
            }
        }
        for (int i4 = 0; i4 < length; i4++) {
            for (int i5 = length3; i5 < length2 - length3; i5++) {
                float f2 = 0.0f;
                for (int i6 = 0; i6 < fArr3.length; i6++) {
                    f2 += fArr2[(i5 + i6) - length3][i4] * fArr3[i6];
                }
                fArr[i5][i4] = f2;
            }
        }
    }
}
