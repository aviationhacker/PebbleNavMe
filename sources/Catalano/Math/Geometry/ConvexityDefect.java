package Catalano.Math.Geometry;

import Catalano.Core.IntPoint;

/* JADX INFO: loaded from: classes.dex */
public class ConvexityDefect {
    private int a;
    private int b;
    private IntPoint c;
    private double d;

    public ConvexityDefect(IntPoint intPoint, int i, int i2, double d) {
        this.c = intPoint;
        this.a = i;
        this.b = i2;
    }

    public double getDepth() {
        return this.d;
    }

    public void setDepth(double d) {
        this.d = d;
    }

    public int getEnd() {
        return this.b;
    }

    public void setEnd(int i) {
        this.b = i;
    }

    public IntPoint getPoint() {
        return this.c;
    }

    public void setPoint(IntPoint intPoint) {
        this.c = intPoint;
    }

    public int getStart() {
        return this.a;
    }

    public void setStart(int i) {
        this.a = i;
    }
}
