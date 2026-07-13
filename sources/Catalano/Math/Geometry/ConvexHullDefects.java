package Catalano.Math.Geometry;

import Catalano.Core.IntPoint;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class ConvexHullDefects {
    private double a;

    public ConvexHullDefects(double d) {
        this.a = d;
    }

    public double getMinimumDepth() {
        return this.a;
    }

    public void setMinimumDepth(double d) {
        this.a = d;
    }

    public ArrayList<ConvexityDefect> FindDefects(ArrayList<IntPoint> arrayList, ArrayList<IntPoint> arrayList2) {
        try {
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (arrayList.size() < 4) {
            throw new Exception("Point sequence size should have at least 4 points.");
        }
        if (arrayList2.size() < 3) {
            throw new Exception("Convex hull must have at least 3 points.");
        }
        int[] iArr = new int[arrayList2.size()];
        int i = 0;
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            if (arrayList2.contains(arrayList.get(i2))) {
                iArr[i] = i2;
                i++;
            }
        }
        ArrayList<ConvexityDefect> arrayList3 = new ArrayList<>();
        for (int i3 = 0; i3 < iArr.length - 1; i3++) {
            ConvexityDefect convexityDefectA = a(arrayList, iArr[i3], iArr[i3 + 1]);
            if (convexityDefectA.getDepth() > this.a) {
                arrayList3.add(convexityDefectA);
            }
        }
        return arrayList3;
    }

    private ConvexityDefect a(ArrayList<IntPoint> arrayList, int i, int i2) {
        int i3;
        Line lineFromPoints = Line.FromPoints(arrayList.get(i), arrayList.get(i2));
        double d = 0.0d;
        int i4 = 0;
        int i5 = i;
        while (i5 < i2) {
            double dDistanceToPoint = lineFromPoints.DistanceToPoint(arrayList.get(i5));
            if (dDistanceToPoint > d) {
                i3 = i5;
                d = dDistanceToPoint;
            } else {
                i3 = i4;
            }
            i5++;
            i4 = i3;
        }
        return new ConvexityDefect(arrayList.get(i4), i, i2, d);
    }
}
