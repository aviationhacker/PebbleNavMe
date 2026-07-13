package ar.com.hjg.pngj;

/* JADX INFO: loaded from: classes.dex */
public class Deinterlacer {
    final ImageInfo a;
    public int b;
    public int c;
    public int d;
    public int e;
    int f;
    int g;
    private int j;
    private int k;
    private int l = -1;
    private int m = -1;
    int h = 0;
    private boolean o = false;
    private int i = 0;
    private int n = 0;

    public Deinterlacer(ImageInfo imageInfo) {
        this.a = imageInfo;
        a(1);
        c(0);
    }

    private void c(int i) {
        this.l = i;
        this.m = (this.b * i) + this.d;
        if (this.m < 0 || this.m >= this.a.rows) {
            throw new PngjExceptionInternal("bad row - this should not happen");
        }
    }

    boolean a() {
        this.n++;
        if (this.j == 0 || this.l >= this.j - 1) {
            if (this.i == 7) {
                this.o = true;
                return false;
            }
            a(this.i + 1);
            if (this.j == 0) {
                this.n--;
                return a();
            }
            c(0);
        } else {
            c(this.l + 1);
        }
        return true;
    }

    void a(int i) {
        if (this.i != i) {
            this.i = i;
            byte[] bArrB = b(i);
            this.c = bArrB[0];
            this.b = bArrB[1];
            this.e = bArrB[2];
            this.d = bArrB[3];
            this.j = this.a.rows > this.d ? (((this.a.rows + this.b) - 1) - this.d) / this.b : 0;
            this.k = this.a.cols > this.e ? (((this.a.cols + this.c) - 1) - this.e) / this.c : 0;
            if (this.k == 0) {
                this.j = 0;
            }
            this.g = this.c * this.a.channels;
            this.f = this.e * this.a.channels;
        }
    }

    static byte[] b(int i) {
        switch (i) {
            case 1:
                return new byte[]{8, 8, 0, 0};
            case 2:
                return new byte[]{8, 8, 4, 0};
            case 3:
                return new byte[]{4, 8, 0, 4};
            case 4:
                return new byte[]{4, 4, 2, 0};
            case 5:
                return new byte[]{2, 4, 0, 2};
            case 6:
                return new byte[]{2, 2, 1, 0};
            case 7:
                return new byte[]{1, 2, 0, 1};
            default:
                throw new PngjExceptionInternal("bad interlace pass" + i);
        }
    }

    public int b() {
        return this.l;
    }

    public int c() {
        return this.m;
    }

    public int d() {
        return this.i;
    }

    public int e() {
        return this.j;
    }

    public int f() {
        return this.k;
    }

    public int getPixelsToRead() {
        return f();
    }

    public int getBytesToRead() {
        return ((this.a.bitspPixel * getPixelsToRead()) + 7) / 8;
    }

    public int getdY() {
        return this.b;
    }

    public int getdX() {
        return this.c;
    }

    public int getoY() {
        return this.d;
    }

    public int getoX() {
        return this.e;
    }

    public int getTotalRows() {
        if (this.h == 0) {
            for (int i = 1; i <= 7; i++) {
                byte[] bArrB = b(i);
                int i2 = this.a.rows > bArrB[3] ? (((this.a.rows + bArrB[1]) - 1) - bArrB[3]) / bArrB[1] : 0;
                int i3 = this.a.cols > bArrB[2] ? (((this.a.cols + bArrB[0]) - 1) - bArrB[2]) / bArrB[0] : 0;
                if (i2 > 0 && i3 > 0) {
                    this.h = i2 + this.h;
                }
            }
        }
        return this.h;
    }

    public long getTotalRawBytes() {
        long j = 0;
        int i = 1;
        while (i <= 7) {
            byte[] bArrB = b(i);
            int i2 = this.a.rows > bArrB[3] ? (((this.a.rows + bArrB[1]) - 1) - bArrB[3]) / bArrB[1] : 0;
            int i3 = this.a.cols > bArrB[2] ? (((this.a.cols + bArrB[0]) - 1) - bArrB[2]) / bArrB[0] : 0;
            i++;
            j = (i2 <= 0 || i3 <= 0) ? j : ((((long) (((this.a.bitspPixel * i3) + 7) / 8)) + 1) * ((long) i2)) + j;
        }
        return j;
    }

    public int getCurrRowSeq() {
        return this.n;
    }
}
