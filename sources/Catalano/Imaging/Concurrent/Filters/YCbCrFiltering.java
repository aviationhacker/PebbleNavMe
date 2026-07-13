package Catalano.Imaging.Concurrent.Filters;

import Catalano.Core.FloatRange;
import Catalano.Imaging.Concurrent.Share;
import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.IApplyInPlace;

/* JADX INFO: loaded from: classes.dex */
public class YCbCrFiltering implements IApplyInPlace {
    private FloatRange a;
    private FloatRange b;
    private FloatRange c;
    private float d;
    private float e;
    private float f;
    private boolean g;
    private boolean h;
    private boolean i;
    private boolean j;

    public FloatRange getY() {
        return this.a;
    }

    public void setHue(FloatRange floatRange) {
        this.a = floatRange;
    }

    public FloatRange getCb() {
        return this.b;
    }

    public void setCb(FloatRange floatRange) {
        this.b = floatRange;
    }

    public FloatRange getCr() {
        return this.c;
    }

    public void setCr(FloatRange floatRange) {
        this.c = floatRange;
    }

    public float[] getFillColor() {
        return new float[]{this.d, this.e, this.f};
    }

    public void setFillColor(float f, float f2, float f3) {
        this.d = f;
        this.e = f2;
        this.f = f3;
    }

    public boolean isFillOutsideRange() {
        return this.g;
    }

    public void setFillOutsideRange(boolean z) {
        this.g = z;
    }

    public boolean isUpdatedY() {
        return this.h;
    }

    public void setUpdateY(boolean z) {
        this.h = z;
    }

    public boolean isUpdatedCb() {
        return this.i;
    }

    public void setUpdateCb(boolean z) {
        this.i = z;
    }

    public boolean isUpdatedCr() {
        return this.j;
    }

    public void setUpdateCr(boolean z) {
        this.j = z;
    }

    public YCbCrFiltering() {
        this.a = new FloatRange(0.0f, 1.0f);
        this.b = new FloatRange(-0.5f, 0.5f);
        this.c = new FloatRange(-0.5f, 0.5f);
        this.d = 0.0f;
        this.e = 0.0f;
        this.f = 0.0f;
        this.g = true;
        this.h = true;
        this.i = true;
        this.j = true;
    }

    public YCbCrFiltering(FloatRange floatRange, FloatRange floatRange2, FloatRange floatRange3) {
        this.a = new FloatRange(0.0f, 1.0f);
        this.b = new FloatRange(-0.5f, 0.5f);
        this.c = new FloatRange(-0.5f, 0.5f);
        this.d = 0.0f;
        this.e = 0.0f;
        this.f = 0.0f;
        this.g = true;
        this.h = true;
        this.i = true;
        this.j = true;
        this.a = floatRange;
        this.b = floatRange2;
        this.c = floatRange3;
    }

    @Override // Catalano.Imaging.IApplyInPlace
    public void applyInPlace(FastBitmap fastBitmap) {
        if (fastBitmap.isRGB()) {
            a(fastBitmap);
            return;
        }
        throw new IllegalArgumentException("HSL Filtering only works in RGB space color.");
    }

    private void a(FastBitmap fastBitmap) {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        Thread[] threadArr = new Thread[iAvailableProcessors];
        int height = fastBitmap.getHeight() / iAvailableProcessors;
        int i = 0;
        for (int i2 = 0; i2 < iAvailableProcessors; i2++) {
            threadArr[i2] = new Thread(new a(new Share(fastBitmap, i, i + height)));
            threadArr[i2].start();
            i += height;
        }
        for (int i3 = 0; i3 < iAvailableProcessors; i3++) {
            try {
                threadArr[i3].join();
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

        /* JADX WARN: Removed duplicated region for block: B:49:0x0123  */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                Method dump skipped, instruction units count: 293
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: Catalano.Imaging.Concurrent.Filters.YCbCrFiltering.a.run():void");
        }
    }
}
