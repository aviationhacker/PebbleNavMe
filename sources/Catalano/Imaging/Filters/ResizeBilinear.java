package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class ResizeBilinear implements IApplyInPlace {
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

    public ResizeBilinear(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        FastBitmap fastBitmap2 = new FastBitmap(this.a, this.b, fastBitmap.getColorSpace());
        if (fastBitmap.isGrayscale()) {
            int width = fastBitmap.getWidth();
            int height = fastBitmap.getHeight();
            double d = ((double) width) / ((double) this.a);
            double d2 = ((double) height) / ((double) this.b);
            int i = height - 1;
            int i2 = width - 1;
            for (int i3 = 0; i3 < this.b; i3++) {
                double d3 = ((double) i3) * d2;
                int i4 = (int) d3;
                int i5 = i4 == i ? i4 : i4 + 1;
                double d4 = d3 - ((double) i4);
                double d5 = 1.0d - d4;
                for (int i6 = 0; i6 < this.a; i6++) {
                    double d6 = ((double) i6) * d;
                    int i7 = (int) d6;
                    int i8 = i7 == i2 ? i7 : i7 + 1;
                    double d7 = d6 - ((double) i7);
                    double d8 = 1.0d - d7;
                    fastBitmap2.setGray(i3, i6, (int) ((((d7 * ((double) fastBitmap.getGray(i5, i8))) + (d8 * ((double) fastBitmap.getGray(i5, i7)))) * d4) + (((((double) fastBitmap.getGray(i4, i8)) * d7) + (((double) fastBitmap.getGray(i4, i7)) * d8)) * d5)));
                }
            }
            fastBitmap.setImage(fastBitmap2);
            fastBitmap2.recycle();
            return;
        }
        int width2 = fastBitmap.getWidth();
        int height2 = fastBitmap.getHeight();
        double d9 = ((double) width2) / ((double) this.a);
        double d10 = ((double) height2) / ((double) this.b);
        int i9 = height2 - 1;
        int i10 = width2 - 1;
        for (int i11 = 0; i11 < this.b; i11++) {
            double d11 = ((double) i11) * d10;
            int i12 = (int) d11;
            int i13 = i12 == i9 ? i12 : i12 + 1;
            double d12 = d11 - ((double) i12);
            double d13 = 1.0d - d12;
            for (int i14 = 0; i14 < this.a; i14++) {
                double d14 = ((double) i14) * d9;
                int i15 = (int) d14;
                int i16 = i15 == i10 ? i15 : i15 + 1;
                double d15 = d14 - ((double) i15);
                double d16 = 1.0d - d15;
                fastBitmap2.setRGB(i11, i14, (int) ((((((double) fastBitmap.getRed(i13, i16)) * d15) + (((double) fastBitmap.getRed(i13, i15)) * d16)) * d12) + (((((double) fastBitmap.getRed(i12, i15)) * d16) + (((double) fastBitmap.getRed(i12, i16)) * d15)) * d13)), (int) ((((((double) fastBitmap.getGreen(i13, i16)) * d15) + (((double) fastBitmap.getGreen(i13, i15)) * d16)) * d12) + (((((double) fastBitmap.getGreen(i12, i15)) * d16) + (((double) fastBitmap.getGreen(i12, i16)) * d15)) * d13)), (int) ((((d15 * ((double) fastBitmap.getBlue(i13, i16))) + (d16 * ((double) fastBitmap.getBlue(i13, i15)))) * d12) + (((((double) fastBitmap.getBlue(i12, i16)) * d15) + (((double) fastBitmap.getBlue(i12, i15)) * d16)) * d13)));
            }
        }
        fastBitmap.setImage(fastBitmap2);
        fastBitmap2.recycle();
    }
}
