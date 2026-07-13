package Catalano.Imaging.Filters;

import Catalano.Core.FloatRange;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class YCbCrFiltering implements IApplyInPlace {
    private FloatRange a;
    private FloatRange b;
    private FloatRange c;
    private float d;
    private float e;
    private float f;
    private boolean g;
    private boolean h;
    private boolean i;
    private boolean j;

    public FloatRange getY() {
        return this.a;
    }

    public void setHue(FloatRange floatRange) {
        this.a = floatRange;
    }

    public FloatRange getCb() {
        return this.b;
    }

    public void setCb(FloatRange floatRange) {
        this.b = floatRange;
    }

    public FloatRange getCr() {
        return this.c;
    }

    public void setCr(FloatRange floatRange) {
        this.c = floatRange;
    }

    public float[] getFillColor() {
        return new float[]{this.d, this.e, this.f};
    }

    public void setFillColor(float f, float f2, float f3) {
        this.d = f;
        this.e = f2;
        this.f = f3;
    }

    public boolean isFillOutsideRange() {
        return this.g;
    }

    public void setFillOutsideRange(boolean z) {
        this.g = z;
    }

    public boolean isUpdatedY() {
        return this.h;
    }

    public void setUpdateY(boolean z) {
        this.h = z;
    }

    public boolean isUpdatedCb() {
        return this.i;
    }

    public void setUpdateCb(boolean z) {
        this.i = z;
    }

    public boolean isUpdatedCr() {
        return this.j;
    }

    public void setUpdateCr(boolean z) {
        this.j = z;
    }

    public YCbCrFiltering() {
        this.a = new FloatRange(0.0f, 1.0f);
        this.b = new FloatRange(-0.5f, 0.5f);
        this.c = new FloatRange(-0.5f, 0.5f);
        this.d = 0.0f;
        this.e = 0.0f;
        this.f = 0.0f;
        this.g = true;
        this.h = true;
        this.i = true;
        this.j = true;
    }

    public YCbCrFiltering(FloatRange floatRange, FloatRange floatRange2, FloatRange floatRange3) {
        this.a = new FloatRange(0.0f, 1.0f);
        this.b = new FloatRange(-0.5f, 0.5f);
        this.c = new FloatRange(-0.5f, 0.5f);
        this.d = 0.0f;
        this.e = 0.0f;
        this.f = 0.0f;
        this.g = true;
        this.h = true;
        this.i = true;
        this.j = true;
        this.a = floatRange;
        this.b = floatRange2;
        this.c = floatRange3;
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x00c4  */
    @Override // Catalano.Imaging.IApplyInPlace
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void applyInPlace(Catalano.Imaging.FastBitmap r10) {
        /*
            r9 = this;
            r8 = 2
            r1 = 1
            r2 = 0
            boolean r0 = r10.isRGB()
            if (r0 == 0) goto Lbb
            int r4 = r10.getSize()
            r3 = r2
        Le:
            if (r3 >= r4) goto Lc3
            int r0 = r10.getRed(r3)
            int r5 = r10.getGreen(r3)
            int r6 = r10.getBlue(r3)
            Catalano.Imaging.Tools.ColorConverter$YCbCrColorSpace r7 = Catalano.Imaging.Tools.ColorConverter.YCbCrColorSpace.ITU_BT_601
            float[] r5 = Catalano.Imaging.Tools.ColorConverter.RGBtoYCbCr(r0, r5, r6, r7)
            r0 = r5[r2]
            Catalano.Core.FloatRange r6 = r9.a
            float r6 = r6.getMin()
            int r0 = (r0 > r6 ? 1 : (r0 == r6 ? 0 : -1))
            if (r0 < 0) goto L9d
            r0 = r5[r2]
            Catalano.Core.FloatRange r6 = r9.a
            float r6 = r6.getMax()
            int r0 = (r0 > r6 ? 1 : (r0 == r6 ? 0 : -1))
            if (r0 > 0) goto L9d
            r0 = r5[r1]
            Catalano.Core.FloatRange r6 = r9.b
            float r6 = r6.getMin()
            int r0 = (r0 > r6 ? 1 : (r0 == r6 ? 0 : -1))
            if (r0 < 0) goto L9d
            r0 = r5[r1]
            Catalano.Core.FloatRange r6 = r9.b
            float r6 = r6.getMax()
            int r0 = (r0 > r6 ? 1 : (r0 == r6 ? 0 : -1))
            if (r0 > 0) goto L9d
            r0 = r5[r8]
            Catalano.Core.FloatRange r6 = r9.c
            float r6 = r6.getMin()
            int r0 = (r0 > r6 ? 1 : (r0 == r6 ? 0 : -1))
            if (r0 < 0) goto L9d
            r0 = r5[r8]
            Catalano.Core.FloatRange r6 = r9.c
            float r6 = r6.getMax()
            int r0 = (r0 > r6 ? 1 : (r0 == r6 ? 0 : -1))
            if (r0 > 0) goto L9d
            boolean r0 = r9.g
            if (r0 != 0) goto Lc4
            boolean r0 = r9.h
            if (r0 == 0) goto L76
            float r0 = r9.d
            r5[r2] = r0
        L76:
            boolean r0 = r9.i
            if (r0 == 0) goto L7e
            float r0 = r9.e
            r5[r1] = r0
        L7e:
            boolean r0 = r9.j
            if (r0 == 0) goto L86
            float r0 = r9.f
            r5[r8] = r0
        L86:
            r0 = r1
        L87:
            if (r0 == 0) goto L98
            r0 = r5[r2]
            r6 = r5[r1]
            r5 = r5[r8]
            Catalano.Imaging.Tools.ColorConverter$YCbCrColorSpace r7 = Catalano.Imaging.Tools.ColorConverter.YCbCrColorSpace.ITU_BT_601
            int[] r0 = Catalano.Imaging.Tools.ColorConverter.YCbCrtoRGB(r0, r6, r5, r7)
            r10.setRGB(r3, r0)
        L98:
            int r0 = r3 + 1
            r3 = r0
            goto Le
        L9d:
            boolean r0 = r9.g
            if (r0 == 0) goto Lc4
            boolean r0 = r9.h
            if (r0 == 0) goto La9
            float r0 = r9.d
            r5[r2] = r0
        La9:
            boolean r0 = r9.i
            if (r0 == 0) goto Lb1
            float r0 = r9.e
            r5[r1] = r0
        Lb1:
            boolean r0 = r9.j
            if (r0 == 0) goto Lb9
            float r0 = r9.f
            r5[r8] = r0
        Lb9:
            r0 = r1
            goto L87
        Lbb:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.String r1 = "HSL Filtering only works in RGB images."
            r0.<init>(r1)
            throw r0
        Lc3:
            return
        Lc4:
            r0 = r2
            goto L87
        */
        throw new UnsupportedOperationException("Method not decompiled: Catalano.Imaging.Filters.YCbCrFiltering.applyInPlace(Catalano.Imaging.FastBitmap):void");
    }
}
