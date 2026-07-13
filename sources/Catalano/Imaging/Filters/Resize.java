package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class Resize implements IApplyInPlace {
    private Algorithm a;
    private int b;
    private int c;

    public enum Algorithm {
        BILINEAR,
        BICUBIC,
        NEAREST_NEIGHBOR
    }

    public Resize(int i, int i2) {
        this.b = i;
        this.c = i2;
        this.a = Algorithm.NEAREST_NEIGHBOR;
    }

    public Resize(int i, int i2, Algorithm algorithm) {
        this.b = i;
        this.c = i2;
        this.a = algorithm;
    }

    public int getNewHeight() {
        return this.c;
    }

    public void setNewHeight(int i) {
        this.c = i;
    }

    public int getNewWidth() {
        return this.b;
    }

    public void setNewWidth(int i) {
        this.b = i;
    }

    public void setNewSize(int i, int i2) {
        this.b = i;
        this.c = i2;
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        switch (this.a) {
            case BILINEAR:
                new ResizeBilinear(this.b, this.c).applyInPlace(fastBitmap);
                break;
            case BICUBIC:
                new ResizeBicubic(this.b, this.c).applyInPlace(fastBitmap);
                break;
            case NEAREST_NEIGHBOR:
                new ResizeNearestNeighbor(this.b, this.c).applyInPlace(fastBitmap);
                break;
        }
    }
}
