package Catalano.Core;

/* JADX INFO: loaded from: classes.dex */
public class FloatPoint {
    public float x;
    public float y;

    public FloatPoint() {
    }

    public FloatPoint(FloatPoint floatPoint) {
        this.x = floatPoint.x;
        this.y = floatPoint.y;
    }

    public FloatPoint(float f, float f2) {
        this.x = f;
        this.y = f2;
    }

    public FloatPoint(double d, double d2) {
        this.x = (float) d;
        this.y = (float) d2;
    }

    public FloatPoint(int i, int i2) {
        this.x = i;
        this.y = i2;
    }

    public FloatPoint(IntPoint intPoint) {
        this.x = intPoint.x;
        this.y = intPoint.y;
    }

    public FloatPoint(DoublePoint doublePoint) {
        this.x = (float) doublePoint.x;
        this.y = (float) doublePoint.y;
    }

    public void setXY(float f, float f2) {
        this.x = f;
        this.y = f2;
    }

    public void Add(FloatPoint floatPoint) {
        this.x += floatPoint.x;
        this.y += floatPoint.y;
    }

    public FloatPoint Add(FloatPoint floatPoint, FloatPoint floatPoint2) {
        FloatPoint floatPoint3 = new FloatPoint(floatPoint);
        floatPoint3.Add(floatPoint2);
        return floatPoint3;
    }

    public void Add(float f) {
        this.x += f;
        this.y += f;
    }

    public void Subtract(FloatPoint floatPoint) {
        this.x -= floatPoint.x;
        this.y -= floatPoint.y;
    }

    public FloatPoint Subtract(FloatPoint floatPoint, FloatPoint floatPoint2) {
        FloatPoint floatPoint3 = new FloatPoint(floatPoint);
        floatPoint3.Subtract(floatPoint2);
        return floatPoint3;
    }

    public void Subtract(float f) {
        this.x -= f;
        this.y -= f;
    }

    public void Multiply(FloatPoint floatPoint) {
        this.x *= floatPoint.x;
        this.y *= floatPoint.y;
    }

    public FloatPoint Multiply(FloatPoint floatPoint, FloatPoint floatPoint2) {
        FloatPoint floatPoint3 = new FloatPoint(floatPoint);
        floatPoint3.Multiply(floatPoint2);
        return floatPoint3;
    }

    public void Multiply(float f) {
        this.x *= f;
        this.y *= f;
    }

    public void Divide(FloatPoint floatPoint) {
        this.x /= floatPoint.x;
        this.y /= floatPoint.y;
    }

    public FloatPoint Divide(FloatPoint floatPoint, FloatPoint floatPoint2) {
        FloatPoint floatPoint3 = new FloatPoint(floatPoint);
        floatPoint3.Divide(floatPoint2);
        return floatPoint3;
    }

    public void Divide(float f) {
        this.x /= f;
        this.y /= f;
    }

    public float DistanceTo(FloatPoint floatPoint) {
        float f = this.x - floatPoint.x;
        float f2 = this.y - floatPoint.y;
        return (float) Math.sqrt((f * f) + (f2 * f2));
    }

    public IntPoint toIntPoint() {
        return new IntPoint(this.x, this.y);
    }

    public DoublePoint toDoublePoint() {
        return new DoublePoint(this.x, this.y);
    }

    public void Swap() {
        float f = this.x;
        this.x = this.y;
        this.y = f;
    }

    public boolean equals(Object obj) {
        if (obj.getClass().isAssignableFrom(DoublePoint.class)) {
            FloatPoint floatPoint = (FloatPoint) obj;
            if (this.x == floatPoint.x && this.y == floatPoint.y) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((Float.floatToIntBits(this.x) + 623) * 89) + Float.floatToIntBits(this.y);
    }

    public String toString() {
        return "X: " + this.x + " Y: " + this.y;
    }
}
