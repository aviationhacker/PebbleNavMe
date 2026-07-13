package ar.com.hjg.pngj;

import ar.com.hjg.pngj.chunks.ChunkRaw;
import ar.com.hjg.pngj.chunks.PngChunk;

/* JADX INFO: loaded from: classes.dex */
public interface IChunkFactory {
    PngChunk createChunk(ChunkRaw chunkRaw, ImageInfo imageInfo);
}
