package com.jabistudio.androidjhlabs.filter;

/* JADX INFO: loaded from: classes.dex */
public class FlipFilter {
    public static final int FLIP_180 = 6;
    public static final int FLIP_90CCW = 5;
    public static final int FLIP_90CW = 4;
    public static final int FLIP_H = 1;
    public static final int FLIP_HV = 3;
    public static final int FLIP_V = 2;
    private int a;

    public FlipFilter() {
        this(3);
    }

    public FlipFilter(int i) {
        this.a = i;
    }

    public void setOperation(int i) {
        this.a = i;
    }

    public int getOperation() {
        return this.a;
    }

    public int[] filter(int[] iArr, int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        switch (this.a) {
            case 1:
                int i7 = i - (0 + i);
                i3 = i2;
                i4 = i;
                break;
            case 2:
                int i8 = i2 - (0 + i2);
                i3 = i2;
                i4 = i;
                break;
            case 3:
                i3 = i;
                i4 = i2;
                break;
            case 4:
                int i9 = i2 - (0 + i2);
                i3 = i;
                i4 = i2;
                break;
            case 5:
                int i10 = i - (0 + i);
                i3 = i;
                i4 = i2;
                break;
            case 6:
                int i11 = i - (0 + i);
                int i12 = i2 - (0 + i2);
                i3 = i2;
                i4 = i;
                break;
            default:
                i3 = i2;
                i4 = i;
                break;
        }
        int[] iArr2 = new int[i3 * i4];
        for (int i13 = 0; i13 < i2; i13++) {
            for (int i14 = 0; i14 < i; i14++) {
                int i15 = (i13 * i) + i14;
                switch (this.a) {
                    case 1:
                        i6 = (i - i14) - 1;
                        i5 = i13;
                        break;
                    case 2:
                        i5 = (i2 - i13) - 1;
                        i6 = i14;
                        break;
                    case 3:
                        i6 = i13;
                        i5 = i14;
                        break;
                    case 4:
                        i6 = (i2 - i13) - 1;
                        i5 = i14;
                        break;
                    case 5:
                        i5 = (i - i14) - 1;
                        i6 = i13;
                        break;
                    case 6:
                        i5 = (i2 - i13) - 1;
                        i6 = (i - i14) - 1;
                        break;
                    default:
                        i6 = i14;
                        i5 = i13;
                        break;
                }
                iArr2[i6 + (i5 * i4)] = iArr[i15];
            }
        }
        return iArr2;
    }

    public String toString() {
        switch (this.a) {
            case 1:
                return "Flip Horizontal";
            case 2:
                return "Flip Vertical";
            case 3:
                return "Flip Diagonal";
            case 4:
                return "Rotate 90";
            case 5:
                return "Rotate -90";
            case 6:
                return "Rotate 180";
            default:
                return "Flip";
        }
    }
}
