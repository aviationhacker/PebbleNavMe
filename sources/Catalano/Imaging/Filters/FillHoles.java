package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class FillHoles implements IApplyInPlace {
    private int a;
    private int b;

    public FillHoles() {
        this.a = 0;
        this.b = 0;
    }

    public FillHoles(int i, int i2) {
        this.a = 0;
        this.b = 0;
        this.b = Math.max(0, i2);
        this.a = Math.max(0, i);
    }

    public int getMinArea() {
        return this.a;
    }

    public void setMinArea(int i) {
        this.a = i;
    }

    public int getMaxArea() {
        return this.b;
    }

    public void setMaxArea(int i) {
        this.b = i;
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        Invert invert = new Invert();
        invert.applyInPlace(fastBitmap);
        BlobsFiltering blobsFiltering = new BlobsFiltering();
        blobsFiltering.setMinArea(this.a);
        blobsFiltering.setMaxArea(this.b);
        blobsFiltering.applyInPlace(fastBitmap);
        invert.applyInPlace(fastBitmap);
    }
}
