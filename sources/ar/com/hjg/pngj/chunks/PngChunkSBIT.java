package ar.com.hjg.pngj.chunks;

import ar.com.hjg.pngj.ImageInfo;
import ar.com.hjg.pngj.PngHelperInternal;
import ar.com.hjg.pngj.PngjException;
import ar.com.hjg.pngj.chunks.PngChunk;

/* JADX INFO: loaded from: classes.dex */
public class PngChunkSBIT extends PngChunkSingle {
    public static final String ID = "sBIT";
    private int a;
    private int b;
    private int c;
    private int d;
    private int e;

    public PngChunkSBIT(ImageInfo imageInfo) {
        super("sBIT", imageInfo);
    }

    @Override // ar.com.hjg.pngj.chunks.PngChunk
    public PngChunk.ChunkOrderingConstraint getOrderingConstraint() {
        return PngChunk.ChunkOrderingConstraint.BEFORE_PLTE_AND_IDAT;
    }

    private int a() {
        int i = this.imgInfo.greyscale ? 1 : 3;
        if (this.imgInfo.alpha) {
            return i + 1;
        }
        return i;
    }

    @Override // ar.com.hjg.pngj.chunks.PngChunk
    public void parseFromRaw(ChunkRaw chunkRaw) {
        if (chunkRaw.len != a()) {
            throw new PngjException("bad chunk length " + chunkRaw);
        }
        if (this.imgInfo.greyscale) {
            this.a = PngHelperInternal.readInt1fromByte(chunkRaw.data, 0);
            if (this.imgInfo.alpha) {
                this.b = PngHelperInternal.readInt1fromByte(chunkRaw.data, 1);
                return;
            }
            return;
        }
        this.c = PngHelperInternal.readInt1fromByte(chunkRaw.data, 0);
        this.d = PngHelperInternal.readInt1fromByte(chunkRaw.data, 1);
        this.e = PngHelperInternal.readInt1fromByte(chunkRaw.data, 2);
        if (this.imgInfo.alpha) {
            this.b = PngHelperInternal.readInt1fromByte(chunkRaw.data, 3);
        }
    }

    @Override // ar.com.hjg.pngj.chunks.PngChunk
    public ChunkRaw createRawChunk() {
        ChunkRaw chunkRawCreateEmptyChunk = createEmptyChunk(a(), true);
        if (this.imgInfo.greyscale) {
            chunkRawCreateEmptyChunk.data[0] = (byte) this.a;
            if (this.imgInfo.alpha) {
                chunkRawCreateEmptyChunk.data[1] = (byte) this.b;
            }
        } else {
            chunkRawCreateEmptyChunk.data[0] = (byte) this.c;
            chunkRawCreateEmptyChunk.data[1] = (byte) this.d;
            chunkRawCreateEmptyChunk.data[2] = (byte) this.e;
            if (this.imgInfo.alpha) {
                chunkRawCreateEmptyChunk.data[3] = (byte) this.b;
            }
        }
        return chunkRawCreateEmptyChunk;
    }

    public void setGraysb(int i) {
        if (!this.imgInfo.greyscale) {
            throw new PngjException("only greyscale images support this");
        }
        this.a = i;
    }

    public int getGraysb() {
        if (!this.imgInfo.greyscale) {
            throw new PngjException("only greyscale images support this");
        }
        return this.a;
    }

    public void setAlphasb(int i) {
        if (!this.imgInfo.alpha) {
            throw new PngjException("only images with alpha support this");
        }
        this.b = i;
    }

    public int getAlphasb() {
        if (!this.imgInfo.alpha) {
            throw new PngjException("only images with alpha support this");
        }
        return this.b;
    }

    public void setRGB(int i, int i2, int i3) {
        if (this.imgInfo.greyscale || this.imgInfo.indexed) {
            throw new PngjException("only rgb or rgba images support this");
        }
        this.c = i;
        this.d = i2;
        this.e = i3;
    }

    public int[] getRGB() {
        if (this.imgInfo.greyscale || this.imgInfo.indexed) {
            throw new PngjException("only rgb or rgba images support this");
        }
        return new int[]{this.c, this.d, this.e};
    }
}
