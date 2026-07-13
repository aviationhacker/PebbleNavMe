package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public class HighBoost implements IApplyInPlace {
    private int[][] a;
    private int b;
    private int c;

    public int getBoost() {
        return this.b;
    }

    public void setBoost(int i) {
        this.b = i;
        this.a[this.a.length / 2][this.a[0].length / 2] = i;
    }

    public int getWindowSize() {
        return this.c;
    }

    public void setWindowSize(int i) {
        this.c = i;
        this.a = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, i, i);
        for (int i2 = 0; i2 < this.a.length; i2++) {
            for (int i3 = 0; i3 < this.a[0].length; i3++) {
                this.a[i2][i3] = -1;
            }
        }
        setBoost(this.b);
    }

    public HighBoost() {
        this.a = new int[][]{new int[]{-1, -1, -1}, new int[]{-1, 8, -1}, new int[]{-1, -1, -1}};
        this.b = 8;
        this.c = 3;
    }

    public HighBoost(int i) {
        this.a = new int[][]{new int[]{-1, -1, -1}, new int[]{-1, 8, -1}, new int[]{-1, -1, -1}};
        this.b = 8;
        this.c = 3;
        setBoost(i);
    }

    public HighBoost(int i, int i2) {
        this.a = new int[][]{new int[]{-1, -1, -1}, new int[]{-1, 8, -1}, new int[]{-1, -1, -1}};
        this.b = 8;
        this.c = 3;
        setWindowSize(i);
        setBoost(i2);
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        new Convolution(this.a).applyInPlace(fastBitmap);
    }
}
