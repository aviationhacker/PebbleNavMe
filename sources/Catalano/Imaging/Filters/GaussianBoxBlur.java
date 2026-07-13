package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class GaussianBoxBlur implements IApplyInPlace {
    private double a;
    private int b;

    public int getRadius() {
        return this.b;
    }

    public void setRadius(int i) {
        this.b = Math.max(1, i);
    }

    public GaussianBoxBlur() {
        this(1.0d);
    }

    public GaussianBoxBlur(double d) {
        this(d, 3);
    }

    public GaussianBoxBlur(double d, int i) {
        this.a = d;
        this.b = i;
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        FastBitmap fastBitmap2 = new FastBitmap(fastBitmap.getWidth(), fastBitmap.getHeight(), fastBitmap.getColorSpace());
        int[] iArrA = a(this.a, this.b);
        if (fastBitmap.isGrayscale()) {
            a(fastBitmap, fastBitmap2, (iArrA[0] - 1) / 2);
            a(fastBitmap2, fastBitmap, (iArrA[1] - 1) / 2);
            a(fastBitmap, fastBitmap2, (iArrA[2] - 1) / 2);
        } else if (fastBitmap.isRGB()) {
            b(fastBitmap, fastBitmap2, (iArrA[0] - 1) / 2);
            b(fastBitmap2, fastBitmap, (iArrA[1] - 1) / 2);
            b(fastBitmap, fastBitmap2, (iArrA[2] - 1) / 2);
        }
    }

    private void a(FastBitmap fastBitmap, FastBitmap fastBitmap2, int i) {
        int size = fastBitmap.getSize();
        for (int i2 = 0; i2 < size; i2++) {
            fastBitmap2.setGray(i2, fastBitmap.getGray(i2));
        }
        c(fastBitmap2, fastBitmap, i);
        e(fastBitmap, fastBitmap2, i);
    }

    private void b(FastBitmap fastBitmap, FastBitmap fastBitmap2, int i) {
        int size = fastBitmap.getSize();
        for (int i2 = 0; i2 < size; i2++) {
            fastBitmap2.setRGB(i2, fastBitmap.getRGB(i2));
        }
        d(fastBitmap2, fastBitmap, i);
        f(fastBitmap, fastBitmap2, i);
    }

    private void c(FastBitmap fastBitmap, FastBitmap fastBitmap2, int i) {
        int width = fastBitmap.getWidth();
        int height = fastBitmap.getHeight();
        double d = 1.0d / ((double) ((i + i) + 1));
        for (int i2 = 0; i2 < height; i2++) {
            int i3 = i2 * width;
            int i4 = i3 + i;
            int gray = fastBitmap.getGray(i3);
            int gray2 = fastBitmap.getGray((i3 + width) - 1);
            int gray3 = (i + 1) * gray;
            for (int i5 = 0; i5 < i; i5++) {
                gray3 += fastBitmap.getGray(i3 + i5);
            }
            int i6 = 0;
            int i7 = i3;
            while (i6 <= i) {
                gray3 += fastBitmap.getGray(i4) - gray;
                fastBitmap2.setGray(i7, (int) Math.round(((double) gray3) * d));
                i6++;
                i7++;
                i4++;
            }
            int i8 = i + 1;
            int i9 = i4;
            int i10 = i3;
            int i11 = i7;
            int i12 = i9;
            while (i8 < width - i) {
                gray3 += fastBitmap.getGray(i12) - fastBitmap.getGray(i10);
                fastBitmap2.setGray(i11, (int) Math.round(((double) gray3) * d));
                i8++;
                i11++;
                i10++;
                i12++;
            }
            int i13 = width - i;
            int i14 = i11;
            while (i13 < width) {
                gray3 += gray2 - fastBitmap.getGray(i10);
                fastBitmap2.setGray(i14, (int) Math.round(((double) gray3) * d));
                i13++;
                i14++;
                i10++;
            }
        }
    }

    private void d(FastBitmap fastBitmap, FastBitmap fastBitmap2, int i) {
        int width = fastBitmap.getWidth();
        int height = fastBitmap.getHeight();
        double d = 1.0d / ((double) ((i + i) + 1));
        for (int i2 = 0; i2 < height; i2++) {
            int i3 = i2 * width;
            int i4 = i3 + i;
            int red = fastBitmap.getRed(i3);
            int red2 = fastBitmap.getRed((i3 + width) - 1);
            int red3 = (i + 1) * red;
            for (int i5 = 0; i5 < i; i5++) {
                red3 += fastBitmap.getRed(i3 + i5);
            }
            int i6 = 0;
            int i7 = i3;
            while (i6 <= i) {
                red3 += fastBitmap.getRed(i4) - red;
                fastBitmap2.setRed(i7, (int) Math.round(((double) red3) * d));
                i6++;
                i7++;
                i4++;
            }
            int i8 = i + 1;
            int i9 = i4;
            int i10 = i3;
            int i11 = i7;
            int i12 = i9;
            while (i8 < width - i) {
                red3 += fastBitmap.getRed(i12) - fastBitmap.getRed(i10);
                fastBitmap2.setRed(i11, (int) Math.round(((double) red3) * d));
                i8++;
                i11++;
                i10++;
                i12++;
            }
            int i13 = width - i;
            int i14 = i11;
            while (i13 < width) {
                red3 += red2 - fastBitmap.getRed(i10);
                fastBitmap2.setRed(i14, (int) Math.round(((double) red3) * d));
                i13++;
                i14++;
                i10++;
            }
        }
        for (int i15 = 0; i15 < height; i15++) {
            int i16 = i15 * width;
            int i17 = i16 + i;
            int green = fastBitmap.getGreen(i16);
            int green2 = fastBitmap.getGreen((i16 + width) - 1);
            int green3 = (i + 1) * green;
            for (int i18 = 0; i18 < i; i18++) {
                green3 += fastBitmap.getGreen(i16 + i18);
            }
            int i19 = 0;
            int i20 = i16;
            while (i19 <= i) {
                green3 += fastBitmap.getGreen(i17) - green;
                fastBitmap2.setGreen(i20, (int) Math.round(((double) green3) * d));
                i19++;
                i20++;
                i17++;
            }
            int i21 = i + 1;
            int i22 = i17;
            int i23 = i16;
            int i24 = i20;
            int i25 = i22;
            while (i21 < width - i) {
                green3 += fastBitmap.getGreen(i25) - fastBitmap.getGreen(i23);
                fastBitmap2.setGreen(i24, (int) Math.round(((double) green3) * d));
                i21++;
                i24++;
                i23++;
                i25++;
            }
            int i26 = width - i;
            int i27 = i24;
            while (i26 < width) {
                green3 += green2 - fastBitmap.getGreen(i23);
                fastBitmap2.setGreen(i27, (int) Math.round(((double) green3) * d));
                i26++;
                i27++;
                i23++;
            }
        }
        for (int i28 = 0; i28 < height; i28++) {
            int i29 = i28 * width;
            int i30 = i29 + i;
            int blue = fastBitmap.getBlue(i29);
            int blue2 = fastBitmap.getBlue((i29 + width) - 1);
            int blue3 = (i + 1) * blue;
            for (int i31 = 0; i31 < i; i31++) {
                blue3 += fastBitmap.getBlue(i29 + i31);
            }
            int i32 = 0;
            int i33 = i29;
            while (i32 <= i) {
                blue3 += fastBitmap.getBlue(i30) - blue;
                fastBitmap2.setBlue(i33, (int) Math.round(((double) blue3) * d));
                i32++;
                i33++;
                i30++;
            }
            int i34 = i + 1;
            int i35 = i30;
            int i36 = i29;
            int i37 = i33;
            int i38 = i35;
            while (i34 < width - i) {
                blue3 += fastBitmap.getBlue(i38) - fastBitmap.getBlue(i36);
                fastBitmap2.setBlue(i37, (int) Math.round(((double) blue3) * d));
                i34++;
                i37++;
                i36++;
                i38++;
            }
            int i39 = width - i;
            int i40 = i37;
            while (i39 < width) {
                blue3 += blue2 - fastBitmap.getBlue(i36);
                fastBitmap2.setBlue(i40, (int) Math.round(((double) blue3) * d));
                i39++;
                i40++;
                i36++;
            }
        }
    }

    private void e(FastBitmap fastBitmap, FastBitmap fastBitmap2, int i) {
        int width = fastBitmap2.getWidth();
        int height = fastBitmap2.getHeight();
        double d = 1.0d / ((double) ((i + i) + 1));
        for (int i2 = 0; i2 < width; i2++) {
            int i3 = i2 + (i * width);
            int gray = fastBitmap.getGray(i2);
            int gray2 = fastBitmap.getGray(((height - 1) * width) + i2);
            int gray3 = (i + 1) * gray;
            for (int i4 = 0; i4 < i; i4++) {
                gray3 += fastBitmap.getGray((i4 * width) + i2);
            }
            int i5 = i2;
            for (int i6 = 0; i6 <= i; i6++) {
                gray3 += fastBitmap.getGray(i3) - gray;
                fastBitmap2.setGray(i5, (int) Math.round(((double) gray3) * d));
                i3 += width;
                i5 += width;
            }
            int i7 = i + 1;
            int i8 = i3;
            int i9 = i2;
            while (i7 < height - i) {
                gray3 += fastBitmap.getGray(i8) - fastBitmap.getGray(i9);
                fastBitmap2.setGray(i5, (int) Math.round(((double) gray3) * d));
                i5 += width;
                i7++;
                i8 += width;
                i9 += width;
            }
            for (int i10 = height - i; i10 < height; i10++) {
                gray3 += gray2 - fastBitmap.getGray(i9);
                fastBitmap2.setGray(i5, (int) Math.round(((double) gray3) * d));
                i9 += width;
                i5 += width;
            }
        }
    }

    private void f(FastBitmap fastBitmap, FastBitmap fastBitmap2, int i) {
        int width = fastBitmap2.getWidth();
        int height = fastBitmap2.getHeight();
        double d = 1.0d / ((double) ((i + i) + 1));
        for (int i2 = 0; i2 < width; i2++) {
            int i3 = i2 + (i * width);
            int red = fastBitmap.getRed(i2);
            int red2 = fastBitmap.getRed(((height - 1) * width) + i2);
            int red3 = (i + 1) * red;
            for (int i4 = 0; i4 < i; i4++) {
                red3 += fastBitmap.getRed((i4 * width) + i2);
            }
            int i5 = i2;
            for (int i6 = 0; i6 <= i; i6++) {
                red3 += fastBitmap.getRed(i3) - red;
                fastBitmap2.setRed(i5, (int) Math.round(((double) red3) * d));
                i3 += width;
                i5 += width;
            }
            int i7 = i + 1;
            int i8 = i3;
            int i9 = i2;
            while (i7 < height - i) {
                red3 += fastBitmap.getRed(i8) - fastBitmap.getRed(i9);
                fastBitmap2.setRed(i5, (int) Math.round(((double) red3) * d));
                i5 += width;
                i7++;
                i8 += width;
                i9 += width;
            }
            for (int i10 = height - i; i10 < height; i10++) {
                red3 += red2 - fastBitmap.getRed(i9);
                fastBitmap2.setRed(i5, (int) Math.round(((double) red3) * d));
                i9 += width;
                i5 += width;
            }
        }
        for (int i11 = 0; i11 < width; i11++) {
            int i12 = i11 + (i * width);
            int green = fastBitmap.getGreen(i11);
            int green2 = fastBitmap.getGreen(((height - 1) * width) + i11);
            int green3 = (i + 1) * green;
            for (int i13 = 0; i13 < i; i13++) {
                green3 += fastBitmap.getGreen((i13 * width) + i11);
            }
            int i14 = i11;
            for (int i15 = 0; i15 <= i; i15++) {
                green3 += fastBitmap.getGreen(i12) - green;
                fastBitmap2.setGreen(i14, (int) Math.round(((double) green3) * d));
                i12 += width;
                i14 += width;
            }
            int i16 = i + 1;
            int i17 = i12;
            int i18 = i11;
            while (i16 < height - i) {
                green3 += fastBitmap.getGreen(i17) - fastBitmap.getGreen(i18);
                fastBitmap2.setGreen(i14, (int) Math.round(((double) green3) * d));
                i14 += width;
                i16++;
                i17 += width;
                i18 += width;
            }
            for (int i19 = height - i; i19 < height; i19++) {
                green3 += green2 - fastBitmap.getGreen(i18);
                fastBitmap2.setGreen(i14, (int) Math.round(((double) green3) * d));
                i18 += width;
                i14 += width;
            }
        }
        for (int i20 = 0; i20 < width; i20++) {
            int i21 = i20 + (i * width);
            int blue = fastBitmap.getBlue(i20);
            int blue2 = fastBitmap.getBlue(((height - 1) * width) + i20);
            int blue3 = (i + 1) * blue;
            for (int i22 = 0; i22 < i; i22++) {
                blue3 += fastBitmap.getBlue((i22 * width) + i20);
            }
            int i23 = i20;
            for (int i24 = 0; i24 <= i; i24++) {
                blue3 += fastBitmap.getBlue(i21) - blue;
                fastBitmap2.setBlue(i23, (int) Math.round(((double) blue3) * d));
                i21 += width;
                i23 += width;
            }
            int i25 = i + 1;
            int i26 = i21;
            int i27 = i20;
            while (i25 < height - i) {
                blue3 += fastBitmap.getBlue(i26) - fastBitmap.getBlue(i27);
                fastBitmap2.setBlue(i23, (int) Math.round(((double) blue3) * d));
                i23 += width;
                i25++;
                i26 += width;
                i27 += width;
            }
            for (int i28 = height - i; i28 < height; i28++) {
                blue3 += blue2 - fastBitmap.getBlue(i27);
                fastBitmap2.setBlue(i23, (int) Math.round(((double) blue3) * d));
                i27 += width;
                i23 += width;
            }
        }
    }

    private int[] a(double d, int i) {
        double dFloor = Math.floor(Math.sqrt((((12.0d * d) * d) / ((double) i)) + 1.0d));
        if (dFloor % 2.0d == 0.0d) {
            dFloor -= 1.0d;
        }
        double d2 = dFloor + 2.0d;
        double dRound = Math.round((((((12.0d * d) * d) - ((((double) i) * dFloor) * dFloor)) - (((double) (i * 4)) * dFloor)) - ((double) (i * 3))) / (((-4.0d) * dFloor) - 4.0d));
        int[] iArr = new int[i];
        for (int i2 = 0; i2 < i; i2++) {
            if (i2 < dRound) {
                iArr[i2] = (int) dFloor;
            } else {
                iArr[i2] = (int) d2;
            }
        }
        return iArr;
    }
}
