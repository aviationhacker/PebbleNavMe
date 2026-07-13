package Catalano.Math.Functions;

import Catalano.Math.Special;

/* JADX INFO: loaded from: classes.dex */
public class Normal {
    private Normal() {
    }

    public static double Function(double d) {
        return 0.5d * Special.Erfc((-d) / 1.4142135623730951d);
    }

    public static double Inverse(double d) {
        boolean z;
        double dPolevl;
        if (d <= 0.0d) {
            if (d == 0.0d) {
                return Double.NEGATIVE_INFINITY;
            }
            try {
                throw new IllegalArgumentException("y0");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if (d >= 1.0d) {
            if (d == 1.0d) {
                return Double.POSITIVE_INFINITY;
            }
            try {
                throw new IllegalArgumentException("y0");
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        double dSqrt = Math.sqrt(6.283185307179586d);
        double[] dArr = {-59.96335010141079d, 98.00107541859997d, -56.67628574690703d, 13.931260938727968d, -1.2391658386738125d};
        double[] dArr2 = {1.9544885833814176d, 4.676279128988815d, 86.36024213908905d, -225.46268785411937d, 200.26021238006066d, -82.03722561683334d, 15.90562251262117d, -1.1833162112133d};
        double[] dArr3 = {4.0554489230596245d, 31.525109459989388d, 57.16281922464213d, 44.08050738932008d, 14.684956192885803d, 2.1866330685079025d, -0.1402560791713545d, -0.03504246268278482d, -8.574567851546854E-4d};
        double[] dArr4 = {15.779988325646675d, 45.39076351288792d, 41.3172038254672d, 15.04253856929075d, 2.504649462083094d, -0.14218292285478779d, -0.03808064076915783d, -9.332594808954574E-4d};
        double[] dArr5 = {3.2377489177694603d, 6.915228890689842d, 3.9388102529247444d, 1.3330346081580755d, 0.20148538954917908d, 0.012371663481782003d, 3.0158155350823543E-4d, 2.6580697468673755E-6d, 6.239745391849833E-9d};
        double[] dArr6 = {6.02427039364742d, 3.6798356385616087d, 1.3770209948908132d, 0.21623699359449663d, 0.013420400608854318d, 3.2801446468212774E-4d, 2.8924786474538068E-6d, 6.790194080099813E-9d};
        if (d <= 0.8646647167633873d) {
            z = true;
        } else {
            d = 1.0d - d;
            z = false;
        }
        if (d > 0.1353352832366127d) {
            double d2 = d - 0.5d;
            double d3 = d2 * d2;
            return ((((Special.Polevl(d3, dArr, 4) * d3) / Special.P1evl(d3, dArr2, 8)) * d2) + d2) * dSqrt;
        }
        double dSqrt2 = Math.sqrt((-2.0d) * Math.log(d));
        double dLog = dSqrt2 - (Math.log(dSqrt2) / dSqrt2);
        double d4 = 1.0d / dSqrt2;
        if (dSqrt2 < 8.0d) {
            dPolevl = (Special.Polevl(d4, dArr3, 8) * d4) / Special.P1evl(d4, dArr4, 8);
        } else {
            dPolevl = (Special.Polevl(d4, dArr5, 8) * d4) / Special.P1evl(d4, dArr6, 8);
        }
        double d5 = dLog - dPolevl;
        if (z) {
            return -d5;
        }
        return d5;
    }

    public static double HighAccuracyFunction(double d) {
        if (d < -8.0d || d > 8.0d) {
            return 0.0d;
        }
        double d2 = d * d;
        double d3 = d;
        double d4 = 0.0d;
        double d5 = 1.0d;
        while (d3 != d4) {
            d5 += 2.0d;
            d *= d2 / d5;
            d4 = d3;
            d3 += d;
        }
        return 0.5d + (Math.exp(((-0.5d) * d2) - 0.9189385332046728d) * d3);
    }

    public static double HighAccuracyComplemented(double d) {
        int iAbs = (int) (0.5d * (Math.abs(d) + 1.0d));
        double d2 = new double[]{1.2533141373155003d, 0.4213692292880545d, 0.23665238291356067d, 0.16237766089686745d, 0.1231319632579323d, 0.09902859647173193d, 0.08276628650136918d, 0.07106958053885211d, 0.0622586659950262d}[iAbs];
        double d3 = iAbs * 2;
        double d4 = (d2 * d3) - 1.0d;
        double dAbs = Math.abs(d) - d3;
        double d5 = dAbs * dAbs;
        double d6 = 1.0d;
        double d7 = d2 + (dAbs * d4);
        int i = 2;
        double d8 = d2;
        while (d7 != d2) {
            d8 = ((d3 * d4) + d8) / ((double) i);
            d4 = ((d3 * d8) + d4) / ((double) (i + 1));
            d6 *= d5;
            i += 2;
            double d9 = d7;
            d7 = (((dAbs * d4) + d8) * d6) + d7;
            d2 = d9;
        }
        double dExp = Math.exp(((-0.5d) * (d * d)) - 0.9189385332046728d) * d7;
        return d >= 0.0d ? dExp : 1.0d - dExp;
    }
}
