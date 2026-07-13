package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class BinaryDilatation implements IApplyInPlace {
    private int[][] a;
    private int b;

    public BinaryDilatation() {
        this.b = 0;
        this.b = 1;
    }

    public BinaryDilatation(int[][] iArr) {
        this.b = 0;
        this.a = iArr;
    }

    public BinaryDilatation(int i) {
        this.b = 0;
        this.b = i < 1 ? 1 : i;
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        if (this.b != 0) {
            a(fastBitmap, this.b);
        } else {
            a(fastBitmap, this.a);
        }
    }

    private void a(FastBitmap fastBitmap, int i) {
        FastBitmap fastBitmap2 = new FastBitmap(fastBitmap);
        int width = fastBitmap.getWidth();
        int height = fastBitmap.getHeight();
        int iA = a(i);
        for (int i2 = 0; i2 < height; i2++) {
            for (int i3 = 0; i3 < width; i3++) {
                if (fastBitmap2.getGray(i2, i3) == 255) {
                    for (int i4 = 0; i4 < iA; i4++) {
                        int i5 = i2 + (i4 - i);
                        for (int i6 = 0; i6 < iA; i6++) {
                            int i7 = (i6 - i) + i3;
                            if (i5 >= 0 && i5 < height && i7 >= 0 && i7 < width) {
                                fastBitmap.setGray(i5, i7, 255);
                            }
                        }
                    }
                }
            }
        }
    }

    private void a(FastBitmap fastBitmap, int[][] iArr) {
        FastBitmap fastBitmap2 = new FastBitmap(fastBitmap);
        int width = fastBitmap.getWidth();
        int height = fastBitmap.getHeight();
        int iA = a(iArr);
        for (int i = 0; i < height; i++) {
            for (int i2 = 0; i2 < width; i2++) {
                if (fastBitmap2.getGray(i, i2) == 255) {
                    for (int i3 = 0; i3 < iArr[0].length; i3++) {
                        int i4 = i + (i3 - iA);
                        for (int i5 = 0; i5 < iArr.length; i5++) {
                            int i6 = (i5 - iA) + i2;
                            if (i4 >= 0 && i4 < height && i6 >= 0 && i6 < width && iArr[i3][i5] == 1) {
                                fastBitmap.setGray(i4, i6, 255);
                            }
                        }
                    }
                }
            }
        }
    }

    private int a(int[][] iArr) {
        return (iArr[0].length - 1) / 2;
    }

    private int a(int i) {
        return (i * 2) + 1;
    }
}
