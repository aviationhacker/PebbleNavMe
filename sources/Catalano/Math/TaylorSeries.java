package Catalano.Math;

/* JADX INFO: loaded from: classes.dex */
public final class TaylorSeries {
    private TaylorSeries() {
    }

    public static double Sin(double d, int i) {
        if (i >= 2) {
            if (i == 2) {
                return d - (((d * d) * d) / 6.0d);
            }
            double d2 = d * d * d;
            int i2 = 3;
            int i3 = 5;
            double d3 = d - (d2 / 6.0d);
            double d4 = 6.0d;
            double d5 = 1.0d;
            while (i2 <= i) {
                double d6 = d * d * d2;
                double d7 = ((double) ((i3 - 1) * i3)) * d4;
                i3 += 2;
                double d8 = ((d6 / d7) * d5) + d3;
                d5 *= -1.0d;
                i2++;
                d3 = d8;
                d4 = d7;
                d2 = d6;
            }
            return d3;
        }
        return d;
    }

    public static double Cos(double d, int i) {
        if (i < 2) {
            return 1.0d;
        }
        if (i == 2) {
            return 1.0d - ((d * d) / 2.0d);
        }
        double d2 = d * d;
        int i2 = 3;
        int i3 = 4;
        double d3 = 1.0d - (d2 / 2.0d);
        double d4 = 2.0d;
        double d5 = 1.0d;
        while (i2 <= i) {
            double d6 = d * d * d2;
            double d7 = ((double) ((i3 - 1) * i3)) * d4;
            i3 += 2;
            double d8 = ((d6 / d7) * d5) + d3;
            d5 *= -1.0d;
            i2++;
            d3 = d8;
            d4 = d7;
            d2 = d6;
        }
        return d3;
    }

    public static double Sinh(double d, int i) {
        double d2 = 6.0d;
        if (i >= 2) {
            if (i == 2) {
                return d + (((d * d) * d) / 6.0d);
            }
            double d3 = d * d * d;
            int i2 = 3;
            int i3 = 5;
            double d4 = (d3 / 6.0d) + d;
            while (i2 <= i) {
                double d5 = d * d * d3;
                double d6 = ((double) ((i3 - 1) * i3)) * d2;
                i3 += 2;
                i2++;
                d4 = (d5 / d6) + d4;
                d2 = d6;
                d3 = d5;
            }
            return d4;
        }
        return d;
    }

    public static double Cosh(double d, int i) {
        double d2 = 2.0d;
        if (i >= 2) {
            if (i == 2) {
                return 1.0d + ((d * d) / 2.0d);
            }
            double d3 = d * d;
            int i2 = 3;
            int i3 = 4;
            double d4 = (d3 / 2.0d) + 1.0d;
            while (i2 <= i) {
                double d5 = d * d * d3;
                double d6 = ((double) ((i3 - 1) * i3)) * d2;
                i3 += 2;
                i2++;
                d4 = (d5 / d6) + d4;
                d2 = d6;
                d3 = d5;
            }
            return d4;
        }
        return d;
    }

    public static double Exp(double d, int i) {
        double d2 = 2.0d;
        if (i < 2) {
            return 1.0d + d;
        }
        if (i == 2) {
            return 1.0d + d + ((d * d) / 2.0d);
        }
        double d3 = d * d;
        double d4 = (d3 / 2.0d) + 1.0d + d;
        int i2 = 3;
        while (i2 <= i) {
            double d5 = d3 * d;
            double d6 = ((double) i2) * d2;
            i2++;
            d4 = (d5 / d6) + d4;
            d2 = d6;
            d3 = d5;
        }
        return d4;
    }
}
