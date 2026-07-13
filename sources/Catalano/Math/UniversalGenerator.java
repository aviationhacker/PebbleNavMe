package Catalano.Math;

/* JADX INFO: loaded from: classes.dex */
public class UniversalGenerator implements RandomNumberGenerator {
    private double a;
    private double b;
    private double c;
    private double[] d;
    private int e;
    private int f;

    public UniversalGenerator() {
        a(54217137);
    }

    public UniversalGenerator(int i) {
        a(Math.abs(i % 899999963));
    }

    public UniversalGenerator(long j) {
        a(Math.abs((int) (j % 899999963)));
    }

    private void a(int i) {
        this.d = new double[97];
        int i2 = i / 30082;
        int i3 = i % 30082;
        if (i2 < 0 || i2 > 31328 || i3 < 0 || i3 > 30081) {
            i2 %= 31329;
            i3 %= 30082;
        }
        int i4 = ((i2 / 177) % 177) + 2;
        int i5 = (i2 % 177) + 2;
        int i6 = ((i3 / 169) % 178) + 1;
        int i7 = i3 % 169;
        int i8 = 0;
        while (i8 < 97) {
            int i9 = 0;
            int i10 = i7;
            double d = 0.0d;
            double d2 = 0.5d;
            int i11 = i5;
            int i12 = i4;
            int i13 = i11;
            while (i9 < 24) {
                int i14 = (((i12 * i13) % 179) * i6) % 179;
                i10 = ((i10 * 53) + 1) % 169;
                if ((i10 * i14) % 64 >= 32) {
                    d += d2;
                }
                d2 *= 0.5d;
                i9++;
                i12 = i13;
                i13 = i6;
                i6 = i14;
            }
            this.d[i8] = d;
            i8++;
            i7 = i10;
            int i15 = i13;
            i4 = i12;
            i5 = i15;
        }
        this.a = 0.021602869033813477d;
        this.b = 0.45623308420181274d;
        this.c = 0.9999998211860657d;
        this.e = 96;
        this.f = 32;
    }

    @Override // Catalano.Math.RandomNumberGenerator
    public double nextDouble() {
        double d = this.d[this.e] - this.d[this.f];
        if (d < 0.0d) {
            d += 1.0d;
        }
        this.d[this.e] = d;
        int i = this.e - 1;
        this.e = i;
        if (i < 0) {
            this.e = 96;
        }
        int i2 = this.f - 1;
        this.f = i2;
        if (i2 < 0) {
            this.f = 96;
        }
        this.a -= this.b;
        if (this.a < 0.0d) {
            this.a += this.c;
        }
        double d2 = d - this.a;
        if (d2 < 0.0d) {
            return d2 + 1.0d;
        }
        return d2;
    }

    @Override // Catalano.Math.RandomNumberGenerator
    public void nextDoubles(double[] dArr) {
        int length = dArr.length;
        for (int i = 0; i < length; i++) {
            double d = this.d[this.e] - this.d[this.f];
            if (d < 0.0d) {
                d += 1.0d;
            }
            this.d[this.e] = d;
            int i2 = this.e - 1;
            this.e = i2;
            if (i2 < 0) {
                this.e = 96;
            }
            int i3 = this.f - 1;
            this.f = i3;
            if (i3 < 0) {
                this.f = 96;
            }
            this.a -= this.b;
            if (this.a < 0.0d) {
                this.a += this.c;
            }
            double d2 = d - this.a;
            if (d2 < 0.0d) {
                d2 += 1.0d;
            }
            dArr[i] = d2;
        }
    }

    @Override // Catalano.Math.RandomNumberGenerator
    public int next(int i) {
        return nextInt() >>> (32 - i);
    }

    @Override // Catalano.Math.RandomNumberGenerator
    public int nextInt() {
        return (int) Math.floor(2.147483647E9d * ((2.0d * nextDouble()) - 1.0d));
    }

    @Override // Catalano.Math.RandomNumberGenerator
    public int nextInt(int i) {
        int next;
        int i2;
        if (i <= 0) {
            throw new IllegalArgumentException("n must be positive");
        }
        if (((-i) & i) == i) {
            return (int) ((((long) i) * ((long) next(31))) >> 31);
        }
        do {
            next = next(31);
            i2 = next % i;
        } while ((next - i2) + (i - 1) < 0);
        return i2;
    }

    @Override // Catalano.Math.RandomNumberGenerator
    public long nextLong() {
        return (long) Math.floor(9.223372036854776E18d * ((2.0d * nextDouble()) - 1.0d));
    }
}
