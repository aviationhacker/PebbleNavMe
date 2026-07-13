package Catalano.Imaging.Filters;

import Catalano.Core.FloatRange;
import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class SaturationCorrection implements IApplyInPlace {
    private HSLLinear a = new HSLLinear();
    private float b;

    public float getAdjustValue() {
        return this.b;
    }

    public void setAdjustValue(float f) {
        this.b = Math.max(-1.0f, Math.min(1.0f, f));
        if (this.b > 0.0f) {
            this.a.setInLuminance(new FloatRange(0.0f, 1.0f - this.b));
            this.a.setOutSaturation(new FloatRange(this.b, 1.0f));
        } else {
            this.a.setInSaturation(new FloatRange(-this.b, 1.0f));
            this.a.setOutSaturation(new FloatRange(0.0f, this.b + 1.0f));
        }
    }

    public SaturationCorrection() {
        setAdjustValue(0.1f);
    }

    public SaturationCorrection(float f) {
        setAdjustValue(f);
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        this.a.applyInPlace(fastBitmap);
    }
}
