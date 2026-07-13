package Catalano.Imaging.Filters;

import Catalano.Core.IntRange;
import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;
import android.support.v4.media.TransportMediator;

/* JADX INFO: loaded from: classes.dex */
public class ContrastCorrection implements IApplyInPlace {
    private LevelsLinear a = new LevelsLinear();
    private int b = 10;

    public int getFactor() {
        return this.b;
    }

    public void setFactor(int i) {
        int iMax = Math.max(-127, Math.min(TransportMediator.KEYCODE_MEDIA_PAUSE, i));
        this.b = iMax;
        if (iMax > 1) {
            this.a.setInRed(new IntRange(iMax, 255 - iMax));
            this.a.setInGreen(new IntRange(iMax, 255 - iMax));
            this.a.setInBlue(new IntRange(iMax, 255 - iMax));
            this.a.setInGray(new IntRange(iMax, 255 - iMax));
            this.a.setOutRed(new IntRange(0, 255));
            this.a.setOutGreen(new IntRange(0, 255));
            this.a.setOutBlue(new IntRange(0, 255));
            this.a.setOutGray(new IntRange(0, 255));
            return;
        }
        this.a.setInRed(new IntRange(-iMax, iMax + 255));
        this.a.setInGreen(new IntRange(-iMax, iMax + 255));
        this.a.setInBlue(new IntRange(-iMax, iMax + 255));
        this.a.setInGray(new IntRange(-iMax, iMax + 255));
        this.a.setOutRed(new IntRange(0, 255));
        this.a.setOutGreen(new IntRange(0, 255));
        this.a.setOutBlue(new IntRange(0, 255));
        this.a.setOutGray(new IntRange(0, 255));
    }

    public ContrastCorrection() {
    }

    public ContrastCorrection(int i) {
        setFactor(i);
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        this.a.applyInPlace(fastBitmap);
    }
}
