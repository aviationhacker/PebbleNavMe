package ar.com.hjg.pngj.chunks;

import ar.com.hjg.pngj.ImageInfo;
import ar.com.hjg.pngj.chunks.PngChunk;

/* JADX INFO: loaded from: classes.dex */
public class PngChunkUNKNOWN extends PngChunkMultiple {
    public PngChunkUNKNOWN(String str, ImageInfo imageInfo) {
        super(str, imageInfo);
    }

    @Override // ar.com.hjg.pngj.chunks.PngChunk
    public PngChunk.ChunkOrderingConstraint getOrderingConstraint() {
        return PngChunk.ChunkOrderingConstraint.NONE;
    }

    @Override // ar.com.hjg.pngj.chunks.PngChunk
    public ChunkRaw createRawChunk() {
        return this.raw;
    }

    @Override // ar.com.hjg.pngj.chunks.PngChunk
    public void parseFromRaw(ChunkRaw chunkRaw) {
    }

    public byte[] getData() {
        return this.raw.data;
    }

    public void setData(byte[] bArr) {
        this.raw.data = bArr;
    }
}
