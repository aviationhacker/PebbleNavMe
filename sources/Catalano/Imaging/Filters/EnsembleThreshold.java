package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;
import Catalano.Math.Matrix;

/* JADX INFO: loaded from: classes.dex */
public class EnsembleThreshold implements IApplyInPlace {
    private int[] a;
    private boolean b;

    public int[] getThreshold() {
        return this.a;
    }

    public void setThreshold(int[] iArr) {
        this.a = iArr;
    }

    public boolean isInvert() {
        return this.b;
    }

    public void setInvert(boolean z) {
        this.b = z;
    }

    public EnsembleThreshold(int[] iArr) {
        this(iArr, false);
    }

    public EnsembleThreshold(int[] iArr, boolean z) {
        this.a = iArr;
        this.b = z;
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        if (fastBitmap.isGrayscale()) {
            int size = fastBitmap.getSize();
            for (int i = 0; i < size; i++) {
                int gray = fastBitmap.getGray(i);
                int[] iArr = new int[2];
                for (int i2 = 0; i2 < this.a.length; i2++) {
                    if (!this.b) {
                        if (gray >= this.a[i2]) {
                            iArr[1] = iArr[1] + 1;
                        } else {
                            iArr[0] = iArr[0] + 1;
                        }
                    } else if (gray >= this.a[i2]) {
                        iArr[0] = iArr[0] + 1;
                    } else {
                        iArr[1] = iArr[1] + 1;
                    }
                }
                if (Matrix.MaxIndex(iArr) == 0) {
                    fastBitmap.setGray(i, 0);
                } else {
                    fastBitmap.setGray(i, 255);
                }
            }
            return;
        }
        throw new IllegalArgumentException("Ensemble Threshold only works in grayscale images.");
    }
}
