package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class AlphaTrimmedMean implements IApplyInPlace {
    private int a = 1;
    private int b = 1;

    public int getRadius() {
        return this.a;
    }

    public void setRadius(int i) {
        this.a = Math.max(1, i);
    }

    public int getT() {
        return this.b;
    }

    public void setT(int i) {
        this.b = Math.min((((this.a * 2) + 1) * ((this.a * 2) + 1)) / 2, Math.max(0, i));
    }

    public AlphaTrimmedMean() {
    }

    public AlphaTrimmedMean(int i) {
        setRadius(i);
    }

    public AlphaTrimmedMean(int i, int i2) {
        setRadius(i);
        setT(i2);
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        int width = fastBitmap.getWidth();
        int height = fastBitmap.getHeight();
        int iA = a(this.a);
        int i = iA * iA;
        FastBitmap fastBitmap2 = new FastBitmap(fastBitmap);
        if (fastBitmap.isGrayscale()) {
            int[] iArr = new int[i];
            for (int i2 = 0; i2 < height; i2++) {
                for (int i3 = 0; i3 < width; i3++) {
                    int i4 = 0;
                    for (int i5 = 0; i5 < iA; i5++) {
                        int i6 = i2 + (i5 - this.a);
                        for (int i7 = 0; i7 < iA; i7++) {
                            int i8 = (i7 - this.a) + i3;
                            if (i6 >= 0 && i6 < height && i8 >= 0 && i8 < width) {
                                iArr[i4] = fastBitmap2.getGray(i6, i8);
                            } else {
                                iArr[i4] = fastBitmap2.getGray(i2, i3);
                            }
                            i4++;
                        }
                    }
                    Arrays.sort(iArr);
                    double d = 0.0d;
                    for (int i9 = this.b; i9 < i4 - this.b; i9++) {
                        d += (double) iArr[i9];
                    }
                    fastBitmap.setGray(i2, i3, (int) (d / ((double) (iArr.length - (this.b * 2)))));
                }
            }
            return;
        }
        if (fastBitmap.isRGB()) {
            int[] iArr2 = new int[i];
            int[] iArr3 = new int[i];
            int[] iArr4 = new int[i];
            for (int i10 = 0; i10 < height; i10++) {
                for (int i11 = 0; i11 < width; i11++) {
                    int i12 = 0;
                    for (int i13 = 0; i13 < iA; i13++) {
                        int i14 = i10 + (i13 - this.a);
                        for (int i15 = 0; i15 < iA; i15++) {
                            int i16 = (i15 - this.a) + i11;
                            if (i14 >= 0 && i14 < height && i16 >= 0 && i16 < width) {
                                iArr2[i12] = fastBitmap2.getRed(i14, i16);
                                iArr3[i12] = fastBitmap2.getGreen(i14, i16);
                                iArr4[i12] = fastBitmap2.getBlue(i14, i16);
                            } else {
                                iArr2[i12] = fastBitmap2.getRed(i10, i11);
                                iArr3[i12] = fastBitmap2.getGreen(i10, i11);
                                iArr4[i12] = fastBitmap2.getBlue(i10, i11);
                            }
                            i12++;
                        }
                    }
                    Arrays.sort(iArr2);
                    Arrays.sort(iArr3);
                    Arrays.sort(iArr4);
                    double d2 = 0.0d;
                    double d3 = 0.0d;
                    double d4 = 0.0d;
                    for (int i17 = this.b; i17 < i12 - this.b; i17++) {
                        d2 += (double) iArr2[i17];
                        d3 += (double) iArr3[i17];
                        d4 += (double) iArr4[i17];
                    }
                    fastBitmap.setRGB(i10, i11, (int) (d2 / ((double) (iArr2.length - (this.b * 2)))), (int) (d3 / ((double) (iArr3.length - (this.b * 2)))), (int) (d4 / ((double) (iArr4.length - (this.b * 2)))));
                }
            }
        }
    }

    private int a(int i) {
        return (i * 2) + 1;
    }
}
