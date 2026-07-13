package Catalano.Imaging.Tools;

import Catalano.Core.IntPoint;
import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IProcessImage;
import Catalano.Math.Geometry.QuadrilateralTransformationCalc;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class QuadrilateralTransformation implements IProcessImage {
    private boolean a;
    private boolean b = true;
    private int c;
    private int d;
    private ArrayList<IntPoint> e;

    public boolean isAutomaticSizeCalculaton() {
        return this.a;
    }

    public void setAutomaticSizeCalculaton(boolean z) {
        this.a = z;
        if (z) {
            a();
        }
    }

    public ArrayList<IntPoint> getSourceQuadrilateral() {
        return this.e;
    }

    public void setSourceQuadrilateral(ArrayList<IntPoint> arrayList) {
        this.e = arrayList;
        if (this.a) {
            a();
        }
    }

    public int getNewWidth() {
        return this.c;
    }

    public void setNewWidth(int i) {
        this.c = i;
        if (!this.a) {
            this.c = Math.max(1, i);
        }
    }

    public int getNewHeight() {
        return this.d;
    }

    public void setNewHeight(int i) {
        this.d = i;
        if (!this.a) {
            this.d = Math.max(1, i);
        }
    }

    public boolean isUseInterpolation() {
        return this.b;
    }

    public void setUseInterpolation(boolean z) {
        this.b = z;
    }

    public QuadrilateralTransformation(ArrayList<IntPoint> arrayList) {
        this.a = true;
        this.a = true;
        this.e = arrayList;
        a();
    }

    public QuadrilateralTransformation(ArrayList<IntPoint> arrayList, int i, int i2) {
        this.a = true;
        this.a = false;
        this.e = arrayList;
        this.c = i;
        this.d = i2;
    }

    @Override // Catalano.Imaging.IProcessImage
    public FastBitmap ProcessImage(FastBitmap fastBitmap) {
        FastBitmap fastBitmap2 = new FastBitmap(this.c, this.d, fastBitmap.getColorSpace());
        int width = fastBitmap.getWidth();
        int height = fastBitmap.getHeight();
        int i = this.c;
        int i2 = this.d;
        ArrayList arrayList = new ArrayList();
        arrayList.add(new IntPoint(0, 0));
        arrayList.add(new IntPoint(i - 1, 0));
        arrayList.add(new IntPoint(i - 1, i2 - 1));
        arrayList.add(new IntPoint(0, i2 - 1));
        double[][] dArrMapQuadToQuad = QuadrilateralTransformationCalc.MapQuadToQuad(arrayList, this.e);
        if (!this.b) {
            if (fastBitmap.isRGB()) {
                for (int i3 = 0; i3 < i2; i3++) {
                    for (int i4 = 0; i4 < i; i4++) {
                        double d = (dArrMapQuadToQuad[2][0] * ((double) i4)) + (dArrMapQuadToQuad[2][1] * ((double) i3)) + dArrMapQuadToQuad[2][2];
                        double d2 = (((dArrMapQuadToQuad[0][0] * ((double) i4)) + (dArrMapQuadToQuad[0][1] * ((double) i3))) + dArrMapQuadToQuad[0][2]) / d;
                        double d3 = (((dArrMapQuadToQuad[1][0] * ((double) i4)) + (dArrMapQuadToQuad[1][1] * ((double) i3))) + dArrMapQuadToQuad[1][2]) / d;
                        if (d2 >= 0.0d && d3 >= 0.0d && d2 < width && d3 < height) {
                            fastBitmap2.setRGB(i3, i4, fastBitmap.getRed((int) d3, (int) d2), fastBitmap.getGreen((int) d3, (int) d2), fastBitmap.getBlue((int) d3, (int) d2));
                        }
                    }
                }
            }
            if (fastBitmap.isGrayscale()) {
                for (int i5 = 0; i5 < i2; i5++) {
                    for (int i6 = 0; i6 < i; i6++) {
                        double d4 = (dArrMapQuadToQuad[2][0] * ((double) i6)) + (dArrMapQuadToQuad[2][1] * ((double) i5)) + dArrMapQuadToQuad[2][2];
                        double d5 = (((dArrMapQuadToQuad[0][0] * ((double) i6)) + (dArrMapQuadToQuad[0][1] * ((double) i5))) + dArrMapQuadToQuad[0][2]) / d4;
                        double d6 = (((dArrMapQuadToQuad[1][0] * ((double) i6)) + (dArrMapQuadToQuad[1][1] * ((double) i5))) + dArrMapQuadToQuad[1][2]) / d4;
                        if (d5 >= 0.0d && d6 >= 0.0d && d5 < width && d6 < height) {
                            fastBitmap2.setGray(i5, i6, fastBitmap.getGray((int) d6, (int) d5));
                        }
                    }
                }
            }
        } else {
            if (fastBitmap.isRGB()) {
                int i7 = width - 1;
                int i8 = height - 1;
                for (int i9 = 0; i9 < i2; i9++) {
                    for (int i10 = 0; i10 < i; i10++) {
                        double d7 = (dArrMapQuadToQuad[2][0] * ((double) i10)) + (dArrMapQuadToQuad[2][1] * ((double) i9)) + dArrMapQuadToQuad[2][2];
                        double d8 = (((dArrMapQuadToQuad[0][0] * ((double) i10)) + (dArrMapQuadToQuad[0][1] * ((double) i9))) + dArrMapQuadToQuad[0][2]) / d7;
                        double d9 = (((dArrMapQuadToQuad[1][0] * ((double) i10)) + (dArrMapQuadToQuad[1][1] * ((double) i9))) + dArrMapQuadToQuad[1][2]) / d7;
                        if (d8 >= 0.0d && d9 >= 0.0d && d8 < width && d9 < height) {
                            int i11 = (int) d8;
                            int i12 = i11 == i7 ? i11 : i11 + 1;
                            double d10 = d8 - ((double) i11);
                            double d11 = 1.0d - d10;
                            int i13 = (int) d9;
                            int i14 = i13 == i8 ? i13 : i13 + 1;
                            double d12 = d9 - ((double) i13);
                            double d13 = 1.0d - d12;
                            int red = fastBitmap.getRed(i13, i11);
                            int red2 = fastBitmap.getRed(i13, i12);
                            int red3 = fastBitmap.getRed(i14, i11);
                            int red4 = fastBitmap.getRed(i14, i12);
                            int green = fastBitmap.getGreen(i13, i11);
                            int green2 = fastBitmap.getGreen(i13, i12);
                            int green3 = fastBitmap.getGreen(i14, i11);
                            int green4 = fastBitmap.getGreen(i14, i12);
                            int blue = fastBitmap.getBlue(i13, i11);
                            int blue2 = fastBitmap.getBlue(i13, i12);
                            fastBitmap2.setRGB(i9, i10, (int) ((((((double) red2) * d10) + (((double) red) * d11)) * d13) + (((((double) red4) * d10) + (((double) red3) * d11)) * d12)), (int) ((((((double) green) * d11) + (((double) green2) * d10)) * d13) + (((((double) green3) * d11) + (((double) green4) * d10)) * d12)), (int) ((((d10 * ((double) fastBitmap.getBlue(i14, i12))) + (d11 * ((double) fastBitmap.getBlue(i14, i11)))) * d12) + (d13 * ((((double) blue) * d11) + (((double) blue2) * d10)))));
                        }
                    }
                }
            }
            if (fastBitmap.isGrayscale()) {
                int i15 = width - 1;
                int i16 = height - 1;
                for (int i17 = 0; i17 < i2; i17++) {
                    for (int i18 = 0; i18 < i; i18++) {
                        double d14 = (dArrMapQuadToQuad[2][0] * ((double) i18)) + (dArrMapQuadToQuad[2][1] * ((double) i17)) + dArrMapQuadToQuad[2][2];
                        double d15 = (((dArrMapQuadToQuad[0][0] * ((double) i18)) + (dArrMapQuadToQuad[0][1] * ((double) i17))) + dArrMapQuadToQuad[0][2]) / d14;
                        double d16 = (((dArrMapQuadToQuad[1][0] * ((double) i18)) + (dArrMapQuadToQuad[1][1] * ((double) i17))) + dArrMapQuadToQuad[1][2]) / d14;
                        if (d15 >= 0.0d && d16 >= 0.0d && d15 < width && d16 < height) {
                            int i19 = (int) d15;
                            int i20 = i19 == i15 ? i19 : i19 + 1;
                            double d17 = d15 - ((double) i19);
                            double d18 = 1.0d - d17;
                            int i21 = (int) d16;
                            int i22 = i21 == i16 ? i21 : i21 + 1;
                            double d19 = d16 - ((double) i21);
                            fastBitmap2.setGray(i17, i18, (int) ((((((double) fastBitmap.getGray(i21, i20)) * d17) + (((double) fastBitmap.getGray(i21, i19)) * d18)) * (1.0d - d19)) + (((d17 * ((double) fastBitmap.getGray(i22, i20))) + (d18 * ((double) fastBitmap.getGray(i22, i19)))) * d19)));
                        }
                    }
                }
            }
        }
        return fastBitmap2;
    }

    private void a() {
        if (this.e == null) {
            throw new IllegalArgumentException("Source quadrilateral was not set.");
        }
        this.c = (int) Math.max(this.e.get(0).DistanceTo(this.e.get(1)), this.e.get(2).DistanceTo(this.e.get(3)));
        this.d = (int) Math.max(this.e.get(1).DistanceTo(this.e.get(2)), this.e.get(3).DistanceTo(this.e.get(0)));
    }
}
