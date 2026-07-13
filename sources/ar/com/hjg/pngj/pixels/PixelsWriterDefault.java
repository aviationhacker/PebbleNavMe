package ar.com.hjg.pngj.pixels;

import android.support.v4.media.session.PlaybackStateCompat;
import ar.com.hjg.pngj.FilterType;
import ar.com.hjg.pngj.ImageInfo;
import ar.com.hjg.pngj.PngjOutputException;
import java.util.Arrays;
import org.eclipse.jetty.http.HttpStatus;

/* JADX INFO: loaded from: classes.dex */
public class PixelsWriterDefault extends PixelsWriter {
    protected int adaptMaxSkip;
    protected int adaptNextRow;
    protected double adaptSkipIncreaseFactor;
    protected int adaptSkipIncreaseSinceRow;
    protected FilterType curfilterType;
    protected FiltersPerformance filtersPerformance;
    protected byte[] rowb;
    protected byte[] rowbfilter;
    protected byte[] rowbprev;

    public PixelsWriterDefault(ImageInfo imageInfo) {
        super(imageInfo);
        this.adaptNextRow = 0;
        this.filtersPerformance = new FiltersPerformance(imageInfo);
    }

    @Override // ar.com.hjg.pngj.pixels.PixelsWriter
    protected void initParams() {
        super.initParams();
        if (this.rowb == null || this.rowb.length < this.buflen) {
            this.rowb = new byte[this.buflen];
        }
        if (this.rowbfilter == null || this.rowbfilter.length < this.buflen) {
            this.rowbfilter = new byte[this.buflen];
        }
        if (this.rowbprev == null || this.rowbprev.length < this.buflen) {
            this.rowbprev = new byte[this.buflen];
        } else {
            Arrays.fill(this.rowbprev, (byte) 0);
        }
        if (this.imgInfo.cols < 3 && !FilterType.isValidStandard(this.filterType)) {
            this.filterType = FilterType.FILTER_DEFAULT;
        }
        if (this.imgInfo.rows < 3 && !FilterType.isValidStandard(this.filterType)) {
            this.filterType = FilterType.FILTER_DEFAULT;
        }
        if (this.imgInfo.getTotalPixels() <= PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID && !FilterType.isValidStandard(this.filterType)) {
            this.filterType = getDefaultFilter();
        }
        if (FilterType.isAdaptive(this.filterType)) {
            this.adaptNextRow = 0;
            if (this.filterType == FilterType.FILTER_ADAPTIVE_FAST) {
                this.adaptMaxSkip = HttpStatus.OK_200;
                this.adaptSkipIncreaseSinceRow = 3;
                this.adaptSkipIncreaseFactor = 0.25d;
            } else if (this.filterType == FilterType.FILTER_ADAPTIVE_MEDIUM) {
                this.adaptMaxSkip = 8;
                this.adaptSkipIncreaseSinceRow = 32;
                this.adaptSkipIncreaseFactor = 0.0125d;
            } else {
                if (this.filterType == FilterType.FILTER_ADAPTIVE_FULL) {
                    this.adaptMaxSkip = 0;
                    this.adaptSkipIncreaseSinceRow = 128;
                    this.adaptSkipIncreaseFactor = 0.008333333333333333d;
                    return;
                }
                throw new PngjOutputException("bad filter " + this.filterType);
            }
        }
    }

    @Override // ar.com.hjg.pngj.pixels.PixelsWriter
    protected void filterAndWrite(byte[] bArr) {
        if (bArr != this.rowb) {
            throw new RuntimeException("??");
        }
        decideCurFilterType();
        sendToCompressedStream(filterRowWithFilterType(this.curfilterType, bArr, this.rowbprev, this.rowbfilter));
        byte[] bArr2 = this.rowb;
        this.rowb = this.rowbprev;
        this.rowbprev = bArr2;
    }

    protected void decideCurFilterType() {
        if (FilterType.isValidStandard(getFilterType())) {
            this.curfilterType = getFilterType();
        } else if (getFilterType() == FilterType.FILTER_PRESERVE) {
            this.curfilterType = FilterType.getByVal(this.rowb[0]);
        } else if (getFilterType() == FilterType.FILTER_CYCLIC) {
            this.curfilterType = FilterType.getByVal(this.currentRow % 5);
        } else if (getFilterType() == FilterType.FILTER_DEFAULT) {
            setFilterType(getDefaultFilter());
            this.curfilterType = getFilterType();
        } else if (FilterType.isAdaptive(getFilterType())) {
            if (this.currentRow == this.adaptNextRow) {
                for (FilterType filterType : FilterType.getAllStandard()) {
                    this.filtersPerformance.updateFromRaw(filterType, this.rowb, this.rowbprev, this.currentRow);
                }
                this.curfilterType = this.filtersPerformance.getPreferred();
                int iRound = this.currentRow >= this.adaptSkipIncreaseSinceRow ? (int) Math.round(((double) (this.currentRow - this.adaptSkipIncreaseSinceRow)) * this.adaptSkipIncreaseFactor) : 0;
                if (iRound > this.adaptMaxSkip) {
                    iRound = this.adaptMaxSkip;
                }
                this.adaptNextRow = this.currentRow + 1 + (this.currentRow != 0 ? iRound : 0);
            }
        } else {
            throw new PngjOutputException("not implemented filter: " + getFilterType());
        }
        if (this.currentRow == 0 && this.curfilterType != FilterType.FILTER_NONE && this.curfilterType != FilterType.FILTER_SUB) {
            this.curfilterType = FilterType.FILTER_SUB;
        }
    }

    @Override // ar.com.hjg.pngj.pixels.PixelsWriter
    public byte[] getRowb() {
        if (!this.initdone) {
            init();
        }
        return this.rowb;
    }

    @Override // ar.com.hjg.pngj.pixels.PixelsWriter
    public void close() {
        super.close();
    }

    public void setPreferenceForNone(double d) {
        this.filtersPerformance.setPreferenceForNone(d);
    }

    public void tuneMemory(double d) {
        this.filtersPerformance.tuneMemory(d);
    }

    public void setFilterWeights(double[] dArr) {
        this.filtersPerformance.setFilterWeights(dArr);
    }
}
