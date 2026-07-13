package Catalano.Imaging.Concurrent.Filters;

import Catalano.Imaging.Concurrent.Share;
import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public class Dilatation implements IApplyInPlace {
    private int a;
    private int[][] b;
    private FastBitmap c;

    public Dilatation() {
        this.a = 0;
        this.a = 1;
    }

    public Dilatation(int i) {
        this.a = 0;
        this.a = Math.max(i, 1);
    }

    public Dilatation(int[][] iArr) {
        this.a = 0;
        this.b = iArr;
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        this.c = new FastBitmap(fastBitmap);
        if (this.b == null) {
            a(this.a);
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

        /* JADX WARN: Removed duplicated region for block: B:75:0x0187 A[PHI: r4 r5
  0x0187: PHI (r4v5 int) = (r4v4 int), (r4v4 int), (r4v4 int), (r4v4 int), (r4v7 int) binds: [B:48:0x00f4, B:50:0x00fb, B:51:0x00fd, B:53:0x0107, B:59:0x014f] A[DONT_GENERATE, DONT_INLINE]
  0x0187: PHI (r5v7 int) = (r5v6 int), (r5v6 int), (r5v6 int), (r5v6 int), (r5v11 int) binds: [B:48:0x00f4, B:50:0x00fb, B:51:0x00fd, B:53:0x0107, B:59:0x014f] A[DONT_GENERATE, DONT_INLINE]] */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                Method dump skipped, instruction units count: 400
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: Catalano.Imaging.Concurrent.Filters.Dilatation.a.run():void");
        }
    }

    private void a(int i) {
        int i2 = (i * 2) + 1;
        this.b = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, i2, i2);
        for (int i3 = 0; i3 < this.b.length; i3++) {
            for (int i4 = 0; i4 < this.b[0].length; i4++) {
                this.b[i3][i4] = 1;
            }
        }
    }
}
