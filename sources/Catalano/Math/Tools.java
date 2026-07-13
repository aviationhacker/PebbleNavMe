package Catalano.Math;

import Catalano.Core.DoubleRange;
import Catalano.Core.FloatRange;
import Catalano.Core.IntRange;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class Tools {
    private static Random a = new Random();

    public static Random Random() {
        return a;
    }

    public static void SetupGenerator(int i) {
        a = new Random(i);
    }

    public static double Square(double d) {
        return d * d;
    }

    private Tools() {
    }

    public static float Angle(float f, float f2) {
        if (f2 >= 0.0f) {
            if (f >= 0.0f) {
                return (float) Math.atan(f2 / f);
            }
            return (float) (3.141592653589793d - Math.atan((-f2) / f));
        }
        if (f >= 0.0f) {
            return (float) (6.283185307179586d - Math.atan((-f2) / f));
        }
        return (float) (Math.atan(f2 / f) + 3.141592653589793d);
    }

    public static double Angle(double d, double d2) {
        if (d2 >= 0.0d) {
            if (d >= 0.0d) {
                return Math.atan(d2 / d);
            }
            return 3.141592653589793d - Math.atan((-d2) / d);
        }
        if (d >= 0.0d) {
            return 6.283185307179586d - Math.atan((-d2) / d);
        }
        return Math.atan(d2 / d) + 3.141592653589793d;
    }

    public static int DigitalRoot(int i) {
        return ((i - 1) % 9) + 1;
    }

    public static int GreatestCommonDivisor(int i, int i2) {
        int iFloor = i - (((int) Math.floor(i / i2)) * i2);
        while (iFloor != 0) {
            int iFloor2 = i2 - (((int) Math.floor(i2 / iFloor)) * iFloor);
            i2 = iFloor;
            iFloor = iFloor2;
        }
        return i2;
    }

    public static boolean isNumeric(String str) {
        int i;
        int i2;
        if (str.length() == 0) {
            return false;
        }
        Character.isDigit(str.charAt(0));
        if (str.charAt(0) == '-') {
            i = 1;
            i2 = 0;
        } else if (str.charAt(0) == '.') {
            i = 0;
            i2 = 1;
        } else {
            i = 0;
            i2 = 0;
        }
        while (i < str.length()) {
            if (!Character.isDigit(str.charAt(i))) {
                if (str.charAt(i) != '.') {
                    return false;
                }
                i2++;
            }
            i++;
        }
        return i2 <= 1;
    }

    public static boolean isPowerOf2(int i) {
        return i > 0 && ((i + (-1)) & i) == 0;
    }

    public static int Mod(int i, int i2) {
        if (i2 < 0) {
            i2 = -i2;
        }
        int i3 = i % i2;
        return i3 < 0 ? i3 + i2 : i3;
    }

    public static int NextPowerOf2(int i) {
        int i2 = i - 1;
        int i3 = i2 | (i2 >> 1);
        int i4 = i3 | (i3 >> 2);
        int i5 = i4 | (i4 >> 4);
        int i6 = i5 | (i5 >> 8);
        return (i6 | (i6 >> 16)) + 1;
    }

    public static void Permutate(int[] iArr) {
        a.permutate(iArr);
    }

    public static int PreviousPowerOf2(int i) {
        return NextPowerOf2(i + 1) / 2;
    }

    public static synchronized double RandomNextDouble() {
        return a.nextDouble();
    }

    public static int Scale(IntRange intRange, IntRange intRange2, int i) {
        if (intRange.length() == 0.0d) {
            return 0;
        }
        return (int) (((intRange2.length() * ((double) (i - intRange.getMin()))) / intRange.length()) + ((double) intRange2.getMin()));
    }

    public static double Scale(DoubleRange doubleRange, DoubleRange doubleRange2, int i) {
        if (doubleRange.length() == 0.0d) {
            return 0.0d;
        }
        return ((doubleRange2.length() * (((double) i) - doubleRange.getMin())) / doubleRange.length()) + doubleRange2.getMin();
    }

    public static double Scale(DoubleRange doubleRange, DoubleRange doubleRange2, double d) {
        if (doubleRange.length() == 0.0d) {
            return 0.0d;
        }
        return ((doubleRange2.length() * (d - doubleRange.getMin())) / doubleRange.length()) + doubleRange2.getMin();
    }

    public static float Scale(FloatRange floatRange, FloatRange floatRange2, int i) {
        if (floatRange.length() == 0.0f) {
            return 0.0f;
        }
        return ((floatRange2.length() * (i - floatRange.getMin())) / floatRange.length()) + floatRange2.getMin();
    }

    public static double Scale(double d, double d2, double d3, double d4, double d5) {
        if (d2 - d == 0.0d) {
            return 0.0d;
        }
        return (((d4 - d3) * (d5 - d)) / (d2 - d)) + d3;
    }

    public static double Sum(double[] dArr) {
        double d = 0.0d;
        for (double d2 : dArr) {
            d += d2;
        }
        return d;
    }

    public static int Sum(int[] iArr) {
        int i = 0;
        for (int i2 : iArr) {
            i += i2;
        }
        return i;
    }

    public static float Sum(float[] fArr) {
        float f = 0.0f;
        for (float f2 : fArr) {
            f += f2;
        }
        return f;
    }

    public static double Log(double d, double d2) {
        return Math.log(d) / Math.log(d2);
    }

    public static double TruncatedPower(double d, double d2) {
        double dPow = Math.pow(d, d2);
        if (dPow > 0.0d) {
            return dPow;
        }
        return 0.0d;
    }

    public static int[] Unique(int[] iArr) {
        HashSet hashSet = new HashSet();
        for (int i : iArr) {
            hashSet.add(Integer.valueOf(i));
        }
        int[] iArr2 = new int[hashSet.size()];
        Iterator it = hashSet.iterator();
        for (int i2 = 0; i2 < iArr2.length; i2++) {
            iArr2[i2] = ((Integer) it.next()).intValue();
        }
        return iArr2;
    }

    public static double Hypotenuse(double d, double d2) {
        double dAbs = Math.abs(d);
        double dAbs2 = Math.abs(d2);
        if (dAbs > dAbs2) {
            double d3 = d2 / d;
            return Math.sqrt((d3 * d3) + 1.0d) * dAbs;
        }
        if (d2 == 0.0d) {
            return 0.0d;
        }
        double d4 = d / d2;
        return Math.sqrt((d4 * d4) + 1.0d) * dAbs2;
    }

    public static int Log2(int i) {
        if (i <= 65536) {
            if (i <= 256) {
                if (i <= 16) {
                    if (i > 4) {
                        return i <= 8 ? 3 : 4;
                    }
                    if (i <= 2) {
                        return i <= 1 ? 0 : 1;
                    }
                    return 2;
                }
                if (i > 64) {
                    return i <= 128 ? 7 : 8;
                }
                if (i <= 32) {
                    return 5;
                }
                return 6;
            }
            if (i <= 4096) {
                if (i <= 1024) {
                    if (i <= 512) {
                        return 9;
                    }
                    return 10;
                }
                if (i <= 2048) {
                    return 11;
                }
                return 12;
            }
            if (i > 16384) {
                return i <= 32768 ? 15 : 16;
            }
            if (i <= 8192) {
                return 13;
            }
            return 14;
        }
        if (i <= 16777216) {
            if (i <= 1048576) {
                if (i <= 262144) {
                    if (i <= 131072) {
                        return 17;
                    }
                    return 18;
                }
                if (i <= 524288) {
                    return 19;
                }
                return 20;
            }
            if (i <= 4194304) {
                if (i <= 2097152) {
                    return 21;
                }
                return 22;
            }
            if (i <= 8388608) {
                return 23;
            }
            return 24;
        }
        if (i <= 268435456) {
            if (i <= 67108864) {
                if (i <= 33554432) {
                    return 25;
                }
                return 26;
            }
            if (i <= 134217728) {
                return 27;
            }
            return 28;
        }
        if (i <= 1073741824) {
            if (i <= 536870912) {
                return 29;
            }
            return 30;
        }
        return 31;
    }

    public static int Pow2(int i) {
        if (i < 0 || i > 30) {
            return 0;
        }
        return 1 << i;
    }
}
