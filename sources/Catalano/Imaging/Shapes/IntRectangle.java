package Catalano.Imaging.Shapes;

import Catalano.Core.DoublePoint;
import Catalano.Core.FloatPoint;
import Catalano.Core.IntPoint;

/* JADX INFO: loaded from: classes.dex */
public class IntRectangle {
    public int height;
    public int width;
    public int x;
    public int y;

    public int getX() {
        return this.x;
    }

    public void setX(int i) {
        this.x = i;
    }

    public int getY() {
        return this.y;
    }

    public void setY(int i) {
        this.y = i;
    }

    public int getHeight() {
        return this.height;
    }

    public void setHeight(int i) {
        this.height = i;
    }

    public int getWidth() {
        return this.width;
    }

    public void setWidth(int i) {
        this.width = i;
    }

    public IntRectangle(int i, int i2, int i3, int i4) {
        this.x = i;
        this.y = i2;
        this.width = i3;
        this.height = i4;
    }

    public IntRectangle(float f, float f2, int i, int i2) {
        this.x = (int) f;
        this.y = (int) f2;
        this.width = i;
        this.height = i2;
    }

    public IntRectangle(double d, double d2, int i, int i2) {
        this.x = (int) d;
        this.y = (int) d2;
        this.width = i;
        this.height = i2;
    }

    public IntRectangle(IntPoint intPoint, int i, int i2) {
        this.x = intPoint.x;
        this.y = intPoint.y;
        this.width = i;
        this.height = i2;
    }

    public IntRectangle(FloatPoint floatPoint, int i, int i2) {
        this.x = (int) floatPoint.x;
        this.y = (int) floatPoint.y;
        this.width = i;
        this.height = i2;
    }

    public IntRectangle(DoublePoint doublePoint, int i, int i2) {
        this.x = (int) doublePoint.x;
        this.y = (int) doublePoint.y;
        this.width = i;
        this.height = i2;
    }

    public IntRectangle(IntRectangle intRectangle) {
        this.x = intRectangle.x;
        this.y = intRectangle.y;
        this.width = intRectangle.width;
        this.height = intRectangle.height;
    }

    public boolean isInside(IntPoint intPoint) {
        return isInside(intPoint.x, intPoint.y);
    }

    public boolean isInside(int i, int i2) {
        return i >= this.x && i <= this.height && i2 >= this.y && i2 <= this.width;
    }

    public boolean isOverlaped(IntRectangle intRectangle) {
        return isOverlaped(intRectangle.x, intRectangle.y, intRectangle.width, intRectangle.height);
    }

    public boolean isOverlaped(int i, int i2, int i3, int i4) {
        return this.x < i + i4 && this.x + this.height > i && this.y < i2 + i3 && this.y + this.width > i2;
    }

    public IntPoint[] getEdgePoints() {
        return new IntPoint[]{new IntPoint(this.x, this.y), new IntPoint(this.x, this.y + this.width), new IntPoint(this.x + this.height, this.y), new IntPoint(this.x + this.height, this.y + this.width)};
    }
}
