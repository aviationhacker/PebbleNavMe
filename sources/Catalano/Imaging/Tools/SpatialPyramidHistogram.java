package Catalano.Imaging.Tools;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.Texture.BinaryPattern.IBinaryPattern;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class SpatialPyramidHistogram {
    private int a;

    public int getLevel() {
        return this.a;
    }

    public void setLevel(int i) {
        this.a = Math.max(1, i);
    }

    public SpatialPyramidHistogram() {
        this(3);
    }

    public SpatialPyramidHistogram(int i) {
        setLevel(i);
    }

    public int[] Compute(FastBitmap fastBitmap, IBinaryPattern iBinaryPattern) {
        ArrayList arrayList = new ArrayList();
        int i = 1;
        int length = 0;
        for (int i2 = 0; i2 < this.a; i2++) {
            arrayList.add(new SpatialHistogram(i, i).Compute(fastBitmap, iBinaryPattern));
            length += ((int[]) arrayList.get(i2)).length;
            i *= 2;
        }
        int[] iArr = new int[length];
        int i3 = 0;
        for (int i4 = 0; i4 < arrayList.size(); i4++) {
            int[] iArr2 = (int[]) arrayList.get(i4);
            int i5 = 0;
            while (i5 < iArr2.length) {
                iArr[i3] = iArr2[i5];
                i5++;
                i3++;
            }
        }
        return iArr;
    }
}
