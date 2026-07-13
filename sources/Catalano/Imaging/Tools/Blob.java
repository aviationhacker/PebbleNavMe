package Catalano.Imaging.Tools;

import Catalano.Core.IntPoint;
import Catalano.Imaging.Shapes.IntRectangle;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class Blob {
    private int a;
    private int b;
    private IntPoint c;
    private ArrayList<IntPoint> d;
    private int e;
    private int f;
    private IntRectangle g;

    public Blob() {
    }

    public Blob(int i, int i2, IntPoint intPoint, ArrayList<IntPoint> arrayList, IntRectangle intRectangle) {
        this.a = i;
        this.b = i2;
        this.c = intPoint;
        this.d = arrayList;
        this.e = intRectangle.width;
        this.f = intRectangle.height;
        this.g = intRectangle;
    }

    public int getId() {
        return this.a;
    }

    public int getArea() {
        return this.b;
    }

    public IntPoint getCenter() {
        return this.c;
    }

    public int getHeight() {
        return this.f;
    }

    public int getWidth() {
        return this.e;
    }

    public IntRectangle getBoundingBox() {
        return this.g;
    }

    public ArrayList<IntPoint> getPoints() {
        return this.d;
    }
}
