package Catalano.Imaging.Filters;

import Catalano.Imaging.IApplyInPlace;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public class Erosion implements IApplyInPlace {
    private int a;
    private int[][] b;

    public Erosion() {
        this.a = 0;
        this.a = 1;
    }

    public Erosion(int i) {
        this.a = 0;
        this.a = Math.max(i, 1);
    }

    public Erosion(int[][] iArr) {
        this.a = 0;
        this.b = iArr;
    }

    /* JADX WARN: Removed duplicated region for block: B:67:0x0138 A[PHI: r6 r7
  0x0138: PHI (r6v7 int) = (r6v5 int), (r6v5 int), (r6v5 int), (r6v5 int), (r6v10 int) binds: [B:44:0x00cc, B:45:0x00ce, B:46:0x00d0, B:47:0x00d2, B:53:0x0106] A[DONT_GENERATE, DONT_INLINE]
  0x0138: PHI (r7v3 int) = (r7v2 int), (r7v2 int), (r7v2 int), (r7v2 int), (r7v7 int) binds: [B:44:0x00cc, B:45:0x00ce, B:46:0x00d0, B:47:0x00d2, B:53:0x0106] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // Catalano.Imaging.IApplyInPlace
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void applyInPlace(Catalano.Imaging.FastBitmap r19) {
        /*
            Method dump skipped, instruction units count: 319
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: Catalano.Imaging.Filters.Erosion.applyInPlace(Catalano.Imaging.FastBitmap):void");
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
