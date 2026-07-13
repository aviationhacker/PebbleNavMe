package com.jabistudio.androidjhlabs.filter;

import android.graphics.Rect;
import android.support.v4.view.ViewCompat;
import com.jabistudio.androidjhlabs.filter.math.Function2D;
import com.jabistudio.androidjhlabs.filter.math.ImageMath;
import com.jabistudio.androidjhlabs.filter.math.Noise;
import com.jabistudio.androidjhlabs.filter.util.PixelUtils;
import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class CellularFilter extends WholeImageFilter implements Function2D, Cloneable {
    public static final int HEXAGONAL = 2;
    public static final int OCTAGONAL = 3;
    public static final int RANDOM = 0;
    public static final int SQUARE = 1;
    public static final int TRIANGULAR = 4;
    private static byte[] a;
    protected float angleCoefficient;
    private float b;
    protected Point[] results;
    protected float scale = 32.0f;
    protected float stretch = 1.0f;
    protected float angle = 0.0f;
    public float amount = 1.0f;
    public float turbulence = 1.0f;
    public float gain = 0.5f;
    public float bias = 0.5f;
    public float distancePower = 2.0f;
    public boolean useColor = false;
    protected Colormap colormap = new Gradient();
    protected float[] coefficients = {1.0f, 0.0f, 0.0f, 0.0f};
    protected Random random = new Random();
    protected float m00 = 1.0f;
    protected float m01 = 0.0f;
    protected float m10 = 0.0f;
    protected float m11 = 1.0f;
    protected float randomness = 0.0f;
    protected int gridType = 2;

    public CellularFilter() {
        int i = 0;
        this.results = null;
        this.results = new Point[3];
        for (int i2 = 0; i2 < this.results.length; i2++) {
            this.results[i2] = new Point();
        }
        if (a == null) {
            a = new byte[8192];
            float f = 1.0f;
            float fPow = 0.0f;
            while (true) {
                int i3 = i;
                if (i3 < 10) {
                    f = i3 > 1 ? f * i3 : f;
                    fPow += (((float) Math.pow(2.5f, i3)) * ((float) Math.exp(-2.5f))) / f;
                    int i4 = (int) (fPow * 8192.0f);
                    for (int i5 = (int) (fPow * 8192.0f); i5 < i4; i5++) {
                        a[i5] = (byte) i3;
                    }
                    i = i3 + 1;
                } else {
                    return;
                }
            }
        }
    }

    public void setScale(float f) {
        this.scale = f;
    }

    public float getScale() {
        return this.scale;
    }

    public void setStretch(float f) {
        this.stretch = f;
    }

    public float getStretch() {
        return this.stretch;
    }

    public void setAngle(float f) {
        this.angle = f;
        float fCos = (float) Math.cos(f);
        float fSin = (float) Math.sin(f);
        this.m00 = fCos;
        this.m01 = fSin;
        this.m10 = -fSin;
        this.m11 = fCos;
    }

    public float getAngle() {
        return this.angle;
    }

    public void setCoefficient(int i, float f) {
        this.coefficients[i] = f;
    }

    public float getCoefficient(int i) {
        return this.coefficients[i];
    }

    public void setAngleCoefficient(float f) {
        this.angleCoefficient = f;
    }

    public float getAngleCoefficient() {
        return this.angleCoefficient;
    }

    public void setGradientCoefficient(float f) {
        this.b = f;
    }

    public float getGradientCoefficient() {
        return this.b;
    }

    public void setF1(float f) {
        this.coefficients[0] = f;
    }

    public float getF1() {
        return this.coefficients[0];
    }

    public void setF2(float f) {
        this.coefficients[1] = f;
    }

    public float getF2() {
        return this.coefficients[1];
    }

    public void setF3(float f) {
        this.coefficients[2] = f;
    }

    public float getF3() {
        return this.coefficients[2];
    }

    public void setF4(float f) {
        this.coefficients[3] = f;
    }

    public float getF4() {
        return this.coefficients[3];
    }

    public void setColormap(Colormap colormap) {
        this.colormap = colormap;
    }

    public Colormap getColormap() {
        return this.colormap;
    }

    public void setRandomness(float f) {
        this.randomness = f;
    }

    public float getRandomness() {
        return this.randomness;
    }

    public void setGridType(int i) {
        this.gridType = i;
    }

    public int getGridType() {
        return this.gridType;
    }

    public void setDistancePower(float f) {
        this.distancePower = f;
    }

    public float getDistancePower() {
        return this.distancePower;
    }

    public void setTurbulence(float f) {
        this.turbulence = f;
    }

    public float getTurbulence() {
        return this.turbulence;
    }

    public void setAmount(float f) {
        this.amount = f;
    }

    public float getAmount() {
        return this.amount;
    }

    public class Point {
        public float cubeX;
        public float cubeY;
        public float distance;
        public float dx;
        public float dy;
        public int index;
        public float x;
        public float y;

        public Point() {
        }
    }

    private float a(float f, float f2, int i, int i2, Point[] pointArr) {
        byte b;
        float f3;
        float f4;
        float f5;
        float fPow;
        this.random.setSeed((i * 571) + (i2 * 23));
        switch (this.gridType) {
            case 1:
                b = 1;
                break;
            case 2:
                b = 1;
                break;
            case 3:
                b = 2;
                break;
            case 4:
                b = 2;
                break;
            default:
                b = a[this.random.nextInt() & 8191];
                break;
        }
        for (int i3 = 0; i3 < b; i3++) {
            float fNoise2 = 0.0f;
            float fNoise22 = 0.0f;
            float f6 = 1.0f;
            switch (this.gridType) {
                case 0:
                    fNoise2 = this.random.nextFloat();
                    fNoise22 = this.random.nextFloat();
                    break;
                case 1:
                    fNoise22 = 0.5f;
                    if (this.randomness == 0.0f) {
                        fNoise2 = 0.5f;
                    } else {
                        fNoise2 = (float) (((double) 0.5f) + (((double) this.randomness) * (((double) this.random.nextFloat()) - 0.5d)));
                        fNoise22 = (float) (((double) 0.5f) + (((double) this.randomness) * (((double) this.random.nextFloat()) - 0.5d)));
                    }
                    break;
                case 2:
                    if ((i & 1) == 0) {
                        fNoise2 = 0.75f;
                        fNoise22 = 0.0f;
                    } else {
                        fNoise2 = 0.75f;
                        fNoise22 = 0.5f;
                    }
                    if (this.randomness != 0.0f) {
                        fNoise2 += this.randomness * Noise.noise2(271.0f * (i + fNoise2), 271.0f * (i2 + fNoise22));
                        fNoise22 += this.randomness * Noise.noise2((271.0f * (i + fNoise2)) + 89.0f, (271.0f * (i2 + fNoise22)) + 137.0f);
                    }
                    break;
                case 3:
                    switch (i3) {
                        case 0:
                            f3 = 0.207f;
                            f4 = 0.207f;
                            f5 = 1.0f;
                            break;
                        case 1:
                            f3 = 0.707f;
                            f4 = 0.707f;
                            f5 = 1.6f;
                            break;
                        default:
                            f3 = 0.0f;
                            f4 = 0.0f;
                            f5 = 1.0f;
                            break;
                    }
                    if (this.randomness != 0.0f) {
                        float fNoise23 = f3 + (this.randomness * Noise.noise2(271.0f * (i + f3), 271.0f * (i2 + f4)));
                        float f7 = f5;
                        fNoise22 = f4 + (this.randomness * Noise.noise2((271.0f * (i + fNoise23)) + 89.0f, (271.0f * (i2 + f4)) + 137.0f));
                        fNoise2 = fNoise23;
                        f6 = f7;
                    } else {
                        float f8 = f5;
                        fNoise22 = f4;
                        fNoise2 = f3;
                        f6 = f8;
                    }
                    break;
                case 4:
                    if ((i2 & 1) == 0) {
                        if (i3 == 0) {
                            fNoise2 = 0.25f;
                            fNoise22 = 0.35f;
                        } else {
                            fNoise2 = 0.75f;
                            fNoise22 = 0.65f;
                        }
                    } else if (i3 == 0) {
                        fNoise2 = 0.75f;
                        fNoise22 = 0.35f;
                    } else {
                        fNoise2 = 0.25f;
                        fNoise22 = 0.65f;
                    }
                    if (this.randomness != 0.0f) {
                        fNoise2 += this.randomness * Noise.noise2(271.0f * (i + fNoise2), 271.0f * (i2 + fNoise22));
                        fNoise22 += this.randomness * Noise.noise2((271.0f * (i + fNoise2)) + 89.0f, (271.0f * (i2 + fNoise22)) + 137.0f);
                    }
                    break;
            }
            float fAbs = Math.abs(f - fNoise2) * f6;
            float fAbs2 = Math.abs(f2 - fNoise22) * f6;
            if (this.distancePower == 1.0f) {
                fPow = fAbs + fAbs2;
            } else if (this.distancePower == 2.0f) {
                fPow = (float) Math.sqrt((fAbs * fAbs) + (fAbs2 * fAbs2));
            } else {
                fPow = (float) Math.pow(((float) Math.pow(fAbs, this.distancePower)) + ((float) Math.pow(fAbs2, this.distancePower)), 1.0f / this.distancePower);
            }
            if (fPow < pointArr[0].distance) {
                Point point = pointArr[2];
                pointArr[2] = pointArr[1];
                pointArr[1] = pointArr[0];
                pointArr[0] = point;
                point.distance = fPow;
                point.dx = fAbs;
                point.dy = fAbs2;
                point.x = fNoise2 + i;
                point.y = fNoise22 + i2;
            } else if (fPow < pointArr[1].distance) {
                Point point2 = pointArr[2];
                pointArr[2] = pointArr[1];
                pointArr[1] = point2;
                point2.distance = fPow;
                point2.dx = fAbs;
                point2.dy = fAbs2;
                point2.x = fNoise2 + i;
                point2.y = fNoise22 + i2;
            } else if (fPow < pointArr[2].distance) {
                Point point3 = pointArr[2];
                point3.distance = fPow;
                point3.dx = fAbs;
                point3.dy = fAbs2;
                point3.x = fNoise2 + i;
                point3.y = fNoise22 + i2;
            }
        }
        return pointArr[2].distance;
    }

    @Override // com.jabistudio.androidjhlabs.filter.math.Function2D
    public float evaluate(float f, float f2) {
        float f3;
        for (int i = 0; i < this.results.length; i++) {
            this.results[i].distance = Float.POSITIVE_INFINITY;
        }
        int i2 = (int) f;
        int i3 = (int) f2;
        float f4 = f - i2;
        float f5 = f2 - i3;
        float fA = a(f4, f5, i2, i3, this.results);
        if (fA > f5) {
            fA = a(f4, f5 + 1.0f, i2, i3 - 1, this.results);
        }
        if (fA > 1.0f - f5) {
            fA = a(f4, f5 - 1.0f, i2, i3 + 1, this.results);
        }
        if (fA > f4) {
            a(f4 + 1.0f, f5, i2 - 1, i3, this.results);
            if (fA > f5) {
                fA = a(f4 + 1.0f, f5 + 1.0f, i2 - 1, i3 - 1, this.results);
            }
            if (fA > 1.0f - f5) {
                fA = a(f4 + 1.0f, f5 - 1.0f, i2 - 1, i3 + 1, this.results);
            }
        }
        if (fA > 1.0f - f4) {
            float fA2 = a(f4 - 1.0f, f5, i2 + 1, i3, this.results);
            if (fA2 > f5) {
                fA2 = a(f4 - 1.0f, f5 + 1.0f, i2 + 1, i3 - 1, this.results);
            }
            if (fA2 > 1.0f - f5) {
                a(f4 - 1.0f, f5 - 1.0f, i2 + 1, i3 + 1, this.results);
            }
        }
        float f6 = 0.0f;
        for (int i4 = 0; i4 < 3; i4++) {
            f6 += this.coefficients[i4] * this.results[i4].distance;
        }
        if (this.angleCoefficient != 0.0f) {
            float fAtan2 = (float) Math.atan2(f2 - this.results[0].y, f - this.results[0].x);
            if (fAtan2 < 0.0f) {
                fAtan2 += 6.2831855f;
            }
            f3 = ((fAtan2 / 12.566371f) * this.angleCoefficient) + f6;
        } else {
            f3 = f6;
        }
        if (this.b != 0.0f) {
            return f3 + ((1.0f / (this.results[0].dy + this.results[0].dx)) * this.b);
        }
        return f3;
    }

    public float turbulence2(float f, float f2, float f3) {
        float fEvaluate = 0.0f;
        for (float f4 = 1.0f; f4 <= f3; f4 *= 2.0f) {
            fEvaluate += evaluate(f4 * f, f4 * f2) / f4;
        }
        return fEvaluate;
    }

    public int getPixel(int i, int i2, int[] iArr, int i3, int i4) {
        float f = (this.m00 * i) + (this.m01 * i2);
        float f2 = (this.m10 * i) + (this.m11 * i2);
        float f3 = (f / this.scale) + 1000.0f;
        float f4 = (f2 / (this.scale * this.stretch)) + 1000.0f;
        float fEvaluate = (this.turbulence == 1.0f ? evaluate(f3, f4) : turbulence2(f3, f4, this.turbulence)) * 2.0f * this.amount;
        if (this.colormap != null) {
            int color = this.colormap.getColor(fEvaluate);
            if (this.useColor) {
                return ImageMath.mixColors(ImageMath.smoothStep(this.coefficients[1], this.coefficients[0], (this.results[1].distance - this.results[0].distance) / (this.results[1].distance + this.results[0].distance)), ViewCompat.MEASURED_STATE_MASK, iArr[ImageMath.clamp((int) ((this.results[0].x - 1000.0f) * this.scale), 0, i3 - 1) + (ImageMath.clamp((int) ((this.results[0].y - 1000.0f) * this.scale), 0, i4 - 1) * i3)]);
            }
            return color;
        }
        int iClamp = PixelUtils.clamp((int) (fEvaluate * 255.0f));
        return iClamp | (iClamp << 16) | ViewCompat.MEASURED_STATE_MASK | (iClamp << 8);
    }

    public Object clone() {
        CellularFilter cellularFilter = null;
        try {
            cellularFilter = (CellularFilter) super.clone();
        } catch (CloneNotSupportedException e) {
            e.printStackTrace();
        }
        cellularFilter.coefficients = (float[]) this.coefficients.clone();
        cellularFilter.results = (Point[]) this.results.clone();
        cellularFilter.random = new Random();
        return cellularFilter;
    }

    public String toString() {
        return "Texture/Cellular...";
    }

    @Override // com.jabistudio.androidjhlabs.filter.WholeImageFilter
    protected int[] filterPixels(int i, int i2, int[] iArr, Rect rect) {
        int[] iArr2 = new int[i * i2];
        int i3 = 0;
        int i4 = 0;
        while (i3 < i2) {
            int i5 = 0;
            int i6 = i4;
            while (i5 < i) {
                iArr2[i6] = getPixel(i5, i3, iArr, i, i2);
                i5++;
                i6++;
            }
            i3++;
            i4 = i6;
        }
        return iArr2;
    }
}
