package ar.com.hjg.pngj.chunks;

import ar.com.hjg.pngj.ImageInfo;
import ar.com.hjg.pngj.PngjException;
import ar.com.hjg.pngj.chunks.PngChunk;
import com.google.common.primitives.UnsignedBytes;

/* JADX INFO: loaded from: classes.dex */
public class PngChunkPLTE extends PngChunkSingle {
    public static final String ID = "PLTE";
    private int a;
    private int[] b;

    public PngChunkPLTE(ImageInfo imageInfo) {
        super("PLTE", imageInfo);
        this.a = 0;
    }

    @Override // ar.com.hjg.pngj.chunks.PngChunk
    public PngChunk.ChunkOrderingConstraint getOrderingConstraint() {
        return PngChunk.ChunkOrderingConstraint.NA;
    }

    @Override // ar.com.hjg.pngj.chunks.PngChunk
    public ChunkRaw createRawChunk() {
        int[] iArr = new int[3];
        ChunkRaw chunkRawCreateEmptyChunk = createEmptyChunk(this.a * 3, true);
        int i = 0;
        for (int i2 = 0; i2 < this.a; i2++) {
            getEntryRgb(i2, iArr);
            int i3 = i + 1;
            chunkRawCreateEmptyChunk.data[i] = (byte) iArr[0];
            int i4 = i3 + 1;
            chunkRawCreateEmptyChunk.data[i3] = (byte) iArr[1];
            i = i4 + 1;
            chunkRawCreateEmptyChunk.data[i4] = (byte) iArr[2];
        }
        return chunkRawCreateEmptyChunk;
    }

    @Override // ar.com.hjg.pngj.chunks.PngChunk
    public void parseFromRaw(ChunkRaw chunkRaw) {
        int i = 0;
        setNentries(chunkRaw.len / 3);
        for (int i2 = 0; i2 < this.a; i2++) {
            int i3 = i + 1;
            int i4 = i3 + 1;
            i = i4 + 1;
            setEntry(i2, chunkRaw.data[i] & UnsignedBytes.MAX_VALUE, chunkRaw.data[i3] & UnsignedBytes.MAX_VALUE, chunkRaw.data[i4] & UnsignedBytes.MAX_VALUE);
        }
    }

    public void setNentries(int i) {
        this.a = i;
        if (this.a < 1 || this.a > 256) {
            throw new PngjException("invalid pallette - nentries=" + this.a);
        }
        if (this.b == null || this.b.length != this.a) {
            this.b = new int[this.a];
        }
    }

    public int getNentries() {
        return this.a;
    }

    public void setEntry(int i, int i2, int i3, int i4) {
        this.b[i] = (i2 << 16) | (i3 << 8) | i4;
    }

    public int getEntry(int i) {
        return this.b[i];
    }

    public void getEntryRgb(int i, int[] iArr) {
        getEntryRgb(i, iArr, 0);
    }

    public void getEntryRgb(int i, int[] iArr, int i2) {
        int i3 = this.b[i];
        iArr[i2 + 0] = (16711680 & i3) >> 16;
        iArr[i2 + 1] = (65280 & i3) >> 8;
        iArr[i2 + 2] = i3 & 255;
    }

    public int minBitDepth() {
        if (this.a <= 2) {
            return 1;
        }
        if (this.a > 4) {
            return this.a <= 16 ? 4 : 8;
        }
        return 2;
    }
}
