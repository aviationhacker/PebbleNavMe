package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class BinaryOpening implements IApplyInPlace {
    private int[][] a;
    private int b;

    public BinaryOpening() {
        this.b = 0;
        this.b = 1;
    }

    public BinaryOpening(int[][] iArr) {
        this.b = 0;
        this.a = iArr;
    }

    public BinaryOpening(int i) {
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
        BinaryErosion binaryErosion = new BinaryErosion(iArr);
        BinaryDilatation binaryDilatation = new BinaryDilatation(iArr);
        binaryErosion.applyInPlace(fastBitmap);
        binaryDilatation.applyInPlace(fastBitmap);
    }

    private void a(FastBitmap fastBitmap, int i) {
        BinaryErosion binaryErosion = new BinaryErosion(i);
        BinaryDilatation binaryDilatation = new BinaryDilatation(i);
        binaryErosion.applyInPlace(fastBitmap);
        binaryDilatation.applyInPlace(fastBitmap);
    }
}
