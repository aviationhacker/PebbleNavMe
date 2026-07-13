package ar.com.hjg.pngj.chunks;

import ar.com.hjg.pngj.ImageInfo;

/* JADX INFO: loaded from: classes.dex */
public class ChunkCopyBehaviour {
    public static final int COPY_ALL = 8;
    public static final int COPY_ALL_SAFE = 4;
    public static final int COPY_ALMOSTALL = 256;
    public static final int COPY_NONE = 0;
    public static final int COPY_PALETTE = 1;
    public static final int COPY_PHYS = 16;
    public static final int COPY_TEXTUAL = 32;
    public static final int COPY_TRANSPARENCY = 64;
    public static final int COPY_UNKNOWN = 128;

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(int i, int i2) {
        return (i & i2) != 0;
    }

    public static ChunkPredicate createPredicate(final int i, final ImageInfo imageInfo) {
        return new ChunkPredicate() { // from class: ar.com.hjg.pngj.chunks.ChunkCopyBehaviour.1
            @Override // ar.com.hjg.pngj.chunks.ChunkPredicate
            public boolean match(PngChunk pngChunk) {
                if (pngChunk.crit) {
                    if (pngChunk.id.equals("PLTE")) {
                        if (imageInfo.indexed && ChunkCopyBehaviour.b(i, 1)) {
                            return true;
                        }
                        if (!imageInfo.greyscale && ChunkCopyBehaviour.b(i, 8)) {
                            return true;
                        }
                    }
                } else {
                    boolean z = pngChunk instanceof PngChunkTextVar;
                    boolean z2 = pngChunk.safe;
                    if (ChunkCopyBehaviour.b(i, 8)) {
                        return true;
                    }
                    if (z2 && ChunkCopyBehaviour.b(i, 4)) {
                        return true;
                    }
                    if (pngChunk.id.equals("tRNS") && ChunkCopyBehaviour.b(i, 64)) {
                        return true;
                    }
                    if (pngChunk.id.equals("pHYs") && ChunkCopyBehaviour.b(i, 16)) {
                        return true;
                    }
                    if (z && ChunkCopyBehaviour.b(i, 32)) {
                        return true;
                    }
                    if (ChunkCopyBehaviour.b(i, 256) && !ChunkHelper.isUnknown(pngChunk) && !z && !pngChunk.id.equals("hIST") && !pngChunk.id.equals("tIME")) {
                        return true;
                    }
                    if (ChunkCopyBehaviour.b(i, 128) && ChunkHelper.isUnknown(pngChunk)) {
                        return true;
                    }
                }
                return false;
            }
        };
    }
}
