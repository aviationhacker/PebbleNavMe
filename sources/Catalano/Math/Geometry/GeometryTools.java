package Catalano.Math.Geometry;

import Catalano.Core.IntPoint;

/* JADX INFO: loaded from: classes.dex */
public class GeometryTools {
    public static float GetAngleBetweenVectors(IntPoint intPoint, IntPoint intPoint2, IntPoint intPoint3) {
        float f = intPoint2.x - intPoint.x;
        float f2 = intPoint2.y - intPoint.y;
        return (float) ((Math.acos(((double) ((f * (intPoint3.x - intPoint.x)) + (f2 * (intPoint3.y - intPoint.y)))) / (Math.sqrt((f * f) + (f2 * f2)) * Math.sqrt((r2 * r2) + (r3 * r3)))) * 180.0d) / 3.141592653589793d);
    }
}
