package Catalano.Math.Geometry;

import Catalano.Core.FloatPoint;
import Catalano.Core.IntPoint;

/* JADX INFO: loaded from: classes.dex */
public class Line {
    private float a;
    private float b;

    public Line(IntPoint intPoint, IntPoint intPoint2) {
        if (intPoint.equals(intPoint2)) {
            try {
                throw new Exception("Start point of the line cannot be the same as its end point.");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        float f = intPoint2.x - intPoint.x;
        this.a = (intPoint2.y - intPoint.y) / (f == 0.0f ? Float.POSITIVE_INFINITY : f);
        this.b = Float.isInfinite(this.a) ? intPoint.x : intPoint.y - (this.a * intPoint.x);
    }

    public Line(float f, float f2) {
        this.a = f;
        this.b = f2;
    }

    private Line(float f, float f2, boolean z) {
        float f3 = 0.017453292f * f2;
        float fSin = (float) Math.sin(f3);
        float fCos = (float) Math.cos(f3);
        FloatPoint floatPoint = new FloatPoint(f * fCos, f * fSin);
        this.a = (-fCos) / fSin;
        if (!Float.isInfinite(this.a)) {
            this.b = floatPoint.y - (this.a * floatPoint.x);
        } else {
            this.b = Math.abs(f);
        }
    }

    private Line(IntPoint intPoint, float f) {
        this.a = (float) ((-1.0d) / Math.tan(0.017453292f * f));
        if (!Float.isInfinite(this.a)) {
            this.b = intPoint.y - (this.a * intPoint.x);
        } else {
            this.b = intPoint.x;
        }
    }

    public boolean isVertical() {
        return Float.isInfinite(this.a);
    }

    public boolean isHorizontal() {
        return this.a == 0.0f;
    }

    public float getSlope() {
        return this.a;
    }

    public float getIntercept() {
        return this.b;
    }

    public static Line FromPoints(IntPoint intPoint, IntPoint intPoint2) {
        return new Line(intPoint, intPoint2);
    }

    public static Line FromSlopeIntercept(float f, float f2) {
        return new Line(f, f2);
    }

    public static Line FromRTheta(float f, float f2) {
        return new Line(f, f2, false);
    }

    public static Line FromPointTheta(IntPoint intPoint, float f) {
        return new Line(intPoint, f);
    }

    public float GetAngleBetweenLines(Line line) {
        float fSignum;
        float f = line.a;
        boolean zIsVertical = isVertical();
        boolean zIsVertical2 = line.isVertical();
        if (this.a == f || (zIsVertical && zIsVertical2)) {
            return 0.0f;
        }
        if (!zIsVertical && !zIsVertical2) {
            fSignum = (float) Math.atan((f > this.a ? f - this.a : this.a - f) / ((f * this.a) + 1.0f));
        } else {
            fSignum = zIsVertical ? (float) (1.5707963267948966d - (((double) Math.signum(f)) * Math.atan(f))) : (float) (1.5707963267948966d - (Math.atan(this.a) * ((double) Math.signum(this.a))));
        }
        float f2 = fSignum * 57.29578f;
        if (f2 < 0.0f) {
            return -f2;
        }
        return f2;
    }

    public float DistanceToPoint(IntPoint intPoint) {
        if (!isVertical()) {
            return Math.abs((((this.a * intPoint.x) + this.b) - intPoint.y) / ((float) Math.sqrt((this.a * this.a) + 1.0f)));
        }
        return Math.abs(this.b - intPoint.x);
    }
}
