package Catalano.Statistics.Regression;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class RegressionAnalysis {
    private int a;
    private int b;
    private boolean c;

    public int getMaxDegree() {
        return this.a;
    }

    public void setMaxDegree(int i) {
        this.a = Math.max(i, 2);
    }

    public int getUsedDegree() {
        return this.b;
    }

    public boolean isUsePolynomial() {
        return this.c;
    }

    public void setUsePolynomial(boolean z) {
        this.c = z;
    }

    public RegressionAnalysis() {
        this(2);
    }

    public RegressionAnalysis(int i) {
        this.a = 2;
        this.b = 0;
        this.c = true;
        this.c = true;
        setMaxDegree(i);
    }

    public RegressionAnalysis(boolean z) {
        this.a = 2;
        this.b = 0;
        this.c = true;
        this.c = z;
        setMaxDegree(2);
    }

    public ISimpleRegression BestFit(double[] dArr, double[] dArr2) {
        ISimpleRegression iSimpleRegression;
        double d;
        ArrayList<ISimpleRegression> arrayList = new ArrayList();
        arrayList.add(new LinearRegression(dArr, dArr2));
        arrayList.add(new LogarithmicRegression(dArr, dArr2));
        arrayList.add(new ExponentialRegression(dArr, dArr2));
        arrayList.add(new PowerRegression(dArr, dArr2));
        ISimpleRegression iSimpleRegression2 = null;
        double d2 = 0.0d;
        for (ISimpleRegression iSimpleRegression3 : arrayList) {
            double dCoefficientOfDetermination = iSimpleRegression3.CoefficientOfDetermination();
            if (dCoefficientOfDetermination == 1.0d) {
                return iSimpleRegression3;
            }
            if (dCoefficientOfDetermination > d2) {
                iSimpleRegression = iSimpleRegression3;
                d = dCoefficientOfDetermination;
            } else {
                iSimpleRegression = iSimpleRegression2;
                d = d2;
            }
            d2 = d;
            iSimpleRegression2 = iSimpleRegression;
        }
        if (this.c) {
            PolynomialRegression polynomialRegression = new PolynomialRegression(dArr, dArr2, 2);
            double dCoefficientOfDetermination2 = polynomialRegression.CoefficientOfDetermination();
            if (dCoefficientOfDetermination2 != 1.0d) {
                if (dCoefficientOfDetermination2 > d2) {
                    this.b = 2;
                    d2 = dCoefficientOfDetermination2;
                    iSimpleRegression2 = polynomialRegression;
                }
                for (int i = 3; i <= this.a; i++) {
                    PolynomialRegression polynomialRegression2 = new PolynomialRegression(dArr, dArr2, i);
                    double dCoefficientOfDetermination3 = polynomialRegression2.CoefficientOfDetermination();
                    if (dCoefficientOfDetermination3 == 1.0d) {
                        return polynomialRegression2;
                    }
                    if (dCoefficientOfDetermination3 > d2) {
                        this.b = i;
                        d2 = dCoefficientOfDetermination3;
                        iSimpleRegression2 = polynomialRegression2;
                    }
                }
            } else {
                return polynomialRegression;
            }
        }
        return iSimpleRegression2;
    }

    public ISimpleRegression BestFit(List<ISimpleRegression> list) {
        ISimpleRegression iSimpleRegression;
        double d;
        ISimpleRegression iSimpleRegression2 = null;
        double d2 = 0.0d;
        for (ISimpleRegression iSimpleRegression3 : list) {
            double dCoefficientOfDetermination = iSimpleRegression3.CoefficientOfDetermination();
            if (dCoefficientOfDetermination > d2) {
                iSimpleRegression = iSimpleRegression3;
                d = dCoefficientOfDetermination;
            } else {
                iSimpleRegression = iSimpleRegression2;
                d = d2;
            }
            d2 = d;
            iSimpleRegression2 = iSimpleRegression;
        }
        return iSimpleRegression2;
    }
}
