package Catalano.Math.Functions;

/* JADX INFO: loaded from: classes.dex */
public final class Beta {
    private Beta() {
    }

    public static double Function(double d, double d2) {
        return Math.exp(Log(d, d2));
    }

    public static double Log(double d, double d2) {
        return (Gamma.Log(d) + Gamma.Log(d2)) - Gamma.Log(d + d2);
    }

    public static double Incomplete(double d, double d2, double d3) {
        boolean z;
        double d4;
        double d5;
        double d6;
        double dIncbd;
        double dExp;
        if (d <= 0.0d) {
            try {
                throw new IllegalArgumentException(" 'a' Lower limit must be greater than zero.");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if (d2 <= 0.0d) {
            try {
                throw new IllegalArgumentException(" 'b' Upper limit must be greater than zero.");
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        if (d3 <= 0.0d || d3 >= 1.0d) {
            if (d3 == 0.0d) {
                return 0.0d;
            }
            if (d3 == 1.0d) {
                return 1.0d;
            }
            try {
                throw new IllegalArgumentException(" 'x' Value must be between 0 and 1.");
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        }
        if (d2 * d3 <= 1.0d && d3 <= 0.95d) {
            return PowerSeries(d, d2, d3);
        }
        double d7 = 1.0d - d3;
        if (d3 <= d / (d + d2)) {
            z = false;
            d4 = d3;
            d3 = d7;
            d5 = d;
            d6 = d2;
        } else {
            z = true;
            d4 = d7;
            d6 = d;
            d5 = d2;
        }
        if (z && d6 * d4 <= 1.0d && d4 <= 0.95d) {
            double dPowerSeries = PowerSeries(d5, d6, d4);
            if (dPowerSeries <= 1.1102230246251565E-16d) {
                return 0.9999999999999999d;
            }
            return 1.0d - dPowerSeries;
        }
        if ((((d5 + d6) - 2.0d) * d4) - (d5 - 1.0d) < 0.0d) {
            dIncbd = Incbcf(d5, d6, d4);
        } else {
            dIncbd = Incbd(d5, d6, d4) / d3;
        }
        double dLog = Math.log(d4) * d5;
        double dLog2 = Math.log(d3) * d6;
        if (d5 + d6 < 171.6243769563027d && Math.abs(dLog) < 709.782712893384d && Math.abs(dLog2) < 709.782712893384d) {
            double dFunction = (Gamma.Function(d5 + d6) / (Gamma.Function(d5) * Gamma.Function(d6))) * ((Math.pow(d4, d5) * Math.pow(d3, d6)) / d5) * dIncbd;
            if (!z) {
                return dFunction;
            }
            if (dFunction <= 1.1102230246251565E-16d) {
                return 0.9999999999999999d;
            }
            return 1.0d - dFunction;
        }
        double dLog3 = Math.log(dIncbd / d5) + (((Gamma.Log(d5 + d6) + dLog2) - Gamma.Log(d5)) - Gamma.Log(d6)) + dLog;
        if (dLog3 < -745.1332191019412d) {
            dExp = 0.0d;
        } else {
            dExp = Math.exp(dLog3);
        }
        if (!z) {
            return dExp;
        }
        if (dExp <= 1.1102230246251565E-16d) {
            return 0.9999999999999999d;
        }
        return 1.0d - dExp;
    }

    public static double Incbcf(double d, double d2, double d3) {
        double dAbs;
        double d4;
        double d5;
        double d6 = d + 1.0d;
        double d7 = 1.0d;
        double d8 = 1.0d;
        double d9 = d6;
        double d10 = d + d2;
        double d11 = d;
        double d12 = 1.0d;
        double d13 = 1.0d;
        double d14 = d + 2.0d;
        double d15 = 1.0d;
        int i = 0;
        double d16 = 1.0d;
        double d17 = d6;
        double d18 = d2 - 1.0d;
        double d19 = 0.0d;
        while (true) {
            double d20 = (-((d3 * d11) * d10)) / (d * d9);
            double d21 = (d19 * d20) + d12;
            d15 = (d15 * d20) + d16;
            double d22 = ((d3 * d13) * d18) / (d17 * d14);
            double d23 = (d12 * d22) + d21;
            double d24 = (d16 * d22) + d15;
            if (d24 != 0.0d) {
                d8 = d23 / d24;
            }
            if (d8 != 0.0d) {
                dAbs = Math.abs((d7 - d8) / d8);
                d7 = d8;
            } else {
                dAbs = 1.0d;
            }
            if (dAbs < 3.3306690738754696E-16d) {
                return d7;
            }
            double d25 = d11 + 1.0d;
            double d26 = d10 + 1.0d;
            d += 2.0d;
            double d27 = d9 + 2.0d;
            double d28 = d13 + 1.0d;
            double d29 = d18 - 1.0d;
            double d30 = d17 + 2.0d;
            double d31 = d14 + 2.0d;
            if (Math.abs(d24) + Math.abs(d23) > 4.503599627370496E15d) {
                d19 = d21 * 2.220446049250313E-16d;
                d4 = d23 * 2.220446049250313E-16d;
                d15 *= 2.220446049250313E-16d;
                d5 = d24 * 2.220446049250313E-16d;
            } else {
                d19 = d21;
                d4 = d23;
                d5 = d24;
            }
            if (Math.abs(d24) < 2.220446049250313E-16d || Math.abs(d23) < 2.220446049250313E-16d) {
                d19 *= 4.503599627370496E15d;
                d4 *= 4.503599627370496E15d;
                d15 *= 4.503599627370496E15d;
                d5 *= 4.503599627370496E15d;
            }
            int i2 = i + 1;
            if (i2 >= 300) {
                return d7;
            }
            i = i2;
            d12 = d4;
            d16 = d5;
            d14 = d31;
            d17 = d30;
            d18 = d29;
            d13 = d28;
            d9 = d27;
            d10 = d26;
            d11 = d25;
        }
    }

    public static double Incbd(double d, double d2, double d3) {
        double dAbs;
        double d4;
        double d5;
        double d6 = d3 / (1.0d - d3);
        double d7 = 1.0d;
        double d8 = 1.0d;
        double d9 = d2 - 1.0d;
        double d10 = d;
        int i = 0;
        double d11 = 1.0d;
        double d12 = d + 1.0d;
        double d13 = 1.0d;
        double d14 = d + d2;
        double d15 = 0.0d;
        double d16 = 1.0d;
        double d17 = d + 2.0d;
        double d18 = 1.0d;
        double d19 = d + 1.0d;
        while (true) {
            double d20 = (-((d6 * d10) * d9)) / (d * d19);
            double d21 = (d15 * d20) + d18;
            d11 = (d11 * d20) + d13;
            double d22 = ((d6 * d16) * d14) / (d12 * d17);
            double d23 = (d18 * d22) + d21;
            double d24 = (d13 * d22) + d11;
            if (d24 != 0.0d) {
                d8 = d23 / d24;
            }
            if (d8 != 0.0d) {
                dAbs = Math.abs((d7 - d8) / d8);
                d7 = d8;
            } else {
                dAbs = 1.0d;
            }
            if (dAbs < 3.3306690738754696E-16d) {
                return d7;
            }
            double d25 = d10 + 1.0d;
            double d26 = d9 - 1.0d;
            d += 2.0d;
            double d27 = d19 + 2.0d;
            double d28 = d16 + 1.0d;
            double d29 = d14 + 1.0d;
            double d30 = d12 + 2.0d;
            double d31 = d17 + 2.0d;
            if (Math.abs(d24) + Math.abs(d23) > 4.503599627370496E15d) {
                d15 = d21 * 2.220446049250313E-16d;
                d4 = d23 * 2.220446049250313E-16d;
                d11 *= 2.220446049250313E-16d;
                d5 = d24 * 2.220446049250313E-16d;
            } else {
                d15 = d21;
                d4 = d23;
                d5 = d24;
            }
            if (Math.abs(d24) < 2.220446049250313E-16d || Math.abs(d23) < 2.220446049250313E-16d) {
                d15 *= 4.503599627370496E15d;
                d4 *= 4.503599627370496E15d;
                d11 *= 4.503599627370496E15d;
                d5 *= 4.503599627370496E15d;
            }
            int i2 = i + 1;
            if (i2 >= 300) {
                return d7;
            }
            i = i2;
            d18 = d4;
            d13 = d5;
            d17 = d31;
            d12 = d30;
            d14 = d29;
            d16 = d28;
            d19 = d27;
            d9 = d26;
            d10 = d25;
        }
    }

    public static double PowerSeries(double d, double d2, double d3) {
        double d4 = 1.0d / d;
        double d5 = (1.0d - d2) * d3;
        double d6 = d5 / (1.0d + d);
        double d7 = 2.0d;
        double d8 = 0.0d;
        double d9 = d5;
        double d10 = d6;
        while (Math.abs(d10) > 1.1102230246251565E-16d * d4) {
            d9 *= ((d7 - d2) * d3) / d7;
            d10 = d9 / (d + d7);
            d8 += d10;
            d7 += 1.0d;
        }
        double d11 = d8 + d6 + d4;
        double dLog = Math.log(d3) * d;
        if (d + d2 < 171.6243769563027d && Math.abs(dLog) < 709.782712893384d) {
            return d11 * (Gamma.Function(d + d2) / (Gamma.Function(d) * Gamma.Function(d2))) * Math.pow(d3, d);
        }
        double dLog2 = Math.log(d11) + dLog + ((Gamma.Log(d + d2) - Gamma.Log(d)) - Gamma.Log(d2));
        if (dLog2 < -745.1332191019412d) {
            return 0.0d;
        }
        return Math.exp(dLog2);
    }
}
