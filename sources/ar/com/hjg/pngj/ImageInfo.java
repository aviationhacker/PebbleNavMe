package ar.com.hjg.pngj;

/* JADX INFO: loaded from: classes.dex */
public class ImageInfo {
    public static final int MAX_COLS_ROW = 16777216;
    private long a;
    public final boolean alpha;
    private long b;
    public final int bitDepth;
    public final int bitspPixel;
    public final int bytesPerRow;
    public final int bytesPixel;
    public final int channels;
    public final int cols;
    public final boolean greyscale;
    public final boolean indexed;
    public final boolean packed;
    public final int rows;
    public final int samplesPerRow;
    public final int samplesPerRowPacked;

    public ImageInfo(int i, int i2, int i3, boolean z) {
        this(i, i2, i3, z, false, false);
    }

    public ImageInfo(int i, int i2, int i3, boolean z, boolean z2, boolean z3) {
        this.a = -1L;
        this.b = -1L;
        this.cols = i;
        this.rows = i2;
        this.alpha = z;
        this.indexed = z3;
        this.greyscale = z2;
        if (this.greyscale && z3) {
            throw new PngjException("palette and greyscale are mutually exclusive");
        }
        this.channels = (z2 || z3) ? z ? 2 : 1 : z ? 4 : 3;
        this.bitDepth = i3;
        this.packed = i3 < 8;
        this.bitspPixel = this.channels * this.bitDepth;
        this.bytesPixel = (this.bitspPixel + 7) / 8;
        this.bytesPerRow = ((this.bitspPixel * i) + 7) / 8;
        this.samplesPerRow = this.channels * this.cols;
        this.samplesPerRowPacked = this.packed ? this.bytesPerRow : this.samplesPerRow;
        switch (this.bitDepth) {
            case 1:
            case 2:
            case 4:
                if (!this.indexed && !this.greyscale) {
                    throw new PngjException("only indexed or grayscale can have bitdepth=" + this.bitDepth);
                }
                break;
            case 8:
                break;
            case 16:
                if (this.indexed) {
                    throw new PngjException("indexed can't have bitdepth=" + this.bitDepth);
                }
                break;
            default:
                throw new PngjException("invalid bitdepth=" + this.bitDepth);
        }
        if (i < 1 || i > 16777216) {
            throw new PngjException("invalid cols=" + i + " ???");
        }
        if (i2 < 1 || i2 > 16777216) {
            throw new PngjException("invalid rows=" + i2 + " ???");
        }
        if (this.samplesPerRow < 1) {
            throw new PngjException("invalid image parameters (overflow?)");
        }
    }

    public long getTotalPixels() {
        if (this.a < 0) {
            this.a = ((long) this.cols) * ((long) this.rows);
        }
        return this.a;
    }

    public long getTotalRawBytes() {
        if (this.b < 0) {
            this.b = ((long) (this.bytesPerRow + 1)) * ((long) this.rows);
        }
        return this.b;
    }

    public String toString() {
        return "ImageInfo [cols=" + this.cols + ", rows=" + this.rows + ", bitDepth=" + this.bitDepth + ", channels=" + this.channels + ", alpha=" + this.alpha + ", greyscale=" + this.greyscale + ", indexed=" + this.indexed + "]";
    }

    public String toStringBrief() {
        return String.valueOf(this.cols) + "x" + this.rows + (this.bitDepth != 8 ? "d" + this.bitDepth : "") + (this.alpha ? "a" : "") + (this.indexed ? "p" : "") + (this.greyscale ? "g" : "");
    }

    public String toStringDetail() {
        return "ImageInfo [cols=" + this.cols + ", rows=" + this.rows + ", bitDepth=" + this.bitDepth + ", channels=" + this.channels + ", bitspPixel=" + this.bitspPixel + ", bytesPixel=" + this.bytesPixel + ", bytesPerRow=" + this.bytesPerRow + ", samplesPerRow=" + this.samplesPerRow + ", samplesPerRowP=" + this.samplesPerRowPacked + ", alpha=" + this.alpha + ", greyscale=" + this.greyscale + ", indexed=" + this.indexed + ", packed=" + this.packed + "]";
    }

    public int hashCode() {
        return (((((this.greyscale ? 1231 : 1237) + (((((((((this.alpha ? 1231 : 1237) + 31) * 31) + this.bitDepth) * 31) + this.channels) * 31) + this.cols) * 31)) * 31) + (this.indexed ? 1231 : 1237)) * 31) + this.rows;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            ImageInfo imageInfo = (ImageInfo) obj;
            return this.alpha == imageInfo.alpha && this.bitDepth == imageInfo.bitDepth && this.channels == imageInfo.channels && this.cols == imageInfo.cols && this.greyscale == imageInfo.greyscale && this.indexed == imageInfo.indexed && this.rows == imageInfo.rows;
        }
        return false;
    }
}
