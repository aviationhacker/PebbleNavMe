package ar.com.hjg.pngj.pixels;

import android.support.v4.media.session.PlaybackStateCompat;
import ar.com.hjg.pngj.FilterType;
import ar.com.hjg.pngj.ImageInfo;
import ar.com.hjg.pngj.PngHelperInternal;
import ar.com.hjg.pngj.PngjOutputException;
import com.google.common.primitives.UnsignedBytes;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
public abstract class PixelsWriter {
    private CompressorStream a;
    protected final int buflen;
    protected final int bytesPixel;
    protected final int bytesRow;
    private OutputStream c;
    protected final ImageInfo imgInfo;
    protected int deflaterCompLevel = 6;
    protected int deflaterStrategy = 0;
    protected boolean initdone = false;
    private int[] b = new int[5];
    protected int currentRow = -1;
    protected FilterType filterType = FilterType.FILTER_DEFAULT;

    protected abstract void filterAndWrite(byte[] bArr);

    public abstract byte[] getRowb();

    public PixelsWriter(ImageInfo imageInfo) {
        this.imgInfo = imageInfo;
        this.bytesRow = imageInfo.bytesPerRow;
        this.buflen = this.bytesRow + 1;
        this.bytesPixel = imageInfo.bytesPixel;
    }

    public final void processRow(byte[] bArr) {
        if (!this.initdone) {
            init();
        }
        this.currentRow++;
        filterAndWrite(bArr);
    }

    protected void sendToCompressedStream(byte[] bArr) {
        this.a.write(bArr, 0, bArr.length);
        int[] iArr = this.b;
        byte b = bArr[0];
        iArr[b] = iArr[b] + 1;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    protected final byte[] filterRowWithFilterType(FilterType filterType, byte[] bArr, byte[] bArr2, byte[] bArr3) {
        int i = 1;
        if (filterType == FilterType.FILTER_NONE) {
            bArr3 = bArr;
        }
        bArr3[0] = (byte) filterType.val;
        switch (filterType) {
            case FILTER_NONE:
                return bArr3;
            case FILTER_PAETH:
                for (int i2 = 1; i2 <= this.bytesPixel; i2++) {
                    bArr3[i2] = (byte) PngHelperInternal.filterRowPaeth(bArr[i2], 0, bArr2[i2] & UnsignedBytes.MAX_VALUE, 0);
                }
                int i3 = this.bytesPixel + 1;
                while (i3 <= this.bytesRow) {
                    bArr3[i3] = (byte) PngHelperInternal.filterRowPaeth(bArr[i3], bArr[i] & UnsignedBytes.MAX_VALUE, bArr2[i3] & UnsignedBytes.MAX_VALUE, bArr2[i] & UnsignedBytes.MAX_VALUE);
                    i3++;
                    i++;
                }
                return bArr3;
            case FILTER_SUB:
                for (int i4 = 1; i4 <= this.bytesPixel; i4++) {
                    bArr3[i4] = bArr[i4];
                }
                int i5 = this.bytesPixel + 1;
                while (i5 <= this.bytesRow) {
                    bArr3[i5] = (byte) (bArr[i5] - bArr[i]);
                    i5++;
                    i++;
                }
                return bArr3;
            case FILTER_AVERAGE:
                for (int i6 = 1; i6 <= this.bytesPixel; i6++) {
                    bArr3[i6] = (byte) (bArr[i6] - ((bArr2[i6] & UnsignedBytes.MAX_VALUE) / 2));
                }
                int i7 = this.bytesPixel + 1;
                while (i7 <= this.bytesRow) {
                    bArr3[i7] = (byte) (bArr[i7] - (((bArr2[i7] & UnsignedBytes.MAX_VALUE) + (bArr[i] & UnsignedBytes.MAX_VALUE)) / 2));
                    i7++;
                    i++;
                }
                return bArr3;
            case FILTER_UP:
                while (i <= this.bytesRow) {
                    bArr3[i] = (byte) (bArr[i] - bArr2[i]);
                    i++;
                }
                return bArr3;
            default:
                throw new PngjOutputException("Filter type not recognized: " + filterType);
        }
    }

    protected final void init() {
        if (!this.initdone) {
            initParams();
            this.initdone = true;
        }
    }

    protected void initParams() {
        if (this.a == null) {
            this.a = new CompressorStreamDeflater(this.c, this.buflen, this.imgInfo.getTotalRawBytes(), this.deflaterCompLevel, this.deflaterStrategy);
        }
    }

    public void close() {
        if (this.a != null) {
            this.a.close();
        }
    }

    public void setDeflaterStrategy(Integer num) {
        this.deflaterStrategy = num.intValue();
    }

    public void setDeflaterCompLevel(Integer num) {
        this.deflaterCompLevel = num.intValue();
    }

    public Integer getDeflaterCompLevel() {
        return Integer.valueOf(this.deflaterCompLevel);
    }

    public final void setOs(OutputStream outputStream) {
        this.c = outputStream;
    }

    public OutputStream getOs() {
        return this.c;
    }

    public final FilterType getFilterType() {
        return this.filterType;
    }

    public final void setFilterType(FilterType filterType) {
        this.filterType = filterType;
    }

    public double getCompression() {
        if (this.a.isDone()) {
            return this.a.getCompressionRatio();
        }
        return 1.0d;
    }

    public void setCompressorStream(CompressorStream compressorStream) {
        this.a = compressorStream;
    }

    public long getTotalBytesToWrite() {
        return this.imgInfo.getTotalRawBytes();
    }

    protected FilterType getDefaultFilter() {
        if (this.imgInfo.indexed || this.imgInfo.bitDepth < 8) {
            return FilterType.FILTER_NONE;
        }
        if (this.imgInfo.getTotalPixels() < PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) {
            return FilterType.FILTER_NONE;
        }
        if (this.imgInfo.rows == 1) {
            return FilterType.FILTER_SUB;
        }
        if (this.imgInfo.cols == 1) {
            return FilterType.FILTER_UP;
        }
        return FilterType.FILTER_PAETH;
    }

    public final String getFiltersUsed() {
        return String.format("%d,%d,%d,%d,%d", Integer.valueOf((int) (((((double) this.b[0]) * 100.0d) / ((double) this.imgInfo.rows)) + 0.5d)), Integer.valueOf((int) (((((double) this.b[1]) * 100.0d) / ((double) this.imgInfo.rows)) + 0.5d)), Integer.valueOf((int) (((((double) this.b[2]) * 100.0d) / ((double) this.imgInfo.rows)) + 0.5d)), Integer.valueOf((int) (((((double) this.b[3]) * 100.0d) / ((double) this.imgInfo.rows)) + 0.5d)), Integer.valueOf((int) (((((double) this.b[4]) * 100.0d) / ((double) this.imgInfo.rows)) + 0.5d)));
    }
}
