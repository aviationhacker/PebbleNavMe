package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class UnsharpMasking implements IApplyInPlace {
    private int a = 1;
    private float b = 0.6f;

    public int getRadius() {
        return this.a;
    }

    public void setRadius(int i) {
        this.a = Math.max(i, 1);
    }

    public float getWeight() {
        return this.b;
    }

    public void setWeight(float f) {
        this.b = Math.max(0.0f, Math.min(f, 1.0f));
    }

    public UnsharpMasking() {
    }

    public UnsharpMasking(int i, float f) {
        setRadius(i);
        setWeight(f);
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        new GaussianBoxBlur(this.a).applyInPlace(new FastBitmap(fastBitmap));
        int size = fastBitmap.getSize();
        if (fastBitmap.isGrayscale()) {
            for (int i = 0; i < size; i++) {
                int gray = (int) ((fastBitmap.getGray(i) - (this.b * r6.getGray(i))) / (1.0f - this.b));
                if (gray < 0) {
                    gray = 0;
                }
                if (gray > 255) {
                    gray = 255;
                }
                fastBitmap.setGray(i, gray);
            }
            return;
        }
        if (fastBitmap.isRGB()) {
            for (int i2 = 0; i2 < size; i2++) {
                int red = (int) ((fastBitmap.getRed(i2) - (this.b * r6.getRed(i2))) / (1.0f - this.b));
                int green = (int) ((fastBitmap.getGreen(i2) - (this.b * r6.getGreen(i2))) / (1.0f - this.b));
                int blue = (int) ((fastBitmap.getBlue(i2) - (this.b * r6.getBlue(i2))) / (1.0f - this.b));
                if (red < 0) {
                    red = 0;
                }
                if (green < 0) {
                    green = 0;
                }
                if (blue < 0) {
                    blue = 0;
                }
                if (red > 255) {
                    red = 255;
                }
                if (green > 255) {
                    green = 255;
                }
                if (blue > 255) {
                    blue = 255;
                }
                fastBitmap.setRGB(i2, red, green, blue);
            }
            return;
        }
        throw new IllegalArgumentException("Unsharp mask only works in grayscale or rgb images.");
    }
}
