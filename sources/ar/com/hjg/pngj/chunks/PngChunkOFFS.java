package ar.com.hjg.pngj.chunks;

import ar.com.hjg.pngj.ImageInfo;
import ar.com.hjg.pngj.PngHelperInternal;
import ar.com.hjg.pngj.PngjException;
import ar.com.hjg.pngj.chunks.PngChunk;

/* JADX INFO: loaded from: classes.dex */
public class PngChunkOFFS extends PngChunkSingle {
    public static final String ID = "oFFs";
    private long a;
    private long b;
    private int c;

    public PngChunkOFFS(ImageInfo imageInfo) {
        super(ID, imageInfo);
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

    public int getUnits() {
        return this.c;
    }

    public void setUnits(int i) {
        this.c = i;
    }

    public long getPosX() {
        return this.a;
    }

    public void setPosX(long j) {
        this.a = j;
    }

    public long getPosY() {
        return this.b;
    }

    public void setPosY(long j) {
        this.b = j;
    }
}
