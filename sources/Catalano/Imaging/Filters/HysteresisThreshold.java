package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class HysteresisThreshold implements IApplyInPlace {
    int a;
    int b;

    public int getLowThreshold() {
        return this.a;
    }

    public void setLowThreshold(int i) {
        this.a = i;
    }

    public int getHighThreshold() {
        return this.b;
    }

    public void setHighThreshold(int i) {
        this.b = i;
    }

    public HysteresisThreshold() {
        this.a = 20;
        this.b = 100;
    }

    public HysteresisThreshold(int i, int i2) {
        this.a = 20;
        this.b = 100;
        this.a = i;
        this.b = i2;
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        if (fastBitmap.isGrayscale()) {
            int width = fastBitmap.getWidth();
            int height = fastBitmap.getHeight();
            for (int i = 1; i < height - 1; i++) {
                for (int i2 = 1; i2 < width - 1; i2++) {
                    if (fastBitmap.getGray(i, i2) < this.b) {
                        if (fastBitmap.getGray(i, i2) < this.a) {
                            fastBitmap.setGray(i, i2, 0);
                        } else if (fastBitmap.getGray(i, i2 - 1) < this.b && fastBitmap.getGray(i, i2 + 1) < this.b && fastBitmap.getGray(i - 1, i2 - 1) < this.b && fastBitmap.getGray(i - 1, i2) < this.b && fastBitmap.getGray(i - 1, i2 + 1) < this.b && fastBitmap.getGray(i + 1, i2 - 1) < this.b && fastBitmap.getGray(i + 1, i2) < this.b && fastBitmap.getGray(i + 1, i2 + 1) < this.b) {
                            fastBitmap.setGray(i, i2, 0);
                        }
                    }
                }
            }
            return;
        }
        throw new IllegalArgumentException("Hysteresis Threshold only works with grayscale images.");
    }
}
