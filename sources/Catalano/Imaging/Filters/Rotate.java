package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class Rotate implements IApplyInPlace {
    private double a;
    private boolean b;
    private Algorithm c;

    public enum Algorithm {
        BILINEAR,
        BICUBIC,
        NEAREST_NEIGHBOR
    }

    public double getAngle() {
        return this.a;
    }

    public void setAngle(double d) {
        this.a = d;
    }

    public boolean isKeepSize() {
        return this.b;
    }

    public void setKeepSize(boolean z) {
        this.b = z;
    }

    public Algorithm getAlgorithm() {
        return this.c;
    }

    public void setAlgorithm(Algorithm algorithm) {
        this.c = algorithm;
    }

    public Rotate(double d) {
        this.a = d;
        this.c = Algorithm.NEAREST_NEIGHBOR;
    }

    public Rotate(double d, boolean z) {
        this.a = d;
        this.b = z;
        this.c = Algorithm.NEAREST_NEIGHBOR;
    }

    public Rotate(double d, Algorithm algorithm) {
        this.a = d;
        this.c = algorithm;
    }

    public Rotate(double d, boolean z, Algorithm algorithm) {
        this.a = d;
        this.b = z;
        this.c = algorithm;
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        switch (this.c) {
            case BILINEAR:
                new RotateBilinear(this.a, this.b).applyInPlace(fastBitmap);
                break;
            case BICUBIC:
                new RotateBicubic(this.a, this.b).applyInPlace(fastBitmap);
                break;
            case NEAREST_NEIGHBOR:
                new RotateNearestNeighbor(this.a, this.b).applyInPlace(fastBitmap);
                break;
            default:
                new RotateNearestNeighbor(this.a, this.b).applyInPlace(fastBitmap);
                break;
        }
    }
}
