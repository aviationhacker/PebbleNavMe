package ar.com.hjg.pngj.chunks;

import ar.com.hjg.pngj.ImageInfo;
import ar.com.hjg.pngj.PngHelperInternal;
import ar.com.hjg.pngj.PngjException;
import ar.com.hjg.pngj.chunks.PngChunk;

/* JADX INFO: loaded from: classes.dex */
public class PngChunkHIST extends PngChunkSingle {
    public static final String ID = "hIST";
    private int[] a;

    public PngChunkHIST(ImageInfo imageInfo) {
        super("hIST", imageInfo);
        this.a = new int[0];
    }

    @Override // ar.com.hjg.pngj.chunks.PngChunk
    public PngChunk.ChunkOrderingConstraint getOrderingConstraint() {
        return PngChunk.ChunkOrderingConstraint.AFTER_PLTE_BEFORE_IDAT;
    }

    @Override // ar.com.hjg.pngj.chunks.PngChunk
    public void parseFromRaw(ChunkRaw chunkRaw) {
        if (!this.imgInfo.indexed) {
            throw new PngjException("only indexed images accept a HIST chunk");
        }
        this.a = new int[chunkRaw.data.length / 2];
        for (int i = 0; i < this.a.length; i++) {
            this.a[i] = PngHelperInternal.readInt2fromBytes(chunkRaw.data, i * 2);
        }
    }

    @Override // ar.com.hjg.pngj.chunks.PngChunk
    public ChunkRaw createRawChunk() {
        if (!this.imgInfo.indexed) {
            throw new PngjException("only indexed images accept a HIST chunk");
        }
        ChunkRaw chunkRawCreateEmptyChunk = createEmptyChunk(this.a.length * 2, true);
        for (int i = 0; i < this.a.length; i++) {
            PngHelperInternal.writeInt2tobytes(this.a[i], chunkRawCreateEmptyChunk.data, i * 2);
        }
        return chunkRawCreateEmptyChunk;
    }

    public int[] getHist() {
        return this.a;
    }

    public void setHist(int[] iArr) {
        this.a = iArr;
    }
}
