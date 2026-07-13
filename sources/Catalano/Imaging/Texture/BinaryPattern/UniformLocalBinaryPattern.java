package Catalano.Imaging.Texture.BinaryPattern;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.Tools.ImageHistogram;
import Catalano.Math.Matrix;

/* JADX INFO: loaded from: classes.dex */
public class UniformLocalBinaryPattern implements IBinaryPattern {
    private boolean a;

    public boolean isNonUniform() {
        return this.a;
    }

    public void setNonUniform(boolean z) {
        this.a = z;
    }

    public UniformLocalBinaryPattern() {
        this(true);
    }

    public UniformLocalBinaryPattern(boolean z) {
        this.a = z;
    }

    @Override // Catalano.Imaging.Texture.BinaryPattern.IBinaryPattern
    public ImageHistogram ProcessImage(FastBitmap fastBitmap) {
        if (!fastBitmap.isGrayscale()) {
            throw new IllegalArgumentException("Uniform LBP only works in grayscale images.");
        }
        return Encode(new LocalBinaryPattern().ProcessImage(fastBitmap), this.a);
    }

    public static ImageHistogram Encode(ImageHistogram imageHistogram) {
        return Encode(imageHistogram, true);
    }

    public static ImageHistogram Encode(ImageHistogram imageHistogram, boolean z) {
        int i = 0;
        int[] iArr = new int[59];
        int[] values = imageHistogram.getValues();
        int i2 = 0;
        for (int i3 = 0; i3 < 256; i3++) {
            if (a(i3)) {
                iArr[i2] = values[i3];
                i2++;
            } else {
                i += values[i3];
            }
        }
        iArr[58] = i;
        return new ImageHistogram(!z ? Matrix.RemoveColumn(iArr, 58) : iArr);
    }

    private static boolean a(int i) {
        return b(i) <= 2;
    }

    private static int b(int i) {
        String strReplace = String.format("%8s", Integer.toBinaryString(i)).replace(' ', '0');
        int i2 = 0;
        for (int i3 = 1; i3 < strReplace.length(); i3++) {
            if (strReplace.charAt(i3 - 1) != strReplace.charAt(i3)) {
                i2++;
            }
        }
        return strReplace.charAt(7) != strReplace.charAt(0) ? i2 + 1 : i2;
    }
}
