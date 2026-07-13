package Catalano.Math.Functions;

import Catalano.Math.Special;

/* JADX INFO: loaded from: classes.dex */
public final class Gamma {
    public static final double GammaMax = 171.6243769563027d;

    private Gamma() {
    }

    public static double Function(double d) {
        double[] dArr = {1.6011952247675185E-4d, 0.0011913514700658638d, 0.010421379756176158d, 0.04763678004571372d, 0.20744822764843598d, 0.4942148268014971d, 1.0d};
        double[] dArr2 = {-2.3158187332412014E-5d, 5.396055804933034E-4d, -0.004456419138517973d, 0.011813978522206043d, 0.035823639860549865d, -0.23459179571824335d, 0.0714304917030273d, 1.0d};
        double dAbs = Math.abs(d);
        if (dAbs > 33.0d) {
            if (d < 0.0d) {
                double dFloor = Math.floor(dAbs);
                if (dFloor == dAbs) {
                    try {
                        throw new ArithmeticException("Overflow");
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                double d2 = dAbs - dFloor;
                if (d2 > 0.5d) {
                    d2 = dAbs - (1.0d + dFloor);
                }
                double dSin = dAbs * Math.sin(d2 * 3.141592653589793d);
                if (dSin == 0.0d) {
                    try {
                        throw new ArithmeticException("Overflow");
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
                return -(3.141592653589793d / (Math.abs(dSin) * Stirling(dAbs)));
            }
            return Stirling(d);
        }
        double d3 = 1.0d;
        double d4 = d;
        while (d4 >= 3.0d) {
            d4 -= 1.0d;
            d3 *= d4;
        }
        while (d4 < 0.0d) {
            if (d4 == 0.0d) {
                throw new ArithmeticException();
            }
            if (d4 > -1.0E-9d) {
                return d3 / (d4 * (1.0d + (0.5772156649015329d * d4)));
            }
            d3 /= d4;
            d4 += 1.0d;
        }
        while (d4 < 2.0d) {
            if (d4 == 0.0d) {
                throw new ArithmeticException();
            }
            if (d4 < 1.0E-9d) {
                return d3 / (d4 * (1.0d + (0.5772156649015329d * d4)));
            }
            d3 /= d4;
            d4 += 1.0d;
        }
        if (d4 != 2.0d && d4 != 3.0d) {
            double d5 = d4 - 2.0d;
            return (d3 * Special.Polevl(d5, dArr, 6)) / Special.Polevl(d5, dArr2, 7);
        }
        return d3;
    }

    public static double LowerIncomplete(double d, double d2) {
        double dAbs;
        double d3;
        double d4;
        double d5;
        double d6;
        double d7;
        if (d < 0.0d) {
            try {
                throw new IllegalArgumentException("Out of Range: a");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if (d2 < 0.0d) {
            try {
                throw new IllegalArgumentException("Out of Range: x");
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        if (d == 0.0d) {
            if (d2 == 0.0d) {
                return Double.NaN;
            }
            return 1.0d;
        }
        if (d2 == 0.0d) {
            return 0.0d;
        }
        double dLog = ((Math.log(d2) * d) - d2) - Log(d);
        if (dLog < -709.782712893384d) {
            return 1.0d;
        }
        if (d2 <= 1.0d || d2 <= d) {
            double d8 = 1.0d;
            double d9 = 1.0d;
            double d10 = d;
            do {
                d10 += 1.0d;
                d8 = (d8 * d2) / d10;
                d9 += d8;
            } while (d8 / d9 > 1.0E-15d);
            return (d9 * Math.exp(dLog)) / d;
        }
        int i = 0;
        double d11 = 1.0d - d;
        double d12 = 1.0d + d2 + d11;
        double d13 = 1.0d;
        double d14 = d2 + 1.0d;
        double d15 = d12 * d2;
        double d16 = d14 / d15;
        while (true) {
            int i2 = i + 1;
            double d17 = d11 + 1.0d;
            double d18 = d12 + 2.0d;
            double d19 = ((double) i2) * d17;
            double d20 = (d14 * d18) - (d13 * d19);
            double d21 = (d15 * d18) - (d19 * d2);
            if (d21 != 0.0d) {
                d3 = d20 / d21;
                dAbs = Math.abs((d16 - d3) / d3);
            } else {
                dAbs = 1.0d;
                d3 = d16;
            }
            if (Math.abs(d20) > 4.503599627370496E15d) {
                d4 = 2.220446049250313E-16d * d21;
                d5 = d20 * 2.220446049250313E-16d;
                d6 = d15 * 2.220446049250313E-16d;
                d7 = d14 * 2.220446049250313E-16d;
            } else {
                d4 = d21;
                d5 = d20;
                d6 = d15;
                d7 = d14;
            }
            if (dAbs <= 1.0E-15d) {
                return 1.0d - (d3 * Math.exp(dLog));
            }
            d14 = d5;
            d2 = d6;
            d13 = d7;
            d15 = d4;
            d11 = d17;
            i = i2;
            d16 = d3;
            d12 = d18;
        }
    }

    public static double Stirling(double d) {
        double dPow;
        double d2 = 1.0d / d;
        double dExp = Math.exp(d);
        double dPolevl = 1.0d + (Special.Polevl(d2, new double[]{7.873113957930937E-4d, -2.2954996161337813E-4d, -0.0026813261780578124d, 0.0034722222160545866d, 0.08333333333334822d}, 4) * d2);
        if (d > 143.01608d) {
            double dPow2 = Math.pow(d, (0.5d * d) - 0.25d);
            dPow = dPow2 * (dPow2 / dExp);
        } else {
            dPow = Math.pow(d, d - 0.5d) / dExp;
        }
        return dPow * 2.5066282746310007d * dPolevl;
    }

    public static double Digamma(double d) {
        boolean z;
        double d2;
        double d3;
        double d4;
        double d5;
        double d6;
        double dLog;
        double dTan;
        if (d > 0.0d) {
            z = false;
            d2 = 0.0d;
            d3 = d;
        } else {
            double dFloor = (int) Math.floor(d);
            if (dFloor == d) {
                try {
                    throw new ArithmeticException("Function computation resulted in arithmetic overflow.");
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            double d7 = d - dFloor;
            if (d7 != 0.5d) {
                if (d7 > 0.5d) {
                    d7 = d - (1.0d + dFloor);
                }
                dTan = 3.141592653589793d / Math.tan(d7 * 3.141592653589793d);
            } else {
                dTan = 0.0d;
            }
            z = true;
            d2 = dTan;
            d3 = 1.0d - d;
        }
        if (d3 <= 10.0d && d3 == Math.floor(d3)) {
            int iFloor = (int) Math.floor(d3);
            double d8 = 0.0d;
            for (int i = 1; i <= iFloor - 1; i++) {
                d8 += 1.0d / ((double) i);
            }
            dLog = d8 - 0.5772156649015329d;
        } else {
            double d9 = 0.0d;
            while (true) {
                d4 = d3;
                d5 = d9;
                if (d4 >= 10.0d) {
                    break;
                }
                d9 = (1.0d / d4) + d5;
                d3 = 1.0d + d4;
            }
            if (d4 < 1.0E17d) {
                double d10 = 1.0d / (d4 * d4);
                d6 = d10 * ((((((((((((0.08333333333333333d * d10) - 0.021092796092796094d) * d10) + 0.007575757575757576d) * d10) - 0.004166666666666667d) * d10) + 0.003968253968253968d) * d10) - 0.008333333333333333d) * d10) + 0.08333333333333333d);
            } else {
                d6 = 0.0d;
            }
            dLog = ((Math.log(d4) - (0.5d / d4)) - d6) - d5;
        }
        if (z) {
            return dLog - d2;
        }
        return dLog;
    }

    public static double ComplementedIncomplete(double d, double d2) {
        double dAbs;
        double d3;
        double d4;
        if (d2 <= 0.0d || d <= 0.0d) {
            return 1.0d;
        }
        if (d2 < 1.0d || d2 < d) {
            return 1.0d - Incomplete(d, d2);
        }
        double dLog = ((Math.log(d2) * d) - d2) - Log(d);
        if (dLog < -709.782712893384d) {
            return 0.0d;
        }
        double dExp = Math.exp(dLog);
        double d5 = 1.0d - d;
        double d6 = d2 + d5 + 1.0d;
        double d7 = 1.0d;
        double d8 = d2 + 1.0d;
        double d9 = d6 * d2;
        double d10 = d8 / d9;
        double d11 = 0.0d;
        while (true) {
            double d12 = d11 + 1.0d;
            double d13 = d5 + 1.0d;
            double d14 = d6 + 2.0d;
            double d15 = d13 * d12;
            double d16 = (d8 * d14) - (d7 * d15);
            double d17 = (d9 * d14) - (d15 * d2);
            if (d17 != 0.0d) {
                d3 = d16 / d17;
                dAbs = Math.abs((d10 - d3) / d3);
            } else {
                dAbs = 1.0d;
                d3 = d10;
            }
            if (Math.abs(d16) > 4.503599627370496E15d) {
                d4 = 2.220446049250313E-16d * d9;
                d9 = 2.220446049250313E-16d * d17;
                d7 = d8 * 2.220446049250313E-16d;
                d8 = d16 * 2.220446049250313E-16d;
            } else {
                d4 = d9;
                d9 = d17;
                d7 = d8;
                d8 = d16;
            }
            if (dAbs <= 1.1102230246251565E-16d) {
                return d3 * dExp;
            }
            d2 = d4;
            d6 = d14;
            d11 = d12;
            d10 = d3;
            d5 = d13;
        }
    }

    public static double Incomplete(double d, double d2) {
        if (d2 <= 0.0d || d <= 0.0d) {
            return 0.0d;
        }
        if (d2 > 1.0d && d2 > d) {
            return 1.0d - ComplementedIncomplete(d, d2);
        }
        double dLog = ((Math.log(d2) * d) - d2) - Log(d);
        if (dLog < -709.782712893384d) {
            return 0.0d;
        }
        double dExp = Math.exp(dLog);
        double d3 = 1.0d;
        double d4 = 1.0d;
        double d5 = d;
        do {
            d5 += 1.0d;
            d4 *= d2 / d5;
            d3 += d4;
        } while (d4 / d3 > 1.1102230246251565E-16d);
        return (d3 * dExp) / d;
    }

    public static double Log(double d) {
        double[] dArr = {8.116141674705085E-4d, -5.950619042843014E-4d, 7.936503404577169E-4d, -0.002777777777300997d, 0.08333333333333319d};
        double[] dArr2 = {-1378.2515256912086d, -38801.631513463784d, -331612.9927388712d, -1162370.974927623d, -1721737.0082083966d, -853555.6642457654d};
        double[] dArr3 = {-351.81570143652345d, -17064.210665188115d, -220528.59055385445d, -1139334.4436798252d, -2532523.0717758294d, -2018891.4143353277d};
        if (d < -34.0d) {
            double d2 = -d;
            double dLog = Log(d2);
            double dFloor = Math.floor(d2);
            if (dFloor == d2) {
                try {
                    throw new ArithmeticException("Overflow.");
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            double d3 = d2 - dFloor;
            if (d3 > 0.5d) {
                d3 = (1.0d + dFloor) - d2;
            }
            double dSin = d2 * Math.sin(d3 * 3.141592653589793d);
            if (dSin == 0.0d) {
                try {
                    throw new ArithmeticException("Overflow.");
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
            return (1.1447298858494002d - Math.log(dSin)) - dLog;
        }
        if (d < 13.0d) {
            double d4 = 1.0d;
            double d5 = d;
            while (d5 >= 3.0d) {
                d5 -= 1.0d;
                d4 *= d5;
            }
            while (true) {
                double d6 = d5;
                if (d6 >= 2.0d) {
                    double d7 = d4 < 0.0d ? -d4 : d4;
                    if (d6 == 2.0d) {
                        return Math.log(d7);
                    }
                    double d8 = d6 - 2.0d;
                    return Math.log(d7) + ((Special.Polevl(d8, dArr2, 5) * d8) / Special.P1evl(d8, dArr3, 6));
                }
                if (d6 == 0.0d) {
                    try {
                        throw new ArithmeticException("Overflow.");
                    } catch (Exception e3) {
                        e3.printStackTrace();
                    }
                }
                d4 /= d6;
                d5 = 1.0d + d6;
            }
        } else {
            if (d > 2.556348E305d) {
                try {
                    throw new ArithmeticException("Overflow.");
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
            double dLog2 = (((d - 0.5d) * Math.log(d)) - d) + 0.9189385332046728d;
            if (d <= 1.0E8d) {
                double d9 = 1.0d / (d * d);
                if (d >= 1000.0d) {
                    return dLog2 + (((((7.936507936507937E-4d * d9) - 0.002777777777777778d) * d9) + 0.08333333333333333d) / d);
                }
                return dLog2 + (Special.Polevl(d9, dArr, 4) / d);
            }
            return dLog2;
        }
    }
}
