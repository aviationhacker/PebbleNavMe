package Catalano.Math;

import java.math.BigInteger;

/* JADX INFO: loaded from: classes.dex */
public class RationalNumber {
    boolean a;
    private BigInteger b;
    private BigInteger c;

    public BigInteger getNumerator() {
        return this.b;
    }

    public void setNumerator(BigInteger bigInteger) {
        this.b = bigInteger;
    }

    public BigInteger getDenominator() {
        return this.c;
    }

    public void setDenominator(BigInteger bigInteger) {
        this.c = bigInteger;
    }

    public boolean isAlwaysFactorize() {
        return this.a;
    }

    public void setAlwaysFactorize(boolean z) {
        this.a = z;
    }

    public RationalNumber(int i) {
        this.a = true;
        this.b = new BigInteger(String.valueOf(i));
        this.c = new BigInteger("1");
    }

    public RationalNumber(int i, int i2) {
        this(new BigInteger(String.valueOf(i)), new BigInteger(String.valueOf(i2)));
    }

    public RationalNumber(BigInteger bigInteger) {
        this.a = true;
        this.b = bigInteger;
        this.c = new BigInteger("1");
    }

    public RationalNumber(BigInteger bigInteger, BigInteger bigInteger2) {
        this.a = true;
        this.b = bigInteger;
        this.c = bigInteger2;
        if (bigInteger2.compareTo(new BigInteger("0")) == 0) {
            throw new IllegalArgumentException("The denominator must be different from zero.");
        }
        if (bigInteger2.compareTo(new BigInteger("0")) < 0) {
            this.b = this.b.multiply(new BigInteger("-1"));
            this.c = this.c.multiply(new BigInteger("-1"));
        }
        if (this.a) {
            Factorize();
        }
    }

    public static RationalNumber Abs(RationalNumber rationalNumber) {
        return new RationalNumber(rationalNumber.getNumerator().abs(), rationalNumber.getDenominator());
    }

    public static RationalNumber Add(RationalNumber rationalNumber, RationalNumber rationalNumber2) {
        RationalNumber rationalNumber3 = new RationalNumber(rationalNumber.getNumerator(), rationalNumber.getDenominator());
        rationalNumber3.Add(rationalNumber2);
        return rationalNumber3;
    }

    public void Abs() {
        this.b = this.b.abs();
    }

    public void Add(int i) {
        Add(new RationalNumber(i));
    }

    public void Add(int i, int i2) {
        Add(new RationalNumber(i, i2));
    }

    public void Add(BigInteger bigInteger) {
        Add(new RationalNumber(bigInteger));
    }

    public void Add(BigInteger bigInteger, BigInteger bigInteger2) {
        Add(new RationalNumber(bigInteger, bigInteger2));
    }

    public void Add(RationalNumber rationalNumber) {
        BigInteger bigIntegerMultiply = this.c.multiply(rationalNumber.getDenominator());
        this.b = this.b.multiply(rationalNumber.getDenominator()).add(rationalNumber.getNumerator().multiply(this.c));
        this.c = bigIntegerMultiply;
        if (this.a) {
            Factorize();
        }
    }

    public static RationalNumber Divide(RationalNumber rationalNumber, RationalNumber rationalNumber2) {
        RationalNumber rationalNumber3 = new RationalNumber(rationalNumber.getNumerator(), rationalNumber.getDenominator());
        rationalNumber3.Divide(rationalNumber2);
        return rationalNumber3;
    }

    public void Divide(int i) {
        Divide(new RationalNumber(i));
    }

    public void Divide(int i, int i2) {
        Divide(new RationalNumber(i, i2));
    }

    public void Divide(BigInteger bigInteger) {
        Divide(new RationalNumber(bigInteger, new BigInteger("1")));
    }

    public void Divide(BigInteger bigInteger, BigInteger bigInteger2) {
        Divide(new RationalNumber(bigInteger, bigInteger2));
    }

    public void Divide(RationalNumber rationalNumber) {
        Multiply(rationalNumber.c, rationalNumber.b);
    }

    public static RationalNumber Multiply(RationalNumber rationalNumber, RationalNumber rationalNumber2) {
        RationalNumber rationalNumber3 = new RationalNumber(rationalNumber.getNumerator(), rationalNumber.getDenominator());
        rationalNumber3.Multiply(rationalNumber2);
        return rationalNumber3;
    }

    public void Multiply(int i) {
        Multiply(new RationalNumber(i));
    }

    public void Multiply(int i, int i2) {
        Multiply(new RationalNumber(i, i2));
    }

    public void Multiply(BigInteger bigInteger) {
        Multiply(new RationalNumber(bigInteger));
    }

    public void Multiply(BigInteger bigInteger, BigInteger bigInteger2) {
        Multiply(new RationalNumber(bigInteger, bigInteger2));
    }

    public void Multiply(RationalNumber rationalNumber) {
        this.b = this.b.multiply(rationalNumber.b);
        this.c = this.c.multiply(rationalNumber.c);
        if (this.c.compareTo(new BigInteger("0")) < 0) {
            this.b = this.b.multiply(new BigInteger("-1"));
            this.c = this.c.multiply(new BigInteger("-1"));
        }
        if (this.a) {
            Factorize();
        }
    }

    public static RationalNumber Pow(RationalNumber rationalNumber, int i) {
        RationalNumber rationalNumber2 = new RationalNumber(rationalNumber.getNumerator(), rationalNumber.getDenominator());
        for (int i2 = 1; i2 < i; i2++) {
            rationalNumber2 = Multiply(rationalNumber2, rationalNumber);
        }
        return rationalNumber2;
    }

    public void pow(int i) {
        RationalNumber rationalNumber = new RationalNumber(this.b, this.c);
        for (int i2 = 1; i2 < i; i2++) {
            this.b = this.b.multiply(rationalNumber.b);
            this.c = this.c.multiply(rationalNumber.c);
        }
    }

    public static RationalNumber Subtract(RationalNumber rationalNumber, RationalNumber rationalNumber2) {
        RationalNumber rationalNumber3 = new RationalNumber(rationalNumber.getNumerator(), rationalNumber.getDenominator());
        rationalNumber3.Subtract(rationalNumber2);
        return rationalNumber3;
    }

    public void Subtract(int i) {
        Subtract(new RationalNumber(i));
    }

    public void Subtract(int i, int i2) {
        Subtract(new RationalNumber(i, i2));
    }

    public void Subtract(BigInteger bigInteger) {
        Subtract(new RationalNumber(bigInteger));
    }

    public void Subtract(BigInteger bigInteger, BigInteger bigInteger2) {
        Subtract(new RationalNumber(bigInteger, bigInteger2));
    }

    public void Subtract(RationalNumber rationalNumber) {
        BigInteger bigIntegerMultiply = this.c.multiply(rationalNumber.getDenominator());
        this.b = this.b.multiply(rationalNumber.getDenominator()).subtract(rationalNumber.getNumerator().multiply(this.c));
        this.c = bigIntegerMultiply;
        if (this.a) {
            Factorize();
        }
    }

    public void Factorize() {
        BigInteger bigIntegerGcd = this.b.gcd(this.c);
        this.b = this.b.divide(bigIntegerGcd);
        this.c = this.c.divide(bigIntegerGcd);
    }

    public void Swap() {
        BigInteger bigInteger = this.b;
        this.b = this.c;
        this.c = bigInteger;
    }

    public double doubleValue() {
        return this.b.doubleValue() / this.c.doubleValue();
    }

    public String toString() {
        return this.b.toString() + " / " + this.c.toString();
    }
}
