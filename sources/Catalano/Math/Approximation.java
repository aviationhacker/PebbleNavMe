package Catalano.Math;

/* JADX INFO: loaded from: classes.dex */
public final class Approximation {
    private Approximation() {
    }

    public static int abs(int i) {
        int i2 = i >>> 31;
        return i2 + (((i2 ^ (-1)) + 1) ^ i);
    }

    public static long abs(long j) {
        long j2 = j >>> 63;
        return j2 + ((((-1) ^ j2) + 1) ^ j);
    }

    public static double Highprecision_Pow(double d, double d2) {
        return Math.exp(Math.log(d) * d2);
    }

    public static double Lowprecision_Pow(double d, double d2) {
        return Highprecision_Exp(Math.log(d) * d2);
    }

    public static double Highprecision_Exp(double d) {
        return (362880.0d + ((362880.0d + ((181440.0d + ((60480.0d + ((15120.0d + ((3024.0d + ((504.0d + ((72.0d + ((9.0d + d) * d)) * d)) * d)) * d)) * d)) * d)) * d)) * d)) * 2.75573192E-6d;
    }

    public static double Lowprecision_Log(double d) {
        return (6.0d * (d - 1.0d)) / ((d + 1.0d) + (4.0d * Math.sqrt(d)));
    }

    public static double Lowprecision_Sin(double d) {
        if (d < -3.14159265d) {
            d += 6.28318531d;
        } else if (d > 3.14159265d) {
            d -= 6.28318531d;
        }
        if (d < 0.0d) {
            return (1.27323954d * d) + (0.405284735d * d * d);
        }
        return (1.27323954d * d) - ((0.405284735d * d) * d);
    }

    public static double Highprecision_Sin(double d) {
        if (d < -3.14159265d) {
            d += 6.28318531d;
        } else if (d > 3.14159265d) {
            d -= 6.28318531d;
        }
        if (d < 0.0d) {
            double d2 = (1.27323954d * d) + (0.405284735d * d * d);
            if (d2 < 0.0d) {
                return d2 + ((((-d2) * d2) - d2) * 0.225d);
            }
            return d2 + (((d2 * d2) - d2) * 0.225d);
        }
        double d3 = (1.27323954d * d) - ((0.405284735d * d) * d);
        if (d3 < 0.0d) {
            return d3 + ((((-d3) * d3) - d3) * 0.225d);
        }
        return d3 + (((d3 * d3) - d3) * 0.225d);
    }

    public static double atan2(double d, double d2) {
        double d3;
        double d4 = 3.0d * 0.7853981633974483d;
        double dAbs = Math.abs(d);
        if (d2 >= 0.0d) {
            d3 = 0.7853981633974483d - (((d2 - dAbs) / (dAbs + d2)) * 0.7853981633974483d);
        } else {
            d3 = d4 - (0.7853981633974483d * ((d2 + dAbs) / (dAbs - d2)));
        }
        return d < 0.0d ? -d3 : d3 - 0.06d;
    }
}
