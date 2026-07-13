package Catalano.Math.Geometry;

import Catalano.Core.IntPoint;
import java.lang.reflect.Array;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class QuadrilateralTransformationCalc {
    private QuadrilateralTransformationCalc() {
    }

    private static double a(double d, double d2, double d3, double d4) {
        return (d * d4) - (d2 * d3);
    }

    private static double[][] a(double[][] dArr, double[][] dArr2) {
        double[][] dArr3 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, 3, 3);
        dArr3[0][0] = (dArr[0][0] * dArr2[0][0]) + (dArr[0][1] * dArr2[1][0]) + (dArr[0][2] * dArr2[2][0]);
        dArr3[0][1] = (dArr[0][0] * dArr2[0][1]) + (dArr[0][1] * dArr2[1][1]) + (dArr[0][2] * dArr2[2][1]);
        dArr3[0][2] = (dArr[0][0] * dArr2[0][2]) + (dArr[0][1] * dArr2[1][2]) + (dArr[0][2] * dArr2[2][2]);
        dArr3[1][0] = (dArr[1][0] * dArr2[0][0]) + (dArr[1][1] * dArr2[1][0]) + (dArr[1][2] * dArr2[2][0]);
        dArr3[1][1] = (dArr[1][0] * dArr2[0][1]) + (dArr[1][1] * dArr2[1][1]) + (dArr[1][2] * dArr2[2][1]);
        dArr3[1][2] = (dArr[1][0] * dArr2[0][2]) + (dArr[1][1] * dArr2[1][2]) + (dArr[1][2] * dArr2[2][2]);
        dArr3[2][0] = (dArr[2][0] * dArr2[0][0]) + (dArr[2][1] * dArr2[1][0]) + (dArr[2][2] * dArr2[2][0]);
        dArr3[2][1] = (dArr[2][0] * dArr2[0][1]) + (dArr[2][1] * dArr2[1][1]) + (dArr[2][2] * dArr2[2][1]);
        dArr3[2][2] = (dArr[2][0] * dArr2[0][2]) + (dArr[2][1] * dArr2[1][2]) + (dArr[2][2] * dArr2[2][2]);
        return dArr3;
    }

    private static double[][] a(double[][] dArr) {
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, 3, 3);
        dArr2[0][0] = a(dArr[1][1], dArr[1][2], dArr[2][1], dArr[2][2]);
        dArr2[1][0] = a(dArr[1][2], dArr[1][0], dArr[2][2], dArr[2][0]);
        dArr2[2][0] = a(dArr[1][0], dArr[1][1], dArr[2][0], dArr[2][1]);
        dArr2[0][1] = a(dArr[2][1], dArr[2][2], dArr[0][1], dArr[0][2]);
        dArr2[1][1] = a(dArr[2][2], dArr[2][0], dArr[0][2], dArr[0][0]);
        dArr2[2][1] = a(dArr[2][0], dArr[2][1], dArr[0][0], dArr[0][1]);
        dArr2[0][2] = a(dArr[0][1], dArr[0][2], dArr[1][1], dArr[1][2]);
        dArr2[1][2] = a(dArr[0][2], dArr[0][0], dArr[1][2], dArr[1][0]);
        dArr2[2][2] = a(dArr[0][0], dArr[0][1], dArr[1][0], dArr[1][1]);
        return dArr2;
    }

    private static double[][] a(ArrayList<IntPoint> arrayList) {
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, 3, 3);
        double d = ((arrayList.get(0).x - arrayList.get(1).x) + arrayList.get(2).x) - arrayList.get(3).x;
        double d2 = ((arrayList.get(0).y - arrayList.get(1).y) + arrayList.get(2).y) - arrayList.get(3).y;
        if (d < 1.0E-13d && d > -1.0E-13d && d2 < 1.0E-13d && d2 > -1.0E-13d) {
            dArr[0][0] = arrayList.get(1).x - arrayList.get(0).x;
            dArr[0][1] = arrayList.get(2).x - arrayList.get(1).x;
            dArr[0][2] = arrayList.get(0).x;
            dArr[1][0] = arrayList.get(1).y - arrayList.get(0).y;
            dArr[1][1] = arrayList.get(2).y - arrayList.get(1).y;
            dArr[1][2] = arrayList.get(0).y;
            dArr[2][0] = 0.0d;
            dArr[2][1] = 0.0d;
            dArr[2][2] = 1.0d;
        } else {
            double d3 = arrayList.get(1).x - arrayList.get(2).x;
            double d4 = arrayList.get(3).x - arrayList.get(2).x;
            double d5 = arrayList.get(1).y - arrayList.get(2).y;
            double d6 = arrayList.get(3).y - arrayList.get(2).y;
            double dA = a(d3, d4, d5, d6);
            if (dA == 0.0d) {
                return (double[][]) null;
            }
            dArr[2][0] = a(d, d4, d2, d6) / dA;
            dArr[2][1] = a(d3, d, d5, d2) / dA;
            dArr[2][2] = 1.0d;
            dArr[0][0] = ((double) (arrayList.get(1).x - arrayList.get(0).x)) + (dArr[2][0] * ((double) arrayList.get(1).x));
            dArr[0][1] = ((double) (arrayList.get(3).x - arrayList.get(0).x)) + (dArr[2][1] * ((double) arrayList.get(3).x));
            dArr[0][2] = arrayList.get(0).x;
            dArr[1][0] = ((double) (arrayList.get(1).y - arrayList.get(0).y)) + (dArr[2][0] * ((double) arrayList.get(1).y));
            dArr[1][1] = ((double) (arrayList.get(3).y - arrayList.get(0).y)) + (dArr[2][1] * ((double) arrayList.get(3).y));
            dArr[1][2] = arrayList.get(0).y;
        }
        return dArr;
    }

    public static double[][] MapQuadToQuad(ArrayList<IntPoint> arrayList, ArrayList<IntPoint> arrayList2) {
        double[][] dArrA = a(arrayList);
        double[][] dArrA2 = a(arrayList2);
        return dArrA2 == null ? (double[][]) null : a(dArrA2, a(dArrA));
    }
}
