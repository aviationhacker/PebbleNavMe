package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;
import Catalano.Imaging.Tools.ImageStatistics;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class HistogramEqualization implements IApplyInPlace {
    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        ArrayList<int[]> arrayListA = a(fastBitmap);
        int size = fastBitmap.getSize();
        if (fastBitmap.isGrayscale()) {
            for (int i = 0; i < size; i++) {
                fastBitmap.setGray(i, arrayListA.get(0)[fastBitmap.getGray(i)]);
            }
            return;
        }
        if (fastBitmap.isRGB()) {
            for (int i2 = 0; i2 < size; i2++) {
                fastBitmap.setRGB(i2, arrayListA.get(0)[fastBitmap.getRed(i2)], arrayListA.get(1)[fastBitmap.getGreen(i2)], arrayListA.get(2)[fastBitmap.getBlue(i2)]);
            }
        }
    }

    private ArrayList<int[]> a(FastBitmap fastBitmap) {
        ImageStatistics imageStatistics = new ImageStatistics(fastBitmap);
        ArrayList arrayList = new ArrayList();
        float width = (float) (255.0d / ((double) (fastBitmap.getWidth() * fastBitmap.getHeight())));
        if (fastBitmap.isGrayscale()) {
            arrayList.add(imageStatistics.getHistogramGray().getValues());
            ArrayList<int[]> arrayList2 = new ArrayList<>();
            int[] iArr = new int[256];
            for (int i = 0; i < 256; i++) {
                iArr[i] = 0;
            }
            int i2 = 0;
            long j = 0;
            while (true) {
                int i3 = i2;
                if (i3 < 256) {
                    j += (long) ((int[]) arrayList.get(0))[i3];
                    int i4 = (int) (j * width);
                    if (i4 > 255) {
                        iArr[i3] = 255;
                    } else {
                        iArr[i3] = i4;
                    }
                    i2 = i3 + 1;
                } else {
                    arrayList2.add(iArr);
                    return arrayList2;
                }
            }
        } else {
            arrayList.add(imageStatistics.getHistogramRed().getValues());
            arrayList.add(imageStatistics.getHistogramGreen().getValues());
            arrayList.add(imageStatistics.getHistogramBlue().getValues());
            ArrayList<int[]> arrayList3 = new ArrayList<>();
            int[] iArr2 = new int[256];
            int[] iArr3 = new int[256];
            int[] iArr4 = new int[256];
            for (int i5 = 0; i5 < 256; i5++) {
                iArr2[i5] = 0;
                iArr3[i5] = 0;
                iArr4[i5] = 0;
            }
            int i6 = 0;
            long j2 = 0;
            long j3 = 0;
            long j4 = 0;
            while (true) {
                int i7 = i6;
                if (i7 < 256) {
                    j2 += (long) ((int[]) arrayList.get(0))[i7];
                    int i8 = (int) (j2 * width);
                    if (i8 > 255) {
                        iArr2[i7] = 255;
                    } else {
                        iArr2[i7] = i8;
                    }
                    j3 += (long) ((int[]) arrayList.get(1))[i7];
                    int i9 = (int) (j3 * width);
                    if (i9 > 255) {
                        iArr3[i7] = 255;
                    } else {
                        iArr3[i7] = i9;
                    }
                    j4 += (long) ((int[]) arrayList.get(2))[i7];
                    int i10 = (int) (j4 * width);
                    if (i10 > 255) {
                        iArr4[i7] = 255;
                    } else {
                        iArr4[i7] = i10;
                    }
                    i6 = i7 + 1;
                } else {
                    arrayList3.add(iArr2);
                    arrayList3.add(iArr3);
                    arrayList3.add(iArr4);
                    return arrayList3;
                }
            }
        }
    }
}
