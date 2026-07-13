package ar.com.hjg.pngj.chunks;

import ar.com.hjg.pngj.ImageInfo;
import ar.com.hjg.pngj.PngHelperInternal;
import ar.com.hjg.pngj.PngjException;
import ar.com.hjg.pngj.chunks.PngChunk;

/* JADX INFO: loaded from: classes.dex */
public class PngChunkCHRM extends PngChunkSingle {
    public static final String ID = "cHRM";
    private double a;
    private double b;
    private double c;
    private double d;
    private double e;
    private double f;
    private double g;
    private double h;

    public PngChunkCHRM(ImageInfo imageInfo) {
        super("cHRM", imageInfo);
    }

    @Override // ar.com.hjg.pngj.chunks.PngChunk
    public PngChunk.ChunkOrderingConstraint getOrderingConstraint() {
        return PngChunk.ChunkOrderingConstraint.AFTER_PLTE_BEFORE_IDAT;
    }

    @Override // ar.com.hjg.pngj.chunks.PngChunk
    public ChunkRaw createRawChunk() {
        ChunkRaw chunkRawCreateEmptyChunk = createEmptyChunk(32, true);
        PngHelperInternal.writeInt4tobytes(PngHelperInternal.doubleToInt100000(this.a), chunkRawCreateEmptyChunk.data, 0);
        PngHelperInternal.writeInt4tobytes(PngHelperInternal.doubleToInt100000(this.b), chunkRawCreateEmptyChunk.data, 4);
        PngHelperInternal.writeInt4tobytes(PngHelperInternal.doubleToInt100000(this.c), chunkRawCreateEmptyChunk.data, 8);
        PngHelperInternal.writeInt4tobytes(PngHelperInternal.doubleToInt100000(this.d), chunkRawCreateEmptyChunk.data, 12);
        PngHelperInternal.writeInt4tobytes(PngHelperInternal.doubleToInt100000(this.e), chunkRawCreateEmptyChunk.data, 16);
        PngHelperInternal.writeInt4tobytes(PngHelperInternal.doubleToInt100000(this.f), chunkRawCreateEmptyChunk.data, 20);
        PngHelperInternal.writeInt4tobytes(PngHelperInternal.doubleToInt100000(this.g), chunkRawCreateEmptyChunk.data, 24);
        PngHelperInternal.writeInt4tobytes(PngHelperInternal.doubleToInt100000(this.h), chunkRawCreateEmptyChunk.data, 28);
        return chunkRawCreateEmptyChunk;
    }

    @Override // ar.com.hjg.pngj.chunks.PngChunk
    public void parseFromRaw(ChunkRaw chunkRaw) {
        if (chunkRaw.len != 32) {
            throw new PngjException("bad chunk " + chunkRaw);
        }
        this.a = PngHelperInternal.intToDouble100000(PngHelperInternal.readInt4fromBytes(chunkRaw.data, 0));
        this.b = PngHelperInternal.intToDouble100000(PngHelperInternal.readInt4fromBytes(chunkRaw.data, 4));
        this.c = PngHelperInternal.intToDouble100000(PngHelperInternal.readInt4fromBytes(chunkRaw.data, 8));
        this.d = PngHelperInternal.intToDouble100000(PngHelperInternal.readInt4fromBytes(chunkRaw.data, 12));
        this.e = PngHelperInternal.intToDouble100000(PngHelperInternal.readInt4fromBytes(chunkRaw.data, 16));
        this.f = PngHelperInternal.intToDouble100000(PngHelperInternal.readInt4fromBytes(chunkRaw.data, 20));
        this.g = PngHelperInternal.intToDouble100000(PngHelperInternal.readInt4fromBytes(chunkRaw.data, 24));
        this.h = PngHelperInternal.intToDouble100000(PngHelperInternal.readInt4fromBytes(chunkRaw.data, 28));
    }

    public void setChromaticities(double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8) {
        this.a = d;
        this.c = d3;
        this.e = d5;
        this.g = d7;
        this.b = d2;
        this.d = d4;
        this.f = d6;
        this.h = d8;
    }

    public double[] getChromaticities() {
        return new double[]{this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h};
    }
}
