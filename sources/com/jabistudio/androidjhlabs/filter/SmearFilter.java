package com.jabistudio.androidjhlabs.filter;

import android.graphics.Rect;
import com.jabistudio.androidjhlabs.filter.math.ImageMath;
import java.util.Date;
import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class SmearFilter extends WholeImageFilter {
    public static final int CIRCLES = 2;
    public static final int CROSSES = 0;
    public static final int LINES = 1;
    public static final int SQUARES = 3;
    private float a = 0.0f;
    private float b = 0.5f;
    private float c = 0.0f;
    private int d = 8;
    private long f = 567;
    private int g = 1;
    private float h = 0.5f;
    private int i = 0;
    private boolean j = false;
    private Random e = new Random();

    public void setShape(int i) {
        this.g = i;
    }

    public int getShape() {
        return this.g;
    }

    public void setDistance(int i) {
        this.d = i;
    }

    public int getDistance() {
        return this.d;
    }

    public void setDensity(float f) {
        this.b = f;
    }

    public float getDensity() {
        return this.b;
    }

    public void setScatter(float f) {
        this.c = f;
    }

    public float getScatter() {
        return this.c;
    }

    public void setAngle(float f) {
        this.a = f;
    }

    public float getAngle() {
        return this.a;
    }

    public void setMix(float f) {
        this.h = f;
    }

    public float getMix() {
        return this.h;
    }

    public void setFadeout(int i) {
        this.i = i;
    }

    public int getFadeout() {
        return this.i;
    }

    public void setBackground(boolean z) {
        this.j = z;
    }

    public boolean getBackground() {
        return this.j;
    }

    public void randomize() {
        this.f = new Date().getTime();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.jabistudio.androidjhlabs.filter.WholeImageFilter
    protected int[] filterPixels(int i, int i2, int[] iArr, Rect rect) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int[] iArr2 = new int[i * i2];
        this.e.setSeed(this.f);
        float fSin = (float) Math.sin(this.a);
        float fCos = (float) Math.cos(this.a);
        int i10 = 0;
        int i11 = 0;
        while (i11 < i2) {
            int i12 = 0;
            int i13 = i10;
            while (true) {
                int i14 = i12;
                if (i14 < i) {
                    iArr2[i13] = this.j ? -1 : iArr[i13];
                    i13++;
                    i12 = i14 + 1;
                }
            }
            i11++;
            i10 = i13;
        }
        switch (this.g) {
            case 0:
                int i15 = (int) ((((2.0f * this.b) * i) * i2) / (this.d + 1));
                for (int i16 = 0; i16 < i15; i16++) {
                    int iNextInt = (this.e.nextInt() & Integer.MAX_VALUE) % i;
                    int iNextInt2 = (this.e.nextInt() & Integer.MAX_VALUE) % i2;
                    int iNextInt3 = (this.e.nextInt() % this.d) + 1;
                    int i17 = iArr[(iNextInt2 * i) + iNextInt];
                    int i18 = iNextInt - iNextInt3;
                    while (true) {
                        int i19 = i18;
                        if (i19 < iNextInt + iNextInt3 + 1) {
                            if (i19 >= 0 && i19 < i) {
                                iArr2[(iNextInt2 * i) + i19] = ImageMath.mixColors(this.h, this.j ? -1 : iArr2[(iNextInt2 * i) + i19], i17);
                            }
                            i18 = i19 + 1;
                        } else {
                            int i20 = iNextInt2 - iNextInt3;
                            while (true) {
                                int i21 = i20;
                                if (i21 < iNextInt2 + iNextInt3 + 1) {
                                    if (i21 >= 0 && i21 < i2) {
                                        iArr2[(i21 * i) + iNextInt] = ImageMath.mixColors(this.h, this.j ? -1 : iArr2[(i21 * i) + iNextInt], i17);
                                    }
                                    i20 = i21 + 1;
                                }
                            }
                        }
                    }
                }
                return iArr2;
            case 1:
                int i22 = (int) ((((2.0f * this.b) * i) * i2) / 2.0f);
                for (int i23 = 0; i23 < i22; i23++) {
                    int iNextInt4 = (this.e.nextInt() & Integer.MAX_VALUE) % i;
                    int iNextInt5 = (this.e.nextInt() & Integer.MAX_VALUE) % i2;
                    int i24 = iArr[(iNextInt5 * i) + iNextInt4];
                    int iNextInt6 = (this.e.nextInt() & Integer.MAX_VALUE) % this.d;
                    int i25 = (int) (iNextInt6 * fCos);
                    int i26 = (int) (iNextInt6 * fSin);
                    int i27 = iNextInt4 - i25;
                    int i28 = iNextInt5 - i26;
                    int i29 = iNextInt4 + i25;
                    int i30 = iNextInt5 + i26;
                    if (i29 < i27) {
                        i4 = -1;
                    } else {
                        i4 = 1;
                    }
                    if (i30 < i28) {
                        i5 = -1;
                    } else {
                        i5 = 1;
                    }
                    int iAbs = Math.abs(i29 - i27);
                    int iAbs2 = Math.abs(i30 - i28);
                    if (i27 < i && i27 >= 0 && i28 < i2 && i28 >= 0) {
                        iArr2[(i28 * i) + i27] = ImageMath.mixColors(this.h, this.j ? -1 : iArr2[(i28 * i) + i27], i24);
                    }
                    if (Math.abs(iAbs) > Math.abs(iAbs2)) {
                        int i31 = (iAbs2 * 2) - iAbs;
                        int i32 = iAbs2 * 2;
                        int i33 = (iAbs2 - iAbs) * 2;
                        int i34 = i31;
                        int i35 = i28;
                        while (i27 != i29) {
                            if (i34 <= 0) {
                                i8 = i35;
                                i9 = i34 + i32;
                            } else {
                                i8 = i35 + i5;
                                i9 = i34 + i33;
                            }
                            i27 += i4;
                            if (i27 >= i || i27 < 0 || i8 >= i2 || i8 < 0) {
                                i34 = i9;
                                i35 = i8;
                            } else {
                                iArr2[(i8 * i) + i27] = ImageMath.mixColors(this.h, this.j ? -1 : iArr2[(i8 * i) + i27], i24);
                                i34 = i9;
                                i35 = i8;
                            }
                        }
                    } else {
                        int i36 = (iAbs * 2) - iAbs2;
                        int i37 = iAbs * 2;
                        int i38 = (iAbs - iAbs2) * 2;
                        int i39 = i36;
                        int i40 = i27;
                        int i41 = i28;
                        while (i41 != i30) {
                            if (i39 <= 0) {
                                i6 = i40;
                                i7 = i39 + i37;
                            } else {
                                i6 = i40 + i4;
                                i7 = i39 + i38;
                            }
                            i41 += i5;
                            if (i6 >= i || i6 < 0 || i41 >= i2 || i41 < 0) {
                                i39 = i7;
                                i40 = i6;
                            } else {
                                iArr2[(i41 * i) + i6] = ImageMath.mixColors(this.h, this.j ? -1 : iArr2[(i41 * i) + i6], i24);
                                i39 = i7;
                                i40 = i6;
                            }
                        }
                    }
                }
                return iArr2;
            case 2:
            case 3:
                int i42 = this.d + 1;
                int i43 = i42 * i42;
                int i44 = (int) ((((2.0f * this.b) * i) * i2) / i42);
                for (int i45 = 0; i45 < i44; i45++) {
                    int iNextInt7 = (this.e.nextInt() & Integer.MAX_VALUE) % i;
                    int iNextInt8 = (this.e.nextInt() & Integer.MAX_VALUE) % i2;
                    int i46 = iArr[(iNextInt8 * i) + iNextInt7];
                    int i47 = iNextInt7 - i42;
                    while (true) {
                        int i48 = i47;
                        if (i48 < iNextInt7 + i42 + 1) {
                            int i49 = iNextInt8 - i42;
                            while (true) {
                                int i50 = i49;
                                if (i50 < iNextInt8 + i42 + 1) {
                                    if (this.g == 2) {
                                        i3 = ((i48 - iNextInt7) * (i48 - iNextInt7)) + ((i50 - iNextInt8) * (i50 - iNextInt8));
                                    } else {
                                        i3 = 0;
                                    }
                                    if (i48 >= 0 && i48 < i && i50 >= 0 && i50 < i2 && i3 <= i43) {
                                        iArr2[(i50 * i) + i48] = ImageMath.mixColors(this.h, this.j ? -1 : iArr2[(i50 * i) + i48], i46);
                                    }
                                    i49 = i50 + 1;
                                }
                            }
                            i47 = i48 + 1;
                        }
                    }
                }
                return iArr2;
            default:
                return iArr2;
        }
    }

    public String toString() {
        return "Effects/Smear...";
    }
}
