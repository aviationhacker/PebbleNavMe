package defpackage;

import ar.com.hjg.pngj.Deinterlacer;
import ar.com.hjg.pngj.ImageInfo;

/* JADX INFO: loaded from: classes.dex */
public class gg {
    public final ImageInfo a;
    public final Deinterlacer b;
    public final boolean c;
    int d;
    public int e;
    int f;
    public int g;
    int h;
    public int i;
    public int j;
    int k;
    int l;
    public int m;
    int n;
    byte[] o;
    public int p;

    public gg(ImageInfo imageInfo, Deinterlacer deinterlacer) {
        this.a = imageInfo;
        this.b = deinterlacer;
        this.c = deinterlacer != null;
    }

    public void a(int i) {
        this.h = i;
        if (this.c) {
            this.n = this.b.d();
            this.e = this.b.c;
            this.d = this.b.b;
            this.g = this.b.e;
            this.f = this.b.d;
            this.i = this.b.c();
            this.j = this.b.b();
            this.k = this.b.e();
            this.l = this.b.f();
            this.m = ((this.a.bitspPixel * this.l) + 7) / 8;
            return;
        }
        this.n = 1;
        this.d = 1;
        this.e = 1;
        this.f = 0;
        this.g = 0;
        this.j = i;
        this.i = i;
        this.k = this.a.rows;
        this.l = this.a.cols;
        this.m = this.a.bytesPerRow;
    }

    public void a(byte[] bArr, int i) {
        this.o = bArr;
        this.p = i;
    }
}
