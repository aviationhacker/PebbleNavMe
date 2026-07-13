package Catalano.Math.Dissimilarities;

/* JADX INFO: loaded from: classes.dex */
public final class Dissimilarity {
    private Dissimilarity() {
    }

    public static double Dice(int[] iArr, int[] iArr2) {
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < iArr.length; i4++) {
            if (iArr[i4] == 1 && iArr2[i4] == 0) {
                i3++;
            }
            if (iArr[i4] == 0 && iArr2[i4] == 1) {
                i2++;
            }
            if (iArr[i4] == 1 && iArr2[i4] == 1) {
                i++;
            }
        }
        return ((double) (i3 + i2)) / ((double) (((i * 2) + i2) + i3));
    }

    public static double Jaccard(int[] iArr, int[] iArr2) {
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < iArr.length; i4++) {
            if (iArr[i4] == 1 && iArr2[i4] == 0) {
                i3++;
            }
            if (iArr[i4] == 0 && iArr2[i4] == 1) {
                i2++;
            }
            if (iArr[i4] == 1 && iArr2[i4] == 1) {
                i++;
            }
        }
        return ((double) (i3 + i2)) / ((double) ((i + i2) + i3));
    }

    public static double Kulsinsk(int[] iArr, int[] iArr2) {
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < iArr.length; i4++) {
            if (iArr[i4] == 1 && iArr2[i4] == 0) {
                i3++;
            }
            if (iArr[i4] == 0 && iArr2[i4] == 1) {
                i2++;
            }
            if (iArr[i4] == 1 && iArr2[i4] == 1) {
                i++;
            }
        }
        return ((double) (((i3 + i2) - i) + iArr.length)) / ((double) ((i2 + i3) + iArr.length));
    }

    public static double Matching(int[] iArr, int[] iArr2) {
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < iArr.length; i3++) {
            if (iArr[i3] == 1 && iArr2[i3] == 0) {
                i2++;
            }
            if (iArr[i3] == 0 && iArr2[i3] == 1) {
                i++;
            }
        }
        return ((double) (i2 + i)) / ((double) iArr.length);
    }

    public static double RogersTanimoto(int[] iArr, int[] iArr2) {
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < iArr.length; i5++) {
            if (iArr[i5] == 1 && iArr2[i5] == 0) {
                i4++;
            }
            if (iArr[i5] == 0 && iArr2[i5] == 1) {
                i3++;
            }
            if (iArr[i5] == 1 && iArr2[i5] == 1) {
                i2++;
            }
            if (iArr[i5] == 0 && iArr2[i5] == 0) {
                i++;
            }
        }
        int i6 = (i4 + i3) * 2;
        return ((double) i6) / ((double) (i6 + (i + i2)));
    }

    public static double RusselRao(int[] iArr, int[] iArr2) {
        int i = 0;
        for (int i2 = 0; i2 < iArr.length; i2++) {
            if (iArr[i2] == 1 && iArr2[i2] == 1) {
                i++;
            }
        }
        return ((double) (iArr.length - i)) / ((double) iArr.length);
    }

    public static double SokalMichener(int[] iArr, int[] iArr2) {
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < iArr.length; i5++) {
            if (iArr[i5] == 1 && iArr2[i5] == 0) {
                i4++;
            }
            if (iArr[i5] == 0 && iArr2[i5] == 1) {
                i3++;
            }
            if (iArr[i5] == 1 && iArr2[i5] == 1) {
                i2++;
            }
            if (iArr[i5] == 0 && iArr2[i5] == 0) {
                i++;
            }
        }
        int i6 = (i4 + i3) * 2;
        return ((double) i6) / ((double) (i6 + (i + i2)));
    }

    public static double SokalSneath(int[] iArr, int[] iArr2) {
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < iArr.length; i4++) {
            if (iArr[i4] == 1 && iArr2[i4] == 0) {
                i3++;
            }
            if (iArr[i4] == 0 && iArr2[i4] == 1) {
                i2++;
            }
            if (iArr[i4] == 1 && iArr2[i4] == 1) {
                i++;
            }
        }
        int i5 = (i3 + i2) * 2;
        return ((double) i5) / ((double) (i5 + i));
    }

    public static double Yule(int[] iArr, int[] iArr2) {
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < iArr.length; i5++) {
            if (iArr[i5] == 1 && iArr2[i5] == 0) {
                i4++;
            }
            if (iArr[i5] == 0 && iArr2[i5] == 1) {
                i3++;
            }
            if (iArr[i5] == 1 && iArr2[i5] == 1) {
                i2++;
            }
            if (iArr[i5] == 0 && iArr2[i5] == 0) {
                i++;
            }
        }
        double d = (i4 + i3) * 2;
        return d / (((double) (i2 + i)) + (d / 2.0d));
    }
}
