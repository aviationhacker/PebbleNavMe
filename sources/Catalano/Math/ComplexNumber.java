package Catalano.Math;

import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public class ComplexNumber {
    public double imaginary;
    public double real;

    public ComplexNumber() {
        this(0.0d, 0.0d);
    }

    public ComplexNumber(double d, double d2) {
        this.real = 0.0d;
        this.imaginary = 0.0d;
        this.real = d;
        this.imaginary = d2;
    }

    public ComplexNumber(ComplexNumber complexNumber) {
        this.real = 0.0d;
        this.imaginary = 0.0d;
        this.real = complexNumber.real;
        this.imaginary = complexNumber.imaginary;
    }

    public double getMagnitude() {
        return Math.sqrt((this.real * this.real) + (this.imaginary * this.imaginary));
    }

    public double getSquaredMagnitude() {
        return (this.real * this.real) + (this.imaginary * this.imaginary);
    }

    public double getPhase() {
        return Math.atan2(this.imaginary, this.real);
    }

    public static double[] getReal(ComplexNumber[] complexNumberArr) {
        double[] dArr = new double[complexNumberArr.length];
        for (int i = 0; i < dArr.length; i++) {
            dArr[i] = complexNumberArr[i].real;
        }
        return dArr;
    }

    public static double[] getImaginary(ComplexNumber[] complexNumberArr) {
        double[] dArr = new double[complexNumberArr.length];
        for (int i = 0; i < dArr.length; i++) {
            dArr[i] = complexNumberArr[i].imaginary;
        }
        return dArr;
    }

    public static double[][] getReal(ComplexNumber[][] complexNumberArr) {
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, complexNumberArr.length, complexNumberArr[0].length);
        for (int i = 0; i < dArr.length; i++) {
            for (int i2 = 0; i2 < dArr[0].length; i2++) {
                dArr[i][i2] = complexNumberArr[i][i2].real;
            }
        }
        return dArr;
    }

    public static double[][] getImaginary(ComplexNumber[][] complexNumberArr) {
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, complexNumberArr.length, complexNumberArr[0].length);
        for (int i = 0; i < dArr.length; i++) {
            for (int i2 = 0; i2 < dArr[0].length; i2++) {
                dArr[i][i2] = complexNumberArr[i][i2].imaginary;
            }
        }
        return dArr;
    }

    public static void Swap(ComplexNumber complexNumber) {
        double d = complexNumber.real;
        complexNumber.real = complexNumber.imaginary;
        complexNumber.imaginary = d;
    }

    public static void Swap(ComplexNumber[] complexNumberArr) {
        for (int i = 0; i < complexNumberArr.length; i++) {
            complexNumberArr[i] = new ComplexNumber(complexNumberArr[i].imaginary, complexNumberArr[i].real);
        }
    }

    public static void Swap(ComplexNumber[][] complexNumberArr) {
        for (int i = 0; i < complexNumberArr.length; i++) {
            for (int i2 = 0; i2 < complexNumberArr[0].length; i2++) {
                complexNumberArr[i][i2] = new ComplexNumber(complexNumberArr[i][i2].imaginary, complexNumberArr[i][i2].real);
            }
        }
    }

    public static double Abs(ComplexNumber complexNumber) {
        return Magnitude(complexNumber);
    }

    public static double[] Abs(ComplexNumber[] complexNumberArr) {
        double[] dArr = new double[complexNumberArr.length];
        for (int i = 0; i < dArr.length; i++) {
            dArr[i] = complexNumberArr[i].getMagnitude();
        }
        return dArr;
    }

    public static double[][] Abs(ComplexNumber[][] complexNumberArr) {
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, complexNumberArr.length, complexNumberArr[0].length);
        for (int i = 0; i < dArr.length; i++) {
            for (int i2 = 0; i2 < dArr[0].length; i2++) {
                dArr[i][i2] = complexNumberArr[i][i2].getMagnitude();
            }
        }
        return dArr;
    }

    public static ComplexNumber Add(ComplexNumber complexNumber, ComplexNumber complexNumber2) {
        return new ComplexNumber(complexNumber.real + complexNumber2.real, complexNumber.imaginary + complexNumber2.imaginary);
    }

    public static ComplexNumber Add(ComplexNumber complexNumber, double d) {
        return new ComplexNumber(complexNumber.real + d, complexNumber.imaginary);
    }

    public void Add(double d) {
        this.real += d;
    }

    public static ComplexNumber Subtract(ComplexNumber complexNumber, ComplexNumber complexNumber2) {
        return new ComplexNumber(complexNumber.real - complexNumber2.real, complexNumber.imaginary - complexNumber2.imaginary);
    }

    public static ComplexNumber Subtract(ComplexNumber complexNumber, double d) {
        return new ComplexNumber(complexNumber.real - d, complexNumber.imaginary);
    }

    public void Subtract(double d) {
        this.real -= d;
    }

    public static double Magnitude(ComplexNumber complexNumber) {
        return Math.sqrt((complexNumber.real * complexNumber.real) + (complexNumber.imaginary * complexNumber.imaginary));
    }

    public static ComplexNumber Multiply(ComplexNumber complexNumber, ComplexNumber complexNumber2) {
        double d = complexNumber.real;
        double d2 = complexNumber.imaginary;
        double d3 = complexNumber2.real;
        double d4 = complexNumber2.imaginary;
        return new ComplexNumber((d * d3) - (d2 * d4), (d * d4) + (d2 * d3));
    }

    public static ComplexNumber Multiply(ComplexNumber complexNumber, double d) {
        return new ComplexNumber(complexNumber.real * d, complexNumber.imaginary * d);
    }

    public void Multiply(double d) {
        this.real *= d;
        this.imaginary *= d;
    }

    public static ComplexNumber Divide(ComplexNumber complexNumber, ComplexNumber complexNumber2) {
        ComplexNumber complexNumberConjugate = Conjugate(complexNumber2);
        double d = (complexNumber.real * complexNumberConjugate.real) + (complexNumber.imaginary * complexNumberConjugate.imaginary * (-1.0d));
        double d2 = (complexNumber.real * complexNumberConjugate.imaginary) + (complexNumber.imaginary * complexNumberConjugate.real);
        double d3 = (complexNumberConjugate.imaginary * complexNumber2.imaginary * (-1.0d)) + (complexNumber2.real * complexNumberConjugate.real);
        return new ComplexNumber(d / d3, d2 / d3);
    }

    public void Divide(ComplexNumber complexNumber) {
        ComplexNumber complexNumberConjugate = Conjugate(complexNumber);
        double d = (this.real * complexNumberConjugate.real) + (this.imaginary * complexNumberConjugate.imaginary * (-1.0d));
        double d2 = (this.real * complexNumberConjugate.imaginary) + (this.imaginary * complexNumberConjugate.real);
        double d3 = (complexNumberConjugate.imaginary * complexNumber.imaginary * (-1.0d)) + (complexNumber.real * complexNumberConjugate.real);
        this.real = d / d3;
        this.imaginary = d2 / d3;
    }

    public static ComplexNumber Divide(ComplexNumber complexNumber, double d) {
        return new ComplexNumber(complexNumber.real / d, complexNumber.imaginary / d);
    }

    public void Divide(double d) {
        if (d == 0.0d) {
            try {
                throw new ArithmeticException("Can not divide by zero.");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        this.real /= d;
        this.imaginary /= d;
    }

    public static ComplexNumber Pow(ComplexNumber complexNumber, double d) {
        double dPow = Math.pow(complexNumber.getMagnitude(), d);
        double dAbs = (360.0d - Math.abs(Math.toDegrees(Math.atan(complexNumber.imaginary / complexNumber.real)))) * d;
        return new ComplexNumber(Math.cos(Math.toRadians(dAbs)) * dPow, dPow * Math.sin(Math.toRadians(dAbs)));
    }

    public void Pow(double d) {
        double dPow = Math.pow(getMagnitude(), d);
        double dAbs = (360.0d - Math.abs(Math.toDegrees(Math.atan(this.imaginary / this.real)))) * d;
        this.real = Math.cos(Math.toRadians(dAbs)) * dPow;
        this.imaginary = dPow * Math.sin(Math.toRadians(dAbs));
    }

    public static ComplexNumber Log(ComplexNumber complexNumber) {
        ComplexNumber complexNumber2 = new ComplexNumber();
        if (complexNumber.real > 0.0d && complexNumber.imaginary == 0.0d) {
            complexNumber2.real = Math.log(complexNumber.real);
            complexNumber2.imaginary = 0.0d;
        } else if (complexNumber.real != 0.0d) {
            complexNumber2.real = Math.log(complexNumber.getMagnitude());
            complexNumber2.imaginary = Math.atan2(complexNumber.imaginary, complexNumber.real);
        } else if (complexNumber.imaginary > 0.0d) {
            complexNumber2.real = Math.log(complexNumber.imaginary);
            complexNumber2.imaginary = 1.5707963267948966d;
        } else {
            complexNumber2.real = Math.log(-complexNumber.imaginary);
            complexNumber2.imaginary = -1.5707963267948966d;
        }
        return complexNumber2;
    }

    public static ComplexNumber Exp(ComplexNumber complexNumber) {
        return Multiply(new ComplexNumber(Math.exp(complexNumber.real), 0.0d), new ComplexNumber(Math.cos(complexNumber.imaginary), Math.sin(complexNumber.imaginary)));
    }

    public static ComplexNumber Sin(ComplexNumber complexNumber) {
        ComplexNumber complexNumber2 = new ComplexNumber();
        if (complexNumber.imaginary == 0.0d) {
            complexNumber2.real = Math.sin(complexNumber.real);
            complexNumber2.imaginary = 0.0d;
        } else {
            complexNumber2.real = Math.sin(complexNumber.real) * Math.cosh(complexNumber.imaginary);
            complexNumber2.imaginary = Math.cos(complexNumber.real) * Math.sinh(complexNumber.imaginary);
        }
        return complexNumber2;
    }

    public static ComplexNumber Cos(ComplexNumber complexNumber) {
        ComplexNumber complexNumber2 = new ComplexNumber();
        if (complexNumber.imaginary == 0.0d) {
            complexNumber2.real = Math.cos(complexNumber.real);
            complexNumber2.imaginary = 0.0d;
        } else {
            complexNumber2.real = Math.cos(complexNumber.real) * Math.cosh(complexNumber.imaginary);
            complexNumber2.imaginary = (-Math.sin(complexNumber.real)) * Math.sinh(complexNumber.imaginary);
        }
        return complexNumber2;
    }

    public static ComplexNumber Tan(ComplexNumber complexNumber) {
        ComplexNumber complexNumber2 = new ComplexNumber();
        if (complexNumber.imaginary == 0.0d) {
            complexNumber2.real = Math.tan(complexNumber.real);
            complexNumber2.imaginary = 0.0d;
        } else {
            double d = complexNumber.real * 2.0d;
            double d2 = complexNumber.imaginary * 2.0d;
            double dCos = Math.cos(d) + Math.cosh(d);
            complexNumber2.real = Math.sin(d) / dCos;
            complexNumber2.imaginary = Math.sinh(d2) / dCos;
        }
        return complexNumber2;
    }

    public void Conjugate() {
        this.imaginary *= -1.0d;
    }

    public static ComplexNumber Conjugate(ComplexNumber complexNumber) {
        return new ComplexNumber(complexNumber.real, complexNumber.imaginary * (-1.0d));
    }

    public String toString() {
        return this.imaginary >= 0.0d ? this.real + " +" + this.imaginary + "i" : this.real + " " + this.imaginary + "i";
    }
}
