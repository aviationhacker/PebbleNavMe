package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class Shrink implements IApplyInPlace {
    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        if (fastBitmap.isGrayscale()) {
            int width = fastBitmap.getWidth();
            int height = fastBitmap.getHeight();
            boolean z = false;
            int i = 0;
            for (int i2 = 0; i2 < height; i2++) {
                int i3 = 0;
                while (true) {
                    if (i3 >= width) {
                        break;
                    }
                    if (fastBitmap.getRed((i2 * width) + i3) != 0 && fastBitmap.getGreen((i2 * width) + i3) != 0 && fastBitmap.getBlue((i2 * width) + i3) != 0) {
                        z = true;
                        i = i2;
                        break;
                    }
                    i3++;
                }
                if (z) {
                    break;
                }
            }
            boolean z2 = false;
            int i4 = 0;
            for (int i5 = height - 1; i5 >= 0; i5--) {
                int i6 = 0;
                while (true) {
                    if (i6 >= width) {
                        break;
                    }
                    if (fastBitmap.getRed((i5 * width) + i6) != 0 && fastBitmap.getGreen((i5 * width) + i6) != 0 && fastBitmap.getBlue((i5 * width) + i6) != 0) {
                        z2 = true;
                        i4 = i5;
                        break;
                    }
                    i6++;
                }
                if (z2) {
                    break;
                }
            }
            boolean z3 = false;
            int i7 = 0;
            for (int i8 = 0; i8 < height; i8++) {
                int i9 = 0;
                while (true) {
                    if (i9 >= width) {
                        break;
                    }
                    if (fastBitmap.getRed((i9 * width) + i8) != 0 && fastBitmap.getGreen((i9 * width) + i8) != 0 && fastBitmap.getBlue((i9 * width) + i8) != 0) {
                        z3 = true;
                        i7 = i8;
                        break;
                    }
                    i9++;
                }
                if (z3) {
                    break;
                }
            }
            boolean z4 = false;
            int i10 = 0;
            for (int i11 = width - 1; i11 >= 0; i11--) {
                int i12 = 0;
                while (true) {
                    if (i12 >= width) {
                        break;
                    }
                    if (fastBitmap.getRed((i12 * width) + i11) != 0 && fastBitmap.getGreen((i12 * width) + i11) != 0 && fastBitmap.getBlue((i12 * width) + i11) != 0) {
                        z4 = true;
                        i10 = i11;
                        break;
                    }
                    i12++;
                }
                if (z4) {
                    break;
                }
            }
            new Crop(i, i7, (i10 - i7) + 1, (i4 - i) + 1).ApplyInPlace(fastBitmap);
            return;
        }
        if (fastBitmap.isRGB()) {
            int width2 = fastBitmap.getWidth();
            int height2 = fastBitmap.getHeight();
            boolean z5 = false;
            int i13 = 0;
            for (int i14 = 0; i14 < height2; i14++) {
                int i15 = 0;
                while (true) {
                    if (i15 >= width2) {
                        break;
                    }
                    if (fastBitmap.getRed((i14 * width2) + i15) != 0 && fastBitmap.getGreen((i14 * width2) + i15) != 0 && fastBitmap.getBlue((i14 * width2) + i15) != 0) {
                        z5 = true;
                        i13 = i14;
                        break;
                    }
                    i15++;
                }
                if (z5) {
                    break;
                }
            }
            boolean z6 = false;
            int i16 = 0;
            for (int i17 = height2 - 1; i17 >= 0; i17--) {
                int i18 = 0;
                while (true) {
                    if (i18 >= width2) {
                        break;
                    }
                    if (fastBitmap.getRed((i17 * width2) + i18) != 0 && fastBitmap.getGreen((i17 * width2) + i18) != 0 && fastBitmap.getBlue((i17 * width2) + i18) != 0) {
                        z6 = true;
                        i16 = i17;
                        break;
                    }
                    i18++;
                }
                if (z6) {
                    break;
                }
            }
            boolean z7 = false;
            int i19 = 0;
            for (int i20 = 0; i20 < height2; i20++) {
                int i21 = 0;
                while (true) {
                    if (i21 >= width2) {
                        break;
                    }
                    if (fastBitmap.getRed((i21 * width2) + i20) != 0 && fastBitmap.getGreen((i21 * width2) + i20) != 0 && fastBitmap.getBlue((i21 * width2) + i20) != 0) {
                        z7 = true;
                        i19 = i20;
                        break;
                    }
                    i21++;
                }
                if (z7) {
                    break;
                }
            }
            boolean z8 = false;
            int i22 = 0;
            for (int i23 = width2 - 1; i23 >= 0; i23--) {
                int i24 = 0;
                while (true) {
                    if (i24 >= width2) {
                        break;
                    }
                    if (fastBitmap.getRed((i24 * width2) + i23) != 0 && fastBitmap.getGreen((i24 * width2) + i23) != 0 && fastBitmap.getBlue((i24 * width2) + i23) != 0) {
                        z8 = true;
                        i22 = i23;
                        break;
                    }
                    i24++;
                }
                if (z8) {
                    break;
                }
            }
            new Crop(i13, i19, (i22 - i19) + 1, (i16 - i13) + 1).ApplyInPlace(fastBitmap);
        }
    }
}
