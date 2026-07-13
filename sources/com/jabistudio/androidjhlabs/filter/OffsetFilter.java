package com.jabistudio.androidjhlabs.filter;

/* JADX INFO: loaded from: classes.dex */
public class OffsetFilter extends TransformFilter {
    private int a;
    private int b;
    private int c;
    private int d;
    private boolean e;

    public OffsetFilter() {
        this(0, 0, true);
    }

    public OffsetFilter(int i, int i2, boolean z) {
        this.c = i;
        this.d = i2;
        this.e = z;
        setEdgeAction(0);
    }

    public void setXOffset(int i) {
        this.c = i;
    }

    public int getXOffset() {
        return this.c;
    }

    public void setYOffset(int i) {
        this.d = i;
    }

    public int getYOffset() {
        return this.d;
    }

    public void setWrap(boolean z) {
        this.e = z;
    }

    public boolean getWrap() {
        return this.e;
    }

    @Override // com.jabistudio.androidjhlabs.filter.TransformFilter
    protected void transformInverse(int i, int i2, float[] fArr) {
        if (this.e) {
            fArr[0] = ((this.a + i) - this.c) % this.a;
            fArr[1] = ((this.b + i2) - this.d) % this.b;
        } else {
            fArr[0] = i - this.c;
            fArr[1] = i2 - this.d;
        }
    }

    @Override // com.jabistudio.androidjhlabs.filter.TransformFilter
    public int[] filter(int[] iArr, int i, int i2) {
        this.a = i;
        this.b = i2;
        if (this.e) {
            while (this.c < 0) {
                this.c += this.a;
            }
            while (this.d < 0) {
                this.d += this.b;
            }
            this.c %= this.a;
            this.d %= this.b;
        }
        return super.filter(iArr, i, i2);
    }

    public String toString() {
        return "Distort/Offset...";
    }
}
