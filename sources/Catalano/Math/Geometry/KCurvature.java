package Catalano.Math.Geometry;

import Catalano.Core.DoublePoint;
import Catalano.Core.DoubleRange;
import Catalano.Core.IntPoint;
import Catalano.Math.Tools;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class KCurvature {
    public int k;
    public int suppression;
    public DoubleRange theta;

    public KCurvature(int i, DoubleRange doubleRange) {
        this.k = i;
        this.theta = doubleRange;
    }

    public ArrayList<IntPoint> FindPeaks(ArrayList<IntPoint> arrayList) {
        double[] dArr = new double[arrayList.size()];
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= arrayList.size()) {
                break;
            }
            int iMod = Tools.Mod(this.k + i2, arrayList.size());
            int iMod2 = Tools.Mod(i2 - this.k, arrayList.size());
            IntPoint intPoint = arrayList.get(iMod);
            IntPoint intPoint2 = arrayList.get(i2);
            IntPoint intPoint3 = arrayList.get(iMod2);
            DoublePoint doublePoint = new DoublePoint(intPoint2.x - intPoint.x, intPoint2.y - intPoint.y);
            DoublePoint doublePoint2 = new DoublePoint(intPoint2.x - intPoint3.x, intPoint2.y - intPoint3.y);
            double dAtan2 = Math.atan2(doublePoint.y, doublePoint.x) - Math.atan2(doublePoint2.y, doublePoint2.x);
            if (dAtan2 < 0.0d) {
                dAtan2 += 6.283185307179586d;
            }
            double d = (dAtan2 * 180.0d) / 3.141592653589793d;
            if (this.theta.isInside(d)) {
                dArr[i2] = d;
            }
            i = i2 + 1;
        }
        int i3 = this.suppression;
        ArrayList<IntPoint> arrayList2 = new ArrayList<>();
        for (int i4 = 0; i4 < dArr.length; i4++) {
            double d2 = dArr[i4];
            if (d2 != 0.0d) {
                boolean z = true;
                for (int i5 = -i3; i5 < i3 && z; i5++) {
                    int iMod3 = Tools.Mod(i4 + i5, dArr.length);
                    double d3 = dArr[iMod3];
                    if (d3 != 0.0d) {
                        if (d3 < d2) {
                            z = false;
                        } else {
                            dArr[iMod3] = 0.0d;
                        }
                    }
                }
                if (z) {
                    arrayList2.add(arrayList.get(i4));
                }
            }
        }
        return arrayList2;
    }
}
