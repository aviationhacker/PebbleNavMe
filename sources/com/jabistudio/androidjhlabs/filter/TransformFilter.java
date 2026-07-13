package com.jabistudio.androidjhlabs.filter;

import android.graphics.Rect;
import android.support.v4.view.ViewCompat;
import android.util.Log;
import com.jabistudio.androidjhlabs.filter.math.ImageMath;
import com.jabistudio.androidjhlabs.filter.util.PixelUtils;

/* JADX INFO: loaded from: classes.dex */
public abstract class TransformFilter {
    public static final int BILINEAR = 1;
    public static final int CLAMP = 1;
    public static final int NEAREST_NEIGHBOUR = 0;
    public static final int RGB_CLAMP = 3;
    public static final int WRAP = 2;
    public static final int ZERO = 0;
    protected int edgeAction = 3;
    protected int interpolation = 1;
    protected Rect originalSpace;
    protected Rect transformedSpace;

    protected abstract void transformInverse(int i, int i2, float[] fArr);

    public void setEdgeAction(int i) {
        this.edgeAction = i;
    }

    public int getEdgeAction() {
        return this.edgeAction;
    }

    public void setInterpolation(int i) {
        this.interpolation = i;
    }

    public int getInterpolation() {
        return this.interpolation;
    }

    protected void transformSpace(Rect rect) {
    }

    public int[] filter(int[] iArr, int i, int i2) {
        int iA;
        int i3;
        int i4;
        int i5;
        Log.d("DEBUG", "width = " + i + "  height = " + i2);
        this.originalSpace = new Rect(0, 0, i, i2);
        this.transformedSpace = new Rect(0, 0, i, i2);
        transformSpace(this.transformedSpace);
        int[] iArr2 = new int[i * i2];
        if (this.interpolation == 0) {
            return filterPixelsNN(iArr2, i, i2, iArr, this.transformedSpace);
        }
        int i6 = i - 1;
        int i7 = i2 - 1;
        int i8 = this.transformedSpace.right;
        int i9 = this.transformedSpace.bottom;
        int[] iArr3 = new int[i8];
        int i10 = this.transformedSpace.left;
        int i11 = this.transformedSpace.top;
        float[] fArr = new float[2];
        int i12 = 0;
        while (true) {
            int i13 = i12;
            if (i13 < i9) {
                int i14 = 0;
                while (true) {
                    int i15 = i14;
                    if (i15 >= i8) {
                        break;
                    }
                    transformInverse(i10 + i15, i11 + i13, fArr);
                    int iFloor = (int) Math.floor(fArr[0]);
                    int iFloor2 = (int) Math.floor(fArr[1]);
                    float f = fArr[0] - iFloor;
                    float f2 = fArr[1] - iFloor2;
                    if (iFloor >= 0 && iFloor < i6 && iFloor2 >= 0 && iFloor2 < i7) {
                        int i16 = (i * iFloor2) + iFloor;
                        i5 = iArr[i16];
                        i4 = iArr[i16 + 1];
                        i3 = iArr[i16 + i];
                        iA = iArr[i16 + i + 1];
                    } else {
                        int iA2 = a(iArr, iFloor, iFloor2, i, i2);
                        int iA3 = a(iArr, iFloor + 1, iFloor2, i, i2);
                        int iA4 = a(iArr, iFloor, iFloor2 + 1, i, i2);
                        iA = a(iArr, iFloor + 1, iFloor2 + 1, i, i2);
                        i3 = iA4;
                        i4 = iA3;
                        i5 = iA2;
                    }
                    iArr3[i15] = ImageMath.bilinearInterpolate(f, f2, i5, i4, i3, iA);
                    i14 = i15 + 1;
                }
                if (i13 < i2) {
                    PixelUtils.setLineRGB(iArr2, i13, i, iArr3);
                }
                i12 = i13 + 1;
            } else {
                return iArr2;
            }
        }
    }

    private final int a(int[] iArr, int i, int i2, int i3, int i4) {
        if (i < 0 || i >= i3 || i2 < 0 || i2 >= i4) {
            switch (this.edgeAction) {
                case 1:
                    return iArr[ImageMath.clamp(i, 0, i3 - 1) + (ImageMath.clamp(i2, 0, i4 - 1) * i3)];
                case 2:
                    return iArr[(ImageMath.mod(i2, i4) * i3) + ImageMath.mod(i, i3)];
                case 3:
                    return iArr[ImageMath.clamp(i, 0, i3 - 1) + (ImageMath.clamp(i2, 0, i4 - 1) * i3)] & ViewCompat.MEASURED_SIZE_MASK;
                default:
                    return 0;
            }
        }
        return iArr[(i2 * i3) + i];
    }

    protected int[] filterPixelsNN(int[] iArr, int i, int i2, int[] iArr2, Rect rect) {
        int i3;
        int i4 = rect.right;
        int i5 = rect.bottom;
        int[] iArr3 = new int[i4];
        int i6 = rect.left;
        int i7 = rect.top;
        int[] iArr4 = new int[4];
        float[] fArr = new float[2];
        for (int i8 = 0; i8 < i5; i8++) {
            for (int i9 = 0; i9 < i4; i9++) {
                transformInverse(i6 + i9, i7 + i8, fArr);
                int i10 = (int) fArr[0];
                int i11 = (int) fArr[1];
                if (fArr[0] < 0.0f || i10 >= i || fArr[1] < 0.0f || i11 >= i2) {
                    switch (this.edgeAction) {
                        case 1:
                            i3 = iArr2[ImageMath.clamp(i10, 0, i - 1) + (ImageMath.clamp(i11, 0, i2 - 1) * i)];
                            break;
                        case 2:
                            i3 = iArr2[ImageMath.mod(i10, i) + (ImageMath.mod(i11, i2) * i)];
                            break;
                        case 3:
                            i3 = iArr2[ImageMath.clamp(i10, 0, i - 1) + (ImageMath.clamp(i11, 0, i2 - 1) * i)] & ViewCompat.MEASURED_SIZE_MASK;
                            break;
                        default:
                            i3 = 0;
                            break;
                    }
                    iArr3[i9] = i3;
                } else {
                    int i12 = i10 + (i11 * i);
                    iArr4[0] = iArr2[i12];
                    iArr3[i9] = iArr2[i12];
                }
            }
            if (i8 < i2) {
                PixelUtils.setLineRGB(iArr, i8, i, iArr3);
            }
        }
        return iArr;
    }
}
