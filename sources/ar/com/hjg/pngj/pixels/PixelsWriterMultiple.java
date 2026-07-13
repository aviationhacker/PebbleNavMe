package ar.com.hjg.pngj.pixels;

import ar.com.hjg.pngj.FilterType;
import ar.com.hjg.pngj.ImageInfo;
import ar.com.hjg.pngj.PngHelperInternal;
import com.google.android.gms.auth.api.credentials.CredentialsApi;
import java.util.LinkedList;
import org.eclipse.jetty.util.URIUtil;

/* JADX INFO: loaded from: classes.dex */
public class PixelsWriterMultiple extends PixelsWriter {
    protected static final int HINT_MEMORY_DEFAULT_KB = 100;
    private boolean a;
    private int b;
    protected int bandNum;
    private boolean c;
    protected CompressorStream[] filterBank;
    protected byte[] filteredRowTmp;
    protected byte[][] filteredRows;
    protected FiltersPerformance filtersPerf;
    protected int firstRowInThisBand;
    protected int hintMemoryKb;
    protected int lastRowInThisBand;
    protected int rowInBand;
    protected LinkedList<byte[]> rows;
    protected int rowsPerBand;
    protected int rowsPerBandCurrent;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PixelsWriterMultiple(ImageInfo imageInfo) {
        super(imageInfo);
        this.filterBank = new CompressorStream[6];
        this.filteredRows = new byte[5][];
        this.rowsPerBand = 0;
        this.rowsPerBandCurrent = 0;
        this.rowInBand = -1;
        this.bandNum = -1;
        this.a = true;
        this.hintMemoryKb = 100;
        this.b = CredentialsApi.ACTIVITY_RESULT_ADD_ACCOUNT;
        this.c = true;
        this.filtersPerf = new FiltersPerformance(imageInfo);
        this.rows = new LinkedList<>();
        for (int i = 0; i < 2; i++) {
            this.rows.add(new byte[this.buflen]);
        }
        this.filteredRowTmp = new byte[this.buflen];
    }

    @Override // ar.com.hjg.pngj.pixels.PixelsWriter
    protected void filterAndWrite(byte[] bArr) {
        byte[] bArrFilterRowWithFilterType;
        if (!this.initdone) {
            init();
        }
        if (bArr != this.rows.get(0)) {
            throw new RuntimeException("?");
        }
        a();
        byte[] bArr2 = this.rows.get(1);
        for (FilterType filterType : FilterType.getAllStandardNoneLast()) {
            if (this.currentRow != 0 || filterType == FilterType.FILTER_NONE || filterType == FilterType.FILTER_SUB) {
                byte[] bArrFilterRowWithFilterType2 = filterRowWithFilterType(filterType, bArr, bArr2, this.filteredRows[filterType.val]);
                this.filterBank[filterType.val].write(bArrFilterRowWithFilterType2);
                if (this.currentRow == 0 && filterType == FilterType.FILTER_SUB) {
                    this.filterBank[FilterType.FILTER_PAETH.val].write(bArrFilterRowWithFilterType2);
                    this.filterBank[FilterType.FILTER_AVERAGE.val].write(bArrFilterRowWithFilterType2);
                    this.filterBank[FilterType.FILTER_UP.val].write(bArrFilterRowWithFilterType2);
                }
                if (this.a) {
                    this.filtersPerf.updateFromFiltered(filterType, bArrFilterRowWithFilterType2, this.currentRow);
                }
            }
        }
        this.filteredRows[0] = bArr;
        if (this.a) {
            this.filterBank[5].write(this.filteredRows[this.filtersPerf.getPreferred().val]);
        }
        if (this.currentRow == this.lastRowInThisBand) {
            byte[] firstBytes = this.filterBank[d()].getFirstBytes();
            int i = 0;
            int i2 = this.firstRowInThisBand;
            int i3 = this.lastRowInThisBand - this.firstRowInThisBand;
            while (i2 <= this.lastRowInThisBand) {
                byte b = firstBytes[i];
                if (i2 != this.lastRowInThisBand) {
                    bArrFilterRowWithFilterType = filterRowWithFilterType(FilterType.getByVal(b), this.rows.get(i3), this.rows.get(i3 + 1), this.filteredRowTmp);
                } else {
                    bArrFilterRowWithFilterType = this.filteredRows[b];
                }
                sendToCompressedStream(bArrFilterRowWithFilterType);
                i2++;
                i3--;
                i++;
            }
        }
        if (this.rows.size() > this.rowsPerBandCurrent) {
            this.rows.addFirst(this.rows.removeLast());
        } else {
            this.rows.addFirst(new byte[this.buflen]);
        }
    }

    @Override // ar.com.hjg.pngj.pixels.PixelsWriter
    public byte[] getRowb() {
        return this.rows.get(0);
    }

    private void a() {
        boolean z = true;
        boolean z2 = this.currentRow == 0 || this.currentRow > this.lastRowInThisBand;
        if (this.currentRow == 0) {
            this.bandNum = -1;
        }
        if (z2) {
            this.bandNum++;
            this.rowInBand = 0;
        } else {
            this.rowInBand++;
        }
        if (z2) {
            this.firstRowInThisBand = this.currentRow;
            this.lastRowInThisBand = (this.firstRowInThisBand + this.rowsPerBand) - 1;
            if ((this.firstRowInThisBand + (this.rowsPerBand * 2)) - 1 >= this.imgInfo.rows) {
                this.lastRowInThisBand = this.imgInfo.rows - 1;
            }
            this.rowsPerBandCurrent = (this.lastRowInThisBand + 1) - this.firstRowInThisBand;
            if (this.rowsPerBandCurrent <= 3 || (this.rowsPerBandCurrent < 10 && this.imgInfo.bytesPerRow < 64)) {
                z = false;
            }
            this.a = z;
            b();
        }
    }

    private void b() {
        long j = ((long) this.buflen) * ((long) this.rowsPerBandCurrent);
        for (int i = 0; i <= 5; i++) {
            CompressorStream compressorStreamDeflater = this.filterBank[i];
            if (compressorStreamDeflater == null || compressorStreamDeflater.totalbytes != j) {
                if (compressorStreamDeflater != null) {
                    compressorStreamDeflater.close();
                }
                if (this.c) {
                    compressorStreamDeflater = new CompressorStreamLz4(null, this.buflen, j);
                } else {
                    compressorStreamDeflater = new CompressorStreamDeflater(null, this.buflen, j, 4, 0);
                }
                this.filterBank[i] = compressorStreamDeflater;
            } else {
                compressorStreamDeflater.reset();
            }
            compressorStreamDeflater.setStoreFirstByte(true, this.rowsPerBandCurrent);
        }
    }

    private int c() {
        int i = (int) (((((double) this.hintMemoryKb) * 1024.0d) / ((double) (this.imgInfo.bytesPerRow + 1))) - 5.0d);
        int i2 = i >= 1 ? i : 1;
        if (this.b > 0 && i2 > this.b) {
            i2 = this.b;
        }
        if (i2 > this.imgInfo.rows) {
            i2 = this.imgInfo.rows;
        }
        if (i2 > 2 && i2 > this.imgInfo.rows / 8) {
            int i3 = (this.imgInfo.rows + (i2 - 1)) / i2;
            i2 = (this.imgInfo.rows + (i3 / 2)) / i3;
        }
        PngHelperInternal.debug("rows :" + i2 + URIUtil.SLASH + this.imgInfo.rows);
        return i2;
    }

    private int d() {
        double d = Double.MAX_VALUE;
        int i = -1;
        int i2 = this.a ? 5 : 4;
        while (i2 >= 0) {
            double compressionRatio = this.filterBank[i2].getCompressionRatio();
            if (compressionRatio <= d) {
                i = i2;
            } else {
                compressionRatio = d;
            }
            i2--;
            d = compressionRatio;
        }
        return i;
    }

    @Override // ar.com.hjg.pngj.pixels.PixelsWriter
    protected void initParams() {
        if (this.imgInfo.cols < 3 && !FilterType.isValidStandard(this.filterType)) {
            this.filterType = FilterType.FILTER_DEFAULT;
        }
        if (this.imgInfo.rows < 3 && !FilterType.isValidStandard(this.filterType)) {
            this.filterType = FilterType.FILTER_DEFAULT;
        }
        for (int i = 1; i <= 4; i++) {
            if (this.filteredRows[i] == null || this.filteredRows[i].length < this.buflen) {
                this.filteredRows[i] = new byte[this.buflen];
            }
        }
        if (this.rowsPerBand == 0) {
            this.rowsPerBand = c();
        }
    }

    @Override // ar.com.hjg.pngj.pixels.PixelsWriter
    public void close() {
        super.close();
        this.rows.clear();
        for (CompressorStream compressorStream : this.filterBank) {
            compressorStream.close();
        }
    }

    public void setHintMemoryKb(int i) {
        if (i <= 0) {
            i = 100;
        } else if (i > 10000) {
            i = 10000;
        }
        this.hintMemoryKb = i;
    }

    public void setHintRowsPerBand(int i) {
        this.b = i;
    }

    public void setUseLz4(boolean z) {
        this.c = z;
    }

    public FiltersPerformance getFiltersPerf() {
        return this.filtersPerf;
    }
}
