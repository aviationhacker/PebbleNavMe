package Catalano.Math.Functions;

/* JADX INFO: loaded from: classes.dex */
public final class Bessel {
    private Bessel() {
    }

    public static double J0(double d) {
        double dAbs = Math.abs(d);
        if (dAbs < 8.0d) {
            double d2 = d * d;
            return (5.7568490574E10d + (((-1.3362590354E10d) + ((6.516196407E8d + (((-1.121442418E7d) + ((77392.33017d + ((-184.9052456d) * d2)) * d2)) * d2)) * d2)) * d2)) / ((d2 * (1.029532985E9d + ((9494680.718d + ((59272.64853d + ((267.8532712d + (1.0d * d2)) * d2)) * d2)) * d2))) + 5.7568490411E10d);
        }
        double d3 = 8.0d / dAbs;
        double d4 = d3 * d3;
        double d5 = dAbs - 0.785398164d;
        return Math.sqrt(0.636619772d / dAbs) * (((1.0d + (((-0.001098628627d) + ((2.734510407E-5d + (((-2.073370639E-6d) + (2.093887211E-7d * d4)) * d4)) * d4)) * d4)) * Math.cos(d5)) - ((d3 * Math.sin(d5)) * ((d4 * (1.430488765E-4d + (((-6.911147651E-6d) + ((7.621095161E-7d - (9.34935152E-8d * d4)) * d4)) * d4))) - 0.01562499995d)));
    }

    public static double J(double d) {
        double dAbs = Math.abs(d);
        if (dAbs < 8.0d) {
            double d2 = d * d;
            return ((7.2362614232E10d + (((-7.895059235E9d) + ((2.423968531E8d + (((-2972611.439d) + ((15704.4826d + ((-30.16036606d) * d2)) * d2)) * d2)) * d2)) * d2)) * d) / ((d2 * (2.300535178E9d + ((1.858330474E7d + ((99447.43394d + ((376.9991397d + (1.0d * d2)) * d2)) * d2)) * d2))) + 1.44725228442E11d);
        }
        double d3 = 8.0d / dAbs;
        double d4 = dAbs - 2.356194491d;
        double d5 = d3 * d3;
        double dSqrt = Math.sqrt(0.636619772d / dAbs) * (((1.0d + ((0.00183105d + (((-3.516396496E-5d) + ((2.457520174E-6d + ((-2.40337019E-7d) * d5)) * d5)) * d5)) * d5)) * Math.cos(d4)) - ((d3 * Math.sin(d4)) * ((d5 * ((-2.002690873E-4d) + ((8.449199096E-6d + (((-8.8228987E-7d) + (1.05787412E-7d * d5)) * d5)) * d5))) + 0.04687499995d)));
        return d < 0.0d ? -dSqrt : dSqrt;
    }

    public static double J(int i, double d) {
        double dJ0;
        double d2;
        if (i == 0) {
            return J0(d);
        }
        if (i == 1) {
            return J(d);
        }
        double dAbs = Math.abs(d);
        if (dAbs == 0.0d) {
            return 0.0d;
        }
        if (dAbs > i) {
            double d3 = 2.0d / dAbs;
            dJ0 = J0(dAbs);
            double dJ = J(dAbs);
            int i2 = 1;
            while (true) {
                double d4 = dJ0;
                dJ0 = dJ;
                if (i2 >= i) {
                    break;
                }
                dJ = ((((double) i2) * d3) * dJ0) - d4;
                i2++;
            }
        } else {
            double d5 = 2.0d / dAbs;
            double d6 = 0.0d;
            double d7 = 1.0d;
            boolean z = false;
            double d8 = 0.0d;
            int iSqrt = ((((int) Math.sqrt(40.0d * ((double) i))) + i) / 2) * 2;
            double d9 = 0.0d;
            while (iSqrt > 0) {
                double d10 = ((((double) iSqrt) * d5) * d7) - d8;
                if (Math.abs(d10) > 1.0E10d) {
                    d7 *= 1.0E-10d;
                    d6 *= 1.0E-10d;
                    d9 *= 1.0E-10d;
                    d2 = d10 * 1.0E-10d;
                } else {
                    d2 = d10;
                }
                double d11 = z ? d9 + d2 : d9;
                boolean z2 = !z;
                if (iSqrt == i) {
                    d6 = d7;
                }
                z = z2;
                iSqrt--;
                d9 = d11;
                d8 = d7;
                d7 = d2;
            }
            dJ0 = d6 / ((d9 * 2.0d) - d7);
        }
        return (d >= 0.0d || i % 2 != 1) ? dJ0 : -dJ0;
    }

    public static double Y0(double d) {
        if (d < 8.0d) {
            double d2 = d * d;
            return (((-2.957821389E9d) + ((7.062834065E9d + (((-5.123598036E8d) + ((1.087988129E7d + (((-86327.92757d) + (228.4622733d * d2)) * d2)) * d2)) * d2)) * d2)) / ((d2 * (7.452499648E8d + ((7189466.438d + ((47447.2647d + ((226.1030244d + (1.0d * d2)) * d2)) * d2)) * d2))) + 4.0076544269E10d)) + (0.636619772d * J0(d) * Math.log(d));
        }
        double d3 = 8.0d / d;
        double d4 = d3 * d3;
        double d5 = d - 0.785398164d;
        double d6 = 1.0d + (((-0.001098628627d) + ((2.734510407E-5d + (((-2.073370639E-6d) + (2.093887211E-7d * d4)) * d4)) * d4)) * d4);
        return ((d3 * Math.cos(d5) * ((d4 * (1.430488765E-4d + (((-6.911147651E-6d) + ((7.621095161E-7d + ((-9.34945152E-8d) * d4)) * d4)) * d4))) - 0.01562499995d)) + (d6 * Math.sin(d5))) * Math.sqrt(0.636619772d / d);
    }

    public static double Y(double d) {
        if (d < 8.0d) {
            double d2 = d * d;
            return ((((-4.900604943E12d) + ((1.27527439E12d + (((-5.153438139E10d) + ((7.349264551E8d + (((-4237922.726d) + (8511.937935d * d2)) * d2)) * d2)) * d2)) * d2)) * d) / ((d2 * (4.244419664E11d + ((3.733650367E9d + ((2.245904002E7d + ((102042.605d + ((354.9632885d + d2) * d2)) * d2)) * d2)) * d2))) + 2.49958057E13d)) + (0.636619772d * ((J(d) * Math.log(d)) - (1.0d / d)));
        }
        double d3 = 8.0d / d;
        double d4 = d3 * d3;
        double d5 = d - 2.356194491d;
        double d6 = 1.0d + ((0.00183105d + (((-3.516396496E-5d) + ((2.457520174E-6d + ((-2.40337019E-7d) * d4)) * d4)) * d4)) * d4);
        double d7 = (d4 * ((-2.002690873E-4d) + ((8.449199096E-6d + (((-8.8228987E-7d) + (1.05787412E-7d * d4)) * d4)) * d4))) + 0.04687499995d;
        return ((d3 * Math.cos(d5) * d7) + (d6 * Math.sin(d5))) * Math.sqrt(0.636619772d / d);
    }

    public static double Y(int i, double d) {
        if (i == 0) {
            return Y0(d);
        }
        if (i == 1) {
            return Y(d);
        }
        double d2 = 2.0d / d;
        double dY = Y(d);
        double dY0 = Y0(d);
        int i2 = 1;
        while (i2 < i) {
            double d3 = ((((double) i2) * d2) * dY) - dY0;
            i2++;
            double d4 = dY;
            dY = d3;
            dY0 = d4;
        }
        return dY;
    }

    public static double I0(double d) {
        double dAbs = Math.abs(d);
        if (dAbs < 3.75d) {
            double d2 = d / 3.75d;
            double d3 = d2 * d2;
            return (d3 * (3.5156229d + ((3.0899424d + ((1.2067492d + ((0.2659732d + ((0.0360768d + (0.0045813d * d3)) * d3)) * d3)) * d3)) * d3))) + 1.0d;
        }
        double d4 = 3.75d / dAbs;
        return (Math.exp(dAbs) / Math.sqrt(dAbs)) * ((d4 * (0.01328592d + ((0.00225319d + (((-0.00157565d) + ((0.00916281d + (((-0.02057706d) + ((0.02635537d + (((-0.01647633d) + (0.00392377d * d4)) * d4)) * d4)) * d4)) * d4)) * d4)) * d4))) + 0.39894228d);
    }

    public static double I(double d) {
        double dExp;
        double dAbs = Math.abs(d);
        if (dAbs < 3.75d) {
            double d2 = d / 3.75d;
            double d3 = d2 * d2;
            dExp = dAbs * ((d3 * (0.87890594d + ((0.51498869d + ((0.15084934d + ((0.02658733d + ((0.00301532d + (3.2411E-4d * d3)) * d3)) * d3)) * d3)) * d3))) + 0.5d);
        } else {
            dExp = (Math.exp(dAbs) / Math.sqrt(dAbs)) * (((3.75d / dAbs) * (((((((((0.02282967d + (((-0.02895312d) + ((0.01787654d - (0.00420059d * r2)) * r2)) * r2)) * r2) - 0.01031555d) * r2) + 0.00163801d) * r2) - 0.00362018d) * r2) - 0.03988024d)) + 0.39894228d);
        }
        return d < 0.0d ? -dExp : dExp;
    }

    public static double I(int i, double d) {
        double d2;
        double d3;
        if (i < 0) {
            throw new IllegalArgumentException("the variable n out of range.");
        }
        if (i == 0) {
            return I0(d);
        }
        if (i == 1) {
            return I(d);
        }
        if (d == 0.0d) {
            return 0.0d;
        }
        double dAbs = 2.0d / Math.abs(d);
        double d4 = 0.0d;
        double d5 = 1.0d;
        double d6 = 0.0d;
        int iSqrt = (((int) Math.sqrt(40.0d * ((double) i))) + i) * 2;
        while (iSqrt > 0) {
            double d7 = d6 + (((double) iSqrt) * dAbs * d5);
            if (Math.abs(d7) > 1.0E10d) {
                double d8 = d7 * 1.0E-10d;
                d2 = d4 * 1.0E-10d;
                d3 = d5 * 1.0E-10d;
                d5 = d8;
            } else {
                d2 = d4;
                d3 = d5;
                d5 = d7;
            }
            if (iSqrt == i) {
                d2 = d3;
            }
            iSqrt--;
            double d9 = d2;
            d6 = d3;
            d4 = d9;
        }
        double dI0 = (I0(d) / d5) * d4;
        return (d >= 0.0d || i % 2 != 1) ? dI0 : -dI0;
    }
}
