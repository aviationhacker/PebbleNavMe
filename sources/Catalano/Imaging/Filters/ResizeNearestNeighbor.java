package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class ResizeNearestNeighbor implements IApplyInPlace {
    private int a;
    private int b;

    public int getNewWidth() {
        return this.a;
    }

    public void setNewWidth(int i) {
        this.a = i;
    }

    public int getNewHeight() {
        return this.b;
    }

    public void setNewHeight(int i) {
        this.b = i;
    }

    public void setNewSize(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    public ResizeNearestNeighbor(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        FastBitmap fastBitmap2 = new FastBitmap(this.a, this.b, fastBitmap.getColorSpace());
        int width = fastBitmap.getWidth();
        int height = fastBitmap.getHeight();
        double d = ((double) width) / ((double) this.a);
        double d2 = ((double) height) / ((double) this.b);
        if (fastBitmap.isGrayscale()) {
            for (int i = 0; i < this.b; i++) {
                int i2 = (int) (((double) i) * d2);
                for (int i3 = 0; i3 < this.a; i3++) {
                    fastBitmap2.setGray(i, i3, fastBitmap.getGray(i2, (int) (((double) i3) * d)));
                }
            }
            fastBitmap.setImage(fastBitmap2);
            fastBitmap2.recycle();
            return;
        }
        for (int i4 = 0; i4 < this.b; i4++) {
            int i5 = (int) (((double) i4) * d2);
            for (int i6 = 0; i6 < this.a; i6++) {
                int i7 = (int) (((double) i6) * d);
                fastBitmap2.setRGB(i4, i6, fastBitmap.getRed(i5, i7), fastBitmap.getGreen(i5, i7), fastBitmap.getBlue(i5, i7));
            }
        }
        fastBitmap.setImage(fastBitmap2);
        fastBitmap2.recycle();
    }
}
