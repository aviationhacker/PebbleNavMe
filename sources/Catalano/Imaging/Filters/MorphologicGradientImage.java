package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class MorphologicGradientImage implements IApplyInPlace {
    private int[][] a;
    private int b;
    private boolean c;

    public int getRadius() {
        return this.b;
    }

    public void setRadius(int i) {
        this.b = i;
        this.c = true;
    }

    public int[][] getKernel() {
        return this.a;
    }

    public void setKernel(int[][] iArr) {
        this.a = iArr;
        this.c = false;
    }

    public MorphologicGradientImage() {
        this.b = 1;
        this.c = true;
    }

    public MorphologicGradientImage(int i) {
        this.b = 1;
        this.c = true;
        this.b = i;
        this.c = true;
    }

    public MorphologicGradientImage(int[][] iArr) {
        this.b = 1;
        this.c = true;
        this.a = iArr;
        this.c = false;
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        if (fastBitmap.isGrayscale()) {
            FastBitmap fastBitmap2 = new FastBitmap(fastBitmap);
            if (this.c) {
                new Dilatation(this.b).applyInPlace(fastBitmap);
                new Erosion(this.b).applyInPlace(fastBitmap2);
            } else {
                new Dilatation(this.a).applyInPlace(fastBitmap);
                new Erosion(this.a).applyInPlace(fastBitmap2);
            }
            new Subtract(fastBitmap2).applyInPlace(fastBitmap);
            fastBitmap2.recycle();
            return;
        }
        throw new IllegalArgumentException("Morphologic Gradient Image only works with grayscale images.");
    }
}
