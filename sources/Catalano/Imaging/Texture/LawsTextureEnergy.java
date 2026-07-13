package Catalano.Imaging.Texture;

import Catalano.Core.IntPoint;
import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.Filters.Convolution;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public class LawsTextureEnergy {
    private int[][] a;
    private int[] b;
    private int[] c;
    private FastBitmap d;
    public static final int[] Level = {1, 4, 6, 4, 1};
    public static final int[] Edges = {-1, -2, 0, 2, 1};
    public static final int[] Spots = {-1, 0, 2, 0, -1};
    public static final int[] Ripples = {1, -4, 6, -4, 1};
    public static final int[] Waves = {-1, 2, 0, -2, 1};

    public LawsTextureEnergy() {
    }

    public LawsTextureEnergy(int[] iArr, int[] iArr2) {
        this.b = iArr;
        this.c = iArr2;
    }

    public LawsTextureEnergy(int[][] iArr) {
        this.a = iArr;
    }

    public int[] getVector1() {
        return this.b;
    }

    public void setVector1(int[] iArr) {
        this.b = iArr;
    }

    public int[] getVector2() {
        return this.c;
    }

    public void setVector2(int[] iArr) {
        this.c = iArr;
    }

    public void ProcessImage(FastBitmap fastBitmap) {
        if (fastBitmap.isGrayscale()) {
            this.d = fastBitmap;
            this.a = a(this.b, this.c);
            new Convolution(this.a).applyInPlace(this.d);
        }
    }

    public FastBitmap toFastBitmap() {
        return this.d;
    }

    public long getTextureEnergyMap() {
        int width = this.d.getWidth();
        int height = this.d.getHeight();
        long gray = 0;
        for (int i = 0; i < height; i++) {
            for (int i2 = 0; i2 < width; i2++) {
                gray += (long) this.d.getGray(i, i2);
            }
        }
        return gray;
    }

    public long getTextureEnergyMap(int i, int i2, int i3, int i4) {
        long j = 0;
        while (i < i + i4) {
            long gray = j;
            for (int i5 = i2; i5 < i5 + i3; i5++) {
                gray += (long) this.d.getGray(i, i5);
            }
            i++;
            j = gray;
        }
        return j;
    }

    public long getTextureEnergyMap(IntPoint intPoint, int i, int i2) {
        return getTextureEnergyMap(intPoint.x, intPoint.y, i, i2);
    }

    private int[][] a(int[] iArr, int[] iArr2) {
        this.a = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, iArr.length, iArr2.length);
        for (int i = 0; i < iArr.length; i++) {
            for (int i2 = 0; i2 < iArr2.length; i2++) {
                this.a[i][i2] = iArr[i] * iArr2[i2];
            }
        }
        return this.a;
    }
}
