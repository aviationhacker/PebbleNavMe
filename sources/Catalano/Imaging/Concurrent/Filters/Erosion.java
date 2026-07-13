package Catalano.Imaging.Concurrent.Filters;

import Catalano.Imaging.Concurrent.Share;
import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public class Erosion implements IApplyInPlace {
    FastBitmap a;
    private int b;
    private int[][] c;

    public Erosion() {
        this.b = 0;
        this.b = 1;
    }

    public Erosion(int i) {
        this.b = 0;
        this.b = Math.max(i, 1);
    }

    public Erosion(int[][] iArr) {
        this.b = 0;
        this.c = iArr;
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        this.a = new FastBitmap(fastBitmap);
        if (this.c == null) {
            a(this.b);
        }
        a(fastBitmap);
    }

    private void a(FastBitmap fastBitmap) {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        Thread[] threadArr = new Thread[iAvailableProcessors];
        int height = fastBitmap.getHeight() / iAvailableProcessors;
        int i = iAvailableProcessors - 1;
        int i2 = 0;
        boolean z = false;
        for (int i3 = 0; i3 < iAvailableProcessors; i3++) {
            if (i3 == i) {
                z = true;
            }
            threadArr[i3] = new Thread(new a(new Share(fastBitmap, i2, i2 + height, z)));
            threadArr[i3].start();
            i2 += height;
        }
        for (int i4 = 0; i4 < iAvailableProcessors; i4++) {
            try {
                threadArr[i4].join();
            } catch (InterruptedException e) {
                e.printStackTrace();
                return;
            }
        }
    }

    class a implements Runnable {
        private Share b;

        public a(Share share) {
            this.b = share;
        }

        /* JADX WARN: Removed duplicated region for block: B:81:0x01a7 A[PHI: r5 r7
  0x01a7: PHI (r5v7 int) = (r5v5 int), (r5v5 int), (r5v5 int), (r5v5 int), (r5v10 int) binds: [B:56:0x011e, B:58:0x0125, B:59:0x0127, B:61:0x0131, B:67:0x0174] A[DONT_GENERATE, DONT_INLINE]
  0x01a7: PHI (r7v3 int) = (r7v2 int), (r7v2 int), (r7v2 int), (r7v2 int), (r7v7 int) binds: [B:56:0x011e, B:58:0x0125, B:59:0x0127, B:61:0x0131, B:67:0x0174] A[DONT_GENERATE, DONT_INLINE]] */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                Method dump skipped, instruction units count: 433
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: Catalano.Imaging.Concurrent.Filters.Erosion.a.run():void");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i) {
        int i2 = (i * 2) + 1;
        this.c = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, i2, i2);
        for (int i3 = 0; i3 < this.c.length; i3++) {
            for (int i4 = 0; i4 < this.c[0].length; i4++) {
                this.c[i3][i4] = 1;
            }
        }
    }
}
