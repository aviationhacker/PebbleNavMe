package Catalano.Imaging.Filters;

import Catalano.Core.FloatRange;
import Catalano.Core.IntRange;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class HSLFiltering implements IApplyInPlace {
    private IntRange a;
    private FloatRange b;
    private FloatRange c;
    private int d;
    private float e;
    private float f;
    private boolean g;
    private boolean h;
    private boolean i;
    private boolean j;

    public IntRange getHue() {
        return this.a;
    }

    public void setHue(IntRange intRange) {
        this.a = intRange;
    }

    public FloatRange getSaturation() {
        return this.b;
    }

    public void setSaturation(FloatRange floatRange) {
        this.b = floatRange;
    }

    public FloatRange getLuminance() {
        return this.c;
    }

    public void setLuminance(FloatRange floatRange) {
        this.c = floatRange;
    }

    public float[] getFillColor() {
        return new float[]{this.d, this.e, this.f};
    }

    public void setFillColor(int i, float f, float f2) {
        this.d = i;
        this.e = f;
        this.f = f2;
    }

    public boolean isFillOutsideRange() {
        return this.g;
    }

    public void setFillOutsideRange(boolean z) {
        this.g = z;
    }

    public boolean isUpdatedHue() {
        return this.h;
    }

    public void setUpdateHue(boolean z) {
        this.h = z;
    }

    public boolean isUpdatedSaturation() {
        return this.i;
    }

    public void setUpdateSaturation(boolean z) {
        this.i = z;
    }

    public boolean isUpdatedLuminance() {
        return this.j;
    }

    public void setUpdateLuminance(boolean z) {
        this.j = z;
    }

    public HSLFiltering() {
        this.a = new IntRange(0, 359);
        this.b = new FloatRange(0.0f, 1.0f);
        this.c = new FloatRange(0.0f, 1.0f);
        this.d = 0;
        this.e = 0.0f;
        this.f = 0.0f;
        this.g = true;
        this.h = true;
        this.i = true;
        this.j = true;
    }

    public HSLFiltering(IntRange intRange, FloatRange floatRange, FloatRange floatRange2) {
        this.a = new IntRange(0, 359);
        this.b = new FloatRange(0.0f, 1.0f);
        this.c = new FloatRange(0.0f, 1.0f);
        this.d = 0;
        this.e = 0.0f;
        this.f = 0.0f;
        this.g = true;
        this.h = true;
        this.i = true;
        this.j = true;
        this.a = intRange;
        this.b = floatRange;
        this.c = floatRange2;
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x00fa  */
    @Override // Catalano.Imaging.IApplyInPlace
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void applyInPlace(Catalano.Imaging.FastBitmap r9) {
        /*
            Method dump skipped, instruction units count: 252
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: Catalano.Imaging.Filters.HSLFiltering.applyInPlace(Catalano.Imaging.FastBitmap):void");
    }
}
