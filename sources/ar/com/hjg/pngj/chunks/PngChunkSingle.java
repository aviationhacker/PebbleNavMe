package ar.com.hjg.pngj.chunks;

import ar.com.hjg.pngj.ImageInfo;

/* JADX INFO: loaded from: classes.dex */
public abstract class PngChunkSingle extends PngChunk {
    protected PngChunkSingle(String str, ImageInfo imageInfo) {
        super(str, imageInfo);
    }

    @Override // ar.com.hjg.pngj.chunks.PngChunk
    public final boolean allowsMultiple() {
        return false;
    }

    public int hashCode() {
        return (this.id == null ? 0 : this.id.hashCode()) + 31;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            PngChunkSingle pngChunkSingle = (PngChunkSingle) obj;
            return this.id == null ? pngChunkSingle.id == null : this.id.equals(pngChunkSingle.id);
        }
        return false;
    }
}
