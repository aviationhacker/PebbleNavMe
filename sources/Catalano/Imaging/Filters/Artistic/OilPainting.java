package Catalano.Imaging.Filters.Artistic;

import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class OilPainting implements IApplyInPlace {
    private int a = 2;

    public int getRadius() {
        return this.a;
    }

    public void setRadius(int i) {
        this.a = Math.max(2, i);
    }

    public OilPainting() {
    }

    public OilPainting(int i) {
        setRadius(i);
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0121  */
    @Override // Catalano.Imaging.IApplyInPlace
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void applyInPlace(Catalano.Imaging.FastBitmap r21) {
        /*
            Method dump skipped, instruction units count: 293
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: Catalano.Imaging.Filters.Artistic.OilPainting.applyInPlace(Catalano.Imaging.FastBitmap):void");
    }
}
