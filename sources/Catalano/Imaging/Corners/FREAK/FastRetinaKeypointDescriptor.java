package Catalano.Imaging.Corners.FREAK;

import Catalano.Imaging.Corners.FREAK.FastRetinaKeypointPattern;
import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.Tools.IntegralImage;
import android.support.v4.view.InputDeviceCompat;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class FastRetinaKeypointDescriptor {
    public IntegralImage Integral;
    FastRetinaKeypoint a;
    private FastRetinaKeypointPattern b;
    private FastBitmap f;
    private boolean e = false;
    private boolean c = true;
    private boolean d = true;

    public boolean IsOrientationNormal() {
        return this.c;
    }

    public void setOrientationNormal(boolean z) {
        this.c = z;
    }

    public boolean IsScaleNormal() {
        return this.d;
    }

    public void setScaleNormal(boolean z) {
        this.d = z;
    }

    public boolean IsExtended() {
        return this.e;
    }

    public void setExtended(boolean z) {
        this.e = z;
    }

    FastRetinaKeypointDescriptor(FastBitmap fastBitmap, IntegralImage integralImage, FastRetinaKeypointPattern fastRetinaKeypointPattern) {
        this.f = fastBitmap;
        this.Integral = integralImage;
        this.b = fastRetinaKeypointPattern;
    }

    public void Compute(List<FastRetinaKeypoint> list) {
        int orientation;
        int[] iArr = this.b.patternSizes;
        int[] iArr2 = this.b.pointsValues;
        FastRetinaKeypointPattern.b[] bVarArr = this.b.orientationPairs;
        FastRetinaKeypointPattern.a[] aVarArr = this.b.descriptionPairs;
        double d = this.b.step;
        ArrayList arrayList = new ArrayList(list.size());
        for (int i = 0; i < list.size(); i++) {
            arrayList.add(0);
        }
        if (this.d) {
            for (int size = list.size() - 1; size >= 0; size--) {
                arrayList.set(size, Integer.valueOf(Math.max((int) ((Math.log(list.get(size).scale / 7.0d) * d) + 0.5d), 0)));
                if (((Integer) arrayList.get(size)).intValue() >= 64) {
                    arrayList.set(size, 63);
                }
                if (list.get(size).x <= iArr[((Integer) arrayList.get(size)).intValue()] || list.get(size).y <= iArr[((Integer) arrayList.get(size)).intValue()] || list.get(size).x >= this.f.getHeight() - iArr[((Integer) arrayList.get(size)).intValue()] || list.get(size).y >= this.f.getWidth() - iArr[((Integer) arrayList.get(size)).intValue()]) {
                    list.remove(size);
                    arrayList.remove(size);
                }
            }
        } else {
            int iMax = Math.max((int) ((1.0986122886681098d * d) + 0.5d), 0);
            for (int size2 = list.size() - 1; size2 >= 0; size2--) {
                arrayList.set(size2, Integer.valueOf(iMax));
                if (((Integer) arrayList.get(size2)).intValue() >= 64) {
                    arrayList.set(size2, 63);
                }
                if (list.get(size2).x <= iArr[((Integer) arrayList.get(size2)).intValue()] || list.get(size2).y <= iArr[((Integer) arrayList.get(size2)).intValue()] || list.get(size2).x >= this.f.getHeight() - iArr[((Integer) arrayList.get(size2)).intValue()] || list.get(size2).y >= this.f.getWidth() - iArr[((Integer) arrayList.get(size2)).intValue()]) {
                    list.remove(size2);
                    arrayList.remove(size2);
                }
            }
        }
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 < list.size()) {
                if (!this.c) {
                    this.a = list.get(i3);
                    this.a.setOrientation(0.0d);
                    orientation = 0;
                    list.set(i3, this.a);
                } else {
                    for (int i4 = 0; i4 < iArr2.length; i4++) {
                        iArr2[i4] = a(list.get(i3).x, list.get(i3).y, ((Integer) arrayList.get(i3)).intValue(), 0, i4);
                    }
                    int i5 = 0;
                    int i6 = 0;
                    for (FastRetinaKeypointPattern.b bVar : bVarArr) {
                        int i7 = iArr2[bVar.a] - iArr2[bVar.b];
                        i5 += (bVar.c * i7) / 2048;
                        i6 += (bVar.d * i7) / 2048;
                    }
                    this.a = list.get(i3);
                    this.a.setOrientation(Math.atan2(i6, i5) * 57.29577951308232d);
                    list.set(i3, this.a);
                    orientation = (int) ((list.get(i3).getOrientation() * 256.0d * 0.002777777777777778d) + 0.5d);
                    if (orientation < 0) {
                        orientation += 256;
                    }
                    if (orientation >= 256) {
                        orientation += InputDeviceCompat.SOURCE_ANY;
                    }
                }
                for (int i8 = 0; i8 < iArr2.length; i8++) {
                    iArr2[i8] = a(list.get(i3).x, list.get(i3).y, ((Integer) arrayList.get(i3)).intValue(), orientation, i8);
                }
                if (!this.e) {
                    this.a = list.get(i3);
                    this.a.setDescriptor(new byte[64]);
                    for (int i9 = 0; i9 < aVarArr.length; i9++) {
                        FastRetinaKeypointPattern.a aVar = aVarArr[i9];
                        byte[] descriptor = this.a.getDescriptor();
                        if (iArr2[aVar.a] > iArr2[aVar.b]) {
                            int i10 = i9 / 8;
                            descriptor[i10] = (byte) (descriptor[i10] | ((byte) (1 << (i9 % 8))));
                        } else {
                            int i11 = i9 / 8;
                            descriptor[i11] = (byte) (descriptor[i11] & ((byte) ((1 << (i9 % 8)) ^ (-1))));
                        }
                    }
                } else {
                    this.a = list.get(i3);
                    this.a.setDescriptor(new byte[128]);
                    int i12 = 0;
                    for (int i13 = 1; i13 < iArr2.length; i13++) {
                        int i14 = 0;
                        while (i14 < i13) {
                            byte[] descriptor2 = this.a.getDescriptor();
                            if (iArr2[i13] > iArr2[i14]) {
                                int i15 = i12 / 8;
                                descriptor2[i15] = (byte) (descriptor2[i15] | ((byte) (1 << (i12 % 8))));
                            } else {
                                int i16 = i12 / 8;
                                descriptor2[i16] = (byte) (descriptor2[i16] & ((byte) ((1 << (i12 % 8)) ^ (-1))));
                            }
                            i14++;
                            i12++;
                        }
                    }
                }
                i2 = i3 + 1;
            } else {
                return;
            }
        }
    }

    private int a(double d, double d2, int i, int i2, int i3) {
        FastRetinaKeypointPattern.c cVar = this.b.lookupTable[(i * 256 * 43) + (i2 * 43) + i3];
        double d3 = ((double) cVar.a) + d2;
        double d4 = ((double) cVar.b) + d;
        int i4 = (int) d3;
        int i5 = (int) d4;
        float f = cVar.c;
        if (f < 0.5d) {
            int i6 = (int) ((d3 - ((double) i4)) * 1024.0d);
            int i7 = (int) ((d4 - ((double) i5)) * 1024.0d);
            int i8 = 1024 - i6;
            int i9 = 1024 - i7;
            return (((((i6 * i7) * this.f.getGray(i5 + 1, i4 + 1)) + (((i9 * i6) * this.f.getGray(i5, i4 + 1)) + ((i8 * i9) * this.f.getGray(i5, i4)))) + (this.f.getGray(i5 + 1, i4) * (i7 * i8))) + 512) / 1024;
        }
        int i10 = (int) ((d3 - ((double) f)) + 0.5d);
        int i11 = (int) ((d4 - ((double) f)) + 0.5d);
        int i12 = (int) (d3 + ((double) f) + 1.5d);
        int i13 = (int) (d4 + ((double) f) + 1.5d);
        return (((this.Integral.getInternalData(i13, i12) - this.Integral.getInternalData(i13, i10)) + this.Integral.getInternalData(i11, i10)) - this.Integral.getInternalData(i11, i12)) / ((i13 - i11) * (i12 - i10));
    }
}
