package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class BinaryClosing implements IApplyInPlace {
    private int[][] a;
    private int b;

    public BinaryClosing() {
        this.b = 0;
        this.b = 1;
    }

    public BinaryClosing(int[][] iArr) {
        this.b = 0;
        this.a = iArr;
    }

    public BinaryClosing(int i) {
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
        BinaryDilatation binaryDilatation = new BinaryDilatation(iArr);
        BinaryErosion binaryErosion = new BinaryErosion(iArr);
        binaryDilatation.applyInPlace(fastBitmap);
        binaryErosion.applyInPlace(fastBitmap);
    }

    private void a(FastBitmap fastBitmap, int i) {
        BinaryDilatation binaryDilatation = new BinaryDilatation(i);
        BinaryErosion binaryErosion = new BinaryErosion(i);
        binaryDilatation.applyInPlace(fastBitmap);
        binaryErosion.applyInPlace(fastBitmap);
    }
}
