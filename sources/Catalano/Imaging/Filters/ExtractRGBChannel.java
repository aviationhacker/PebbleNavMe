package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IExtract;

/* JADX INFO: loaded from: classes.dex */
public class ExtractRGBChannel implements IExtract {
    private FastBitmap a;
    private Channel b;

    public enum Channel {
        R,
        G,
        B
    }

    public ExtractRGBChannel(Channel channel) {
        this.b = channel;
    }

    public Channel getRGB() {
        return this.b;
    }

    public void setRGB(Channel channel) {
        this.b = channel;
    }

    @Override // Catalano.Imaging.IExtract
    public FastBitmap Extract(FastBitmap fastBitmap) {
        if (fastBitmap.isGrayscale()) {
            try {
                throw new Exception("Extract Channel works only with RGB images");
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else {
            int width = fastBitmap.getWidth();
            int height = fastBitmap.getHeight();
            this.a = new FastBitmap(width, height, FastBitmap.ColorSpace.Grayscale);
            switch (this.b) {
                case R:
                    for (int i = 0; i < height; i++) {
                        for (int i2 = 0; i2 < width; i2++) {
                            this.a.setGray(i, i2, fastBitmap.getRed(i, i2));
                        }
                    }
                    break;
                case G:
                    for (int i3 = 0; i3 < height; i3++) {
                        for (int i4 = 0; i4 < width; i4++) {
                            this.a.setGray(i3, i4, fastBitmap.getGreen(i3, i4));
                        }
                    }
                    break;
                case B:
                    for (int i5 = 0; i5 < height; i5++) {
                        for (int i6 = 0; i6 < width; i6++) {
                            this.a.setGray(i5, i6, fastBitmap.getBlue(i5, i6));
                        }
                    }
                    break;
            }
        }
        return this.a;
    }
}
