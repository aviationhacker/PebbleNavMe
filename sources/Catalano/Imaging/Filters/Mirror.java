package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class Mirror implements IApplyInPlace {
    private boolean a;
    private boolean b;

    public Mirror(boolean z, boolean z2) {
        this.a = z;
        this.b = z2;
    }

    public void setMirrorX(boolean z) {
        this.a = z;
    }

    public void setMirrorY(boolean z) {
        this.b = z;
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        int width = fastBitmap.getWidth();
        int height = fastBitmap.getHeight();
        int i = width / 2;
        int i2 = height / 2;
        if (fastBitmap.isRGB()) {
            if (this.a) {
                for (int i3 = 0; i3 < height; i3++) {
                    int i4 = 0;
                    int i5 = width - 1;
                    while (i4 < i) {
                        int red = fastBitmap.getRed(i3, i5);
                        int green = fastBitmap.getGreen(i3, i5);
                        int blue = fastBitmap.getBlue(i3, i5);
                        int red2 = fastBitmap.getRed(i3, i4);
                        int green2 = fastBitmap.getGreen(i3, i4);
                        int blue2 = fastBitmap.getBlue(i3, i4);
                        fastBitmap.setRGB(i3, i4, red, green, blue);
                        fastBitmap.setRGB(i3, i5, red2, green2, blue2);
                        i4++;
                        i5--;
                    }
                }
            }
            if (this.b) {
                for (int i6 = 0; i6 < i2; i6++) {
                    int i7 = (height - i6) - 1;
                    for (int i8 = 0; i8 < width; i8++) {
                        int red3 = fastBitmap.getRed(i7, i8);
                        int green3 = fastBitmap.getGreen(i7, i8);
                        int blue3 = fastBitmap.getBlue(i7, i8);
                        int red4 = fastBitmap.getRed(i6, i8);
                        int green4 = fastBitmap.getGreen(i6, i8);
                        int blue4 = fastBitmap.getBlue(i6, i8);
                        fastBitmap.setRGB(i6, i8, red3, green3, blue3);
                        fastBitmap.setRGB(i7, i8, red4, green4, blue4);
                    }
                }
                return;
            }
            return;
        }
        if (fastBitmap.isGrayscale()) {
            if (this.a) {
                for (int i9 = 0; i9 < height; i9++) {
                    int i10 = width - 1;
                    for (int i11 = 0; i11 < i; i11++) {
                        int gray = fastBitmap.getGray(i9, i10);
                        int gray2 = fastBitmap.getGray(i9, i11);
                        fastBitmap.setGray(i9, i11, gray);
                        fastBitmap.setGray(i9, i10, gray2);
                        i10--;
                    }
                }
            }
            if (this.b) {
                for (int i12 = 0; i12 < i2; i12++) {
                    int i13 = (height - i12) - 1;
                    for (int i14 = 0; i14 < width; i14++) {
                        int gray3 = fastBitmap.getGray(i13, i14);
                        int gray4 = fastBitmap.getGray(i12, i14);
                        fastBitmap.setGray(i12, i14, gray3);
                        fastBitmap.setGray(i13, i14, gray4);
                    }
                }
            }
        }
    }
}
