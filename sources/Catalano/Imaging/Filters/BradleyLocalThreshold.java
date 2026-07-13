package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;
import Catalano.Imaging.Tools.IntegralImage;

/* JADX INFO: loaded from: classes.dex */
public class BradleyLocalThreshold implements IApplyInPlace {
    private int a;
    private float b;

    public BradleyLocalThreshold() {
        this.a = 41;
        this.b = 0.15f;
    }

    public BradleyLocalThreshold(int i) {
        this.a = 41;
        this.b = 0.15f;
        this.a = i;
    }

    public BradleyLocalThreshold(int i, float f) {
        this.a = 41;
        this.b = 0.15f;
        this.a = i;
    }

    public int getWindowSize() {
        return this.a;
    }

    public void setWindowSize(int i) {
        this.a = i;
    }

    public float getPixelBrightnessDifferenceLimit() {
        return this.b;
    }

    public void setPixelBrightnessDifferenceLimit(float f) {
        this.b = f;
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        IntegralImage integralImage = new IntegralImage(fastBitmap);
        int width = fastBitmap.getWidth();
        int height = fastBitmap.getHeight();
        int i = width - 1;
        int i2 = height - 1;
        int i3 = this.a / 2;
        float f = 1.0f - this.b;
        for (int i4 = 0; i4 < height; i4++) {
            int i5 = i4 - i3;
            int i6 = i4 + i3;
            int i7 = i5 < 0 ? 0 : i5;
            if (i6 > i2) {
                i6 = i2;
            }
            for (int i8 = 0; i8 < width; i8++) {
                int i9 = i8 - i3;
                int i10 = i8 + i3;
                if (i9 < 0) {
                    i9 = 0;
                }
                if (i10 > i) {
                    i10 = i;
                }
                fastBitmap.setGray(i4, i8, fastBitmap.getGray(i4, i8) < ((int) (integralImage.getRectangleMeanUnsafe(i7, i9, i6, i10) * f)) ? 0 : 255);
            }
        }
    }
}
