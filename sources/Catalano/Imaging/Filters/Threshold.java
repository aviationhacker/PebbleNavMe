package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class Threshold implements IApplyInPlace {
    private int a;
    private boolean b;

    public Threshold() {
        this.a = 128;
        this.b = false;
    }

    public Threshold(int i) {
        this.a = 128;
        this.b = false;
        this.a = i;
    }

    public Threshold(int i, boolean z) {
        this.a = 128;
        this.b = false;
        this.a = i;
        this.b = z;
    }

    public int getValue() {
        return this.a;
    }

    public void setValue(int i) {
        this.a = i;
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        if (!fastBitmap.isGrayscale()) {
            throw new IllegalArgumentException("Binarization works only with RGB images.");
        }
        int[] data = fastBitmap.getData();
        for (int i = 0; i < data.length; i++) {
            int i2 = data[i] & 255;
            if (!this.b) {
                if (i2 >= this.a) {
                    data[i] = -1;
                } else {
                    data[i] = 0;
                }
            } else if (i2 < this.a) {
                data[i] = 0;
            } else {
                data[i] = -1;
            }
        }
    }
}
