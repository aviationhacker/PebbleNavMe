package ar.com.hjg.pngj.chunks;

import ar.com.hjg.pngj.ImageInfo;
import ar.com.hjg.pngj.PngjException;

/* JADX INFO: loaded from: classes.dex */
public class PngChunkTEXT extends PngChunkTextVar {
    public static final String ID = "tEXt";

    public PngChunkTEXT(ImageInfo imageInfo) {
        super("tEXt", imageInfo);
    }

    @Override // ar.com.hjg.pngj.chunks.PngChunk
    public ChunkRaw createRawChunk() {
        if (this.key == null || this.key.trim().length() == 0) {
            throw new PngjException("Text chunk key must be non empty");
        }
        byte[] bytes = ChunkHelper.toBytes(this.key + "\u0000" + this.val);
        ChunkRaw chunkRawCreateEmptyChunk = createEmptyChunk(bytes.length, false);
        chunkRawCreateEmptyChunk.data = bytes;
        return chunkRawCreateEmptyChunk;
    }

    @Override // ar.com.hjg.pngj.chunks.PngChunk
    public void parseFromRaw(ChunkRaw chunkRaw) {
        int i = 0;
        while (i < chunkRaw.data.length && chunkRaw.data[i] != 0) {
            i++;
        }
        this.key = ChunkHelper.toString(chunkRaw.data, 0, i);
        int i2 = i + 1;
        this.val = i2 < chunkRaw.data.length ? ChunkHelper.toString(chunkRaw.data, i2, chunkRaw.data.length - i2) : "";
    }
}
