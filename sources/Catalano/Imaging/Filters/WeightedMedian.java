package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class WeightedMedian implements IApplyInPlace {
    private int[][] a;

    public int[][] getWeight() {
        return this.a;
    }

    public void setWeight(int[][] iArr) {
        this.a = iArr;
    }

    public WeightedMedian() {
        this.a = new int[][]{new int[]{1, 2, 1}, new int[]{2, 3, 2}, new int[]{1, 2, 1}};
    }

    public WeightedMedian(int[][] iArr) {
        this.a = new int[][]{new int[]{1, 2, 1}, new int[]{2, 3, 2}, new int[]{1, 2, 1}};
        setWeight(iArr);
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        int i;
        int i2;
        int width = fastBitmap.getWidth();
        int height = fastBitmap.getHeight();
        int length = (this.a.length - 1) / 2;
        int length2 = (this.a[0].length - 1) / 2;
        int iA = a(this.a);
        FastBitmap fastBitmap2 = new FastBitmap(fastBitmap);
        if (fastBitmap.isGrayscale()) {
            int[] iArr = new int[iA];
            for (int i3 = 0; i3 < height; i3++) {
                for (int i4 = 0; i4 < width; i4++) {
                    int i5 = 0;
                    for (int i6 = 0; i6 < this.a.length; i6++) {
                        int i7 = i3 + (i6 - length);
                        int i8 = 0;
                        while (i8 < this.a[0].length) {
                            int i9 = i4 + (i8 - length2);
                            if (i7 < 0 || i7 >= height || i9 < 0 || i9 >= width || this.a[i6][i8] <= 0) {
                                i2 = i5;
                            } else {
                                i2 = i5;
                                for (int i10 = 0; i10 < this.a[i6][i8]; i10++) {
                                    iArr[i2] = fastBitmap2.getGray(i7, i9);
                                    i2++;
                                }
                            }
                            i8++;
                            i5 = i2;
                        }
                    }
                    Arrays.sort(iArr, 0, i5);
                    fastBitmap.setGray(i3, i4, iArr[i5 / 2]);
                }
            }
            return;
        }
        if (fastBitmap.isRGB()) {
            int[] iArr2 = new int[iA];
            int[] iArr3 = new int[iA];
            int[] iArr4 = new int[iA];
            for (int i11 = 0; i11 < height; i11++) {
                for (int i12 = 0; i12 < width; i12++) {
                    int i13 = 0;
                    for (int i14 = 0; i14 < this.a.length; i14++) {
                        int i15 = i11 + (i14 - length);
                        int i16 = 0;
                        while (i16 < this.a[0].length) {
                            int i17 = i12 + (i16 - length2);
                            if (i15 < 0 || i15 >= height || i17 < 0 || i17 >= width || this.a[i14][i16] <= 0) {
                                i = i13;
                            } else {
                                i = i13;
                                for (int i18 = 0; i18 < this.a[i14][i16]; i18++) {
                                    iArr2[i] = fastBitmap2.getRed(i15, i17);
                                    iArr3[i] = fastBitmap2.getGreen(i15, i17);
                                    iArr4[i] = fastBitmap2.getBlue(i15, i17);
                                    i++;
                                }
                            }
                            i16++;
                            i13 = i;
                        }
                    }
                    Arrays.sort(iArr2, 0, i13);
                    Arrays.sort(iArr3, 0, i13);
                    Arrays.sort(iArr4, 0, i13);
                    int i19 = i13 / 2;
                    fastBitmap.setRGB(i11, i12, iArr2[i19], iArr3[i19], iArr4[i19]);
                }
            }
        }
    }

    private int a(int[][] iArr) {
        int i = 0;
        for (int i2 = 0; i2 < iArr.length; i2++) {
            int i3 = 0;
            while (i3 < iArr[0].length) {
                int i4 = iArr[i2][i3] > 0 ? iArr[i2][i3] + i : i;
                i3++;
                i = i4;
            }
        }
        return i;
    }
}
