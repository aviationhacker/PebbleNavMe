package Catalano.Imaging.Tools;

import Catalano.Core.IntPoint;
import Catalano.Imaging.FastBitmap;
import Catalano.Imaging.Filters.DistanceTransform;
import Catalano.Imaging.Filters.Invert;
import Catalano.Math.Distances.Distance;
import Catalano.Math.Matrix;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class ShapeDescriptors {
    private ShapeDescriptors() {
    }

    public static int Area(FastBitmap fastBitmap) {
        int i = 0;
        for (int i2 = 0; i2 < fastBitmap.getHeight(); i2++) {
            int i3 = 0;
            while (i3 < fastBitmap.getWidth()) {
                int i4 = fastBitmap.getGray(i2, i3) == 255 ? i + 1 : i;
                i3++;
                i = i4;
            }
        }
        return i;
    }

    public static double AreaEquivalentDiameter(int i) {
        return Math.sqrt(1.2732395447351628d * ((double) i));
    }

    public double Circularity(int i, int i2) {
        return (12.566370614359172d * ((double) i)) / ((double) (i2 * i2));
    }

    public double Compactness(int i, double d) {
        return AreaEquivalentDiameter(i) / d;
    }

    public static int EulerNumber(FastBitmap fastBitmap) {
        new Invert().applyInPlace(fastBitmap);
        int size = new BlobDetection().ProcessImage(fastBitmap).size() - 1;
        if (size < 0) {
            return 0;
        }
        return size;
    }

    public static double FeretDiameter(List<IntPoint> list) {
        double d = 0.0d;
        for (IntPoint intPoint : list) {
            double d2 = d;
            for (IntPoint intPoint2 : list) {
                double dSquaredEuclidean = Distance.SquaredEuclidean(intPoint.x, intPoint.y, intPoint2.x, intPoint2.y);
                if (dSquaredEuclidean > d2) {
                    d2 = dSquaredEuclidean;
                }
            }
            d = d2;
        }
        return Math.sqrt(d);
    }

    public static List<IntPoint> FeretPoints(List<IntPoint> list) {
        ArrayList arrayList = new ArrayList();
        IntPoint intPoint = new IntPoint();
        IntPoint intPoint2 = new IntPoint();
        IntPoint intPoint3 = intPoint;
        double d = 0.0d;
        IntPoint intPoint4 = intPoint2;
        for (IntPoint intPoint5 : list) {
            double d2 = d;
            IntPoint intPoint6 = intPoint4;
            IntPoint intPoint7 = intPoint3;
            for (IntPoint intPoint8 : list) {
                double dSquaredEuclidean = Distance.SquaredEuclidean(intPoint5.x, intPoint5.y, intPoint8.x, intPoint8.y);
                if (dSquaredEuclidean > d2) {
                    d2 = dSquaredEuclidean;
                    intPoint6 = intPoint8;
                    intPoint7 = intPoint5;
                }
            }
            d = d2;
            intPoint4 = intPoint6;
            intPoint3 = intPoint7;
        }
        arrayList.add(intPoint3);
        arrayList.add(intPoint4);
        return arrayList;
    }

    public static double Irregularity(double d) {
        return 1.0d / d;
    }

    public static double MaximumErrorCircularity(double d, double d2) {
        return d - d2;
    }

    public static double MaximumInscribedCircle(FastBitmap fastBitmap) {
        return Matrix.Max(new DistanceTransform().Compute(fastBitmap));
    }

    public static double MinimumCircumscribedCircle(IntPoint intPoint, ArrayList<IntPoint> arrayList) {
        double dSquaredEuclidean = Double.MIN_VALUE;
        Iterator<IntPoint> it = arrayList.iterator();
        while (true) {
            double d = dSquaredEuclidean;
            if (it.hasNext()) {
                dSquaredEuclidean = Distance.SquaredEuclidean(it.next(), intPoint);
                if (dSquaredEuclidean <= d) {
                    dSquaredEuclidean = d;
                }
            } else {
                return Math.sqrt(d);
            }
        }
    }

    public static IntPoint StarPoint(FastBitmap fastBitmap) {
        return Matrix.MaxIndex(new DistanceTransform().Compute(fastBitmap));
    }

    public static double PerimeterEquivalentDiameter(int i) {
        return ((double) i) / 3.141592653589793d;
    }

    public static double Roundness(int i, double d) {
        return ((double) (i * 4)) / (3.141592653589793d * (d * d));
    }

    public static double Shape(int i, int i2) {
        return (i2 * i2) / i;
    }

    public static double ThinnessRatio(int i, int i2) {
        return 12.566370614359172d * ((double) (i / i2));
    }
}
