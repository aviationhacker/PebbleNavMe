package Catalano.Imaging.Filters;

import Catalano.Core.IntRange;
import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class LevelsLinear implements IApplyInPlace {
    private IntRange a = new IntRange(0, 255);
    private IntRange b = new IntRange(0, 255);
    private IntRange c = new IntRange(0, 255);
    private IntRange d = new IntRange(0, 255);
    private IntRange e = new IntRange(0, 255);
    private IntRange f = new IntRange(0, 255);
    private IntRange g = new IntRange(0, 255);
    private IntRange h = new IntRange(0, 255);
    private int[] i = new int[256];
    private int[] j = new int[256];
    private int[] k = new int[256];
    private int[] l = new int[256];

    public IntRange getInBlue() {
        return this.c;
    }

    public void setInBlue(IntRange intRange) {
        this.c = intRange;
        a(intRange, this.g, this.k);
    }

    public IntRange getInGray() {
        return this.d;
    }

    public void setInGray(IntRange intRange) {
        this.d = intRange;
        a(intRange, this.h, this.l);
    }

    public IntRange getInGreen() {
        return this.b;
    }

    public void setInGreen(IntRange intRange) {
        this.b = intRange;
        a(intRange, this.f, this.j);
    }

    public IntRange getInRed() {
        return this.a;
    }

    public void setInRed(IntRange intRange) {
        this.a = intRange;
        a(intRange, this.e, this.i);
    }

    public IntRange getOutBlue() {
        return this.g;
    }

    public void setOutBlue(IntRange intRange) {
        this.g = intRange;
        a(this.c, intRange, this.k);
    }

    public IntRange getOutGray() {
        return this.h;
    }

    public void setOutGray(IntRange intRange) {
        this.h = intRange;
        a(this.d, intRange, this.l);
    }

    public IntRange getOutGreen() {
        return this.f;
    }

    public void setOutGreen(IntRange intRange) {
        this.f = intRange;
        a(this.b, intRange, this.j);
    }

    public IntRange getOutRed() {
        return this.e;
    }

    public void setOutRed(IntRange intRange) {
        this.e = intRange;
        a(this.a, intRange, this.i);
    }

    public void setInRGB(IntRange intRange) {
        this.a = intRange;
        this.b = intRange;
        this.c = intRange;
        a(intRange, this.e, this.i);
        a(intRange, this.f, this.j);
        a(intRange, this.g, this.k);
    }

    public void setOutRGB(IntRange intRange) {
        this.e = intRange;
        this.f = intRange;
        this.g = intRange;
        a(this.a, intRange, this.i);
        a(this.b, intRange, this.j);
        a(this.c, intRange, this.k);
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        int i = 0;
        int size = fastBitmap.getSize();
        if (fastBitmap.isGrayscale()) {
            a(this.d, this.h, this.l);
            while (i < size) {
                fastBitmap.setGray(i, this.l[fastBitmap.getGray(i)]);
                i++;
            }
            return;
        }
        a(this.a, this.e, this.i);
        a(this.b, this.f, this.j);
        a(this.c, this.g, this.k);
        while (i < size) {
            fastBitmap.setRGB(i, this.i[fastBitmap.getRed(i)], this.j[fastBitmap.getGreen(i)], this.k[fastBitmap.getBlue(i)]);
            i++;
        }
    }

    private void a(IntRange intRange, IntRange intRange2, int[] iArr) {
        double max;
        int min;
        double min2 = 0.0d;
        if (intRange.getMax() != intRange.getMin()) {
            max = ((double) (intRange2.getMax() - intRange2.getMin())) / ((double) (intRange.getMax() - intRange.getMin()));
            min2 = ((double) intRange2.getMin()) - (((double) intRange.getMin()) * max);
        } else {
            max = 0.0d;
        }
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < 256) {
                if (i2 >= intRange.getMax()) {
                    min = intRange2.getMax();
                } else if (i2 <= intRange.getMin()) {
                    min = intRange2.getMin();
                } else {
                    min = (int) ((((double) i2) * max) + min2);
                }
                iArr[i2] = min;
                i = i2 + 1;
            } else {
                return;
            }
        }
    }
}
