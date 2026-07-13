package Catalano.Imaging.Filters;

import Catalano.Core.FloatRange;
import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;
import Catalano.Imaging.Tools.ColorConverter;

/* JADX INFO: loaded from: classes.dex */
public class HSLLinear implements IApplyInPlace {
    private FloatRange a = new FloatRange(0.0f, 1.0f);
    private FloatRange b = new FloatRange(0.0f, 1.0f);
    private FloatRange c = new FloatRange(0.0f, 1.0f);
    private FloatRange d = new FloatRange(0.0f, 1.0f);

    public FloatRange getInLuminance() {
        return this.a;
    }

    public void setInLuminance(FloatRange floatRange) {
        this.a = floatRange;
    }

    public FloatRange getInSaturation() {
        return this.b;
    }

    public void setInSaturation(FloatRange floatRange) {
        this.b = floatRange;
    }

    public FloatRange getOutLuminance() {
        return this.c;
    }

    public void setOutLuminance(FloatRange floatRange) {
        this.c = floatRange;
    }

    public FloatRange getOutSaturation() {
        return this.d;
    }

    public void setOutSaturation(FloatRange floatRange) {
        this.d = floatRange;
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        float min;
        float max;
        float max2;
        float min2 = 0.0f;
        if (fastBitmap.isRGB()) {
            if (this.a.getMax() != this.a.getMin()) {
                max = (this.c.getMax() - this.c.getMin()) / (this.a.getMax() - this.a.getMin());
                min = this.c.getMin() - (this.a.getMin() * max);
            } else {
                min = 0.0f;
                max = 0.0f;
            }
            if (this.b.getMax() != this.b.getMin()) {
                max2 = (this.d.getMax() - this.d.getMin()) / (this.b.getMax() - this.b.getMin());
                min2 = this.d.getMin() - (this.b.getMin() * max2);
            } else {
                max2 = 0.0f;
            }
            int size = fastBitmap.getSize();
            for (int i = 0; i < size; i++) {
                float[] fArrRGBtoHLS = ColorConverter.RGBtoHLS(fastBitmap.getRed(i), fastBitmap.getGreen(i), fastBitmap.getBlue(i));
                if (fArrRGBtoHLS[2] >= this.a.getMax()) {
                    fArrRGBtoHLS[2] = this.c.getMax();
                } else if (fArrRGBtoHLS[2] <= this.a.getMin()) {
                    fArrRGBtoHLS[2] = this.c.getMin();
                } else {
                    fArrRGBtoHLS[2] = (fArrRGBtoHLS[2] * max) + min;
                }
                if (fArrRGBtoHLS[1] >= this.b.getMax()) {
                    fArrRGBtoHLS[1] = this.d.getMax();
                } else if (fArrRGBtoHLS[1] <= this.b.getMin()) {
                    fArrRGBtoHLS[1] = this.d.getMin();
                } else {
                    fArrRGBtoHLS[1] = (fArrRGBtoHLS[1] * max2) + min2;
                }
                int[] iArrHSLtoRGB = ColorConverter.HSLtoRGB(fArrRGBtoHLS[0], fArrRGBtoHLS[1], fArrRGBtoHLS[2]);
                iArrHSLtoRGB[0] = fastBitmap.clampValues(iArrHSLtoRGB[0], 0, 255);
                iArrHSLtoRGB[1] = fastBitmap.clampValues(iArrHSLtoRGB[1], 0, 255);
                iArrHSLtoRGB[2] = fastBitmap.clampValues(iArrHSLtoRGB[2], 0, 255);
                fastBitmap.setRGB(i, iArrHSLtoRGB);
            }
        }
    }
}
