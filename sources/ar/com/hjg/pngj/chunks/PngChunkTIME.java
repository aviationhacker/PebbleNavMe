package ar.com.hjg.pngj.chunks;

import ar.com.hjg.pngj.ImageInfo;
import ar.com.hjg.pngj.PngHelperInternal;
import ar.com.hjg.pngj.PngjException;
import ar.com.hjg.pngj.chunks.PngChunk;
import java.util.Calendar;

/* JADX INFO: loaded from: classes.dex */
public class PngChunkTIME extends PngChunkSingle {
    public static final String ID = "tIME";
    private int a;
    private int b;
    private int c;
    private int d;
    private int e;
    private int f;

    public PngChunkTIME(ImageInfo imageInfo) {
        super("tIME", imageInfo);
    }

    @Override // ar.com.hjg.pngj.chunks.PngChunk
    public PngChunk.ChunkOrderingConstraint getOrderingConstraint() {
        return PngChunk.ChunkOrderingConstraint.NONE;
    }

    @Override // ar.com.hjg.pngj.chunks.PngChunk
    public ChunkRaw createRawChunk() {
        ChunkRaw chunkRawCreateEmptyChunk = createEmptyChunk(7, true);
        PngHelperInternal.writeInt2tobytes(this.a, chunkRawCreateEmptyChunk.data, 0);
        chunkRawCreateEmptyChunk.data[2] = (byte) this.b;
        chunkRawCreateEmptyChunk.data[3] = (byte) this.c;
        chunkRawCreateEmptyChunk.data[4] = (byte) this.d;
        chunkRawCreateEmptyChunk.data[5] = (byte) this.e;
        chunkRawCreateEmptyChunk.data[6] = (byte) this.f;
        return chunkRawCreateEmptyChunk;
    }

    @Override // ar.com.hjg.pngj.chunks.PngChunk
    public void parseFromRaw(ChunkRaw chunkRaw) {
        if (chunkRaw.len != 7) {
            throw new PngjException("bad chunk " + chunkRaw);
        }
        this.a = PngHelperInternal.readInt2fromBytes(chunkRaw.data, 0);
        this.b = PngHelperInternal.readInt1fromByte(chunkRaw.data, 2);
        this.c = PngHelperInternal.readInt1fromByte(chunkRaw.data, 3);
        this.d = PngHelperInternal.readInt1fromByte(chunkRaw.data, 4);
        this.e = PngHelperInternal.readInt1fromByte(chunkRaw.data, 5);
        this.f = PngHelperInternal.readInt1fromByte(chunkRaw.data, 6);
    }

    public void setNow(int i) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(System.currentTimeMillis() - (1000 * ((long) i)));
        this.a = calendar.get(1);
        this.b = calendar.get(2) + 1;
        this.c = calendar.get(5);
        this.d = calendar.get(11);
        this.e = calendar.get(12);
        this.f = calendar.get(13);
    }

    public void setYMDHMS(int i, int i2, int i3, int i4, int i5, int i6) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = i4;
        this.e = i5;
        this.f = i6;
    }

    public int[] getYMDHMS() {
        return new int[]{this.a, this.b, this.c, this.d, this.e, this.f};
    }

    public String getAsString() {
        return String.format("%04d/%02d/%02d %02d:%02d:%02d", Integer.valueOf(this.a), Integer.valueOf(this.b), Integer.valueOf(this.c), Integer.valueOf(this.d), Integer.valueOf(this.e), Integer.valueOf(this.f));
    }
}
