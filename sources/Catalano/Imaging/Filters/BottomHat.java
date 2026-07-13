package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class BottomHat implements IApplyInPlace {
    private int[][] a;
    private int b;

    public BottomHat() {
        this.b = 1;
    }

    public BottomHat(int[][] iArr) {
        this.a = iArr;
    }

    public BottomHat(int i) {
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

    private void a(FastBitmap fastBitmap, int i) {
        FastBitmap fastBitmap2 = new FastBitmap(fastBitmap);
        new BinaryClosing(i).applyInPlace(fastBitmap2);
        new Subtract(fastBitmap).applyInPlace(fastBitmap2);
        fastBitmap.setImage(fastBitmap2);
    }

    private void a(FastBitmap fastBitmap, int[][] iArr) {
        FastBitmap fastBitmap2 = new FastBitmap(fastBitmap);
        new BinaryClosing(iArr).applyInPlace(fastBitmap2);
        new Subtract(fastBitmap2).applyInPlace(fastBitmap);
        fastBitmap.setImage(fastBitmap2);
    }
}
