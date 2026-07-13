package ar.com.hjg.pngj.chunks;

import ar.com.hjg.pngj.ImageInfo;
import ar.com.hjg.pngj.PngjException;
import ar.com.hjg.pngj.chunks.PngChunk;

/* JADX INFO: loaded from: classes.dex */
public class PngChunkSTER extends PngChunkSingle {
    public static final String ID = "sTER";
    private byte a;

    public PngChunkSTER(ImageInfo imageInfo) {
        super(ID, imageInfo);
    }

    @Override // ar.com.hjg.pngj.chunks.PngChunk
    public PngChunk.ChunkOrderingConstraint getOrderingConstraint() {
        return PngChunk.ChunkOrderingConstraint.BEFORE_IDAT;
    }

    @Override // ar.com.hjg.pngj.chunks.PngChunk
    public ChunkRaw createRawChunk() {
        ChunkRaw chunkRawCreateEmptyChunk = createEmptyChunk(1, true);
        chunkRawCreateEmptyChunk.data[0] = this.a;
        return chunkRawCreateEmptyChunk;
    }

    @Override // ar.com.hjg.pngj.chunks.PngChunk
    public void parseFromRaw(ChunkRaw chunkRaw) {
        if (chunkRaw.len != 1) {
            throw new PngjException("bad chunk length " + chunkRaw);
        }
        this.a = chunkRaw.data[0];
    }

    public byte getMode() {
        return this.a;
    }

    public void setMode(byte b) {
        this.a = b;
    }
}
