package ar.com.hjg.pngj.pixels;

import ar.com.hjg.pngj.FilterType;
import ar.com.hjg.pngj.ImageInfo;
import ar.com.hjg.pngj.PngHelperInternal;
import ar.com.hjg.pngj.PngjExceptionInternal;
import com.google.common.primitives.UnsignedBytes;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class FiltersPerformance {
    public static final double[] FILTER_WEIGHTS_DEFAULT = {0.73d, 1.03d, 0.97d, 1.11d, 1.22d};
    private static final double l = (-1.0d) / Math.log(2.0d);
    private final ImageInfo a;
    private double b = 0.7d;
    private int c = -1;
    private double[] d = new double[5];
    private double[] e = new double[5];
    private double[] f = new double[5];
    private int[] g = new int[256];
    private int h = -1;
    private boolean i = false;
    private double j = 1.0d;
    private double[] k = {-1.0d, -1.0d, -1.0d, -1.0d, -1.0d};

    public FiltersPerformance(ImageInfo imageInfo) {
        this.a = imageInfo;
    }

    private void a() {
        if (this.k[0] < 0.0d) {
            System.arraycopy(FILTER_WEIGHTS_DEFAULT, 0, this.k, 0, 5);
            double d = this.k[0];
            if (this.a.bitDepth == 16) {
                d = 1.2d;
            } else if (this.a.alpha) {
                d = 0.8d;
            } else if (this.a.indexed || this.a.bitDepth < 8) {
                d = 0.4d;
            }
            this.k[0] = d / this.j;
        }
        Arrays.fill(this.f, 1.0d);
        this.i = true;
    }

    public void updateFromFiltered(FilterType filterType, byte[] bArr, int i) {
        a(filterType, bArr, null, null, i);
    }

    public void updateFromRaw(FilterType filterType, byte[] bArr, byte[] bArr2, int i) {
        a(filterType, null, bArr, bArr2, i);
    }

    private void a(FilterType filterType, byte[] bArr, byte[] bArr2, byte[] bArr3, int i) {
        if (!this.i) {
            a();
        }
        if (i != this.c) {
            Arrays.fill(this.d, Double.NaN);
            Arrays.fill(this.e, Double.NaN);
        }
        this.c = i;
        if (bArr != null) {
            computeHistogram(bArr);
        } else {
            computeHistogramForFilter(filterType, bArr2, bArr3);
        }
        if (filterType == FilterType.FILTER_NONE) {
            this.e[filterType.val] = computeEntropyFromHistogram();
        } else {
            this.d[filterType.val] = computeAbsFromHistogram();
        }
    }

    public FilterType getPreferred() {
        double dPow;
        double d;
        int i;
        int i2 = 0;
        double d2 = Double.MAX_VALUE;
        int i3 = 0;
        while (i2 < 5) {
            if (!Double.isNaN(this.d[i2])) {
                dPow = this.d[i2];
            } else {
                if (!Double.isNaN(this.e[i2])) {
                    dPow = (Math.pow(2.0d, this.e[i2]) - 1.0d) * 0.5d;
                }
                d = d2;
                i = i3;
                i2++;
                i3 = i;
                d2 = d;
            }
            d = (dPow * this.k[i2] * (1.0d - this.b)) + (this.f[i2] * this.b);
            this.f[i2] = d;
            if (d < d2) {
                i = i2;
            } else {
                d = d2;
                i = i3;
            }
            i2++;
            i3 = i;
            d2 = d;
        }
        this.h = i3;
        return FilterType.getByVal(this.h);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final void computeHistogramForFilter(FilterType filterType, byte[] bArr, byte[] bArr2) {
        int i = 1;
        Arrays.fill(this.g, 0);
        int i2 = this.a.bytesPerRow;
        switch (filterType) {
            case FILTER_NONE:
                while (i <= i2) {
                    int[] iArr = this.g;
                    int i3 = bArr[i] & UnsignedBytes.MAX_VALUE;
                    iArr[i3] = iArr[i3] + 1;
                    i++;
                }
                return;
            case FILTER_PAETH:
                for (int i4 = 1; i4 <= i2; i4++) {
                    int[] iArr2 = this.g;
                    int iFilterRowPaeth = PngHelperInternal.filterRowPaeth(bArr[i4], 0, bArr2[i4] & UnsignedBytes.MAX_VALUE, 0);
                    iArr2[iFilterRowPaeth] = iArr2[iFilterRowPaeth] + 1;
                }
                int i5 = this.a.bytesPixel + 1;
                while (i5 <= i2) {
                    int[] iArr3 = this.g;
                    int iFilterRowPaeth2 = PngHelperInternal.filterRowPaeth(bArr[i5], bArr[i] & UnsignedBytes.MAX_VALUE, bArr2[i5] & UnsignedBytes.MAX_VALUE, bArr2[i] & UnsignedBytes.MAX_VALUE);
                    iArr3[iFilterRowPaeth2] = iArr3[iFilterRowPaeth2] + 1;
                    i5++;
                    i++;
                }
                return;
            case FILTER_SUB:
                for (int i6 = 1; i6 <= this.a.bytesPixel; i6++) {
                    int[] iArr4 = this.g;
                    int i7 = bArr[i6] & UnsignedBytes.MAX_VALUE;
                    iArr4[i7] = iArr4[i7] + 1;
                }
                int i8 = this.a.bytesPixel + 1;
                while (i8 <= i2) {
                    int[] iArr5 = this.g;
                    int i9 = (bArr[i8] - bArr[i]) & 255;
                    iArr5[i9] = iArr5[i9] + 1;
                    i8++;
                    i++;
                }
                return;
            case FILTER_UP:
                while (i <= this.a.bytesPerRow) {
                    int[] iArr6 = this.g;
                    int i10 = (bArr[i] - bArr2[i]) & 255;
                    iArr6[i10] = iArr6[i10] + 1;
                    i++;
                }
                return;
            case FILTER_AVERAGE:
                for (int i11 = 1; i11 <= this.a.bytesPixel; i11++) {
                    int[] iArr7 = this.g;
                    int i12 = ((bArr[i11] & UnsignedBytes.MAX_VALUE) - ((bArr2[i11] & UnsignedBytes.MAX_VALUE) / 2)) & 255;
                    iArr7[i12] = iArr7[i12] + 1;
                }
                int i13 = this.a.bytesPixel + 1;
                while (i13 <= i2) {
                    int[] iArr8 = this.g;
                    int i14 = ((bArr[i13] & UnsignedBytes.MAX_VALUE) - (((bArr2[i13] & UnsignedBytes.MAX_VALUE) + (bArr[i] & UnsignedBytes.MAX_VALUE)) / 2)) & 255;
                    iArr8[i14] = iArr8[i14] + 1;
                    i13++;
                    i++;
                }
                return;
            default:
                throw new PngjExceptionInternal("Bad filter:" + filterType);
        }
    }

    public void computeHistogram(byte[] bArr) {
        Arrays.fill(this.g, 0);
        for (int i = 1; i < this.a.bytesPerRow; i++) {
            int[] iArr = this.g;
            int i2 = bArr[i] & UnsignedBytes.MAX_VALUE;
            iArr[i2] = iArr[i2] + 1;
        }
    }

    public double computeAbsFromHistogram() {
        int i = 0;
        int i2 = 1;
        while (i2 < 128) {
            int i3 = (this.g[i2] * i2) + i;
            i2++;
            i = i3;
        }
        int i4 = i;
        int i5 = 128;
        for (int i6 = 128; i6 > 0; i6--) {
            i4 += this.g[i5] * i6;
            i5++;
        }
        return ((double) i4) / ((double) this.a.bytesPerRow);
    }

    public final double computeEntropyFromHistogram() {
        double d = 1.0d / ((double) this.a.bytesPerRow);
        double dLog = Math.log(d);
        double dLog2 = 0.0d;
        for (int i : this.g) {
            if (i > 0) {
                dLog2 += (Math.log(i) + dLog) * ((double) i);
            }
        }
        double d2 = dLog2 * l * d;
        if (d2 < 0.0d) {
            return 0.0d;
        }
        return d2;
    }

    public void setPreferenceForNone(double d) {
        this.j = d;
    }

    public void tuneMemory(double d) {
        if (d == 0.0d) {
            this.b = 0.0d;
        } else {
            this.b = Math.pow(this.b, 1.0d / d);
        }
    }

    public void setFilterWeights(double[] dArr) {
        System.arraycopy(dArr, 0, this.k, 0, 5);
    }
}
