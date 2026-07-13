package com.jabistudio.androidjhlabs.filter;

/* JADX INFO: loaded from: classes.dex */
public class MotionBlurFilter {
    private float a;
    private float b;
    private float c;
    private float d;
    private float e;
    private boolean f;
    private boolean g;

    public MotionBlurFilter() {
        this.a = 0.0f;
        this.b = 1.0f;
        this.c = 1.0f;
        this.d = 0.0f;
        this.e = 0.0f;
        this.f = false;
        this.g = true;
    }

    public MotionBlurFilter(float f, float f2, float f3, float f4) {
        this.a = 0.0f;
        this.b = 1.0f;
        this.c = 1.0f;
        this.d = 0.0f;
        this.e = 0.0f;
        this.f = false;
        this.g = true;
        this.c = f;
        this.a = f2;
        this.e = f3;
        this.d = f4;
    }

    public void setAngle(float f) {
        this.a = f;
    }

    public float getAngle() {
        return this.a;
    }

    public void setDistance(float f) {
        this.c = f;
    }

    public float getDistance() {
        return this.c;
    }

    public void setRotation(float f) {
        this.e = f;
    }

    public float getRotation() {
        return this.e;
    }

    public void setZoom(float f) {
        this.d = f;
    }

    public float getZoom() {
        return this.d;
    }

    public void setWrapEdges(boolean z) {
        this.f = z;
    }

    public boolean getWrapEdges() {
        return this.f;
    }

    public void setPremultiplyAlpha(boolean z) {
        this.g = z;
    }

    public boolean getPremultiplyAlpha() {
        return this.g;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x013d A[EDGE_INSN: B:46:0x013d->B:31:0x013d BREAK  A[LOOP:2: B:12:0x0082->B:30:0x011d], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int[] filter(int[] r26, int r27, int r28) {
        /*
            Method dump skipped, instruction units count: 387
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.jabistudio.androidjhlabs.filter.MotionBlurFilter.filter(int[], int, int):int[]");
    }

    public String toString() {
        return "Blur/Motion Blur...";
    }
}
