package Catalano.Imaging;

import Catalano.Core.IntPoint;
import Catalano.Imaging.Shapes.IntPolygon;
import Catalano.Imaging.Shapes.IntRectangle;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class FastGraphics {
    private FastBitmap a;
    private Color b;
    private int c = 0;

    public void setColor(Color color) {
        this.b = color;
    }

    public void setColor(int i, int i2, int i3) {
        this.b = new Color(i, i2, i3);
    }

    public void setColor(int i) {
        this.c = i;
    }

    public void setImage(FastBitmap fastBitmap) {
        this.a = fastBitmap;
    }

    public FastGraphics(FastBitmap fastBitmap) {
        this.a = fastBitmap;
    }

    public void DrawCircle(IntPoint intPoint, int i) {
        DrawCircle(intPoint.x, intPoint.y, i);
    }

    public void DrawCircle(int i, int i2, int i3) {
        int i4 = 0;
        if (this.a.isRGB()) {
            int i5 = 1 - i3;
            int i6 = 0;
            while (i3 >= i6) {
                this.a.setRGB(i3 + i, i6 + i2, this.b.r, this.b.g, this.b.b);
                this.a.setRGB(i6 + i, i3 + i2, this.b.r, this.b.g, this.b.b);
                this.a.setRGB((-i3) + i, i6 + i2, this.b.r, this.b.g, this.b.b);
                this.a.setRGB((-i6) + i, i3 + i2, this.b.r, this.b.g, this.b.b);
                this.a.setRGB((-i3) + i, (-i6) + i2, this.b.r, this.b.g, this.b.b);
                this.a.setRGB((-i6) + i, (-i3) + i2, this.b.r, this.b.g, this.b.b);
                this.a.setRGB(i3 + i, (-i6) + i2, this.b.r, this.b.g, this.b.b);
                this.a.setRGB(i6 + i, (-i3) + i2, this.b.r, this.b.g, this.b.b);
                int i7 = i6 + 1;
                if (i5 < 0) {
                    i5 = (i7 * 2) + 1 + i5;
                    i6 = i7;
                } else {
                    i3--;
                    i5 = (((i7 - i3) + 1) * 2) + i5;
                    i6 = i7;
                }
            }
            return;
        }
        int i8 = 1 - i3;
        while (i3 >= i4) {
            this.a.setGray(i3 + i, i4 + i2, this.c);
            this.a.setGray(i4 + i, i3 + i2, this.c);
            this.a.setGray((-i3) + i, i4 + i2, this.c);
            this.a.setGray((-i4) + i, i3 + i2, this.c);
            this.a.setGray((-i3) + i, (-i4) + i2, this.c);
            this.a.setGray((-i4) + i, (-i3) + i2, this.c);
            this.a.setGray(i3 + i, (-i4) + i2, this.c);
            this.a.setGray(i4 + i, (-i3) + i2, this.c);
            i4++;
            if (i8 < 0) {
                i8 += (i4 * 2) + 1;
            } else {
                i3--;
                i8 += ((i4 - i3) + 1) * 2;
            }
        }
    }

    public void DrawLine(IntPoint intPoint, IntPoint intPoint2) {
        DrawLine(intPoint.x, intPoint.y, intPoint2.x, intPoint2.y);
    }

    public void DrawLine(int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        if (this.a.isRGB()) {
            int i23 = i3 - i;
            int i24 = i4 - i2;
            int i25 = 0;
            if (i23 < 0) {
                i14 = -1;
            } else {
                i14 = i23 > 0 ? 1 : 0;
            }
            if (i24 < 0) {
                i15 = -1;
            } else {
                i15 = i24 > 0 ? 1 : 0;
            }
            if (i23 < 0) {
                i25 = -1;
            } else if (i23 > 0) {
                i25 = 1;
            }
            int iAbs = Math.abs(i23);
            int iAbs2 = Math.abs(i24);
            if (iAbs <= iAbs2) {
                int iAbs3 = Math.abs(i24);
                int iAbs4 = Math.abs(i23);
                if (i24 < 0) {
                    i22 = -1;
                } else {
                    i22 = i24 > 0 ? 1 : 0;
                }
                i16 = iAbs4;
                i17 = iAbs3;
                i18 = i22;
                i19 = 0;
            } else {
                i16 = iAbs2;
                i17 = iAbs;
                i18 = 0;
                i19 = i25;
            }
            int i26 = 0;
            int i27 = i17 >> 1;
            int i28 = i2;
            int i29 = i;
            while (i26 <= i17) {
                this.a.setRGB(i29, i28, this.b.r, this.b.g, this.b.b);
                int i30 = i27 + i16;
                if (i30 >= i17) {
                    i30 -= i17;
                    i20 = i29 + i14;
                    i21 = i28 + i15;
                } else {
                    i20 = i29 + i19;
                    i21 = i28 + i18;
                }
                i26++;
                i27 = i30;
                int i31 = i21;
                i29 = i20;
                i28 = i31;
            }
            return;
        }
        int i32 = i3 - i;
        int i33 = i4 - i2;
        int i34 = 0;
        if (i32 < 0) {
            i5 = -1;
        } else {
            i5 = i32 > 0 ? 1 : 0;
        }
        if (i33 < 0) {
            i6 = -1;
        } else {
            i6 = i33 > 0 ? 1 : 0;
        }
        if (i32 < 0) {
            i34 = -1;
        } else if (i32 > 0) {
            i34 = 1;
        }
        int iAbs5 = Math.abs(i32);
        int iAbs6 = Math.abs(i33);
        if (iAbs5 <= iAbs6) {
            int iAbs7 = Math.abs(i33);
            int iAbs8 = Math.abs(i32);
            if (i33 < 0) {
                i13 = -1;
            } else {
                i13 = i33 > 0 ? 1 : 0;
            }
            i7 = i13;
            i10 = iAbs8;
            i9 = 0;
            i8 = iAbs7;
        } else {
            i7 = 0;
            i8 = iAbs5;
            i9 = i34;
            i10 = iAbs6;
        }
        int i35 = 0;
        int i36 = i8 >> 1;
        while (i35 <= i8) {
            this.a.setGray(i, i2, this.c);
            i36 += i10;
            if (i36 >= i8) {
                i36 -= i8;
                i11 = i + i5;
                i12 = i2 + i6;
            } else {
                i11 = i + i9;
                i12 = i2 + i7;
            }
            i35++;
            i2 = i12;
            i = i11;
        }
    }

    public void DrawPolygon(IntPolygon intPolygon) {
        DrawPolygon(intPolygon.getX(), intPolygon.getY());
    }

    public void DrawPolygon(IntPolygon intPolygon, int i) {
        DrawPolygon(intPolygon.getX(), intPolygon.getY(), i);
    }

    public void DrawPolygon(List<IntPoint> list, int i) {
        if (list.size() > 2 && i > 2) {
            for (int i2 = 1; i2 < i; i2++) {
                DrawLine(list.get(i2), list.get(i2 - 1));
            }
            DrawLine(list.get(i - 1), list.get(0));
            return;
        }
        throw new IllegalArgumentException("Draw Polygon needs at least 3 points.");
    }

    public void DrawPolygon(List<IntPoint> list) {
        DrawPolygon(list, list.size());
    }

    public void DrawPolygon(int[] iArr, int[] iArr2) {
        DrawPolygon(iArr, iArr2, iArr.length);
    }

    public void DrawPolygon(int[] iArr, int[] iArr2, int i) {
        if (iArr.length > 2 && iArr2.length > 2) {
            if (iArr.length == iArr2.length) {
                for (int i2 = 1; i2 < i; i2++) {
                    DrawLine(iArr[i2], iArr2[i2], iArr[i2 - 1], iArr2[i2 - 1]);
                }
                DrawLine(iArr[i - 1], iArr2[i - 1], iArr[0], iArr2[0]);
                return;
            }
            throw new IllegalArgumentException("Draw Polygon: X and Y must be the same size.");
        }
        throw new IllegalArgumentException("Draw Polygon: X and Y needs at least 3 points.");
    }

    public void DrawRectangle(IntRectangle intRectangle) {
        DrawRectangle(intRectangle.x, intRectangle.y, intRectangle.width, intRectangle.height);
    }

    public void DrawRectangle(IntPoint intPoint, int i, int i2) {
        DrawRectangle(intPoint.x, intPoint.y, i, i2);
    }

    public void DrawRectangle(int i, int i2, int i3, int i4) {
        if (this.a.isRGB()) {
            for (int i5 = i2; i5 < i2 + i3; i5++) {
                this.a.setRGB(i, i5, this.b);
            }
            for (int i6 = i2; i6 < i2 + i3; i6++) {
                this.a.setRGB(i + i4, i6, this.b);
            }
            for (int i7 = i; i7 < i + i4; i7++) {
                this.a.setRGB(i7, i2, this.b);
                this.a.setRGB(i7, i2 + i3, this.b);
            }
            return;
        }
        for (int i8 = i2; i8 < i2 + i3; i8++) {
            this.a.setGray(i, i8, this.c);
        }
        for (int i9 = i2; i9 < i2 + i3; i9++) {
            this.a.setGray(i + i4, i9, this.c);
        }
        for (int i10 = i; i10 < i + i4; i10++) {
            this.a.setGray(i10, i2, this.c);
            this.a.setGray(i10, i2 + i3, this.c);
        }
    }
}
