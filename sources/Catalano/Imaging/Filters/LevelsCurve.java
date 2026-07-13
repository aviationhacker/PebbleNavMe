package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;
import Catalano.Imaging.Tools.Curve;

/* JADX INFO: loaded from: classes.dex */
public class LevelsCurve implements IApplyInPlace {
    private Curve a;
    private Curve b;
    private Curve c;
    private Curve d;

    public Curve getCurveRed() {
        return this.a;
    }

    public void setCurveRed(Curve curve) {
        this.a = curve;
    }

    public Curve getCurveGreen() {
        return this.b;
    }

    public void setCurveGreen(Curve curve) {
        this.b = curve;
    }

    public Curve getCurveBlue() {
        return this.c;
    }

    public void setCurveBlue(Curve curve) {
        this.c = curve;
    }

    public void setCurve(Curve curve, Curve curve2, Curve curve3) {
        this.a = curve;
        this.b = curve2;
        this.c = curve3;
    }

    public Curve getCurveGray() {
        return this.d;
    }

    public void setCurveGray(Curve curve) {
        this.d = curve;
    }

    public LevelsCurve() {
        this.a = new Curve();
        this.b = new Curve();
        this.c = new Curve();
        this.d = new Curve();
    }

    public LevelsCurve(Curve curve) {
        this.d = curve;
    }

    public LevelsCurve(Curve curve, Curve curve2, Curve curve3) {
        this.a = curve;
        this.b = curve2;
        this.c = curve3;
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        int i = 0;
        if (fastBitmap.isGrayscale()) {
            int[] iArrMakeLut = this.d.makeLut();
            int width = fastBitmap.getWidth() * fastBitmap.getHeight();
            while (i < width) {
                fastBitmap.setGray(i, iArrMakeLut[fastBitmap.getGreen(i)]);
                i++;
            }
            return;
        }
        if (fastBitmap.isRGB()) {
            int[] iArrMakeLut2 = this.a.makeLut();
            int[] iArrMakeLut3 = this.b.makeLut();
            int[] iArrMakeLut4 = this.c.makeLut();
            int width2 = fastBitmap.getWidth() * fastBitmap.getHeight();
            while (i < width2) {
                fastBitmap.setRGB(i, iArrMakeLut2[fastBitmap.getRed(i)], iArrMakeLut3[fastBitmap.getGreen(i)], iArrMakeLut4[fastBitmap.getBlue(i)]);
                i++;
            }
            return;
        }
        throw new IllegalArgumentException("Levels Curve only supports grayscale and rgb images.");
    }
}
