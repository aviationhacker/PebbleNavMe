package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class IsoDataClassifier implements IApplyInPlace {
    int a;
    int[] b;

    public IsoDataClassifier() {
        this.a = 3;
    }

    public IsoDataClassifier(int i) {
        this.a = Math.min(255, i);
        this.a = Math.max(1, i);
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        if (fastBitmap.isGrayscale()) {
            this.b = a(fastBitmap);
            this.b = a(this.b, this.a);
            int size = fastBitmap.getSize();
            for (int i = 0; i < size; i++) {
                fastBitmap.setGray(i, this.b[fastBitmap.getGray(i)]);
            }
            return;
        }
        throw new IllegalArgumentException("IsoData Classifier only works with grayscale image.");
    }

    private int[] a(FastBitmap fastBitmap) {
        int size = fastBitmap.getSize();
        int[] iArr = new int[256];
        for (int i = 0; i < size; i++) {
            int gray = fastBitmap.getGray(i);
            iArr[gray] = iArr[gray] + 1;
        }
        return iArr;
    }

    private int[] a(int[] iArr, int i) {
        int[] iArr2 = new int[iArr.length];
        int i2 = 0;
        for (int i3 = 0; i3 < iArr.length; i3++) {
            i2 += iArr[i3] * i3;
        }
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        while (i5 < i) {
            int i7 = 0;
            int i8 = i4;
            int i9 = i6;
            while (i8 < iArr.length && (i9 * i) / i2 < i5 + 1) {
                int i10 = (iArr[i8] * i8) + i9;
                i7 += iArr[i8];
                i8++;
                i9 = i10;
            }
            int i11 = i7 > 0 ? (i9 - i6) / i7 : (i8 + i4) / 2;
            while (i4 < i8) {
                iArr2[i4] = i11;
                i4++;
            }
            i5++;
            i6 = i9;
        }
        return iArr2;
    }
}
