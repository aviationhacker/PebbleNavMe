package Catalano.Imaging.Filters;

import Catalano.Imaging.IApplyInPlace;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public class Dilatation implements IApplyInPlace {
    private int a;
    private int[][] b;

    public Dilatation() {
        this.a = 0;
        this.a = 1;
    }

    public Dilatation(int i) {
        this.a = 0;
        this.a = Math.max(i, 1);
    }

    public Dilatation(int[][] iArr) {
        this.a = 0;
        this.b = iArr;
    }

    /* JADX WARN: Removed duplicated region for block: B:70:0x0146 A[PHI: r5 r6
  0x0146: PHI (r5v5 int) = (r5v4 int), (r5v4 int), (r5v4 int), (r5v4 int), (r5v7 int) binds: [B:45:0x00d4, B:46:0x00d6, B:47:0x00d8, B:48:0x00da, B:54:0x010d] A[DONT_GENERATE, DONT_INLINE]
  0x0146: PHI (r6v7 int) = (r6v6 int), (r6v6 int), (r6v6 int), (r6v6 int), (r6v11 int) binds: [B:45:0x00d4, B:46:0x00d6, B:47:0x00d8, B:48:0x00da, B:54:0x010d] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // Catalano.Imaging.IApplyInPlace
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void applyInPlace(Catalano.Imaging.FastBitmap r19) {
        /*
            Method dump skipped, instruction units count: 332
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: Catalano.Imaging.Filters.Dilatation.applyInPlace(Catalano.Imaging.FastBitmap):void");
    }

    private void a(int i) {
        int i2 = (i * 2) + 1;
        this.b = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, i2, i2);
        for (int i3 = 0; i3 < this.b.length; i3++) {
            for (int i4 = 0; i4 < this.b[0].length; i4++) {
                this.b[i3][i4] = 1;
            }
        }
    }
}
