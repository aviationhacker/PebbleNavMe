package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IExtract;

/* JADX INFO: loaded from: classes.dex */
public class ExtractNormalizedRGBChannel implements IExtract {
    private Channel a;

    public enum Channel {
        R,
        G,
        B
    }

    public ExtractNormalizedRGBChannel(Channel channel) {
        this.a = channel;
    }

    public Channel getRGB() {
        return this.a;
    }

    public void setRGB(Channel channel) {
        this.a = channel;
    }

    @Override // Catalano.Imaging.IExtract
    public FastBitmap Extract(FastBitmap fastBitmap) {
        int width = fastBitmap.getWidth();
        int height = fastBitmap.getHeight();
        if (fastBitmap.isGrayscale()) {
            try {
                throw new IllegalArgumentException("Extract Channel works only with RGB images");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        FastBitmap fastBitmap2 = new FastBitmap(width, height, FastBitmap.ColorSpace.Grayscale);
        switch (this.a) {
            case R:
                for (int i = 0; i < height; i++) {
                    for (int i2 = 0; i2 < width; i2++) {
                        int red = fastBitmap.getRed(i, i2);
                        int green = fastBitmap.getGreen(i, i2) + red + fastBitmap.getBlue(i, i2);
                        if (green == 0) {
                            green = 1;
                        }
                        fastBitmap2.setGray(i, i2, (red * 255) / green);
                    }
                }
                break;
            case G:
                for (int i3 = 0; i3 < height; i3++) {
                    for (int i4 = 0; i4 < width; i4++) {
                        int red2 = fastBitmap.getRed(i3, i4);
                        int green2 = fastBitmap.getGreen(i3, i4);
                        int blue = red2 + green2 + fastBitmap.getBlue(i3, i4);
                        if (blue == 0) {
                            blue = 1;
                        }
                        fastBitmap2.setGray(i3, i4, (green2 * 255) / blue);
                    }
                }
                break;
            case B:
                for (int i5 = 0; i5 < height; i5++) {
                    for (int i6 = 0; i6 < width; i6++) {
                        int red3 = fastBitmap.getRed(i5, i6);
                        int green3 = fastBitmap.getGreen(i5, i6);
                        int blue2 = fastBitmap.getBlue(i5, i6);
                        int i7 = red3 + green3 + blue2;
                        if (i7 == 0) {
                            i7 = 1;
                        }
                        fastBitmap2.setGray(i5, i6, (blue2 * 255) / i7);
                    }
                }
                break;
        }
        return fastBitmap2;
    }
}
