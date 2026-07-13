package Catalano.Math.Functions;

/* JADX INFO: loaded from: classes.dex */
public class PerlinNoise {
    private double a;
    private double b;
    private double c;
    private int d;

    public PerlinNoise() {
        this.a = 1.0d;
        this.b = 1.0d;
        this.c = 0.65d;
        this.d = 4;
    }

    public PerlinNoise(int i, double d) {
        this.a = 1.0d;
        this.b = 1.0d;
        this.c = 0.65d;
        this.d = 4;
        this.d = i;
        this.c = d;
    }

    public PerlinNoise(int i, double d, double d2, double d3) {
        this.a = 1.0d;
        this.b = 1.0d;
        this.c = 0.65d;
        this.d = 4;
        this.d = i;
        this.c = d;
        this.a = d2;
        this.b = d3;
    }

    public double getInitAmplitude() {
        return this.b;
    }

    public void setInitAmplitude(double d) {
        this.b = d;
    }

    public double getInitFrequency() {
        return this.a;
    }

    public void setInitFrequency(double d) {
        this.a = d;
    }

    public int getOctaves() {
        return this.d;
    }

    public void setOctaves(int i) {
        this.d = i;
    }

    public double getPersistence() {
        return this.c;
    }

    public void setPersistence(double d) {
        this.c = d;
    }

    public double Function1D(double d) {
        double d2 = this.a;
        double d3 = this.b;
        double dA = 0.0d;
        for (int i = 0; i < this.d; i++) {
            dA += a(d * d2) * d3;
            d2 *= 2.0d;
            d3 *= this.c;
        }
        return dA;
    }

    public double Function2D(double d, double d2) {
        double d3 = this.a;
        double d4 = this.b;
        double dA = 0.0d;
        for (int i = 0; i < this.d; i++) {
            dA += a(d * d3, d2 * d3) * d4;
            d3 *= 2.0d;
            d4 *= this.c;
        }
        return dA;
    }

    private double a(int i) {
        int i2 = (i << 13) ^ i;
        return 1.0d - (((double) (((i2 * (((i2 * i2) * 15731) + 789221)) + 1376312589) & Integer.MAX_VALUE)) / 1.073741824E9d);
    }

    private double a(int i, int i2) {
        int i3 = (i2 * 57) + i;
        int i4 = i3 ^ (i3 << 13);
        return 1.0d - (((double) (((i4 * (((i4 * i4) * 15731) + 789221)) + 1376312589) & Integer.MAX_VALUE)) / 1.073741824E9d);
    }

    private double a(double d) {
        int i = (int) d;
        return a(a(i), a(i + 1), d - ((double) i));
    }

    private double a(double d, double d2) {
        int i = (int) d;
        int i2 = (int) d2;
        double d3 = d - ((double) i);
        return a(a(a(i, i2), a(i + 1, i2), d3), a(a(i, i2 + 1), a(i + 1, i2 + 1), d3), d2 - ((double) i2));
    }

    private double a(double d, double d2, double d3) {
        double dCos = (1.0d - Math.cos(3.141592653589793d * d3)) * 0.5d;
        return (dCos * d2) + ((1.0d - dCos) * d);
    }
}
