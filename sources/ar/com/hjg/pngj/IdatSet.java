package ar.com.hjg.pngj;

import com.google.common.primitives.UnsignedBytes;
import defpackage.gg;
import java.util.Arrays;
import java.util.zip.Checksum;
import java.util.zip.Inflater;

/* JADX INFO: loaded from: classes.dex */
public class IdatSet extends DeflatedChunksSet {
    final gg b;
    protected final Deinterlacer deinterlacer;
    protected int[] filterUseStat;
    protected final ImageInfo imgInfo;
    protected byte[] rowUnfiltered;
    protected byte[] rowUnfilteredPrev;

    public IdatSet(String str, ImageInfo imageInfo, Deinterlacer deinterlacer) {
        this(str, imageInfo, deinterlacer, null, null);
    }

    public IdatSet(String str, ImageInfo imageInfo, Deinterlacer deinterlacer, Inflater inflater, byte[] bArr) {
        super(str, deinterlacer != null ? deinterlacer.getBytesToRead() + 1 : imageInfo.bytesPerRow + 1, imageInfo.bytesPerRow + 1, inflater, bArr);
        this.filterUseStat = new int[5];
        this.imgInfo = imageInfo;
        this.deinterlacer = deinterlacer;
        this.b = new gg(imageInfo, deinterlacer);
    }

    public void unfilterRow() {
        unfilterRow(this.b.m);
    }

    protected void unfilterRow(int i) {
        if (this.rowUnfiltered == null || this.rowUnfiltered.length < this.row.length) {
            this.rowUnfiltered = new byte[this.row.length];
            this.rowUnfilteredPrev = new byte[this.row.length];
        }
        if (this.b.j == 0) {
            Arrays.fill(this.rowUnfiltered, (byte) 0);
        }
        byte[] bArr = this.rowUnfiltered;
        this.rowUnfiltered = this.rowUnfilteredPrev;
        this.rowUnfilteredPrev = bArr;
        byte b = this.row[0];
        FilterType byVal = FilterType.getByVal(b);
        if (byVal == null) {
            throw new PngjInputException("Filter type " + ((int) b) + " invalid");
        }
        int[] iArr = this.filterUseStat;
        iArr[b] = iArr[b] + 1;
        this.rowUnfiltered[0] = this.row[0];
        switch (byVal) {
            case FILTER_NONE:
                b(i);
                return;
            case FILTER_SUB:
                d(i);
                return;
            case FILTER_UP:
                e(i);
                return;
            case FILTER_AVERAGE:
                a(i);
                return;
            case FILTER_PAETH:
                c(i);
                return;
            default:
                throw new PngjInputException("Filter type " + ((int) b) + " not implemented");
        }
    }

    private void a(int i) {
        int i2 = 1;
        int i3 = 1 - this.imgInfo.bytesPixel;
        while (i2 <= i) {
            this.rowUnfiltered[i2] = (byte) ((((i3 > 0 ? this.rowUnfiltered[i3] & UnsignedBytes.MAX_VALUE : 0) + (this.rowUnfilteredPrev[i2] & UnsignedBytes.MAX_VALUE)) / 2) + this.row[i2]);
            i2++;
            i3++;
        }
    }

    private void b(int i) {
        for (int i2 = 1; i2 <= i; i2++) {
            this.rowUnfiltered[i2] = this.row[i2];
        }
    }

    private void c(int i) {
        int i2 = 1 - this.imgInfo.bytesPixel;
        for (int i3 = 1; i3 <= i; i3++) {
            this.rowUnfiltered[i3] = (byte) (PngHelperInternal.a(i2 > 0 ? this.rowUnfiltered[i2] & UnsignedBytes.MAX_VALUE : 0, this.rowUnfilteredPrev[i3] & UnsignedBytes.MAX_VALUE, i2 > 0 ? this.rowUnfilteredPrev[i2] & UnsignedBytes.MAX_VALUE : 0) + this.row[i3]);
            i2++;
        }
    }

    private void d(int i) {
        int i2 = 1;
        for (int i3 = 1; i3 <= this.imgInfo.bytesPixel; i3++) {
            this.rowUnfiltered[i3] = this.row[i3];
        }
        int i4 = this.imgInfo.bytesPixel + 1;
        while (i4 <= i) {
            this.rowUnfiltered[i4] = (byte) (this.row[i4] + this.rowUnfiltered[i2]);
            i4++;
            i2++;
        }
    }

    private void e(int i) {
        for (int i2 = 1; i2 <= i; i2++) {
            this.rowUnfiltered[i2] = (byte) (this.row[i2] + this.rowUnfilteredPrev[i2]);
        }
    }

    @Override // ar.com.hjg.pngj.DeflatedChunksSet
    protected void preProcessRow() {
        super.preProcessRow();
        this.b.a(getRown());
        unfilterRow();
        this.b.a(this.rowUnfiltered, this.b.m + 1);
    }

    @Override // ar.com.hjg.pngj.DeflatedChunksSet
    protected int processRowCallback() {
        return advanceToNextRow();
    }

    @Override // ar.com.hjg.pngj.DeflatedChunksSet
    protected void processDoneCallback() {
    }

    public int advanceToNextRow() {
        int bytesToRead = 0;
        if (this.deinterlacer == null) {
            if (getRown() < this.imgInfo.rows - 1) {
                bytesToRead = this.imgInfo.bytesPerRow + 1;
            }
        } else if (this.deinterlacer.a()) {
            bytesToRead = this.deinterlacer.getBytesToRead() + 1;
        }
        if (!isCallbackMode()) {
            prepareForNextRow(bytesToRead);
        }
        return bytesToRead;
    }

    @Override // ar.com.hjg.pngj.DeflatedChunksSet
    public boolean isRowReady() {
        return !isWaitingForMoreInput();
    }

    public byte[] getUnfilteredRow() {
        return this.rowUnfiltered;
    }

    public Deinterlacer getDeinterlacer() {
        return this.deinterlacer;
    }

    void a(Checksum... checksumArr) {
        for (Checksum checksum : checksumArr) {
            if (checksum != null) {
                checksum.update(getUnfilteredRow(), 1, getRowFilled() - 1);
            }
        }
    }

    @Override // ar.com.hjg.pngj.DeflatedChunksSet
    public void close() {
        super.close();
        this.rowUnfiltered = null;
        this.rowUnfilteredPrev = null;
    }

    public int[] getFilterUseStat() {
        return this.filterUseStat;
    }
}
