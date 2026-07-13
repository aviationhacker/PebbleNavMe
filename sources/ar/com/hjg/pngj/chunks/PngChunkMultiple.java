package ar.com.hjg.pngj.chunks;

import ar.com.hjg.pngj.ImageInfo;

/* JADX INFO: loaded from: classes.dex */
public abstract class PngChunkMultiple extends PngChunk {
    protected PngChunkMultiple(String str, ImageInfo imageInfo) {
        super(str, imageInfo);
    }

    @Override // ar.com.hjg.pngj.chunks.PngChunk
    public final boolean allowsMultiple() {
        return true;
    }
}
