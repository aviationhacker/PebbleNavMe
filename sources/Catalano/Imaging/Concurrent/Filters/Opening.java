package Catalano.Imaging.Concurrent.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class Opening implements IApplyInPlace {
    private int[][] a;
    private int b;

    public Opening() {
        this.b = 0;
        this.b = 1;
    }

    public Opening(int[][] iArr) {
        this.b = 0;
        this.a = iArr;
    }

    public Opening(int i) {
        this.b = 0;
        this.b = i < 1 ? 1 : i;
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        if (this.b != 0) {
            a(fastBitmap, this.b);
        } else {
            a(fastBitmap, this.a);
        }
    }

    private void a(FastBitmap fastBitmap, int[][] iArr) {
        Erosion erosion = new Erosion(iArr);
        Dilatation dilatation = new Dilatation(iArr);
        erosion.applyInPlace(fastBitmap);
        dilatation.applyInPlace(fastBitmap);
    }

    private void a(FastBitmap fastBitmap, int i) {
        Erosion erosion = new Erosion(i);
        Dilatation dilatation = new Dilatation(i);
        erosion.applyInPlace(fastBitmap);
        dilatation.applyInPlace(fastBitmap);
    }
}
