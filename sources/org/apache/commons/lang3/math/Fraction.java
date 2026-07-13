package org.apache.commons.lang3.math;

import java.math.BigInteger;

/* JADX INFO: loaded from: classes.dex */
public final class Fraction extends Number implements Comparable<Fraction> {
    private static final long serialVersionUID = 65382027393090L;
    private final int a;
    private final int b;
    private transient int c = 0;
    private transient String d = null;
    private transient String e = null;
    public static final Fraction ZERO = new Fraction(0, 1);
    public static final Fraction ONE = new Fraction(1, 1);
    public static final Fraction ONE_HALF = new Fraction(1, 2);
    public static final Fraction ONE_THIRD = new Fraction(1, 3);
    public static final Fraction TWO_THIRDS = new Fraction(2, 3);
    public static final Fraction ONE_QUARTER = new Fraction(1, 4);
    public static final Fraction TWO_QUARTERS = new Fraction(2, 4);
    public static final Fraction THREE_QUARTERS = new Fraction(3, 4);
    public static final Fraction ONE_FIFTH = new Fraction(1, 5);
    public static final Fraction TWO_FIFTHS = new Fraction(2, 5);
    public static final Fraction THREE_FIFTHS = new Fraction(3, 5);
    public static final Fraction FOUR_FIFTHS = new Fraction(4, 5);

    private Fraction(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    public static Fraction getFraction(int i, int i2) {
        if (i2 == 0) {
            throw new ArithmeticException("The denominator must not be zero");
        }
        if (i2 < 0) {
            if (i == Integer.MIN_VALUE || i2 == Integer.MIN_VALUE) {
                throw new ArithmeticException("overflow: can't negate");
            }
            i = -i;
            i2 = -i2;
        }
        return new Fraction(i, i2);
    }

    public static Fraction getFraction(int i, int i2, int i3) {
        long j;
        if (i3 == 0) {
            throw new ArithmeticException("The denominator must not be zero");
        }
        if (i3 < 0) {
            throw new ArithmeticException("The denominator must not be negative");
        }
        if (i2 < 0) {
            throw new ArithmeticException("The numerator must not be negative");
        }
        if (i < 0) {
            j = (((long) i) * ((long) i3)) - ((long) i2);
        } else {
            j = (((long) i) * ((long) i3)) + ((long) i2);
        }
        if (j < -2147483648L || j > 2147483647L) {
            throw new ArithmeticException("Numerator too large to represent as an Integer.");
        }
        return new Fraction((int) j, i3);
    }

    public static Fraction getReducedFraction(int i, int i2) {
        int i3;
        int i4;
        if (i2 == 0) {
            throw new ArithmeticException("The denominator must not be zero");
        }
        if (i == 0) {
            return ZERO;
        }
        if (i2 == Integer.MIN_VALUE && (i & 1) == 0) {
            i3 = i2 / 2;
            i4 = i / 2;
        } else {
            i3 = i2;
            i4 = i;
        }
        if (i3 < 0) {
            if (i4 == Integer.MIN_VALUE || i3 == Integer.MIN_VALUE) {
                throw new ArithmeticException("overflow: can't negate");
            }
            i4 = -i4;
            i3 = -i3;
        }
        int iA = a(i4, i3);
        return new Fraction(i4 / iA, i3 / iA);
    }

    public static Fraction getFraction(double d) {
        int i = d < 0.0d ? -1 : 1;
        double dAbs = Math.abs(d);
        if (dAbs > 2.147483647E9d || Double.isNaN(dAbs)) {
            throw new ArithmeticException("The value must not be greater than Integer.MAX_VALUE or NaN");
        }
        int i2 = (int) dAbs;
        double d2 = dAbs - ((double) i2);
        int i3 = (int) d2;
        double d3 = Double.MAX_VALUE;
        int i4 = 1;
        int i5 = 1;
        int i6 = 0;
        int i7 = 0;
        int i8 = 1;
        int i9 = i3;
        double d4 = 1.0d;
        double d5 = d2 - ((double) i3);
        while (true) {
            int i10 = (int) (d4 / d5);
            double d6 = d4 - (((double) i10) * d5);
            int i11 = i6 + (i9 * i8);
            int i12 = (i9 * i7) + i5;
            double dAbs2 = Math.abs(d2 - (((double) i11) / ((double) i12)));
            i4++;
            if (d3 <= dAbs2 || i12 > 10000 || i12 <= 0 || i4 >= 25) {
                break;
            }
            d3 = dAbs2;
            i5 = i7;
            d4 = d5;
            i7 = i12;
            i9 = i10;
            d5 = d6;
            i6 = i8;
            i8 = i11;
        }
        if (i4 == 25) {
            throw new ArithmeticException("Unable to convert double to fraction");
        }
        return getReducedFraction(i * ((i2 * i7) + i8), i7);
    }

    public static Fraction getFraction(String str) {
        if (str == null) {
            throw new IllegalArgumentException("The string must not be null");
        }
        if (str.indexOf(46) >= 0) {
            return getFraction(Double.parseDouble(str));
        }
        int iIndexOf = str.indexOf(32);
        if (iIndexOf > 0) {
            int i = Integer.parseInt(str.substring(0, iIndexOf));
            String strSubstring = str.substring(iIndexOf + 1);
            int iIndexOf2 = strSubstring.indexOf(47);
            if (iIndexOf2 < 0) {
                throw new NumberFormatException("The fraction could not be parsed as the format X Y/Z");
            }
            return getFraction(i, Integer.parseInt(strSubstring.substring(0, iIndexOf2)), Integer.parseInt(strSubstring.substring(iIndexOf2 + 1)));
        }
        int iIndexOf3 = str.indexOf(47);
        if (iIndexOf3 < 0) {
            return getFraction(Integer.parseInt(str), 1);
        }
        return getFraction(Integer.parseInt(str.substring(0, iIndexOf3)), Integer.parseInt(str.substring(iIndexOf3 + 1)));
    }

    public int getNumerator() {
        return this.a;
    }

    public int getDenominator() {
        return this.b;
    }

    public int getProperNumerator() {
        return Math.abs(this.a % this.b);
    }

    public int getProperWhole() {
        return this.a / this.b;
    }

    @Override // java.lang.Number
    public int intValue() {
        return this.a / this.b;
    }

    @Override // java.lang.Number
    public long longValue() {
        return ((long) this.a) / ((long) this.b);
    }

    @Override // java.lang.Number
    public float floatValue() {
        return this.a / this.b;
    }

    @Override // java.lang.Number
    public double doubleValue() {
        return ((double) this.a) / ((double) this.b);
    }

    public Fraction reduce() {
        if (this.a == 0) {
            if (!equals(ZERO)) {
                return ZERO;
            }
            return this;
        }
        int iA = a(Math.abs(this.a), this.b);
        return iA != 1 ? getFraction(this.a / iA, this.b / iA) : this;
    }

    public Fraction invert() {
        if (this.a == 0) {
            throw new ArithmeticException("Unable to invert zero.");
        }
        if (this.a == Integer.MIN_VALUE) {
            throw new ArithmeticException("overflow: can't negate numerator");
        }
        return this.a < 0 ? new Fraction(-this.b, -this.a) : new Fraction(this.b, this.a);
    }

    public Fraction negate() {
        if (this.a == Integer.MIN_VALUE) {
            throw new ArithmeticException("overflow: too large to negate");
        }
        return new Fraction(-this.a, this.b);
    }

    public Fraction abs() {
        return this.a >= 0 ? this : negate();
    }

    public Fraction pow(int i) {
        if (i != 1) {
            if (i == 0) {
                return ONE;
            }
            if (i < 0) {
                if (i == Integer.MIN_VALUE) {
                    return invert().pow(2).pow(-(i / 2));
                }
                return invert().pow(-i);
            }
            Fraction fractionMultiplyBy = multiplyBy(this);
            if (i % 2 == 0) {
                return fractionMultiplyBy.pow(i / 2);
            }
            return fractionMultiplyBy.pow(i / 2).multiplyBy(this);
        }
        return this;
    }

    private static int a(int i, int i2) {
        int i3;
        if (i == 0 || i2 == 0) {
            if (i == Integer.MIN_VALUE || i2 == Integer.MIN_VALUE) {
                throw new ArithmeticException("overflow: gcd is 2^31");
            }
            return Math.abs(i) + Math.abs(i2);
        }
        if (Math.abs(i) == 1 || Math.abs(i2) == 1) {
            return 1;
        }
        int i4 = i > 0 ? -i : i;
        if (i2 > 0) {
            i2 = -i2;
        }
        int i5 = 0;
        int i6 = i2;
        while ((i4 & 1) == 0 && (i6 & 1) == 0 && i5 < 31) {
            i4 /= 2;
            i6 /= 2;
            i5++;
        }
        if (i5 == 31) {
            throw new ArithmeticException("overflow: gcd is 2^31");
        }
        int i7 = i6;
        int i8 = (i4 & 1) == 1 ? i6 : -(i4 / 2);
        while (true) {
            if ((i8 & 1) == 0) {
                i8 /= 2;
            } else {
                if (i8 > 0) {
                    i3 = -i8;
                } else {
                    i7 = i8;
                    i3 = i4;
                }
                int i9 = (i7 - i3) / 2;
                if (i9 == 0) {
                    return (-i3) * (1 << i5);
                }
                i4 = i3;
                i8 = i9;
            }
        }
    }

    private static int b(int i, int i2) {
        long j = ((long) i) * ((long) i2);
        if (j < -2147483648L || j > 2147483647L) {
            throw new ArithmeticException("overflow: mul");
        }
        return (int) j;
    }

    private static int c(int i, int i2) {
        long j = ((long) i) * ((long) i2);
        if (j > 2147483647L) {
            throw new ArithmeticException("overflow: mulPos");
        }
        return (int) j;
    }

    private static int d(int i, int i2) {
        long j = ((long) i) + ((long) i2);
        if (j < -2147483648L || j > 2147483647L) {
            throw new ArithmeticException("overflow: add");
        }
        return (int) j;
    }

    private static int e(int i, int i2) {
        long j = ((long) i) - ((long) i2);
        if (j < -2147483648L || j > 2147483647L) {
            throw new ArithmeticException("overflow: add");
        }
        return (int) j;
    }

    public Fraction add(Fraction fraction) {
        return a(fraction, true);
    }

    public Fraction subtract(Fraction fraction) {
        return a(fraction, false);
    }

    private Fraction a(Fraction fraction, boolean z) {
        if (fraction == null) {
            throw new IllegalArgumentException("The fraction must not be null");
        }
        if (this.a == 0) {
            if (!z) {
                return fraction.negate();
            }
            return fraction;
        }
        if (fraction.a == 0) {
            return this;
        }
        int iA = a(this.b, fraction.b);
        if (iA == 1) {
            int iB = b(this.a, fraction.b);
            int iB2 = b(fraction.a, this.b);
            return new Fraction(z ? d(iB, iB2) : e(iB, iB2), c(this.b, fraction.b));
        }
        BigInteger bigIntegerMultiply = BigInteger.valueOf(this.a).multiply(BigInteger.valueOf(fraction.b / iA));
        BigInteger bigIntegerMultiply2 = BigInteger.valueOf(fraction.a).multiply(BigInteger.valueOf(this.b / iA));
        BigInteger bigIntegerAdd = z ? bigIntegerMultiply.add(bigIntegerMultiply2) : bigIntegerMultiply.subtract(bigIntegerMultiply2);
        int iIntValue = bigIntegerAdd.mod(BigInteger.valueOf(iA)).intValue();
        int iA2 = iIntValue == 0 ? iA : a(iIntValue, iA);
        BigInteger bigIntegerDivide = bigIntegerAdd.divide(BigInteger.valueOf(iA2));
        if (bigIntegerDivide.bitLength() > 31) {
            throw new ArithmeticException("overflow: numerator too large after multiply");
        }
        return new Fraction(bigIntegerDivide.intValue(), c(this.b / iA, fraction.b / iA2));
    }

    public Fraction multiplyBy(Fraction fraction) {
        if (fraction == null) {
            throw new IllegalArgumentException("The fraction must not be null");
        }
        if (this.a == 0 || fraction.a == 0) {
            return ZERO;
        }
        int iA = a(this.a, fraction.b);
        int iA2 = a(fraction.a, this.b);
        return getReducedFraction(b(this.a / iA, fraction.a / iA2), c(this.b / iA2, fraction.b / iA));
    }

    public Fraction divideBy(Fraction fraction) {
        if (fraction == null) {
            throw new IllegalArgumentException("The fraction must not be null");
        }
        if (fraction.a == 0) {
            throw new ArithmeticException("The fraction to divide by must not be zero");
        }
        return multiplyBy(fraction.invert());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Fraction)) {
            return false;
        }
        Fraction fraction = (Fraction) obj;
        return getNumerator() == fraction.getNumerator() && getDenominator() == fraction.getDenominator();
    }

    public int hashCode() {
        if (this.c == 0) {
            this.c = ((getNumerator() + 629) * 37) + getDenominator();
        }
        return this.c;
    }

    @Override // java.lang.Comparable
    public int compareTo(Fraction fraction) {
        if (this == fraction) {
            return 0;
        }
        if (this.a == fraction.a && this.b == fraction.b) {
            return 0;
        }
        long j = ((long) this.a) * ((long) fraction.b);
        long j2 = ((long) fraction.a) * ((long) this.b);
        if (j == j2) {
            return 0;
        }
        if (j < j2) {
            return -1;
        }
        return 1;
    }

    public String toString() {
        if (this.d == null) {
            this.d = new StringBuilder(32).append(getNumerator()).append('/').append(getDenominator()).toString();
        }
        return this.d;
    }

    public String toProperString() {
        if (this.e == null) {
            if (this.a == 0) {
                this.e = "0";
            } else if (this.a == this.b) {
                this.e = "1";
            } else if (this.a == this.b * (-1)) {
                this.e = "-1";
            } else {
                if ((this.a > 0 ? -this.a : this.a) < (-this.b)) {
                    int properNumerator = getProperNumerator();
                    if (properNumerator == 0) {
                        this.e = Integer.toString(getProperWhole());
                    } else {
                        this.e = new StringBuilder(32).append(getProperWhole()).append(' ').append(properNumerator).append('/').append(getDenominator()).toString();
                    }
                } else {
                    this.e = new StringBuilder(32).append(getNumerator()).append('/').append(getDenominator()).toString();
                }
            }
        }
        return this.e;
    }
}
