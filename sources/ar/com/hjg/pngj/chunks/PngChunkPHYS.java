package ar.com.hjg.pngj.chunks;

import ar.com.hjg.pngj.ImageInfo;
import ar.com.hjg.pngj.PngHelperInternal;
import ar.com.hjg.pngj.PngjException;
import ar.com.hjg.pngj.chunks.PngChunk;

/* JADX INFO: loaded from: classes.dex */
public class PngChunkPHYS extends PngChunkSingle {
    public static final String ID = "pHYs";
    private long a;
    private long b;
    private int c;

    public PngChunkPHYS(ImageInfo imageInfo) {
        super("pHYs", imageInfo);
    }

    @Override // ar.com.hjg.pngj.chunks.PngChunk
    public PngChunk.ChunkOrderingConstraint getOrderingConstraint() {
        return PngChunk.ChunkOrderingConstraint.BEFORE_IDAT;
    }

    @Override // ar.com.hjg.pngj.chunks.PngChunk
    public ChunkRaw createRawChunk() {
        ChunkRaw chunkRawCreateEmptyChunk = createEmptyChunk(9, true);
        PngHelperInternal.writeInt4tobytes((int) this.a, chunkRawCreateEmptyChunk.data, 0);
        PngHelperInternal.writeInt4tobytes((int) this.b, chunkRawCreateEmptyChunk.data, 4);
        chunkRawCreateEmptyChunk.data[8] = (byte) this.c;
        return chunkRawCreateEmptyChunk;
    }

    @Override // ar.com.hjg.pngj.chunks.PngChunk
    public void parseFromRaw(ChunkRaw chunkRaw) {
        if (chunkRaw.len != 9) {
            throw new PngjException("bad chunk length " + chunkRaw);
        }
        this.a = PngHelperInternal.readInt4fromBytes(chunkRaw.data, 0);
        if (this.a < 0) {
            this.a += 4294967296L;
        }
        this.b = PngHelperInternal.readInt4fromBytes(chunkRaw.data, 4);
        if (this.b < 0) {
            this.b += 4294967296L;
        }
        this.c = PngHelperInternal.readInt1fromByte(chunkRaw.data, 8);
    }

    public long getPixelsxUnitX() {
        return this.a;
    }

    public void setPixelsxUnitX(long j) {
        this.a = j;
    }

    public long getPixelsxUnitY() {
        return this.b;
    }

    public void setPixelsxUnitY(long j) {
        this.b = j;
    }

    public int getUnits() {
        return this.c;
    }

    public void setUnits(int i) {
        this.c = i;
    }

    public double getAsDpi() {
        if (this.c == 1 && this.a == this.b) {
            return this.a * 0.0254d;
        }
        return -1.0d;
    }

    public double[] getAsDpi2() {
        return this.c != 1 ? new double[]{-1.0d, -1.0d} : new double[]{this.a * 0.0254d, this.b * 0.0254d};
    }

    public void setAsDpi(double d) {
        this.c = 1;
        this.a = (long) ((d / 0.0254d) + 0.5d);
        this.b = this.a;
    }

    public void setAsDpi2(double d, double d2) {
        this.c = 1;
        this.a = (long) ((d / 0.0254d) + 0.5d);
        this.b = (long) ((d2 / 0.0254d) + 0.5d);
    }
}
