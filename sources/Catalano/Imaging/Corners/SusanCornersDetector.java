package Catalano.Imaging.Corners;

import Catalano.Core.IntPoint;
import Catalano.Imaging.FastBitmap;
import java.lang.reflect.Array;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class SusanCornersDetector implements ICornersDetector {
    private int a;
    private int b;
    private ArrayList<IntPoint> c;
    private int[] d;

    public SusanCornersDetector() {
        this.a = 25;
        this.b = 18;
        this.c = new ArrayList<>();
        this.d = new int[]{1, 2, 3, 3, 3, 2, 1};
    }

    public SusanCornersDetector(int i, int i2) {
        this.a = 25;
        this.b = 18;
        this.c = new ArrayList<>();
        this.d = new int[]{1, 2, 3, 3, 3, 2, 1};
        this.a = i;
        this.b = i2;
    }

    public int getDifferenceThreshold() {
        return this.a;
    }

    public void setDifferenceThreshold(int i) {
        this.a = i;
    }

    public int getGeometricalThreshold() {
        return this.b;
    }

    public void setGeometricalThreshold(int i) {
        this.b = i;
    }

    @Override // Catalano.Imaging.Corners.ICornersDetector
    public ArrayList<IntPoint> ProcessImage(FastBitmap fastBitmap) {
        if (fastBitmap.isGrayscale()) {
            return a(fastBitmap);
        }
        if (fastBitmap.isRGB()) {
            FastBitmap fastBitmap2 = new FastBitmap(fastBitmap);
            fastBitmap2.toGrayscale();
            this.c = a(fastBitmap2);
            return this.c;
        }
        throw new IllegalArgumentException("Susan Corners Detector only works in grayscale or rgb images.");
    }

    private ArrayList<IntPoint> a(FastBitmap fastBitmap) {
        int i;
        int width = fastBitmap.getWidth();
        int height = fastBitmap.getHeight();
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, height, width);
        int i2 = 3;
        while (true) {
            int i3 = i2;
            if (i3 >= height - 3) {
                break;
            }
            int i4 = 3;
            while (true) {
                int i5 = i4;
                if (i5 < width - 3) {
                    int gray = fastBitmap.getGray(i3, i5);
                    int i6 = 0;
                    int i7 = 0;
                    int i8 = 0;
                    int i9 = -3;
                    while (i9 <= 3) {
                        int i10 = this.d[i9 + 3];
                        int i11 = i8;
                        int i12 = i7;
                        int i13 = i6;
                        for (int i14 = -i10; i14 <= i10; i14++) {
                            if (Math.abs(gray - fastBitmap.getGray(i3 + i9, i5 + i14)) <= this.a) {
                                i13++;
                                i12 += i3 + i14;
                                i11 += i5 + i9;
                            }
                        }
                        i9++;
                        i6 = i13;
                        i7 = i12;
                        i8 = i11;
                    }
                    if (i6 < this.b) {
                        int i15 = i8 / i6;
                        if (i3 != i7 / i6 || i5 != i15) {
                            i = this.b - i6;
                        } else {
                            i = 0;
                        }
                    } else {
                        i = 0;
                    }
                    iArr[i3][i5] = i;
                    i4 = i5 + 1;
                }
            }
            i2 = i3 + 1;
        }
        int i16 = 2;
        while (true) {
            int i17 = i16;
            if (i17 < height - 2) {
                int i18 = 2;
                while (true) {
                    int i19 = i18;
                    if (i19 < width - 2) {
                        int i20 = iArr[i17][i19];
                        for (int i21 = -2; i20 != 0 && i21 <= 2; i21++) {
                            int i22 = -2;
                            while (true) {
                                if (i22 > 2) {
                                    break;
                                }
                                if (iArr[i17 + i21][i19 + i22] <= i20) {
                                    i22++;
                                } else {
                                    i20 = 0;
                                    break;
                                }
                            }
                        }
                        if (i20 != 0) {
                            this.c.add(new IntPoint(i17, i19));
                        }
                        i18 = i19 + 1;
                    }
                }
                i16 = i17 + 1;
            } else {
                return this.c;
            }
        }
    }
}
