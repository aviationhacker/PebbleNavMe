package ar.com.hjg.pngj;

import com.google.common.primitives.UnsignedBytes;

/* JADX INFO: loaded from: classes.dex */
public class ImageLineByte implements IImageLine, IImageLineArray {
    final byte[] a;
    final byte[] b;
    final int c;
    protected FilterType filterType;
    public final ImageInfo imgInfo;

    public ImageLineByte(ImageInfo imageInfo) {
        this(imageInfo, null);
    }

    public ImageLineByte(ImageInfo imageInfo, byte[] bArr) {
        this.imgInfo = imageInfo;
        this.filterType = FilterType.FILTER_UNKNOWN;
        this.c = imageInfo.samplesPerRow;
        this.a = (bArr == null || bArr.length < this.c) ? new byte[this.c] : bArr;
        this.b = imageInfo.bitDepth == 16 ? new byte[this.c] : null;
    }

    public static IImageLineFactory<ImageLineByte> getFactory(ImageInfo imageInfo) {
        return new IImageLineFactory<ImageLineByte>() { // from class: ar.com.hjg.pngj.ImageLineByte.1
            @Override // ar.com.hjg.pngj.IImageLineFactory
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public ImageLineByte createImageLine(ImageInfo imageInfo2) {
                return new ImageLineByte(imageInfo2);
            }
        };
    }

    public FilterType getFilterUsed() {
        return this.filterType;
    }

    public byte[] getScanlineByte() {
        return this.a;
    }

    public byte[] getScanlineByte2() {
        return this.b;
    }

    public String toString() {
        return " cols=" + this.imgInfo.cols + " bpc=" + this.imgInfo.bitDepth + " size=" + this.a.length;
    }

    @Override // ar.com.hjg.pngj.IImageLine
    public void readFromPngRaw(byte[] bArr, int i, int i2, int i3) {
        int i4 = 1;
        this.filterType = FilterType.getByVal(bArr[0]);
        int i5 = i - 1;
        int i6 = (i3 - 1) * this.imgInfo.channels;
        if (this.imgInfo.bitDepth == 8) {
            if (i3 == 1) {
                System.arraycopy(bArr, 1, this.a, 0, i5);
                return;
            }
            int i7 = 1;
            int i8 = this.imgInfo.channels * i2;
            int i9 = 0;
            while (i7 <= i5) {
                this.a[i8] = bArr[i7];
                i9++;
                if (i9 == this.imgInfo.channels) {
                    i8 += i6;
                    i9 = 0;
                }
                i7++;
                i8++;
            }
            return;
        }
        if (this.imgInfo.bitDepth == 16) {
            if (i3 == 1) {
                for (int i10 = 0; i10 < this.imgInfo.samplesPerRow; i10++) {
                    int i11 = i4 + 1;
                    this.a[i10] = bArr[i4];
                    i4 = i11 + 1;
                    this.b[i10] = bArr[i11];
                }
                return;
            }
            int i12 = 1;
            int i13 = i2 != 0 ? this.imgInfo.channels * i2 : 0;
            int i14 = 0;
            while (i12 <= i5) {
                int i15 = i12 + 1;
                this.a[i13] = bArr[i12];
                i12 = i15 + 1;
                this.b[i13] = bArr[i15];
                i14++;
                if (i14 == this.imgInfo.channels) {
                    i13 += i6;
                    i14 = 0;
                }
                i13++;
            }
            return;
        }
        int i16 = this.imgInfo.bitDepth;
        int iA = ImageLineHelper.a(i16);
        int i17 = this.imgInfo.channels * i2;
        int i18 = 0;
        for (int i19 = 1; i19 < i; i19++) {
            int i20 = 8 - i16;
            int i21 = iA;
            do {
                this.a[i17] = (byte) ((bArr[i19] & i21) >> i20);
                i21 >>= i16;
                i20 -= i16;
                i17++;
                i18++;
                if (i18 == this.imgInfo.channels) {
                    i17 += i6;
                    i18 = 0;
                }
                if (i21 != 0) {
                }
            } while (i17 < this.c);
        }
    }

    @Override // ar.com.hjg.pngj.IImageLine
    public void writeToPngRaw(byte[] bArr) {
        int i = 1;
        bArr[0] = (byte) this.filterType.val;
        if (this.imgInfo.bitDepth == 8) {
            System.arraycopy(this.a, 0, bArr, 1, this.c);
            for (int i2 = 0; i2 < this.c; i2++) {
                bArr[i2 + 1] = this.a[i2];
            }
            return;
        }
        if (this.imgInfo.bitDepth == 16) {
            int i3 = 1;
            for (int i4 = 0; i4 < this.c; i4++) {
                int i5 = i3 + 1;
                bArr[i3] = this.a[i4];
                i3 = i5 + 1;
                bArr[i5] = this.b[i4];
            }
            return;
        }
        int i6 = this.imgInfo.bitDepth;
        int i7 = 0;
        int i8 = 8 - i6;
        for (int i9 = 0; i9 < this.c; i9++) {
            int i10 = (this.a[i9] << i8) | i7;
            i8 -= i6;
            if (i8 < 0 || i9 == this.c - 1) {
                bArr[i] = (byte) i10;
                i8 = 8 - i6;
                i++;
                i7 = 0;
            } else {
                i7 = i10;
            }
        }
    }

    @Override // ar.com.hjg.pngj.IImageLine
    public void endReadFromPngRaw() {
    }

    @Override // ar.com.hjg.pngj.IImageLineArray
    public int getSize() {
        return this.c;
    }

    @Override // ar.com.hjg.pngj.IImageLineArray
    public int getElem(int i) {
        return this.b == null ? this.a[i] & UnsignedBytes.MAX_VALUE : ((this.a[i] & UnsignedBytes.MAX_VALUE) << 8) | (this.b[i] & UnsignedBytes.MAX_VALUE);
    }

    public byte[] getScanline() {
        return this.a;
    }

    @Override // ar.com.hjg.pngj.IImageLineArray
    public ImageInfo getImageInfo() {
        return this.imgInfo;
    }

    @Override // ar.com.hjg.pngj.IImageLineArray
    public FilterType getFilterType() {
        return this.filterType;
    }
}
