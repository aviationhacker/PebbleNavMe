package Catalano.Imaging.Filters;

import Catalano.Core.IntRange;
import Catalano.Imaging.FastBitmap;

/* JADX INFO: loaded from: classes.dex */
public class ReplaceColor {
    private int a;
    private int b;
    private int c;
    private IntRange d;
    private IntRange e;
    private IntRange f;
    private boolean g = false;

    public ReplaceColor(int i, int i2, int i3) {
        this.a = i;
        this.b = i2;
        this.c = i3;
    }

    public ReplaceColor(IntRange intRange, IntRange intRange2, IntRange intRange3) {
        this.d = intRange;
        this.e = intRange2;
        this.f = intRange3;
    }

    public void ApplyInPlace(FastBitmap fastBitmap, int i, int i2, int i3) {
        int i4 = 0;
        int size = fastBitmap.getSize();
        if (!this.g) {
            while (i4 < size) {
                int red = fastBitmap.getRed(i4);
                int green = fastBitmap.getGreen(i4);
                int blue = fastBitmap.getBlue(i4);
                if (red == this.a && green == this.b && blue == this.c) {
                    fastBitmap.setRed(i4, i);
                    fastBitmap.setGreen(i4, i2);
                    fastBitmap.setBlue(i4, i3);
                }
                i4++;
            }
            return;
        }
        while (i4 < size) {
            int red2 = fastBitmap.getRed(i4);
            int green2 = fastBitmap.getGreen(i4);
            int blue2 = fastBitmap.getBlue(i4);
            if (red2 >= this.d.getMin() && red2 <= this.d.getMax() && green2 >= this.e.getMin() && green2 <= this.e.getMax() && blue2 >= this.f.getMin() && blue2 <= this.f.getMax()) {
                fastBitmap.setRed(i4, i);
                fastBitmap.setGreen(i4, i2);
                fastBitmap.setBlue(i4, i3);
            }
            i4++;
        }
    }
}
