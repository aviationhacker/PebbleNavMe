package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class MoveTowards implements IApplyInPlace {
    private FastBitmap a;
    private int b = 1;

    public MoveTowards() {
    }

    public MoveTowards(FastBitmap fastBitmap, int i) {
        this.a = fastBitmap;
        setStepSize(i);
    }

    public int getStepSize() {
        return this.b;
    }

    public void setStepSize(int i) {
        if (i < 0) {
            i = 1;
        }
        this.b = i;
    }

    public void setOverlayImage(FastBitmap fastBitmap) {
        this.a = fastBitmap;
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        int i;
        int i2;
        int i3;
        int size = fastBitmap.getSize();
        int width = this.a.getWidth() * this.a.getHeight();
        if (fastBitmap.isGrayscale() && this.a.isGrayscale()) {
            if (size == width) {
                for (int i4 = 0; i4 < size; i4++) {
                    int gray = this.a.getGray(i4) - fastBitmap.getGray(i4);
                    int gray2 = fastBitmap.getGray(i4);
                    if (gray > 0) {
                        if (this.b < gray) {
                            gray = this.b;
                        }
                        i3 = gray + gray2;
                    } else if (gray < 0) {
                        int i5 = -gray;
                        if (this.b < i5) {
                            i5 = this.b;
                        }
                        i3 = gray2 - i5;
                    } else {
                        i3 = gray2;
                    }
                    fastBitmap.setGray(i4, i3);
                }
                return;
            }
            return;
        }
        if (fastBitmap.isRGB() && this.a.isRGB() && size == width) {
            for (int i6 = 0; i6 < size; i6++) {
                int red = this.a.getRed(i6) - fastBitmap.getRed(i6);
                int green = this.a.getGreen(i6) - fastBitmap.getGreen(i6);
                int blue = this.a.getBlue(i6) - fastBitmap.getBlue(i6);
                int red2 = fastBitmap.getRed(i6);
                int green2 = fastBitmap.getGreen(i6);
                int blue2 = fastBitmap.getBlue(i6);
                if (red > 0) {
                    red2 += this.b < red ? this.b : red;
                }
                if (green > 0) {
                    green2 += this.b < green ? this.b : green;
                }
                if (blue > 0) {
                    blue2 += this.b < blue ? this.b : blue;
                }
                if (red < 0) {
                    int i7 = -red;
                    if (this.b < i7) {
                        i7 = this.b;
                    }
                    red2 -= i7;
                }
                if (green < 0) {
                    int i8 = -green;
                    if (this.b < i8) {
                        i8 = this.b;
                    }
                    i = green2 - i8;
                } else {
                    i = green2;
                }
                if (blue < 0) {
                    int i9 = -blue;
                    if (this.b < i9) {
                        i9 = this.b;
                    }
                    i2 = blue2 - i9;
                } else {
                    i2 = blue2;
                }
                fastBitmap.setRGB(i6, red2, i, i2);
            }
        }
    }
}
