package Catalano.Math;

import Catalano.Math.Functions.Gamma;

/* JADX INFO: loaded from: classes.dex */
public final class Special {
    private static int a;
    private static double[] b;
    private static double[] c;

    private Special() {
    }

    public static double Erfc(double d) {
        double dPolevl;
        double dP1evl;
        double[] dArr = {2.461969814735305E-10d, 0.5641895648310689d, 7.463210564422699d, 48.63719709856814d, 196.5208329560771d, 526.4451949954773d, 934.5285271719576d, 1027.5518868951572d, 557.5353353693994d};
        double[] dArr2 = {13.228195115474499d, 86.70721408859897d, 354.9377788878199d, 975.7085017432055d, 1823.9091668790973d, 2246.3376081871097d, 1656.6630919416134d, 557.5353408177277d};
        double[] dArr3 = {0.5641895835477551d, 1.275366707599781d, 5.019050422511805d, 6.160210979930536d, 7.4097426995044895d, 2.9788666537210022d};
        double[] dArr4 = {2.2605286322011726d, 9.396035249380015d, 12.048953980809666d, 17.08144507475659d, 9.608968090632859d, 3.369076451000815d};
        double d2 = d < 0.0d ? -d : d;
        if (d2 < 1.0d) {
            return 1.0d - Erf(d);
        }
        double d3 = (-d) * d;
        if (d3 < -709.782712893384d) {
            return d < 0.0d ? 2.0d : 0.0d;
        }
        double dExp = Math.exp(d3);
        if (d2 < 8.0d) {
            dPolevl = Polevl(d2, dArr, 8);
            dP1evl = P1evl(d2, dArr2, 8);
        } else {
            dPolevl = Polevl(d2, dArr3, 5);
            dP1evl = P1evl(d2, dArr4, 6);
        }
        double d4 = (dPolevl * dExp) / dP1evl;
        if (d < 0.0d) {
            d4 = 2.0d - d4;
        }
        if (d4 == 0.0d) {
            return d < 0.0d ? 2.0d : 0.0d;
        }
        return d4;
    }

    public static double Erf(double d) {
        double[] dArr = {9.604973739870516d, 90.02601972038427d, 2232.005345946843d, 7003.325141128051d, 55592.30130103949d};
        double[] dArr2 = {33.56171416475031d, 521.3579497801527d, 4594.323829709801d, 22629.000061389095d, 49267.39426086359d};
        if (Math.abs(d) > 1.0d) {
            return 1.0d - Erfc(d);
        }
        double d2 = d * d;
        return (Polevl(d2, dArr, 4) * d) / P1evl(d2, dArr2, 5);
    }

    public static double Polevl(double d, double[] dArr, int i) {
        double d2 = dArr[0];
        for (int i2 = 1; i2 <= i; i2++) {
            d2 = (d2 * d) + dArr[i2];
        }
        return d2;
    }

    public static double P1evl(double d, double[] dArr, int i) {
        double d2 = d + dArr[0];
        for (int i2 = 1; i2 < i; i2++) {
            d2 = (d2 * d) + dArr[i2];
        }
        return d2;
    }

    public static double BSpline(int i, double d) {
        if (i == Integer.MAX_VALUE) {
            throw new IllegalArgumentException("n");
        }
        double dFactorial = 1.0d / Factorial(i);
        boolean z = true;
        int i2 = 0;
        while (i2 <= i + 1) {
            double dBinomial = Binomial(i + 1, i2) * Tools.TruncatedPower((((((double) i) + 1.0d) / 2.0d) + d) - ((double) i2), i);
            if (!z) {
                dBinomial = -dBinomial;
            }
            dFactorial += dBinomial;
            i2++;
            z = !z;
        }
        return dFactorial;
    }

    public static double Binomial(int i, int i2) {
        return Math.round(Math.exp((LogFactorial(i) - LogFactorial(i2)) - LogFactorial(i - i2)));
    }

    public static double LogBinomial(int i, int i2) {
        return (LogFactorial(i) - LogFactorial(i2)) - LogFactorial(i - i2);
    }

    public static double LogFactorial(int i) {
        if (c == null) {
            c = new double[101];
        }
        if (i < 0) {
            try {
                throw new ArithmeticException("Argument cannot be negative.");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if (i <= 1) {
            return 0.0d;
        }
        if (i > 100) {
            return Gamma.Log(((double) i) + 1.0d);
        }
        if (c[i] > 0.0d) {
            return c[i];
        }
        double[] dArr = c;
        double dLog = Gamma.Log(((double) i) + 1.0d);
        dArr[i] = dLog;
        return dLog;
    }

    public static double Factorial(int i) {
        if (b == null) {
            b = new double[33];
            b[0] = 1.0d;
            b[1] = 1.0d;
            b[2] = 2.0d;
            b[3] = 6.0d;
            b[4] = 24.0d;
            a = 4;
        }
        if (i < 0) {
            try {
                throw new ArithmeticException("Argument cannot be negative.");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if (i > 32) {
            return Math.exp(Gamma.Log(((double) i) + 1.0d));
        }
        while (a < i) {
            int i2 = a;
            a = i2 + 1;
            b[a] = b[i2] * ((double) a);
        }
        return b[i];
    }

    public static double Log1m(double d) {
        if (d >= 1.0d) {
            return Double.NaN;
        }
        if (Math.abs(d) > 1.0E-4d) {
            return Math.log(1.0d - d);
        }
        return (-((0.5d * d) + 1.0d)) * d;
    }

    public static double Log1p(double d) {
        if (d <= -1.0d) {
            return Double.NaN;
        }
        if (Math.abs(d) > 1.0E-4d) {
            return Math.log(1.0d + d);
        }
        return (((-0.5d) * d) + 1.0d) * d;
    }

    public static double Expm1(double d) {
        return Math.abs(d) < 1.0E-5d ? (0.5d * d * d) + d : Math.exp(d) - 1.0d;
    }

    public static double Epslon(double d) {
        double dAbs = 0.0d;
        while (dAbs == 0.0d) {
            double d2 = 1.3333333333333333d - 1.0d;
            dAbs = Math.abs((d2 + (d2 + d2)) - 1.0d);
        }
        return dAbs * Math.abs(d);
    }

    public static double Sign(double d, double d2) {
        double d3 = d >= 0.0d ? d : -d;
        return d2 >= 0.0d ? d3 : -d3;
    }

    public static double LogDiff(double d, double d2) {
        if (d > d2) {
            return Math.exp(1.0d - Math.exp(d2 - d)) + d;
        }
        return Double.NEGATIVE_INFINITY;
    }

    public static double LogSum(double d, double d2) {
        if (d == Double.NEGATIVE_INFINITY) {
            return d2;
        }
        if (d2 == Double.NEGATIVE_INFINITY) {
            return d;
        }
        if (d > d2) {
            return d + Log1p(Math.exp(d2 - d));
        }
        return d2 + Log1p(Math.exp(d - d2));
    }

    public static double LogSum(float f, float f2) {
        if (f == Float.NEGATIVE_INFINITY) {
            return f2;
        }
        if (f2 == Float.NEGATIVE_INFINITY) {
            return f;
        }
        if (f > f2) {
            return ((double) f) + Log1p(Math.exp(f2 - f));
        }
        return ((double) f2) + Log1p(Math.exp(f - f2));
    }
}
