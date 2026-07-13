package Catalano.Imaging.Tools;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class ImagePadding implements IApplyInPlace {
    private int a;
    private int b;

    public int getWidth() {
        return this.a;
    }

    public void setWidth(int i) {
        this.a = i;
    }

    public int getHeight() {
        return this.b;
    }

    public void setHeight(int i) {
        this.b = i;
    }

    public void setSize(int i) {
        this.b = i;
        this.a = i;
    }

    public ImagePadding() {
        this.a = 1;
        this.b = 1;
    }

    public ImagePadding(int i) {
        this.a = 1;
        this.b = 1;
        this.a = i;
        this.b = i;
    }

    public ImagePadding(int i, int i2) {
        this.a = 1;
        this.b = 1;
        this.a = i;
        this.b = i2;
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        int width = fastBitmap.getWidth();
        int height = fastBitmap.getHeight();
        int i = width + this.a;
        int i2 = height + this.b;
        int i3 = (i2 - height) / 2;
        int i4 = (i - width) / 2;
        int i5 = this.b % 2 != 0 ? 1 : 0;
        int i6 = this.a % 2 != 0 ? 1 : 0;
        FastBitmap fastBitmap2 = new FastBitmap(i, i2, fastBitmap.getColorSpace());
        if (fastBitmap2.isGrayscale()) {
            for (int i7 = i3; i7 < (i2 - i3) - i5; i7++) {
                for (int i8 = i4; i8 < (i - i4) - i6; i8++) {
                    fastBitmap2.setGray(i7, i8, fastBitmap.getGray(i7 - i3, i8 - i4));
                }
            }
        }
        if (fastBitmap2.isRGB()) {
            for (int i9 = i3; i9 < (i2 - i3) - i5; i9++) {
                for (int i10 = i4; i10 < (i - i4) - i6; i10++) {
                    fastBitmap2.setRGB(i9, i10, fastBitmap.getRed(i9 - i3, i10 - i4), fastBitmap.getGreen(i9 - i3, i10 - i4), fastBitmap.getBlue(i9 - i3, i10 - i4));
                }
            }
        }
        fastBitmap.setImage(fastBitmap2);
    }
}
