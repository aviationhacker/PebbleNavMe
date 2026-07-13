package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;
import Catalano.Imaging.Tools.ColorConverter;

/* JADX INFO: loaded from: classes.dex */
public class ExtractYCbCrChannel implements IApplyInPlace {
    private Channel a;

    public enum Channel {
        Y,
        Cb,
        Cr
    }

    public ExtractYCbCrChannel(Channel channel) {
        this.a = channel;
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        if (fastBitmap.isGrayscale()) {
            try {
                throw new Exception("Extract Channel works only with RGB images");
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        int width = fastBitmap.getWidth();
        int height = fastBitmap.getHeight();
        FastBitmap fastBitmap2 = new FastBitmap(width, height, FastBitmap.ColorSpace.Grayscale);
        switch (this.a) {
            case Y:
                for (int i = 0; i < height; i++) {
                    for (int i2 = 0; i2 < width; i2++) {
                        fastBitmap2.setGray(i, i2, (int) (ColorConverter.RGBtoYCbCr(fastBitmap.getRed(i, i2), fastBitmap.getGreen(i, i2), fastBitmap.getBlue(i, i2), ColorConverter.YCbCrColorSpace.ITU_BT_601)[0] * 255.0f));
                    }
                }
                break;
            case Cb:
                for (int i3 = 0; i3 < height; i3++) {
                    for (int i4 = 0; i4 < width; i4++) {
                        fastBitmap2.setGray(i3, i4, (int) ((ColorConverter.RGBtoYCbCr(fastBitmap.getRed(i3, i4), fastBitmap.getGreen(i3, i4), fastBitmap.getBlue(i3, i4), ColorConverter.YCbCrColorSpace.ITU_BT_601)[1] + 0.5f) * 255.0f));
                    }
                }
                break;
            case Cr:
                for (int i5 = 0; i5 < height; i5++) {
                    for (int i6 = 0; i6 < width; i6++) {
                        fastBitmap2.setGray(i5, i6, (int) ((ColorConverter.RGBtoYCbCr(fastBitmap.getRed(i5, i6), fastBitmap.getGreen(i5, i6), fastBitmap.getBlue(i5, i6), ColorConverter.YCbCrColorSpace.ITU_BT_601)[2] + 0.5f) * 255.0f));
                    }
                }
                break;
        }
        fastBitmap.setImage(fastBitmap2);
    }
}
