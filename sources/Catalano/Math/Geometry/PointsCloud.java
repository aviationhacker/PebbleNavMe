package Catalano.Math.Geometry;

import Catalano.Core.FloatPoint;
import Catalano.Core.IntPoint;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class PointsCloud {
    private static float a = 0.1f;

    private PointsCloud() {
    }

    public static void Shift(ArrayList<IntPoint> arrayList, IntPoint intPoint) {
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            IntPoint intPoint2 = arrayList.get(i);
            intPoint2.Add(intPoint);
            arrayList.set(i, intPoint2);
        }
    }

    public static ArrayList<IntPoint> GetBoundingRectangle(ArrayList<IntPoint> arrayList) {
        int i;
        int i2 = Integer.MIN_VALUE;
        ArrayList<IntPoint> arrayList2 = new ArrayList<>();
        Iterator<IntPoint> it = arrayList.iterator();
        int i3 = Integer.MAX_VALUE;
        int i4 = Integer.MIN_VALUE;
        int i5 = Integer.MAX_VALUE;
        while (true) {
            i = i2;
            if (!it.hasNext()) {
                break;
            }
            IntPoint next = it.next();
            int i6 = next.x;
            i2 = next.y;
            if (i6 < i5) {
                i5 = i6;
            }
            if (i6 > i4) {
                i4 = i6;
            }
            if (i2 < i3) {
                i3 = i2;
            }
            if (i2 <= i) {
                i2 = i;
            }
        }
        if (i5 > i4) {
            throw new IllegalArgumentException("List of points can not be empty.");
        }
        IntPoint intPoint = new IntPoint(i5, i3);
        IntPoint intPoint2 = new IntPoint(i4, i);
        arrayList2.add(intPoint);
        arrayList2.add(intPoint2);
        return arrayList2;
    }

    public static FloatPoint GetCenterOfGravity(ArrayList<IntPoint> arrayList) {
        float f = 0.0f;
        int i = 0;
        Iterator<IntPoint> it = arrayList.iterator();
        float f2 = 0.0f;
        while (true) {
            int i2 = i;
            float f3 = f;
            if (it.hasNext()) {
                IntPoint next = it.next();
                f2 += next.x;
                f = next.y + f3;
                i = i2 + 1;
            } else {
                return new FloatPoint(f2 / i2, f3 / i2);
            }
        }
    }

    public static FurthestPoint GetFurthestPoint(ArrayList<IntPoint> arrayList, IntPoint intPoint) {
        FurthestPoint furthestPoint = new FurthestPoint();
        float f = -1.0f;
        int i = intPoint.x;
        int i2 = intPoint.y;
        Iterator<IntPoint> it = arrayList.iterator();
        while (true) {
            float f2 = f;
            if (it.hasNext()) {
                IntPoint next = it.next();
                int i3 = i - next.x;
                int i4 = i2 - next.y;
                float f3 = (i3 * i3) + (i4 * i4);
                if (f3 > f2) {
                    furthestPoint.x = next.x;
                    furthestPoint.y = next.y;
                    furthestPoint.distance = f3;
                    f = f3;
                } else {
                    f = f2;
                }
            } else {
                return furthestPoint;
            }
        }
    }

    public static FurthestPoint[] GetFurthestPointsFromLine(ArrayList<IntPoint> arrayList, IntPoint intPoint, IntPoint intPoint2) {
        double d;
        FurthestPoint[] furthestPointArr = {new FurthestPoint(intPoint), new FurthestPoint(intPoint2)};
        double d2 = 0.0d;
        if (intPoint2.x != intPoint.x) {
            float f = (intPoint2.y - intPoint.y) / (intPoint2.x - intPoint.x);
            float f2 = intPoint.y - (intPoint.x * f);
            float fSqrt = (float) Math.sqrt((f * f) + 1.0f);
            Iterator<IntPoint> it = arrayList.iterator();
            double d3 = 0.0d;
            while (true) {
                d = d2;
                if (!it.hasNext()) {
                    break;
                }
                IntPoint next = it.next();
                double d4 = (((((double) f) * ((double) next.x)) + ((double) f2)) - ((double) next.y)) / ((double) fSqrt);
                if (d4 > d3) {
                    furthestPointArr[0] = new FurthestPoint(next, (float) d4);
                    d3 = d4;
                }
                if (d4 < d) {
                    furthestPointArr[1] = new FurthestPoint(next, (float) d4);
                    d2 = d4;
                } else {
                    d2 = d;
                }
            }
        } else {
            int i = intPoint.x;
            Iterator<IntPoint> it2 = arrayList.iterator();
            double d5 = 0.0d;
            while (true) {
                d = d2;
                if (!it2.hasNext()) {
                    break;
                }
                IntPoint next2 = it2.next();
                float f3 = i - next2.x;
                if (f3 > d5) {
                    d5 = f3;
                    furthestPointArr[0] = new FurthestPoint(next2, f3);
                }
                if (f3 < d) {
                    d = f3;
                    furthestPointArr[1] = new FurthestPoint(next2, f3);
                }
                d2 = d;
            }
        }
        furthestPointArr[1].distance = (float) (-d);
        return furthestPointArr;
    }

    public static IntPoint GetFurthestPointFromLine(ArrayList<IntPoint> arrayList, IntPoint intPoint, IntPoint intPoint2) {
        float f;
        float f2 = 0.0f;
        if (intPoint2.x != intPoint.x) {
            float f3 = (intPoint2.y - intPoint.y) / (intPoint2.x - intPoint.x);
            float f4 = intPoint.y - (intPoint.x * f3);
            float fSqrt = (float) Math.sqrt((f3 * f3) + 1.0f);
            for (IntPoint intPoint3 : arrayList) {
                float fAbs = Math.abs((((intPoint3.x * f3) + f4) - intPoint3.y) / fSqrt);
                if (fAbs > f2) {
                    intPoint = intPoint3;
                    f = fAbs;
                } else {
                    f = f2;
                }
                f2 = f;
            }
        } else {
            int i = intPoint.x;
            for (IntPoint intPoint4 : arrayList) {
                if (0.0f > Math.abs(i - intPoint4.x)) {
                    intPoint = intPoint4;
                }
            }
        }
        return intPoint;
    }

    public static float getQuadrilateralRelativeDistortionLimit() {
        return a;
    }

    public static void setQuadrilateralRelativeDistortionLimit(float f) {
        a = Math.max(0.0f, Math.min(0.25f, f));
    }

    /* JADX WARN: Removed duplicated region for block: B:63:0x01a9 A[PHI: r1
  0x01a9: PHI (r1v31 Catalano.Core.IntPoint) = 
  (r1v30 Catalano.Core.IntPoint)
  (r1v30 Catalano.Core.IntPoint)
  (r1v30 Catalano.Core.IntPoint)
  (r1v26 Catalano.Core.IntPoint)
 binds: [B:60:0x01a3, B:61:0x01a5, B:62:0x01a7, B:54:0x0174] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.ArrayList<Catalano.Core.IntPoint> FindQuadrilateralCorners(java.util.ArrayList<Catalano.Core.IntPoint> r15) {
        /*
            Method dump skipped, instruction units count: 759
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: Catalano.Math.Geometry.PointsCloud.FindQuadrilateralCorners(java.util.ArrayList):java.util.ArrayList");
    }

    public static class FurthestPoint {
        public float distance;
        public int x;
        public int y;

        public FurthestPoint() {
        }

        public FurthestPoint(int i, int i2, float f) {
            this.x = i;
            this.y = i2;
            this.distance = f;
        }

        public FurthestPoint(IntPoint intPoint) {
            this.x = intPoint.x;
            this.y = intPoint.y;
        }

        public FurthestPoint(IntPoint intPoint, float f) {
            this.x = intPoint.x;
            this.y = intPoint.y;
            this.distance = f;
        }

        public IntPoint toIntPoint() {
            return new IntPoint(this.x, this.y);
        }
    }
}
