package ar.com.hjg.pngj.chunks;

import ar.com.hjg.pngj.ImageInfo;
import ar.com.hjg.pngj.PngHelperInternal;
import ar.com.hjg.pngj.PngjException;
import ar.com.hjg.pngj.chunks.PngChunk;

/* JADX INFO: loaded from: classes.dex */
public class PngChunkSRGB extends PngChunkSingle {
    public static final String ID = "sRGB";
    public static final int RENDER_INTENT_Absolute_colorimetric = 3;
    public static final int RENDER_INTENT_Perceptual = 0;
    public static final int RENDER_INTENT_Relative_colorimetric = 1;
    public static final int RENDER_INTENT_Saturation = 2;
    private int a;

    public PngChunkSRGB(ImageInfo imageInfo) {
        super("sRGB", imageInfo);
    }

    @Override // ar.com.hjg.pngj.chunks.PngChunk
    public PngChunk.ChunkOrderingConstraint getOrderingConstraint() {
        return PngChunk.ChunkOrderingConstraint.BEFORE_PLTE_AND_IDAT;
    }

    @Override // ar.com.hjg.pngj.chunks.PngChunk
    public void parseFromRaw(ChunkRaw chunkRaw) {
        if (chunkRaw.len != 1) {
            throw new PngjException("bad chunk length " + chunkRaw);
        }
        this.a = PngHelperInternal.readInt1fromByte(chunkRaw.data, 0);
    }

    @Override // ar.com.hjg.pngj.chunks.PngChunk
    public ChunkRaw createRawChunk() {
        ChunkRaw chunkRawCreateEmptyChunk = createEmptyChunk(1, true);
        chunkRawCreateEmptyChunk.data[0] = (byte) this.a;
        return chunkRawCreateEmptyChunk;
    }

    public int getIntent() {
        return this.a;
    }

    public void setIntent(int i) {
        this.a = i;
    }
}
