package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;
import Catalano.Imaging.Tools.CompassConvolutionKernel;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public class IsotropicCompassEdgeDetector implements IApplyInPlace {
    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        if (fastBitmap.isGrayscale()) {
            int height = fastBitmap.getHeight();
            int width = fastBitmap.getWidth();
            int[][] iArr = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, height, width);
            int[][] iArrA = a(fastBitmap, CompassConvolutionKernel.Isotropic_North);
            for (int i = 0; i < height; i++) {
                for (int i2 = 0; i2 < width; i2++) {
                    iArr[i][i2] = iArrA[i][i2];
                }
            }
            int[][] iArrA2 = a(fastBitmap, CompassConvolutionKernel.Isotropic_Northwest);
            for (int i3 = 0; i3 < height; i3++) {
                for (int i4 = 0; i4 < width; i4++) {
                    iArr[i3][i4] = Math.max(iArr[i3][i4], iArrA2[i3][i4]);
                }
            }
            int[][] iArrA3 = a(fastBitmap, CompassConvolutionKernel.Isotropic_West);
            for (int i5 = 0; i5 < height; i5++) {
                for (int i6 = 0; i6 < width; i6++) {
                    iArr[i5][i6] = Math.max(iArr[i5][i6], iArrA3[i5][i6]);
                }
            }
            int[][] iArrA4 = a(fastBitmap, CompassConvolutionKernel.Isotropic_Southwest);
            for (int i7 = 0; i7 < height; i7++) {
                for (int i8 = 0; i8 < width; i8++) {
                    iArr[i7][i8] = Math.max(iArr[i7][i8], iArrA4[i7][i8]);
                }
            }
            int[][] iArrA5 = a(fastBitmap, CompassConvolutionKernel.Isotropic_South);
            for (int i9 = 0; i9 < height; i9++) {
                for (int i10 = 0; i10 < width; i10++) {
                    iArr[i9][i10] = Math.max(iArr[i9][i10], iArrA5[i9][i10]);
                }
            }
            int[][] iArrA6 = a(fastBitmap, CompassConvolutionKernel.Isotropic_Southeast);
            for (int i11 = 0; i11 < height; i11++) {
                for (int i12 = 0; i12 < width; i12++) {
                    iArr[i11][i12] = Math.max(iArr[i11][i12], iArrA6[i11][i12]);
                }
            }
            int[][] iArrA7 = a(fastBitmap, CompassConvolutionKernel.Isotropic_East);
            for (int i13 = 0; i13 < height; i13++) {
                for (int i14 = 0; i14 < width; i14++) {
                    iArr[i13][i14] = Math.max(iArr[i13][i14], iArrA7[i13][i14]);
                }
            }
            int[][] iArrA8 = a(fastBitmap, CompassConvolutionKernel.Isotropic_Northeast);
            for (int i15 = 0; i15 < height; i15++) {
                for (int i16 = 0; i16 < width; i16++) {
                    iArr[i15][i16] = Math.max(iArr[i15][i16], iArrA8[i15][i16]);
                }
            }
            fastBitmap.matrixToImage(iArr);
        }
        if (fastBitmap.isRGB()) {
            int height2 = fastBitmap.getHeight();
            int width2 = fastBitmap.getWidth();
            int[][][] iArr2 = (int[][][]) Array.newInstance((Class<?>) Integer.TYPE, height2, width2, 3);
            int[][][] iArrB = b(fastBitmap, CompassConvolutionKernel.Isotropic_North);
            for (int i17 = 0; i17 < height2; i17++) {
                for (int i18 = 0; i18 < width2; i18++) {
                    iArr2[i17][i18][0] = iArrB[i17][i18][0];
                    iArr2[i17][i18][1] = iArrB[i17][i18][1];
                    iArr2[i17][i18][2] = iArrB[i17][i18][2];
                }
            }
            int[][][] iArrB2 = b(fastBitmap, CompassConvolutionKernel.Isotropic_Northwest);
            for (int i19 = 0; i19 < height2; i19++) {
                for (int i20 = 0; i20 < width2; i20++) {
                    iArr2[i19][i20][0] = Math.max(iArr2[i19][i20][0], iArrB2[i19][i20][0]);
                    iArr2[i19][i20][1] = Math.max(iArr2[i19][i20][1], iArrB2[i19][i20][1]);
                    iArr2[i19][i20][2] = Math.max(iArr2[i19][i20][2], iArrB2[i19][i20][2]);
                }
            }
            int[][][] iArrB3 = b(fastBitmap, CompassConvolutionKernel.Isotropic_West);
            for (int i21 = 0; i21 < height2; i21++) {
                for (int i22 = 0; i22 < width2; i22++) {
                    iArr2[i21][i22][0] = Math.max(iArr2[i21][i22][0], iArrB3[i21][i22][0]);
                    iArr2[i21][i22][1] = Math.max(iArr2[i21][i22][1], iArrB3[i21][i22][1]);
                    iArr2[i21][i22][2] = Math.max(iArr2[i21][i22][2], iArrB3[i21][i22][2]);
                }
            }
            int[][][] iArrB4 = b(fastBitmap, CompassConvolutionKernel.Isotropic_Southwest);
            for (int i23 = 0; i23 < height2; i23++) {
                for (int i24 = 0; i24 < width2; i24++) {
                    iArr2[i23][i24][0] = Math.max(iArr2[i23][i24][0], iArrB4[i23][i24][0]);
                    iArr2[i23][i24][1] = Math.max(iArr2[i23][i24][1], iArrB4[i23][i24][1]);
                    iArr2[i23][i24][2] = Math.max(iArr2[i23][i24][2], iArrB4[i23][i24][2]);
                }
            }
            int[][][] iArrB5 = b(fastBitmap, CompassConvolutionKernel.Isotropic_South);
            for (int i25 = 0; i25 < height2; i25++) {
                for (int i26 = 0; i26 < width2; i26++) {
                    iArr2[i25][i26][0] = Math.max(iArr2[i25][i26][0], iArrB5[i25][i26][0]);
                    iArr2[i25][i26][1] = Math.max(iArr2[i25][i26][1], iArrB5[i25][i26][1]);
                    iArr2[i25][i26][2] = Math.max(iArr2[i25][i26][2], iArrB5[i25][i26][2]);
                }
            }
            int[][][] iArrB6 = b(fastBitmap, CompassConvolutionKernel.Isotropic_Southeast);
            for (int i27 = 0; i27 < height2; i27++) {
                for (int i28 = 0; i28 < width2; i28++) {
                    iArr2[i27][i28][0] = Math.max(iArr2[i27][i28][0], iArrB6[i27][i28][0]);
                    iArr2[i27][i28][1] = Math.max(iArr2[i27][i28][1], iArrB6[i27][i28][1]);
                    iArr2[i27][i28][2] = Math.max(iArr2[i27][i28][2], iArrB6[i27][i28][2]);
                }
            }
            int[][][] iArrB7 = b(fastBitmap, CompassConvolutionKernel.Isotropic_East);
            for (int i29 = 0; i29 < height2; i29++) {
                for (int i30 = 0; i30 < width2; i30++) {
                    iArr2[i29][i30][0] = Math.max(iArr2[i29][i30][0], iArrB7[i29][i30][0]);
                    iArr2[i29][i30][1] = Math.max(iArr2[i29][i30][1], iArrB7[i29][i30][1]);
                    iArr2[i29][i30][2] = Math.max(iArr2[i29][i30][2], iArrB7[i29][i30][2]);
                }
            }
            int[][][] iArrB8 = b(fastBitmap, CompassConvolutionKernel.Isotropic_Northeast);
            for (int i31 = 0; i31 < height2; i31++) {
                for (int i32 = 0; i32 < width2; i32++) {
                    iArr2[i31][i32][0] = Math.max(iArr2[i31][i32][0], iArrB8[i31][i32][0]);
                    iArr2[i31][i32][1] = Math.max(iArr2[i31][i32][1], iArrB8[i31][i32][1]);
                    iArr2[i31][i32][2] = Math.max(iArr2[i31][i32][2], iArrB8[i31][i32][2]);
                }
            }
            fastBitmap.matrixToImage(iArr2);
        }
    }

    private int[][] a(FastBitmap fastBitmap, float[][] fArr) {
        int height = fastBitmap.getHeight();
        int width = fastBitmap.getWidth();
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, height, width);
        int iA = a(fArr);
        int i = 1;
        while (true) {
            int i2 = i;
            if (i2 < height - 1) {
                int i3 = 1;
                while (true) {
                    int i4 = i3;
                    if (i4 < width - 1) {
                        int gray = 0;
                        for (int i5 = 0; i5 < fArr.length; i5++) {
                            int i6 = i2 + (i5 - iA);
                            int i7 = 0;
                            while (i7 < fArr[0].length) {
                                int i8 = (i7 - iA) + i4;
                                if (i6 >= 0 && i6 < height && i8 >= 0 && i8 < width) {
                                    gray = (int) (gray + (fastBitmap.getGray(i6, i8) * fArr[i5][i7]));
                                }
                                i7++;
                                gray = gray;
                            }
                        }
                        int i9 = gray < 0 ? 0 : gray;
                        if (i9 > 255) {
                            i9 = 255;
                        }
                        iArr[i2][i4] = i9;
                        i3 = i4 + 1;
                    }
                }
                i = i2 + 1;
            } else {
                return iArr;
            }
        }
    }

    private int[][][] b(FastBitmap fastBitmap, float[][] fArr) {
        int height = fastBitmap.getHeight();
        int width = fastBitmap.getWidth();
        int[][][] iArr = (int[][][]) Array.newInstance((Class<?>) Integer.TYPE, height, width, 3);
        int iA = a(fArr);
        for (int i = 0; i < height; i++) {
            for (int i2 = 0; i2 < width; i2++) {
                int blue = 0;
                int green = 0;
                int red = 0;
                for (int i3 = 0; i3 < fArr.length; i3++) {
                    int i4 = i + (i3 - iA);
                    int i5 = 0;
                    while (i5 < fArr[0].length) {
                        int i6 = (i5 - iA) + i2;
                        if (i4 >= 0 && i4 < height && i6 >= 0 && i6 < width) {
                            red = (int) (red + (fArr[i3][i5] * fastBitmap.getRed(i4, i6)));
                            green = (int) (green + (fArr[i3][i5] * fastBitmap.getGreen(i4, i6)));
                            blue = (int) (blue + (fastBitmap.getBlue(i4, i6) * fArr[i3][i5]));
                        }
                        i5++;
                        blue = blue;
                        green = green;
                        red = red;
                    }
                }
                if (red < 0) {
                    red = 0;
                }
                if (green < 0) {
                    green = 0;
                }
                int i7 = blue < 0 ? 0 : blue;
                if (red > 255) {
                    red = 255;
                }
                int i8 = green > 255 ? 255 : green;
                if (i7 > 255) {
                    i7 = 255;
                }
                iArr[i][i2][0] = red;
                iArr[i][i2][1] = i8;
                iArr[i][i2][2] = i7;
            }
        }
        return iArr;
    }

    private int a(float[][] fArr) {
        return (fArr[0].length - 1) / 2;
    }
}
