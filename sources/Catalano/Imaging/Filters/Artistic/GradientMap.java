package Catalano.Imaging.Filters.Artistic;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public class GradientMap implements IApplyInPlace {
    private FastBitmap a;
    private int[][] b;
    private boolean c = false;

    public FastBitmap getGradient() {
        return this.a;
    }

    public void setGradient(FastBitmap fastBitmap) {
        this.a = fastBitmap;
        this.c = false;
    }

    public int[][] getLut() {
        return this.b;
    }

    public void setLut(int[][] iArr) {
        this.b = iArr;
        this.c = true;
    }

    public GradientMap(FastBitmap fastBitmap) {
        this.a = fastBitmap;
    }

    public GradientMap(int[][] iArr) {
        setLut(iArr);
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        if (fastBitmap.isRGB()) {
            if (!this.c) {
                this.b = a(this.a);
            }
            fastBitmap.toGrayscale();
            fastBitmap.toRGB();
            int width = fastBitmap.getWidth();
            int height = fastBitmap.getHeight();
            for (int i = 0; i < height; i++) {
                for (int i2 = 0; i2 < width; i2++) {
                    int red = fastBitmap.getRed(i, i2);
                    fastBitmap.setRGB(i, i2, this.b[red][0], this.b[red][1], this.b[red][2]);
                }
            }
            return;
        }
        throw new IllegalArgumentException("Gradient Map only works in RGB images.");
    }

    private int[][] a(FastBitmap fastBitmap) {
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, 256, 3);
        if (fastBitmap.getWidth() == 256) {
            for (int i = 0; i < 256; i++) {
                iArr[i][0] = fastBitmap.getRed(0, i);
                iArr[i][1] = fastBitmap.getGreen(0, i);
                iArr[i][2] = fastBitmap.getBlue(0, i);
            }
            return iArr;
        }
        throw new IllegalArgumentException("Gradient Map needs at least a gradient image with 1 row and exactly 256 columns.");
    }
}
