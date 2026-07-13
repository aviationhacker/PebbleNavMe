package Catalano.Imaging.Tools;

import Catalano.Core.IntPoint;
import Catalano.Imaging.FastBitmap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ExtractBlob {
    private List<Blob> a;

    public ExtractBlob() {
    }

    public ExtractBlob(List<Blob> list) {
        this.a = list;
    }

    public FastBitmap Extract(int i, FastBitmap fastBitmap) {
        if (this.a == null) {
            this.a = new BlobDetection().ProcessImage(fastBitmap);
        }
        if (fastBitmap.isGrayscale()) {
            FastBitmap fastBitmap2 = new FastBitmap(fastBitmap.getWidth(), fastBitmap.getHeight(), FastBitmap.ColorSpace.Grayscale);
            for (IntPoint intPoint : this.a.get(i).getPoints()) {
                fastBitmap2.setGray(intPoint.x, intPoint.y, fastBitmap.getGray(intPoint.x, intPoint.y));
            }
            return fastBitmap2;
        }
        FastBitmap fastBitmap3 = new FastBitmap(fastBitmap.getWidth(), fastBitmap.getHeight(), FastBitmap.ColorSpace.RGB);
        for (IntPoint intPoint2 : this.a.get(i).getPoints()) {
            fastBitmap3.setRed(intPoint2.x, intPoint2.y, fastBitmap.getRed(intPoint2.x, intPoint2.y));
            fastBitmap3.setGreen(intPoint2.x, intPoint2.y, fastBitmap.getGreen(intPoint2.x, intPoint2.y));
            fastBitmap3.setBlue(intPoint2.x, intPoint2.y, fastBitmap.getBlue(intPoint2.x, intPoint2.y));
        }
        return fastBitmap3;
    }
}
