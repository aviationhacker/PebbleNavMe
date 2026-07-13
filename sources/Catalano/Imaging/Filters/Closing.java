package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class Closing implements IApplyInPlace {
    private int[][] a;
    private int b;

    public Closing() {
        this.b = 0;
        this.b = 1;
    }

    public Closing(int[][] iArr) {
        this.b = 0;
        this.a = iArr;
    }

    public Closing(int i) {
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
        Dilatation dilatation = new Dilatation(iArr);
        Erosion erosion = new Erosion(iArr);
        dilatation.applyInPlace(fastBitmap);
        erosion.applyInPlace(fastBitmap);
    }

    private void a(FastBitmap fastBitmap, int i) {
        Dilatation dilatation = new Dilatation(i);
        Erosion erosion = new Erosion(i);
        dilatation.applyInPlace(fastBitmap);
        erosion.applyInPlace(fastBitmap);
    }
}
