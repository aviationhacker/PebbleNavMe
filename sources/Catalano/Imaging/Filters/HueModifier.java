package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;
import Catalano.Imaging.Tools.ColorConverter;

/* JADX INFO: loaded from: classes.dex */
public class HueModifier implements IApplyInPlace {
    private float a;

    public float getDegree() {
        return this.a;
    }

    public void setDegree(float f) {
        this.a = f;
    }

    public HueModifier(float f) {
        this.a = f;
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        if (fastBitmap.isRGB()) {
            int width = fastBitmap.getWidth() * fastBitmap.getHeight();
            for (int i = 0; i < width; i++) {
                float[] fArrRGBtoHLS = ColorConverter.RGBtoHLS(fastBitmap.getRed(i), fastBitmap.getGreen(i), fastBitmap.getBlue(i));
                int[] iArrHSLtoRGB = ColorConverter.HSLtoRGB(this.a, fArrRGBtoHLS[1], fArrRGBtoHLS[2]);
                iArrHSLtoRGB[0] = iArrHSLtoRGB[0] > 255 ? 255 : iArrHSLtoRGB[0];
                iArrHSLtoRGB[0] = iArrHSLtoRGB[0] < 0 ? 0 : iArrHSLtoRGB[0];
                iArrHSLtoRGB[1] = iArrHSLtoRGB[1] > 255 ? 255 : iArrHSLtoRGB[1];
                iArrHSLtoRGB[1] = iArrHSLtoRGB[1] < 0 ? 0 : iArrHSLtoRGB[1];
                iArrHSLtoRGB[2] = iArrHSLtoRGB[2] > 255 ? 255 : iArrHSLtoRGB[2];
                iArrHSLtoRGB[2] = iArrHSLtoRGB[2] < 0 ? 0 : iArrHSLtoRGB[2];
                fastBitmap.setRGB(i, iArrHSLtoRGB);
            }
            return;
        }
        throw new IllegalArgumentException("Hue modifier only works in RGB images.");
    }
}
