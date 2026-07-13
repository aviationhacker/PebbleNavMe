package Catalano.Core;

import org.eclipse.jetty.http.HttpStatus;

/* JADX INFO: loaded from: classes.dex */
public class IntPoint {
    public int x;
    public int y;

    public IntPoint() {
    }

    public IntPoint(IntPoint intPoint) {
        this.x = intPoint.x;
        this.y = intPoint.y;
    }

    public IntPoint(int i, int i2) {
        this.x = i;
        this.y = i2;
    }

    public IntPoint(float f, float f2) {
        this.x = (int) f;
        this.y = (int) f2;
    }

    public IntPoint(double d, double d2) {
        this.x = (int) d;
        this.y = (int) d2;
    }

    public IntPoint(FloatPoint floatPoint) {
        this.x = (int) floatPoint.x;
        this.y = (int) floatPoint.y;
    }

    public IntPoint(DoublePoint doublePoint) {
        this.x = (int) doublePoint.x;
        this.y = (int) doublePoint.y;
    }

    public void setXY(int i, int i2) {
        this.x = i;
        this.y = i2;
    }

    public void Add(IntPoint intPoint) {
        this.x += intPoint.x;
        this.y += intPoint.y;
    }

    public static IntPoint Add(IntPoint intPoint, IntPoint intPoint2) {
        IntPoint intPoint3 = new IntPoint(intPoint);
        intPoint3.Add(intPoint2);
        return intPoint3;
    }

    public void Add(int i) {
        this.x += i;
        this.y += i;
    }

    public void Subtract(IntPoint intPoint) {
        this.x -= intPoint.x;
        this.y -= intPoint.y;
    }

    public static IntPoint Subtract(IntPoint intPoint, IntPoint intPoint2) {
        IntPoint intPoint3 = new IntPoint(intPoint);
        intPoint3.Subtract(intPoint2);
        return intPoint3;
    }

    public void Subtract(int i) {
        this.x -= i;
        this.y -= i;
    }

    public void Multiply(IntPoint intPoint) {
        this.x *= intPoint.x;
        this.y *= intPoint.y;
    }

    public static IntPoint Multiply(IntPoint intPoint, IntPoint intPoint2) {
        IntPoint intPoint3 = new IntPoint(intPoint);
        intPoint3.Multiply(intPoint2);
        return intPoint3;
    }

    public void Multiply(int i) {
        this.x *= i;
        this.y *= i;
    }

    public void Divide(IntPoint intPoint) {
        this.x /= intPoint.x;
        this.y /= intPoint.y;
    }

    public static IntPoint Divide(IntPoint intPoint, IntPoint intPoint2) {
        IntPoint intPoint3 = new IntPoint(intPoint);
        intPoint3.Divide(intPoint2);
        return intPoint3;
    }

    public void Divide(int i) {
        this.x /= i;
        this.y /= i;
    }

    public float DistanceTo(IntPoint intPoint) {
        float f = this.x - intPoint.x;
        float f2 = this.y - intPoint.y;
        return (float) Math.sqrt((f * f) + (f2 * f2));
    }

    public FloatPoint toFloatPoint() {
        return new FloatPoint(this.x, this.y);
    }

    public DoublePoint toDoublePoint() {
        return new DoublePoint(this.x, this.y);
    }

    public void Swap() {
        int i = this.x;
        this.x = this.y;
        this.y = i;
    }

    public boolean equals(Object obj) {
        if (obj.getClass().isAssignableFrom(IntPoint.class)) {
            IntPoint intPoint = (IntPoint) obj;
            if (this.x == intPoint.x && this.y == intPoint.y) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((this.x + HttpStatus.CREATED_201) * 67) + this.y;
    }

    public String toString() {
        return "X: " + this.x + " Y: " + this.y;
    }
}
