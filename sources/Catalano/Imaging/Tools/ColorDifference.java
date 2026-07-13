package Catalano.Imaging.Tools;

/* JADX INFO: loaded from: classes.dex */
public class ColorDifference {
    private ColorDifference() {
    }

    public static double DeltaC(float[] fArr, float[] fArr2) {
        return Math.sqrt(Math.pow(fArr2[1], 2.0d) + Math.pow(fArr2[2], 2.0d)) - Math.sqrt(Math.pow(fArr[1], 2.0d) + Math.pow(fArr[2], 2.0d));
    }

    public static double DeltaH(float[] fArr, float[] fArr2) {
        double dDeltaC = DeltaC(fArr, fArr2);
        return Math.sqrt((Math.pow(fArr2[1] - fArr[1], 2.0d) + Math.pow(fArr2[2] - fArr[2], 2.0d)) - (dDeltaC * dDeltaC));
    }

    public static double DeltaE(float[] fArr, float[] fArr2) {
        return Math.sqrt(Math.pow(fArr[0] - fArr2[0], 2.0d) + Math.pow(fArr[1] - fArr2[1], 2.0d) + Math.pow(fArr[2] - fArr2[2], 2.0d));
    }

    public static double DeltaCMC(float[] fArr, float[] fArr2, float f, float f2) {
        double dAbs;
        double d;
        double dSqrt = Math.sqrt((fArr[1] * fArr[1]) + (fArr[2] * fArr[2]));
        double dSqrt2 = Math.sqrt((fArr2[1] * fArr2[1]) + (fArr2[2] * fArr2[2]));
        double d2 = dSqrt * dSqrt * dSqrt * dSqrt;
        double dSqrt3 = Math.sqrt(d2 / (1900.0d + d2));
        double dA = a(fArr[1], fArr[2]);
        if (dA < 164.0d || dA > 345.0d) {
            dAbs = Math.abs(Math.cos(dA + 35.0d) * 0.4d) + 0.36d;
        } else {
            dAbs = Math.abs(Math.cos(dA + 168.0d) * 0.2d) + 0.56d;
        }
        if (fArr[0] < 16.0f) {
            d = 0.511d;
        } else {
            d = (0.040975d * ((double) fArr[0])) / (1.0d + (0.01765d * ((double) fArr[0])));
        }
        double d3 = ((0.0638d * dSqrt) / (1.0d + (0.0131d * dSqrt))) + 0.638d;
        double d4 = (((dAbs * dSqrt3) + 1.0d) - dSqrt3) * d3;
        double dSqrt4 = Math.sqrt((Math.pow(fArr2[1] - fArr[1], 2.0d) + Math.pow(fArr2[2] - fArr[2], 2.0d)) - Math.pow(dSqrt2 - dSqrt, 2.0d));
        double d5 = d * ((double) ((fArr2[0] - fArr[0]) / f));
        double d6 = ((dSqrt2 - dSqrt) / ((double) f)) * d3;
        double d7 = dSqrt4 / d4;
        return Math.sqrt((d7 * d7) + (d5 * d5) + (d6 * d6));
    }

    private static double a(float f, float f2) {
        if (f >= 0.0f && f2 == 0.0f) {
            return 0.0d;
        }
        if (f < 0.0f && f2 == 0.0f) {
            return 180.0d;
        }
        if (f == 0.0f && f2 > 0.0f) {
            return 90.0d;
        }
        if (f == 0.0f && f2 < 0.0f) {
            return 270.0d;
        }
        if (f <= 0.0f || f2 > 0.0f) {
        }
        double d = f < 0.0f ? 180.0d : 0.0d;
        if (f > 0.0f && f2 < 0.0f) {
            d = 360.0d;
        }
        return d + Math.toRadians(Math.atan2(f2, f));
    }
}
