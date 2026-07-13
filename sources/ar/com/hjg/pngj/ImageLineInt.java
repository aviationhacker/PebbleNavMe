package ar.com.hjg.pngj;

import com.google.common.primitives.UnsignedBytes;

/* JADX INFO: loaded from: classes.dex */
public class ImageLineInt implements IImageLine, IImageLineArray {
    protected FilterType filterType;
    public final ImageInfo imgInfo;
    protected final int[] scanline;
    protected final int size;

    public ImageLineInt(ImageInfo imageInfo) {
        this(imageInfo, null);
    }

    public ImageLineInt(ImageInfo imageInfo, int[] iArr) {
        this.filterType = FilterType.FILTER_UNKNOWN;
        this.imgInfo = imageInfo;
        this.filterType = FilterType.FILTER_UNKNOWN;
        this.size = imageInfo.samplesPerRow;
        this.scanline = (iArr == null || iArr.length < this.size) ? new int[this.size] : iArr;
    }

    @Override // ar.com.hjg.pngj.IImageLineArray
    public FilterType getFilterType() {
        return this.filterType;
    }

    protected void setFilterType(FilterType filterType) {
        this.filterType = filterType;
    }

    public String toString() {
        return " cols=" + this.imgInfo.cols + " bpc=" + this.imgInfo.bitDepth + " size=" + this.scanline.length;
    }

    @Override // ar.com.hjg.pngj.IImageLine
    public void readFromPngRaw(byte[] bArr, int i, int i2, int i3) {
        setFilterType(FilterType.getByVal(bArr[0]));
        int i4 = i - 1;
        int i5 = (i3 - 1) * this.imgInfo.channels;
        if (this.imgInfo.bitDepth == 8) {
            if (i3 == 1) {
                for (int i6 = 0; i6 < this.size; i6++) {
                    this.scanline[i6] = bArr[i6 + 1] & UnsignedBytes.MAX_VALUE;
                }
                return;
            }
            int i7 = 1;
            int i8 = 0;
            int i9 = this.imgInfo.channels * i2;
            while (i7 <= i4) {
                this.scanline[i9] = bArr[i7] & UnsignedBytes.MAX_VALUE;
                i8++;
                if (i8 == this.imgInfo.channels) {
                    i8 = 0;
                    i9 += i5;
                }
                i7++;
                i9++;
            }
            return;
        }
        if (this.imgInfo.bitDepth == 16) {
            if (i3 == 1) {
                int i10 = 1;
                for (int i11 = 0; i11 < this.size; i11++) {
                    int[] iArr = this.scanline;
                    int i12 = i10 + 1;
                    int i13 = (bArr[i10] & UnsignedBytes.MAX_VALUE) << 8;
                    i10 = i12 + 1;
                    iArr[i11] = (bArr[i12] & UnsignedBytes.MAX_VALUE) | i13;
                }
                return;
            }
            int i14 = 1;
            int i15 = 0;
            int i16 = i2 != 0 ? this.imgInfo.channels * i2 : 0;
            while (i14 <= i4) {
                int i17 = i14 + 1;
                this.scanline[i16] = ((bArr[i14] & UnsignedBytes.MAX_VALUE) << 8) | (bArr[i17] & UnsignedBytes.MAX_VALUE);
                i15++;
                if (i15 == this.imgInfo.channels) {
                    i15 = 0;
                    i16 += i5;
                }
                i14 = i17 + 1;
                i16++;
            }
            return;
        }
        int i18 = this.imgInfo.bitDepth;
        int iA = ImageLineHelper.a(i18);
        int i19 = 0;
        int i20 = i2 * this.imgInfo.channels;
        for (int i21 = 1; i21 < i; i21++) {
            int i22 = 8 - i18;
            int i23 = iA;
            do {
                this.scanline[i20] = (bArr[i21] & i23) >> i22;
                i23 >>= i18;
                i22 -= i18;
                i20++;
                i19++;
                if (i19 == this.imgInfo.channels) {
                    i19 = 0;
                    i20 += i5;
                }
                if (i23 != 0) {
                }
            } while (i20 < this.size);
        }
    }

    @Override // ar.com.hjg.pngj.IImageLine
    public void writeToPngRaw(byte[] bArr) {
        int i = 1;
        bArr[0] = (byte) this.filterType.val;
        if (this.imgInfo.bitDepth == 8) {
            for (int i2 = 0; i2 < this.size; i2++) {
                bArr[i2 + 1] = (byte) this.scanline[i2];
            }
            return;
        }
        if (this.imgInfo.bitDepth == 16) {
            int i3 = 1;
            for (int i4 = 0; i4 < this.size; i4++) {
                int i5 = i3 + 1;
                bArr[i3] = (byte) (this.scanline[i4] >> 8);
                i3 = i5 + 1;
                bArr[i5] = (byte) (this.scanline[i4] & 255);
            }
            return;
        }
        int i6 = this.imgInfo.bitDepth;
        int i7 = 0;
        int i8 = 8 - i6;
        for (int i9 = 0; i9 < this.size; i9++) {
            int i10 = (this.scanline[i9] << i8) | i7;
            i8 -= i6;
            if (i8 < 0 || i9 == this.size - 1) {
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
        return this.size;
    }

    @Override // ar.com.hjg.pngj.IImageLineArray
    public int getElem(int i) {
        return this.scanline[i];
    }

    public int[] getScanline() {
        return this.scanline;
    }

    @Override // ar.com.hjg.pngj.IImageLineArray
    public ImageInfo getImageInfo() {
        return this.imgInfo;
    }

    public static IImageLineFactory<ImageLineInt> getFactory(ImageInfo imageInfo) {
        return new IImageLineFactory<ImageLineInt>() { // from class: ar.com.hjg.pngj.ImageLineInt.1
            @Override // ar.com.hjg.pngj.IImageLineFactory
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public ImageLineInt createImageLine(ImageInfo imageInfo2) {
                return new ImageLineInt(imageInfo2);
            }
        };
    }
}
