package ar.com.hjg.pngj.chunks;

import ar.com.hjg.pngj.IChunkFactory;
import ar.com.hjg.pngj.ImageInfo;

/* JADX INFO: loaded from: classes.dex */
public class ChunkFactory implements IChunkFactory {
    boolean a;

    public ChunkFactory() {
        this(true);
    }

    public ChunkFactory(boolean z) {
        this.a = z;
    }

    @Override // ar.com.hjg.pngj.IChunkFactory
    public final PngChunk createChunk(ChunkRaw chunkRaw, ImageInfo imageInfo) {
        PngChunk pngChunkCreateEmptyChunkKnown = createEmptyChunkKnown(chunkRaw.id, imageInfo);
        if (pngChunkCreateEmptyChunkKnown == null) {
            pngChunkCreateEmptyChunkKnown = createEmptyChunkExtended(chunkRaw.id, imageInfo);
        }
        if (pngChunkCreateEmptyChunkKnown == null) {
            pngChunkCreateEmptyChunkKnown = createEmptyChunkUnknown(chunkRaw.id, imageInfo);
        }
        pngChunkCreateEmptyChunkKnown.a(chunkRaw);
        if (this.a && chunkRaw.data != null) {
            pngChunkCreateEmptyChunkKnown.parseFromRaw(chunkRaw);
        }
        return pngChunkCreateEmptyChunkKnown;
    }

    protected final PngChunk createEmptyChunkKnown(String str, ImageInfo imageInfo) {
        if (str.equals("IDAT")) {
            return new PngChunkIDAT(imageInfo);
        }
        if (str.equals("IHDR")) {
            return new PngChunkIHDR(imageInfo);
        }
        if (str.equals("PLTE")) {
            return new PngChunkPLTE(imageInfo);
        }
        if (str.equals("IEND")) {
            return new PngChunkIEND(imageInfo);
        }
        if (str.equals("tEXt")) {
            return new PngChunkTEXT(imageInfo);
        }
        if (str.equals("iTXt")) {
            return new PngChunkITXT(imageInfo);
        }
        if (str.equals("zTXt")) {
            return new PngChunkZTXT(imageInfo);
        }
        if (str.equals("bKGD")) {
            return new PngChunkBKGD(imageInfo);
        }
        if (str.equals("gAMA")) {
            return new PngChunkGAMA(imageInfo);
        }
        if (str.equals("pHYs")) {
            return new PngChunkPHYS(imageInfo);
        }
        if (str.equals("iCCP")) {
            return new PngChunkICCP(imageInfo);
        }
        if (str.equals("tIME")) {
            return new PngChunkTIME(imageInfo);
        }
        if (str.equals("tRNS")) {
            return new PngChunkTRNS(imageInfo);
        }
        if (str.equals("cHRM")) {
            return new PngChunkCHRM(imageInfo);
        }
        if (str.equals("sBIT")) {
            return new PngChunkSBIT(imageInfo);
        }
        if (str.equals("sRGB")) {
            return new PngChunkSRGB(imageInfo);
        }
        if (str.equals("hIST")) {
            return new PngChunkHIST(imageInfo);
        }
        if (str.equals("sPLT")) {
            return new PngChunkSPLT(imageInfo);
        }
        return null;
    }

    protected final PngChunk createEmptyChunkUnknown(String str, ImageInfo imageInfo) {
        return new PngChunkUNKNOWN(str, imageInfo);
    }

    protected PngChunk createEmptyChunkExtended(String str, ImageInfo imageInfo) {
        if (str.equals(PngChunkOFFS.ID)) {
            return new PngChunkOFFS(imageInfo);
        }
        if (str.equals(PngChunkSTER.ID)) {
            return new PngChunkSTER(imageInfo);
        }
        return null;
    }
}
