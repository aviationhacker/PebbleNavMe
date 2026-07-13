package Catalano.Imaging.Filters;

import Catalano.Core.IntRange;
import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class BrightnessCorrection implements IApplyInPlace {
    private LevelsLinear a = new LevelsLinear();
    private int b;

    public int getAdjustValue() {
        return this.b;
    }

    public void setAdjustValue(int i) {
        int iMax = Math.max(-255, Math.min(255, i));
        this.b = iMax;
        if (iMax > 0) {
            this.a.setInRed(new IntRange(0, 255 - iMax));
            this.a.setInGreen(new IntRange(0, 255 - iMax));
            this.a.setInBlue(new IntRange(0, 255 - iMax));
            this.a.setInGray(new IntRange(0, 255 - iMax));
            this.a.setOutRed(new IntRange(iMax, 255));
            this.a.setOutGreen(new IntRange(iMax, 255));
            this.a.setOutBlue(new IntRange(iMax, 255));
            this.a.setOutGray(new IntRange(iMax, 255));
            return;
        }
        this.a.setInRed(new IntRange(-iMax, 255));
        this.a.setInGreen(new IntRange(-iMax, 255));
        this.a.setInBlue(new IntRange(-iMax, 255));
        this.a.setInGray(new IntRange(-iMax, 255));
        this.a.setOutRed(new IntRange(0, iMax + 255));
        this.a.setOutGreen(new IntRange(0, iMax + 255));
        this.a.setOutBlue(new IntRange(0, iMax + 255));
        this.a.setOutGray(new IntRange(0, iMax + 255));
    }

    public BrightnessCorrection() {
    }

    public BrightnessCorrection(int i) {
        setAdjustValue(i);
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        this.a.applyInPlace(fastBitmap);
    }
}
