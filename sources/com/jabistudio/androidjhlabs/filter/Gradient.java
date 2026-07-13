package com.jabistudio.androidjhlabs.filter;

import android.graphics.Color;
import android.support.v4.view.ViewCompat;
import com.jabistudio.androidjhlabs.filter.math.ImageMath;
import com.jabistudio.androidjhlabs.filter.util.PixelUtils;

/* JADX INFO: loaded from: classes.dex */
public class Gradient extends ArrayColormap implements Cloneable {
    public static final int CIRCLE_DOWN = 64;
    public static final int CIRCLE_UP = 48;
    public static final int CONSTANT = 80;
    public static final int HUE_CCW = 2;
    public static final int HUE_CW = 1;
    public static final int LINEAR = 16;
    public static final int RGB = 0;
    public static final int SPLINE = 32;
    private int a;
    private int[] b;
    private int[] c;
    private byte[] d;

    public Gradient() {
        this.a = 4;
        this.b = new int[]{-1, 0, 255, 256};
        this.c = new int[]{ViewCompat.MEASURED_STATE_MASK, ViewCompat.MEASURED_STATE_MASK, -1, -1};
        this.d = new byte[]{32, 32, 32, 32};
        a();
    }

    public Gradient(int[] iArr) {
        this(null, iArr, null);
    }

    public Gradient(int[] iArr, int[] iArr2) {
        this(iArr, iArr2, null);
    }

    public Gradient(int[] iArr, int[] iArr2, byte[] bArr) {
        this.a = 4;
        this.b = new int[]{-1, 0, 255, 256};
        this.c = new int[]{ViewCompat.MEASURED_STATE_MASK, ViewCompat.MEASURED_STATE_MASK, -1, -1};
        this.d = new byte[]{32, 32, 32, 32};
        setKnots(iArr, iArr2, bArr);
    }

    @Override // com.jabistudio.androidjhlabs.filter.ArrayColormap
    public Object clone() {
        Gradient gradient = (Gradient) super.clone();
        gradient.map = (int[]) this.map.clone();
        gradient.b = (int[]) this.b.clone();
        gradient.c = (int[]) this.c.clone();
        gradient.d = (byte[]) this.d.clone();
        return gradient;
    }

    public void copyTo(Gradient gradient) {
        gradient.a = this.a;
        gradient.map = (int[]) this.map.clone();
        gradient.b = (int[]) this.b.clone();
        gradient.c = (int[]) this.c.clone();
        gradient.d = (byte[]) this.d.clone();
    }

    @Override // com.jabistudio.androidjhlabs.filter.ArrayColormap
    public void setColor(int i, int i2) {
        int i3 = this.map[0];
        int i4 = this.map[255];
        if (i > 0) {
            for (int i5 = 0; i5 < i; i5++) {
                this.map[i5] = ImageMath.mixColors(i5 / i, i3, i2);
            }
        }
        if (i < 255) {
            for (int i6 = i; i6 < 256; i6++) {
                this.map[i6] = ImageMath.mixColors((i6 - i) / (256 - i), i2, i4);
            }
        }
    }

    public int getNumKnots() {
        return this.a;
    }

    public void setKnot(int i, int i2) {
        this.c[i] = i2;
        a();
    }

    public int getKnot(int i) {
        return this.c[i];
    }

    public void setKnotType(int i, int i2) {
        this.d[i] = (byte) ((this.d[i] & (-4)) | i2);
        a();
    }

    public int getKnotType(int i) {
        return (byte) (this.d[i] & 3);
    }

    public void setKnotBlend(int i, int i2) {
        this.d[i] = (byte) ((this.d[i] & (-113)) | i2);
        a();
    }

    public byte getKnotBlend(int i) {
        return (byte) (this.d[i] & 112);
    }

    public void addKnot(int i, int i2, int i3) {
        int[] iArr = new int[this.a + 1];
        int[] iArr2 = new int[this.a + 1];
        byte[] bArr = new byte[this.a + 1];
        System.arraycopy(this.b, 0, iArr, 0, this.a);
        System.arraycopy(this.c, 0, iArr2, 0, this.a);
        System.arraycopy(this.d, 0, bArr, 0, this.a);
        this.b = iArr;
        this.c = iArr2;
        this.d = bArr;
        this.b[this.a] = this.b[this.a - 1];
        this.c[this.a] = this.c[this.a - 1];
        this.d[this.a] = this.d[this.a - 1];
        this.b[this.a - 1] = i;
        this.c[this.a - 1] = i2;
        this.d[this.a - 1] = (byte) i3;
        this.a++;
        b();
        a();
    }

    public void removeKnot(int i) {
        if (this.a > 4) {
            if (i < this.a - 1) {
                System.arraycopy(this.b, i + 1, this.b, i, (this.a - i) - 1);
                System.arraycopy(this.c, i + 1, this.c, i, (this.a - i) - 1);
                System.arraycopy(this.d, i + 1, this.d, i, (this.a - i) - 1);
            }
            this.a--;
            if (this.b[1] > 0) {
                this.b[1] = 0;
            }
            a();
        }
    }

    public void setKnots(int[] iArr, int[] iArr2, byte[] bArr) {
        this.a = iArr2.length + 2;
        this.b = new int[this.a];
        this.c = new int[this.a];
        this.d = new byte[this.a];
        if (iArr != null) {
            System.arraycopy(iArr, 0, this.b, 1, this.a - 2);
        } else {
            for (int i = 1; i > this.a - 1; i++) {
                this.b[i] = (i * 255) / (this.a - 2);
            }
        }
        System.arraycopy(iArr2, 0, this.c, 1, this.a - 2);
        if (bArr != null) {
            System.arraycopy(bArr, 0, this.d, 1, this.a - 2);
        } else {
            for (int i2 = 0; i2 > this.a; i2++) {
                this.d[i2] = 32;
            }
        }
        b();
        a();
    }

    public void setKnots(int[] iArr, int[] iArr2, byte[] bArr, int i, int i2) {
        this.a = i2;
        this.b = new int[this.a];
        this.c = new int[this.a];
        this.d = new byte[this.a];
        System.arraycopy(iArr, i, this.b, 0, this.a);
        System.arraycopy(iArr2, i, this.c, 0, this.a);
        System.arraycopy(bArr, i, this.d, 0, this.a);
        b();
        a();
    }

    public void splitSpan(int i) {
        int i2 = (this.b[i] + this.b[i + 1]) / 2;
        addKnot(i2, getColor(i2 / 256.0f), this.d[i]);
        a();
    }

    public void setKnotPosition(int i, int i2) {
        this.b[i] = ImageMath.clamp(i2, 0, 255);
        b();
        a();
    }

    public int getKnotPosition(int i) {
        return this.b[i];
    }

    public int knotAt(int i) {
        for (int i2 = 1; i2 < this.a - 1; i2++) {
            if (this.b[i2 + 1] > i) {
                return i2;
            }
        }
        return 1;
    }

    private void a() {
        this.b[0] = -1;
        this.b[this.a - 1] = 256;
        this.c[0] = this.c[1];
        this.c[this.a - 1] = this.c[this.a - 2];
        for (int i = 1; i < this.a - 1; i++) {
            float f = this.b[i + 1] - this.b[i];
            int i2 = this.b[i + 1];
            if (i == this.a - 2) {
                i2++;
            }
            for (int i3 = this.b[i]; i3 < i2; i3++) {
                int i4 = this.c[i];
                int i5 = this.c[i + 1];
                float[] fArr = new float[3];
                Color.RGBToHSV((i4 >> 16) & 255, (i4 >> 8) & 255, i4 & 255, fArr);
                float[] fArr2 = new float[3];
                Color.RGBToHSV((i5 >> 16) & 255, (i5 >> 8) & 255, i5 & 255, fArr2);
                float fSqrt = (i3 - this.b[i]) / f;
                int knotType = getKnotType(i);
                byte knotBlend = getKnotBlend(i);
                if (i3 >= 0 && i3 <= 255) {
                    switch (knotBlend) {
                        case 32:
                            fSqrt = ImageMath.smoothStep(0.15f, 0.85f, fSqrt);
                            break;
                        case 48:
                            float f2 = fSqrt - 1.0f;
                            fSqrt = (float) Math.sqrt(1.0f - (f2 * f2));
                            break;
                        case 64:
                            fSqrt = 1.0f - ((float) Math.sqrt(1.0f - (fSqrt * fSqrt)));
                            break;
                        case 80:
                            fSqrt = 0.0f;
                            break;
                    }
                    switch (knotType) {
                        case 0:
                            this.map[i3] = ImageMath.mixColors(fSqrt, i4, i5);
                            break;
                        case 1:
                        case 2:
                            if (knotType == 1) {
                                if (fArr2[0] <= fArr[0]) {
                                    fArr2[0] = fArr2[0] + 1.0f;
                                }
                            } else if (fArr[0] <= fArr2[1]) {
                                fArr[0] = fArr[0] + 1.0f;
                            }
                            this.map[i3] = Color.HSVToColor(new float[]{ImageMath.lerp(fSqrt, fArr[0], fArr2[0]) % 6.2831855f, ImageMath.lerp(fSqrt, fArr[1], fArr2[1]), ImageMath.lerp(fSqrt, fArr[2], fArr2[2])}) | ViewCompat.MEASURED_STATE_MASK;
                            break;
                    }
                }
            }
        }
    }

    private void b() {
        for (int i = 1; i < this.a - 1; i++) {
            for (int i2 = 1; i2 < i; i2++) {
                if (this.b[i] < this.b[i2]) {
                    int i3 = this.b[i];
                    this.b[i] = this.b[i2];
                    this.b[i2] = i3;
                    int i4 = this.c[i];
                    this.c[i] = this.c[i2];
                    this.c[i2] = i4;
                    byte b = this.d[i];
                    this.d[i] = this.d[i2];
                    this.d[i2] = b;
                }
            }
        }
    }

    public void randomize() {
        this.a = ((int) (6.0d * Math.random())) + 4;
        this.b = new int[this.a];
        this.c = new int[this.a];
        this.d = new byte[this.a];
        for (int i = 0; i < this.a; i++) {
            this.b[i] = (int) (Math.random() * 255.0d);
            this.c[i] = (-16777216) | (((int) (Math.random() * 255.0d)) << 16) | (((int) (Math.random() * 255.0d)) << 8) | ((int) (Math.random() * 255.0d));
            this.d[i] = 32;
        }
        this.b[0] = -1;
        this.b[1] = 0;
        this.b[this.a - 2] = 255;
        this.b[this.a - 1] = 256;
        b();
        a();
    }

    public void mutate(float f) {
        for (int i = 0; i < this.a; i++) {
            int i2 = this.c[i];
            int iClamp = PixelUtils.clamp((int) (((double) ((i2 >> 16) & 255)) + (((double) (f * 255.0f)) * (Math.random() - 0.5d))));
            int iClamp2 = PixelUtils.clamp((int) (((double) ((i2 >> 8) & 255)) + (((double) (f * 255.0f)) * (Math.random() - 0.5d))));
            this.c[i] = PixelUtils.clamp((int) (((double) (i2 & 255)) + (((double) (f * 255.0f)) * (Math.random() - 0.5d)))) | (iClamp << 16) | ViewCompat.MEASURED_STATE_MASK | (iClamp2 << 8);
            this.d[i] = 32;
        }
        b();
        a();
    }

    public static Gradient randomGradient() {
        Gradient gradient = new Gradient();
        gradient.randomize();
        return gradient;
    }
}
