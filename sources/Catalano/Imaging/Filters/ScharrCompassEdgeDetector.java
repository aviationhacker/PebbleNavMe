package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;
import Catalano.Imaging.Tools.CompassConvolutionKernel;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public class ScharrCompassEdgeDetector implements IApplyInPlace {
    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        Convolution convolution = new Convolution();
        FastBitmap fastBitmap2 = new FastBitmap(fastBitmap);
        if (fastBitmap.isGrayscale()) {
            int height = fastBitmap.getHeight();
            int width = fastBitmap.getWidth();
            int[][] iArr = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, height, width);
            convolution.setKernel(CompassConvolutionKernel.Scharr_North);
            convolution.applyInPlace(fastBitmap2);
            for (int i = 0; i < height; i++) {
                for (int i2 = 0; i2 < width; i2++) {
                    iArr[i][i2] = fastBitmap2.getGray(i, i2);
                }
            }
            FastBitmap fastBitmap3 = new FastBitmap(fastBitmap);
            convolution.setKernel(CompassConvolutionKernel.Scharr_Northwest);
            convolution.applyInPlace(fastBitmap3);
            for (int i3 = 0; i3 < height; i3++) {
                for (int i4 = 0; i4 < width; i4++) {
                    iArr[i3][i4] = Math.max(iArr[i3][i4], fastBitmap3.getGray(i3, i4));
                }
            }
            FastBitmap fastBitmap4 = new FastBitmap(fastBitmap);
            convolution.setKernel(CompassConvolutionKernel.Scharr_West);
            convolution.applyInPlace(fastBitmap4);
            for (int i5 = 0; i5 < height; i5++) {
                for (int i6 = 0; i6 < width; i6++) {
                    iArr[i5][i6] = Math.max(iArr[i5][i6], fastBitmap4.getGray(i5, i6));
                }
            }
            FastBitmap fastBitmap5 = new FastBitmap(fastBitmap);
            convolution.setKernel(CompassConvolutionKernel.Scharr_Southwest);
            convolution.applyInPlace(fastBitmap5);
            for (int i7 = 0; i7 < height; i7++) {
                for (int i8 = 0; i8 < width; i8++) {
                    iArr[i7][i8] = Math.max(iArr[i7][i8], fastBitmap5.getGray(i7, i8));
                }
            }
            FastBitmap fastBitmap6 = new FastBitmap(fastBitmap);
            convolution.setKernel(CompassConvolutionKernel.Scharr_South);
            convolution.applyInPlace(fastBitmap6);
            for (int i9 = 0; i9 < height; i9++) {
                for (int i10 = 0; i10 < width; i10++) {
                    iArr[i9][i10] = Math.max(iArr[i9][i10], fastBitmap6.getGray(i9, i10));
                }
            }
            FastBitmap fastBitmap7 = new FastBitmap(fastBitmap);
            convolution.setKernel(CompassConvolutionKernel.Scharr_Southeast);
            convolution.applyInPlace(fastBitmap7);
            for (int i11 = 0; i11 < height; i11++) {
                for (int i12 = 0; i12 < width; i12++) {
                    iArr[i11][i12] = Math.max(iArr[i11][i12], fastBitmap7.getGray(i11, i12));
                }
            }
            FastBitmap fastBitmap8 = new FastBitmap(fastBitmap);
            convolution.setKernel(CompassConvolutionKernel.Scharr_East);
            convolution.applyInPlace(fastBitmap8);
            for (int i13 = 0; i13 < height; i13++) {
                for (int i14 = 0; i14 < width; i14++) {
                    iArr[i13][i14] = Math.max(iArr[i13][i14], fastBitmap8.getGray(i13, i14));
                }
            }
            fastBitmap2 = new FastBitmap(fastBitmap);
            convolution.setKernel(CompassConvolutionKernel.Scharr_Northeast);
            convolution.applyInPlace(fastBitmap2);
            for (int i15 = 0; i15 < height; i15++) {
                for (int i16 = 0; i16 < width; i16++) {
                    iArr[i15][i16] = Math.max(iArr[i15][i16], fastBitmap2.getGray(i15, i16));
                }
            }
            fastBitmap.matrixToImage(iArr);
        }
        if (fastBitmap.isRGB()) {
            int height2 = fastBitmap.getHeight();
            int width2 = fastBitmap.getWidth();
            int[][][] iArr2 = (int[][][]) Array.newInstance((Class<?>) Integer.TYPE, height2, width2, 3);
            convolution.setKernel(CompassConvolutionKernel.Scharr_North);
            convolution.applyInPlace(fastBitmap2);
            for (int i17 = 0; i17 < height2; i17++) {
                for (int i18 = 0; i18 < width2; i18++) {
                    iArr2[i17][i18][0] = fastBitmap2.getRed(i17, i18);
                    iArr2[i17][i18][1] = fastBitmap2.getGreen(i17, i18);
                    iArr2[i17][i18][2] = fastBitmap2.getBlue(i17, i18);
                }
            }
            FastBitmap fastBitmap9 = new FastBitmap(fastBitmap);
            convolution.setKernel(CompassConvolutionKernel.Scharr_Northwest);
            convolution.applyInPlace(fastBitmap9);
            for (int i19 = 0; i19 < height2; i19++) {
                for (int i20 = 0; i20 < width2; i20++) {
                    iArr2[i19][i20][0] = Math.max(iArr2[i19][i20][0], fastBitmap9.getRed(i19, i20));
                    iArr2[i19][i20][1] = Math.max(iArr2[i19][i20][1], fastBitmap9.getGreen(i19, i20));
                    iArr2[i19][i20][2] = Math.max(iArr2[i19][i20][2], fastBitmap9.getBlue(i19, i20));
                }
            }
            FastBitmap fastBitmap10 = new FastBitmap(fastBitmap);
            convolution.setKernel(CompassConvolutionKernel.Scharr_West);
            convolution.applyInPlace(fastBitmap10);
            for (int i21 = 0; i21 < height2; i21++) {
                for (int i22 = 0; i22 < width2; i22++) {
                    iArr2[i21][i22][0] = Math.max(iArr2[i21][i22][0], fastBitmap10.getRed(i21, i22));
                    iArr2[i21][i22][1] = Math.max(iArr2[i21][i22][1], fastBitmap10.getGreen(i21, i22));
                    iArr2[i21][i22][2] = Math.max(iArr2[i21][i22][2], fastBitmap10.getBlue(i21, i22));
                }
            }
            FastBitmap fastBitmap11 = new FastBitmap(fastBitmap);
            convolution.setKernel(CompassConvolutionKernel.Scharr_Southwest);
            convolution.applyInPlace(fastBitmap11);
            for (int i23 = 0; i23 < height2; i23++) {
                for (int i24 = 0; i24 < width2; i24++) {
                    iArr2[i23][i24][0] = Math.max(iArr2[i23][i24][0], fastBitmap11.getRed(i23, i24));
                    iArr2[i23][i24][1] = Math.max(iArr2[i23][i24][1], fastBitmap11.getGreen(i23, i24));
                    iArr2[i23][i24][2] = Math.max(iArr2[i23][i24][2], fastBitmap11.getBlue(i23, i24));
                }
            }
            FastBitmap fastBitmap12 = new FastBitmap(fastBitmap);
            convolution.setKernel(CompassConvolutionKernel.Scharr_South);
            convolution.applyInPlace(fastBitmap12);
            for (int i25 = 0; i25 < height2; i25++) {
                for (int i26 = 0; i26 < width2; i26++) {
                    iArr2[i25][i26][0] = Math.max(iArr2[i25][i26][0], fastBitmap12.getRed(i25, i26));
                    iArr2[i25][i26][1] = Math.max(iArr2[i25][i26][1], fastBitmap12.getGreen(i25, i26));
                    iArr2[i25][i26][2] = Math.max(iArr2[i25][i26][2], fastBitmap12.getBlue(i25, i26));
                }
            }
            FastBitmap fastBitmap13 = new FastBitmap(fastBitmap);
            convolution.setKernel(CompassConvolutionKernel.Scharr_Southeast);
            convolution.applyInPlace(fastBitmap13);
            for (int i27 = 0; i27 < height2; i27++) {
                for (int i28 = 0; i28 < width2; i28++) {
                    iArr2[i27][i28][0] = Math.max(iArr2[i27][i28][0], fastBitmap13.getRed(i27, i28));
                    iArr2[i27][i28][1] = Math.max(iArr2[i27][i28][1], fastBitmap13.getGreen(i27, i28));
                    iArr2[i27][i28][2] = Math.max(iArr2[i27][i28][2], fastBitmap13.getBlue(i27, i28));
                }
            }
            FastBitmap fastBitmap14 = new FastBitmap(fastBitmap);
            convolution.setKernel(CompassConvolutionKernel.Scharr_East);
            convolution.applyInPlace(fastBitmap14);
            for (int i29 = 0; i29 < height2; i29++) {
                for (int i30 = 0; i30 < width2; i30++) {
                    iArr2[i29][i30][0] = Math.max(iArr2[i29][i30][0], fastBitmap14.getRed(i29, i30));
                    iArr2[i29][i30][1] = Math.max(iArr2[i29][i30][1], fastBitmap14.getGreen(i29, i30));
                    iArr2[i29][i30][2] = Math.max(iArr2[i29][i30][2], fastBitmap14.getBlue(i29, i30));
                }
            }
            FastBitmap fastBitmap15 = new FastBitmap(fastBitmap);
            convolution.setKernel(CompassConvolutionKernel.Scharr_Northeast);
            convolution.applyInPlace(fastBitmap15);
            for (int i31 = 0; i31 < height2; i31++) {
                for (int i32 = 0; i32 < width2; i32++) {
                    iArr2[i31][i32][0] = Math.max(iArr2[i31][i32][0], fastBitmap15.getRed(i31, i32));
                    iArr2[i31][i32][1] = Math.max(iArr2[i31][i32][1], fastBitmap15.getGreen(i31, i32));
                    iArr2[i31][i32][2] = Math.max(iArr2[i31][i32][2], fastBitmap15.getBlue(i31, i32));
                }
            }
            fastBitmap.matrixToImage(iArr2);
        }
    }
}
