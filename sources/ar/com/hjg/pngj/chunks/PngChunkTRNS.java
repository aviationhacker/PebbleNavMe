package ar.com.hjg.pngj.chunks;

import ar.com.hjg.pngj.ImageInfo;
import ar.com.hjg.pngj.PngHelperInternal;
import ar.com.hjg.pngj.PngjException;
import ar.com.hjg.pngj.chunks.PngChunk;
import com.google.common.primitives.UnsignedBytes;

/* JADX INFO: loaded from: classes.dex */
public class PngChunkTRNS extends PngChunkSingle {
    public static final String ID = "tRNS";
    private int a;
    private int b;
    private int c;
    private int d;
    private int[] e;

    public PngChunkTRNS(ImageInfo imageInfo) {
        super("tRNS", imageInfo);
        this.e = new int[0];
    }

    @Override // ar.com.hjg.pngj.chunks.PngChunk
    public PngChunk.ChunkOrderingConstraint getOrderingConstraint() {
        return PngChunk.ChunkOrderingConstraint.AFTER_PLTE_BEFORE_IDAT;
    }

    @Override // ar.com.hjg.pngj.chunks.PngChunk
    public ChunkRaw createRawChunk() {
        if (this.imgInfo.greyscale) {
            ChunkRaw chunkRawCreateEmptyChunk = createEmptyChunk(2, true);
            PngHelperInternal.writeInt2tobytes(this.a, chunkRawCreateEmptyChunk.data, 0);
            return chunkRawCreateEmptyChunk;
        }
        if (this.imgInfo.indexed) {
            ChunkRaw chunkRawCreateEmptyChunk2 = createEmptyChunk(this.e.length, true);
            for (int i = 0; i < chunkRawCreateEmptyChunk2.len; i++) {
                chunkRawCreateEmptyChunk2.data[i] = (byte) this.e[i];
            }
            return chunkRawCreateEmptyChunk2;
        }
        ChunkRaw chunkRawCreateEmptyChunk3 = createEmptyChunk(6, true);
        PngHelperInternal.writeInt2tobytes(this.b, chunkRawCreateEmptyChunk3.data, 0);
        PngHelperInternal.writeInt2tobytes(this.c, chunkRawCreateEmptyChunk3.data, 0);
        PngHelperInternal.writeInt2tobytes(this.d, chunkRawCreateEmptyChunk3.data, 0);
        return chunkRawCreateEmptyChunk3;
    }

    @Override // ar.com.hjg.pngj.chunks.PngChunk
    public void parseFromRaw(ChunkRaw chunkRaw) {
        if (this.imgInfo.greyscale) {
            this.a = PngHelperInternal.readInt2fromBytes(chunkRaw.data, 0);
            return;
        }
        if (this.imgInfo.indexed) {
            int length = chunkRaw.data.length;
            this.e = new int[length];
            for (int i = 0; i < length; i++) {
                this.e[i] = chunkRaw.data[i] & UnsignedBytes.MAX_VALUE;
            }
            return;
        }
        this.b = PngHelperInternal.readInt2fromBytes(chunkRaw.data, 0);
        this.c = PngHelperInternal.readInt2fromBytes(chunkRaw.data, 2);
        this.d = PngHelperInternal.readInt2fromBytes(chunkRaw.data, 4);
    }

    public void setRGB(int i, int i2, int i3) {
        if (this.imgInfo.greyscale || this.imgInfo.indexed) {
            throw new PngjException("only rgb or rgba images support this");
        }
        this.b = i;
        this.c = i2;
        this.d = i3;
    }

    public int[] getRGB() {
        if (this.imgInfo.greyscale || this.imgInfo.indexed) {
            throw new PngjException("only rgb or rgba images support this");
        }
        return new int[]{this.b, this.c, this.d};
    }

    public int getRGB888() {
        if (this.imgInfo.greyscale || this.imgInfo.indexed) {
            throw new PngjException("only rgb or rgba images support this");
        }
        return (this.b << 16) | (this.c << 8) | this.d;
    }

    public void setGray(int i) {
        if (!this.imgInfo.greyscale) {
            throw new PngjException("only grayscale images support this");
        }
        this.a = i;
    }

    public int getGray() {
        if (!this.imgInfo.greyscale) {
            throw new PngjException("only grayscale images support this");
        }
        return this.a;
    }

    public void setPalletteAlpha(int[] iArr) {
        if (!this.imgInfo.indexed) {
            throw new PngjException("only indexed images support this");
        }
        this.e = iArr;
    }

    public void setIndexEntryAsTransparent(int i) {
        if (!this.imgInfo.indexed) {
            throw new PngjException("only indexed images support this");
        }
        this.e = new int[]{i + 1};
        for (int i2 = 0; i2 < i; i2++) {
            this.e[i2] = 255;
        }
        this.e[i] = 0;
    }

    public int[] getPalletteAlpha() {
        return this.e;
    }
}
