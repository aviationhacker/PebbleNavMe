package Catalano.Imaging.Filters;

import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class Mode implements IApplyInPlace {
    private int a;

    public int getRadius() {
        return this.a;
    }

    public void setRadius(int i) {
        this.a = i;
    }

    public Mode() {
        this.a = 1;
    }

    public Mode(int i) {
        this.a = 1;
        this.a = Math.max(1, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:144:0x03b4 A[PHI: r4 r7 r8
  0x03b4: PHI (r4v82 int) = (r4v81 int), (r4v81 int), (r4v81 int), (r4v81 int), (r4v84 int) binds: [B:17:0x0058, B:19:0x005c, B:20:0x005e, B:22:0x0062, B:26:0x0076] A[DONT_GENERATE, DONT_INLINE]
  0x03b4: PHI (r7v22 int) = (r7v20 int), (r7v20 int), (r7v20 int), (r7v20 int), (r7v25 int) binds: [B:17:0x0058, B:19:0x005c, B:20:0x005e, B:22:0x0062, B:26:0x0076] A[DONT_GENERATE, DONT_INLINE]
  0x03b4: PHI (r8v14 double) = (r8v13 double), (r8v13 double), (r8v13 double), (r8v13 double), (r8v18 double) binds: [B:17:0x0058, B:19:0x005c, B:20:0x005e, B:22:0x0062, B:26:0x0076] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // Catalano.Imaging.IApplyInPlace
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void applyInPlace(Catalano.Imaging.FastBitmap r46) {
        /*
            Method dump skipped, instruction units count: 956
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: Catalano.Imaging.Filters.Mode.applyInPlace(Catalano.Imaging.FastBitmap):void");
    }

    private int a(int i) {
        return (i * 2) + 1;
    }
}
