package Catalano.Imaging.Filters;

import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class ZhangSuenThinning implements IApplyInPlace {
    private int[] a = {0, 0, 0, 0, 0, 0, 1, 3, 0, 0, 3, 1, 1, 0, 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 3, 0, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 3, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 2, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 3, 0, 2, 0, 0, 0, 3, 1, 0, 0, 1, 3, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 3, 1, 3, 0, 0, 1, 3, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 3, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 3, 3, 0, 1, 0, 0, 0, 0, 2, 2, 0, 0, 2, 0, 0, 0};
    private int[] b = {0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        int i;
        int iA;
        int i2;
        int iA2;
        if (fastBitmap.isGrayscale()) {
            int i3 = 0;
            do {
                i = i3 + 1;
                iA = a(i3, this.a, fastBitmap);
                i3 = i + 1;
            } while (a(i, this.a, fastBitmap) + iA > 0);
            do {
                i2 = i3 + 1;
                iA2 = a(i3, this.b, fastBitmap);
                i3 = i2 + 1;
            } while (a(i2, this.b, fastBitmap) + iA2 > 0);
            return;
        }
        throw new IllegalArgumentException("Zhang Suen Thinning only works with grayscale image.");
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00bb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int a(int r19, int[] r20, Catalano.Imaging.FastBitmap r21) {
        /*
            r18 = this;
            int r7 = r21.getHeight()
            int r8 = r21.getWidth()
            int r1 = r8 * r7
            int[] r9 = new int[r1]
            int[] r1 = r21.getData()
            r2 = 0
            r3 = 0
            int r4 = r8 * r7
            java.lang.System.arraycopy(r1, r2, r9, r3, r4)
            r2 = 0
            r1 = 1
            r6 = r1
        L1a:
            int r1 = r7 + (-2)
            if (r6 > r1) goto Lba
            int r1 = r6 * r8
            int r3 = r1 + 1
            r1 = 1
            r4 = r1
            r5 = r3
        L25:
            int r1 = r8 + (-2)
            if (r4 > r1) goto Lb5
            r1 = r9[r5]
            r3 = r1 & 255(0xff, float:3.57E-43)
            if (r3 == 0) goto Lbb
            int r1 = r5 - r8
            int r1 = r1 + (-1)
            r1 = r9[r1]
            r10 = r1 & 255(0xff, float:3.57E-43)
            int r1 = r5 - r8
            r1 = r9[r1]
            r11 = r1 & 255(0xff, float:3.57E-43)
            int r1 = r5 - r8
            int r1 = r1 + 1
            r1 = r9[r1]
            r12 = r1 & 255(0xff, float:3.57E-43)
            int r1 = r5 + (-1)
            r1 = r9[r1]
            r13 = r1 & 255(0xff, float:3.57E-43)
            int r1 = r5 + 1
            r1 = r9[r1]
            r14 = r1 & 255(0xff, float:3.57E-43)
            int r1 = r5 + r8
            int r1 = r1 + (-1)
            r1 = r9[r1]
            r15 = r1 & 255(0xff, float:3.57E-43)
            int r1 = r5 + r8
            r1 = r9[r1]
            r0 = r1 & 255(0xff, float:3.57E-43)
            r16 = r0
            int r1 = r5 + r8
            int r1 = r1 + 1
            r1 = r9[r1]
            r0 = r1 & 255(0xff, float:3.57E-43)
            r17 = r0
            r1 = 0
            if (r10 == 0) goto L6f
            r1 = 1
        L6f:
            if (r11 == 0) goto L73
            r1 = r1 | 2
        L73:
            if (r12 == 0) goto L77
            r1 = r1 | 4
        L77:
            if (r14 == 0) goto L7b
            r1 = r1 | 8
        L7b:
            if (r17 == 0) goto L7f
            r1 = r1 | 16
        L7f:
            if (r16 == 0) goto L83
            r1 = r1 | 32
        L83:
            if (r15 == 0) goto L87
            r1 = r1 | 64
        L87:
            if (r13 == 0) goto L8b
            r1 = r1 | 128(0x80, float:1.8E-43)
        L8b:
            r1 = r20[r1]
            r10 = r19 & 1
            r11 = 1
            if (r10 != r11) goto Laa
            r10 = 2
            if (r1 == r10) goto L98
            r10 = 3
            if (r1 != r10) goto Lbb
        L98:
            r3 = 0
            int r1 = r2 + 1
            r2 = r3
        L9c:
            int r3 = r5 + 1
            r0 = r21
            r0.setGray(r5, r2)
            int r2 = r4 + 1
            r4 = r2
            r5 = r3
            r2 = r1
            goto L25
        Laa:
            r10 = 1
            if (r1 == r10) goto Lb0
            r10 = 3
            if (r1 != r10) goto Lbb
        Lb0:
            r3 = 0
            int r1 = r2 + 1
            r2 = r3
            goto L9c
        Lb5:
            int r1 = r6 + 1
            r6 = r1
            goto L1a
        Lba:
            return r2
        Lbb:
            r1 = r2
            r2 = r3
            goto L9c
        */
        throw new UnsupportedOperationException("Method not decompiled: Catalano.Imaging.Filters.ZhangSuenThinning.a(int, int[], Catalano.Imaging.FastBitmap):int");
    }
}
