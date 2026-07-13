package Catalano.Imaging;

import org.eclipse.jetty.http.HttpStatus;

/* JADX INFO: loaded from: classes.dex */
public class Color {
    public int b;
    public int g;
    public int r;
    public static final Color Black = new Color(0, 0, 0);
    public static final Color Blue = new Color(0, 0, 255);
    public static final Color Cyan = new Color(0, 255, 255);
    public static final Color DarkGray = new Color(64, 64, 64);
    public static final Color Gray = new Color(128, 128, 128);
    public static final Color Green = new Color(0, 255, 0);
    public static final Color LightGray = new Color(192, 192, 192);
    public static final Color Magenta = new Color(255, 0, 255);
    public static final Color Orange = new Color(255, HttpStatus.OK_200, 0);
    public static final Color Pink = new Color(255, 175, 175);
    public static final Color Red = new Color(255, 0, 0);
    public static final Color Yellow = new Color(255, HttpStatus.OK_200, 0);
    public static final Color White = new Color(255, 255, 255);

    public static int Count(FastBitmap fastBitmap) {
        int i;
        int i2 = 0;
        if (fastBitmap.isGrayscale()) {
            byte[] bArr = new byte[256];
            for (int i3 : fastBitmap.getData()) {
                bArr[i3] = 1;
            }
            i = 0;
            while (i2 < 256) {
                if (bArr[i2] == 1) {
                    i++;
                }
                i2++;
            }
        } else {
            byte[] bArr2 = new byte[16777216];
            for (int i4 : fastBitmap.getData()) {
                bArr2[i4] = 1;
            }
            i = 0;
            while (i2 < 16777216) {
                if (bArr2[i2] == 1) {
                    i++;
                }
                i2++;
            }
        }
        return i;
    }

    public Color() {
        this.r = 0;
        this.g = 0;
        this.b = 0;
    }

    public Color(int i, int i2, int i3) {
        this.r = 0;
        this.g = 0;
        this.b = 0;
        this.r = i;
        this.g = i2;
        this.b = i3;
    }

    public Color(int[] iArr) {
        this.r = 0;
        this.g = 0;
        this.b = 0;
        this.r = iArr[0];
        this.g = iArr[1];
        this.b = iArr[2];
    }

    public Color(int i) {
        this.r = 0;
        this.g = 0;
        this.b = 0;
        this.r = (i >> 16) & 255;
        this.g = (i >> 8) & 255;
        this.b = i & 255;
    }

    public static boolean isEqual(Color color, Color color2) {
        return color.r == color2.r && color.g == color2.g && color.b == color2.b;
    }
}
