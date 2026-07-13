package Catalano.Imaging.ActiveContour.Ovuscule;

import Catalano.Core.DoublePoint;
import Catalano.Core.IntPoint;
import Catalano.Imaging.FastBitmap;

/* JADX INFO: loaded from: classes.dex */
public class Ovuscule implements IOvusculeSnake2D {
    private static final double K = Math.sqrt(Float.intBitsToFloat(872415231));
    private double A;
    private double B;
    private double C;
    private double D;
    private double E;
    private double F;
    private double G;
    private OvusculeSnake2DNode[] H;
    private int I;
    private int J;
    private FastBitmap a;
    private double b;
    private double c;
    private double d;
    private double e;
    private double f;
    private double g;
    private double h;
    private double i;
    private double j;
    private double k;
    private double l;
    private double m;
    private double n;
    private double o;
    private double p;
    private double q;
    private double r;
    private double s;
    private double t;
    private double u;
    private double v;
    private double w;
    private double x;
    private double y;
    private double z;

    public Ovuscule(FastBitmap fastBitmap, DoublePoint doublePoint, DoublePoint doublePoint2, DoublePoint doublePoint3) {
        this(fastBitmap, doublePoint.x, doublePoint.y, doublePoint2.x, doublePoint2.y, doublePoint3.x, doublePoint3.y);
    }

    public Ovuscule(FastBitmap fastBitmap, IntPoint intPoint, IntPoint intPoint2, IntPoint intPoint3) {
        this(fastBitmap, intPoint.x, intPoint.y, intPoint2.x, intPoint2.y, intPoint3.x, intPoint3.y);
    }

    public Ovuscule(FastBitmap fastBitmap, double d, double d2, double d3, double d4, double d5, double d6) {
        this.a = null;
        this.H = new OvusculeSnake2DNode[3];
        this.a = fastBitmap;
        this.I = fastBitmap.getHeight();
        this.J = fastBitmap.getWidth();
        this.H[0] = new OvusculeSnake2DNode(d2, d);
        this.H[1] = new OvusculeSnake2DNode(d4, d3);
        this.H[2] = new OvusculeSnake2DNode(d6, d5);
        setNodes(this.H);
    }

    @Override // Catalano.Imaging.ActiveContour.Ovuscule.IOvusculeSnake2D
    public double energy() {
        return a() + b();
    }

    @Override // Catalano.Imaging.ActiveContour.Ovuscule.IOvusculeSnake2D
    public DoublePoint[] getEnergyGradient() {
        return a(a(this.H[0], this.H[1]), b(this.H[0], this.H[1]));
    }

    @Override // Catalano.Imaging.ActiveContour.Ovuscule.IOvusculeSnake2D
    public OvusculeSnake2DNode[] getNodes() {
        return this.H;
    }

    @Override // Catalano.Imaging.ActiveContour.Ovuscule.IOvusculeSnake2D
    public OvusculeSnake2DScale[] getScales() {
        int iCeil = (int) Math.ceil(1.0d + (this.c / 2.0d));
        if (iCeil > (this.J + this.I) * 2) {
            return null;
        }
        int[] iArr = new int[iCeil];
        int[] iArr2 = new int[iCeil];
        int[] iArr3 = new int[iCeil];
        int[] iArr4 = new int[iCeil];
        for (int i = 0; i < iCeil; i++) {
            double d = (6.283185307179586d * ((double) i)) / ((double) iCeil);
            iArr[i] = (int) Math.round(this.F + (this.i * Math.cos(d)) + (this.z * Math.sin(d)));
            iArr2[i] = (int) Math.round(this.G + (this.j * Math.cos(d)) + (this.A * Math.sin(d)));
            iArr3[i] = (int) Math.round(this.F + (0.7071067811865476d * ((this.i * Math.cos(d)) + (this.z * Math.sin(d)))));
            iArr4[i] = (int) Math.round((((Math.sin(d) * this.A) + (this.j * Math.cos(d))) * 0.7071067811865476d) + this.G);
        }
        OvusculeSnake2DScale[] ovusculeSnake2DScaleArr = {new OvusculeSnake2DScale(null, null, true, false), new OvusculeSnake2DScale(null, null, true, false)};
        ovusculeSnake2DScaleArr[0].c = iCeil;
        ovusculeSnake2DScaleArr[0].a = iArr;
        ovusculeSnake2DScaleArr[0].b = iArr2;
        ovusculeSnake2DScaleArr[1].c = iCeil;
        ovusculeSnake2DScaleArr[1].a = iArr3;
        ovusculeSnake2DScaleArr[1].b = iArr4;
        return ovusculeSnake2DScaleArr;
    }

    @Override // Catalano.Imaging.ActiveContour.Ovuscule.IOvusculeSnake2D
    public void setNodes(OvusculeSnake2DNode[] ovusculeSnake2DNodeArr) {
        this.k = ovusculeSnake2DNodeArr[0].x;
        this.l = ovusculeSnake2DNodeArr[0].y;
        this.p = ovusculeSnake2DNodeArr[1].x;
        this.q = ovusculeSnake2DNodeArr[1].y;
        this.u = ovusculeSnake2DNodeArr[2].x;
        this.v = ovusculeSnake2DNodeArr[2].y;
        this.H[0].x = this.k;
        this.H[0].y = this.l;
        this.H[1].x = this.p;
        this.H[1].y = this.q;
        this.H[2].x = this.u;
        this.H[2].y = this.v;
        this.m = this.k - this.p;
        this.n = this.l - this.q;
        this.r = this.p - this.u;
        this.s = this.q - this.v;
        this.w = this.u - this.k;
        this.x = this.v - this.l;
        this.o = (this.k * this.q) - (this.l * this.p);
        this.t = (this.p * this.v) - (this.q * this.u);
        this.y = (this.u * this.l) - (this.v * this.k);
        this.F = ((this.k + this.p) + this.u) / 3.0d;
        this.G = ((this.l + this.q) + this.v) / 3.0d;
        this.d = ((this.l * this.n) + (this.q * this.s) + (this.v * this.x)) * 3.0d;
        this.e = ((this.k * (this.q - (this.l * 2.0d))) + (this.l * this.p) + (this.p * (this.v - (this.q * 2.0d))) + (this.q * this.u) + (this.u * (this.l - (this.v * 2.0d))) + (this.v * this.k)) * 3.0d;
        this.f = ((this.k * this.m) + (this.p * this.r) + (this.u * this.w)) * 3.0d;
        this.g = this.o + this.t + this.y;
        this.h = Math.abs(this.g);
        this.i = (this.m - this.w) / 3.0d;
        this.j = (this.n - this.x) / 3.0d;
        this.z = this.r / 1.7320508075688772d;
        this.A = this.s / 1.7320508075688772d;
        double dSqrt = Math.sqrt(Math.abs((this.i * this.i) + (this.z * this.z)));
        double dSqrt2 = Math.sqrt(Math.abs((this.j * this.j) + (this.A * this.A)));
        this.B = this.F - dSqrt;
        this.C = this.G - dSqrt2;
        this.D = dSqrt + this.F;
        this.E = this.G + dSqrt2;
        double d = (this.d + this.f) / 3.0d;
        double dSqrt3 = Math.sqrt(Math.abs((d * d) - ((this.g * 3.0d) * this.g)));
        double dSqrt4 = 0.47140452079103173d * Math.sqrt(Math.abs(d - dSqrt3));
        double dSqrt5 = Math.sqrt(Math.abs(d + dSqrt3)) * 0.47140452079103173d;
        this.b = 1.2091995761561452d * this.h;
        double d2 = (dSqrt5 - dSqrt4) / (dSqrt5 + dSqrt4);
        double d3 = d2 * d2;
        this.c = (dSqrt5 + dSqrt4) * 3.141592653589793d * (((3.0d * d3) / (Math.sqrt(Math.abs(4.0d - (d3 * 3.0d))) + 10.0d)) + 1.0d);
    }

    private double a() {
        if (this.b < 1.0d) {
            return 1.0d / K;
        }
        int iMax = Math.max((int) Math.floor(this.B), 0);
        int iMin = Math.min((int) Math.ceil(this.D), this.J - 1);
        int iMax2 = Math.max((int) Math.floor(this.C), 0);
        int iMin2 = Math.min((int) Math.ceil(this.E), this.I - 1);
        if (this.B < iMax || iMin < this.D || this.C < iMax2 || iMin2 < this.E) {
            return 1.0d / K;
        }
        if (iMin > iMax && iMin2 > iMax2) {
            double gray = 0.0d;
            for (int i = iMax2; i <= iMin2; i++) {
                double d = this.G - ((double) i);
                double d2 = d * d;
                for (int i2 = iMax; i2 <= iMin; i2++) {
                    double d3 = this.F - ((double) i2);
                    double d4 = d3 * d3;
                    double dSqrt = Math.sqrt(d4 + d2);
                    double d5 = (d3 * this.e * d) + (d4 * this.d) + (this.f * d2);
                    if (d5 < K) {
                        gray -= (double) this.a.getGray(i, i2);
                    } else {
                        double dSqrt2 = this.h / Math.sqrt(d5);
                        double d6 = (1.0d - (dSqrt2 / 1.4142135623730951d)) * dSqrt;
                        if (d6 < -0.7071067811865476d) {
                            gray -= (double) this.a.getGray(i, i2);
                        } else if (d6 < 0.7071067811865476d) {
                            gray += 1.4142135623730951d * d6 * ((double) this.a.getGray(i, i2));
                        } else {
                            double d7 = (1.0d - dSqrt2) * dSqrt;
                            if (d7 < -1.0d) {
                                gray += (double) this.a.getGray(i, i2);
                            } else if (d7 < 1.0d) {
                                gray += ((1.0d - d7) * ((double) this.a.getGray(i, i2))) / 2.0d;
                            }
                        }
                    }
                }
            }
            return gray / this.b;
        }
        return 1.0d / K;
    }

    private DoublePoint[] a(OvusculeSnake2DNode ovusculeSnake2DNode, OvusculeSnake2DNode ovusculeSnake2DNode2) {
        if (this.b < 1.0d) {
            return null;
        }
        int iMax = Math.max((int) Math.floor(this.B), 0);
        int iMin = Math.min((int) Math.ceil(this.D), this.J - 1);
        int iMax2 = Math.max((int) Math.floor(this.C), 0);
        int iMin2 = Math.min((int) Math.ceil(this.E), this.I - 1);
        if (this.B < iMax || iMin < this.D || this.C < iMax2 || iMin2 < this.E || iMin <= iMax || iMin2 <= iMax2) {
            return null;
        }
        DoublePoint[] doublePointArr = {new DoublePoint(0.0d, 0.0d), new DoublePoint(0.0d, 0.0d), new DoublePoint(0.0d, 0.0d)};
        double[] dArr = {this.m - this.r, this.n - this.s, this.r - this.w, this.s - this.x, this.w - this.m, this.x - this.n};
        for (int i = iMax2; i <= iMin2; i++) {
            double d = this.G - ((double) i);
            double d2 = d * d;
            for (int i2 = iMax; i2 <= iMin; i2++) {
                double d3 = this.F - ((double) i2);
                double d4 = d3 * d3;
                double dSqrt = Math.sqrt(d4 + d2);
                if (dSqrt >= K) {
                    double gray = this.a.getGray(i, i2);
                    double d5 = (d4 * this.d) + (this.e * d3 * d) + (this.f * d2);
                    if (d5 < K) {
                        doublePointArr[0].x += this.s * gray;
                        doublePointArr[0].y -= this.r * gray;
                        doublePointArr[1].x += this.x * gray;
                        doublePointArr[1].y -= this.w * gray;
                        doublePointArr[2].x += this.n * gray;
                        doublePointArr[2].y -= this.m * gray;
                    } else {
                        double dSqrt2 = this.h / Math.sqrt(d5);
                        double d6 = (1.0d - (dSqrt2 / 1.4142135623730951d)) * dSqrt;
                        if (d6 < -0.7071067811865476d) {
                            doublePointArr[0].x += this.s * gray;
                            doublePointArr[0].y -= this.r * gray;
                            doublePointArr[1].x += this.x * gray;
                            doublePointArr[1].y -= this.w * gray;
                            doublePointArr[2].x += this.n * gray;
                            doublePointArr[2].y -= this.m * gray;
                        } else if (d6 < 0.7071067811865476d) {
                            double d7 = 1.4142135623730951d * dSqrt;
                            double d8 = (((dSqrt2 * dSqrt2) * dSqrt2) * dSqrt) / (6.0d * this.g);
                            double d9 = ((1.4142135623730951d - dSqrt2) * this.g) / (dSqrt * (3.0d * d8));
                            double d10 = (((2.0d * this.d) + d9) * d3) + (this.e * d);
                            double d11 = ((d9 + (2.0d * this.f)) * d) + (this.e * d3);
                            double d12 = 9.0d * ((dArr[5] * d3) - (dArr[4] * d));
                            double d13 = 9.0d * ((dArr[1] * d3) - (dArr[0] * d));
                            double d14 = 9.0d * ((dArr[3] * d3) - (dArr[2] * d));
                            doublePointArr[0].x -= ((this.s * d7) - (((d * d12) + d10) * d8)) * gray;
                            DoublePoint doublePoint = doublePointArr[0];
                            doublePoint.y = (((this.r * d7) - (((d12 * d3) - d11) * d8)) * gray) + doublePoint.y;
                            doublePointArr[1].x -= ((this.x * d7) - (((d * d13) + d10) * d8)) * gray;
                            doublePointArr[1].y += ((this.w * d7) - (((d13 * d3) - d11) * d8)) * gray;
                            doublePointArr[2].x -= ((this.n * d7) - ((d10 + (d * d14)) * d8)) * gray;
                            DoublePoint doublePoint2 = doublePointArr[2];
                            doublePoint2.y = (((d7 * this.m) - (((d3 * d14) - d11) * d8)) * gray) + doublePoint2.y;
                        } else {
                            double d15 = (1.0d - dSqrt2) * dSqrt;
                            if (d15 < -1.0d) {
                                doublePointArr[0].x -= this.s * gray;
                                doublePointArr[0].y += this.r * gray;
                                doublePointArr[1].x -= this.x * gray;
                                doublePointArr[1].y += this.w * gray;
                                doublePointArr[2].x -= this.n * gray;
                                doublePointArr[2].y += this.m * gray;
                            } else if (d15 < 1.0d) {
                                double d16 = (dSqrt - 1.0d) / 2.0d;
                                double d17 = (((dSqrt2 * dSqrt2) * dSqrt2) * dSqrt) / (12.0d * this.g);
                                double d18 = ((1.0d - dSqrt2) * this.g) / (dSqrt * (6.0d * d17));
                                double d19 = (((2.0d * this.d) + d18) * d3) + (this.e * d);
                                double d20 = ((d18 + (2.0d * this.f)) * d) + (this.e * d3);
                                double d21 = 9.0d * ((dArr[5] * d3) - (dArr[4] * d));
                                double d22 = 9.0d * ((dArr[1] * d3) - (dArr[0] * d));
                                double d23 = 9.0d * ((dArr[3] * d3) - (dArr[2] * d));
                                doublePointArr[0].x += ((this.s * d16) - (((d * d21) + d19) * d17)) * gray;
                                doublePointArr[0].y -= ((this.r * d16) - (((d21 * d3) - d20) * d17)) * gray;
                                doublePointArr[1].x += ((this.x * d16) - (((d * d22) + d19) * d17)) * gray;
                                doublePointArr[1].y -= ((this.w * d16) - (((d22 * d3) - d20) * d17)) * gray;
                                DoublePoint doublePoint3 = doublePointArr[2];
                                doublePoint3.x = (((this.n * d16) - ((d19 + (d * d23)) * d17)) * gray) + doublePoint3.x;
                                doublePointArr[2].y -= ((d16 * this.m) - (((d3 * d23) - d20) * d17)) * gray;
                            }
                        }
                    }
                }
            }
        }
        double d24 = this.g * this.b;
        doublePointArr[0].x /= d24;
        doublePointArr[0].y /= d24;
        doublePointArr[1].x /= d24;
        doublePointArr[1].y /= d24;
        doublePointArr[2].x /= d24;
        doublePointArr[2].y /= d24;
        return doublePointArr;
    }

    private DoublePoint[] a(DoublePoint[] doublePointArr, DoublePoint[] doublePointArr2) {
        int length;
        DoublePoint[] doublePointArr3 = null;
        if (doublePointArr != null && doublePointArr2 != null && (length = doublePointArr.length) == doublePointArr2.length) {
            doublePointArr3 = new DoublePoint[length];
            for (int i = 0; i < length; i++) {
                doublePointArr3[i] = new DoublePoint(doublePointArr[i].x + doublePointArr2[i].x, doublePointArr[i].y + doublePointArr2[i].y);
            }
        }
        return doublePointArr3;
    }

    private double b() {
        return (Math.min(Math.min(this.n * this.n, this.s * this.s), this.x * this.x) * 100.0d) / this.b;
    }

    private DoublePoint[] b(OvusculeSnake2DNode ovusculeSnake2DNode, OvusculeSnake2DNode ovusculeSnake2DNode2) {
        DoublePoint[] doublePointArr = {new DoublePoint(0.0d, 0.0d), new DoublePoint(0.0d, 0.0d), new DoublePoint(0.0d, 0.0d)};
        double d = this.n * this.n;
        double d2 = this.s * this.s;
        double d3 = this.x * this.x;
        double d4 = 0.0d;
        if (d <= d2 && d <= d3) {
            doublePointArr[0].x = (-this.n) * this.s;
            doublePointArr[0].y = (2.0d * this.g) + (this.n * this.r);
            doublePointArr[1].x = (-this.x) * this.n;
            doublePointArr[1].y = ((-2.0d) * this.g) + (this.w * this.n);
            doublePointArr[2].x = -d;
            doublePointArr[2].y = this.m * this.n;
            d4 = (100.0d * this.n) / (this.g * this.b);
        } else if (d2 <= d3 && d2 <= d) {
            doublePointArr[0].x = -d2;
            doublePointArr[0].y = this.r * this.s;
            doublePointArr[1].x = (-this.s) * this.x;
            doublePointArr[1].y = (2.0d * this.g) + (this.s * this.w);
            doublePointArr[2].x = (-this.n) * this.s;
            doublePointArr[2].y = ((-2.0d) * this.g) + (this.m * this.s);
            d4 = (100.0d * this.s) / (this.g * this.b);
        } else if (d3 <= d && d3 <= d2) {
            doublePointArr[0].x = (-this.s) * this.x;
            doublePointArr[0].y = ((-2.0d) * this.g) + (this.r * this.x);
            doublePointArr[1].x = -d3;
            doublePointArr[1].y = this.w * this.x;
            doublePointArr[2].x = (-this.x) * this.n;
            doublePointArr[2].y = (2.0d * this.g) + (this.x * this.m);
            d4 = (100.0d * this.x) / (this.g * this.b);
        }
        doublePointArr[0].x *= d4;
        doublePointArr[0].y *= d4;
        doublePointArr[1].x *= d4;
        doublePointArr[1].y *= d4;
        doublePointArr[2].x *= d4;
        DoublePoint doublePoint = doublePointArr[2];
        doublePoint.y = d4 * doublePoint.y;
        return doublePointArr;
    }
}
