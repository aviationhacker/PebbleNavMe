package Catalano.Imaging.Tools;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.Filters.Crop;
import Catalano.Imaging.Texture.BinaryPattern.IBinaryPattern;

/* JADX INFO: loaded from: classes.dex */
public class SpatialHistogram {
    private int a;
    private int b;

    public SpatialHistogram() {
        this(6, 6);
    }

    public SpatialHistogram(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    public int[] Compute(FastBitmap fastBitmap, IBinaryPattern iBinaryPattern) {
        int width = fastBitmap.getWidth();
        int height = fastBitmap.getHeight();
        int iRound = ((int) Math.round(((double) width) / ((double) this.a))) - 1;
        int iRound2 = ((int) Math.round(((double) height) / ((double) this.b))) - 1;
        ImageHistogram[] imageHistogramArr = new ImageHistogram[this.a * this.b];
        int i = 0;
        int i2 = 0;
        while (i < this.b) {
            int i3 = 0;
            int i4 = i2;
            while (i3 < this.a) {
                imageHistogramArr[i4] = iBinaryPattern.ProcessImage(a(fastBitmap, i * iRound2, i3 * iRound, iRound, iRound2));
                i3++;
                i4++;
            }
            i++;
            i2 = i4;
        }
        int[] iArr = new int[imageHistogramArr.length * imageHistogramArr[0].getValues().length];
        int i5 = 0;
        for (ImageHistogram imageHistogram : imageHistogramArr) {
            int[] values = imageHistogram.getValues();
            int i6 = 0;
            while (i6 < values.length) {
                iArr[i5] = values[i6];
                i6++;
                i5++;
            }
        }
        return iArr;
    }

    private FastBitmap a(FastBitmap fastBitmap, int i, int i2, int i3, int i4) {
        FastBitmap fastBitmap2 = new FastBitmap(fastBitmap);
        new Crop(i, i2, i3, i4).ApplyInPlace(fastBitmap2);
        return fastBitmap2;
    }
}
