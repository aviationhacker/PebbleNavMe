package Catalano.Core;

/* JADX INFO: loaded from: classes.dex */
public class DoublePoint {
    public double x;
    public double y;

    public DoublePoint() {
    }

    public DoublePoint(DoublePoint doublePoint) {
        this.x = doublePoint.x;
        this.y = doublePoint.y;
    }

    public DoublePoint(double d, double d2) {
        this.x = d;
        this.y = d2;
    }

    public DoublePoint(float f, float f2) {
        this.x = f;
        this.y = f2;
    }

    public DoublePoint(int i, int i2) {
        this.x = i;
        this.y = i2;
    }

    public DoublePoint(IntPoint intPoint) {
        this.x = intPoint.x;
        this.y = intPoint.y;
    }

    public DoublePoint(FloatPoint floatPoint) {
        this.x = floatPoint.x;
        this.y = floatPoint.y;
    }

    public void setXY(double d, double d2) {
        this.x = d;
        this.y = d2;
    }

    public void Add(DoublePoint doublePoint) {
        this.x += doublePoint.x;
        this.y += doublePoint.y;
    }

    public DoublePoint Add(DoublePoint doublePoint, DoublePoint doublePoint2) {
        DoublePoint doublePoint3 = new DoublePoint(doublePoint);
        doublePoint3.Add(doublePoint2);
        return doublePoint3;
    }

    public void Add(double d) {
        this.x += d;
        this.y += d;
    }

    public void Subtract(DoublePoint doublePoint) {
        this.x -= doublePoint.x;
        this.y -= doublePoint.y;
    }

    public DoublePoint Subtract(DoublePoint doublePoint, DoublePoint doublePoint2) {
        DoublePoint doublePoint3 = new DoublePoint(doublePoint);
        doublePoint3.Subtract(doublePoint2);
        return doublePoint3;
    }

    public void Subtract(double d) {
        this.x -= d;
        this.y -= d;
    }

    public void Multiply(DoublePoint doublePoint) {
        this.x *= doublePoint.x;
        this.y *= doublePoint.y;
    }

    public DoublePoint Multiply(DoublePoint doublePoint, DoublePoint doublePoint2) {
        DoublePoint doublePoint3 = new DoublePoint(doublePoint);
        doublePoint3.Multiply(doublePoint2);
        return doublePoint3;
    }

    public void Multiply(double d) {
        this.x *= d;
        this.y *= d;
    }

    public void Divide(DoublePoint doublePoint) {
        this.x /= doublePoint.x;
        this.y /= doublePoint.y;
    }

    public DoublePoint Divide(DoublePoint doublePoint, DoublePoint doublePoint2) {
        DoublePoint doublePoint3 = new DoublePoint(doublePoint);
        doublePoint3.Divide(doublePoint2);
        return doublePoint3;
    }

    public void Divide(double d) {
        this.x /= d;
        this.y /= d;
    }

    public double DistanceTo(DoublePoint doublePoint) {
        double d = this.x - doublePoint.x;
        double d2 = this.y - doublePoint.y;
        return Math.sqrt((d * d) + (d2 * d2));
    }

    public void Swap() {
        double d = this.x;
        this.x = this.y;
        this.y = d;
    }

    public IntPoint toIntPoint() {
        return new IntPoint(this.x, this.y);
    }

    public FloatPoint toFloatPoint() {
        return new FloatPoint(this.x, this.y);
    }

    public boolean equals(Object obj) {
        if (obj.getClass().isAssignableFrom(DoublePoint.class)) {
            DoublePoint doublePoint = (DoublePoint) obj;
            if (this.x == doublePoint.x && this.y == doublePoint.y) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((((int) (Double.doubleToLongBits(this.x) ^ (Double.doubleToLongBits(this.x) >>> 32))) + 679) * 97) + ((int) (Double.doubleToLongBits(this.y) ^ (Double.doubleToLongBits(this.y) >>> 32)));
    }

    public String toString() {
        return "X: " + this.x + " Y: " + this.y;
    }
}
