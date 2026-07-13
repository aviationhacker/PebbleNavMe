package ar.com.hjg.pngj.chunks;

import ar.com.hjg.pngj.ImageInfo;
import ar.com.hjg.pngj.PngHelperInternal;
import ar.com.hjg.pngj.PngjException;
import ar.com.hjg.pngj.PngjInputException;
import ar.com.hjg.pngj.chunks.PngChunk;
import java.io.ByteArrayInputStream;

/* JADX INFO: loaded from: classes.dex */
public class PngChunkIHDR extends PngChunkSingle {
    public static final String ID = "IHDR";
    private int a;
    private int b;
    private int c;
    private int d;
    private int e;
    private int f;
    private int g;

    public PngChunkIHDR(ImageInfo imageInfo) {
        super("IHDR", imageInfo);
    }

    @Override // ar.com.hjg.pngj.chunks.PngChunk
    public PngChunk.ChunkOrderingConstraint getOrderingConstraint() {
        return PngChunk.ChunkOrderingConstraint.NA;
    }

    @Override // ar.com.hjg.pngj.chunks.PngChunk
    public ChunkRaw createRawChunk() {
        ChunkRaw chunkRaw = new ChunkRaw(13, ChunkHelper.b_IHDR, true);
        PngHelperInternal.writeInt4tobytes(this.a, chunkRaw.data, 0);
        PngHelperInternal.writeInt4tobytes(this.b, chunkRaw.data, 4);
        chunkRaw.data[8] = (byte) this.c;
        chunkRaw.data[9] = (byte) this.d;
        chunkRaw.data[10] = (byte) this.e;
        chunkRaw.data[11] = (byte) this.f;
        chunkRaw.data[12] = (byte) this.g;
        return chunkRaw;
    }

    @Override // ar.com.hjg.pngj.chunks.PngChunk
    public void parseFromRaw(ChunkRaw chunkRaw) {
        if (chunkRaw.len != 13) {
            throw new PngjException("Bad IDHR len " + chunkRaw.len);
        }
        ByteArrayInputStream byteArrayInputStreamA = chunkRaw.a();
        this.a = PngHelperInternal.readInt4(byteArrayInputStreamA);
        this.b = PngHelperInternal.readInt4(byteArrayInputStreamA);
        this.c = PngHelperInternal.readByte(byteArrayInputStreamA);
        this.d = PngHelperInternal.readByte(byteArrayInputStreamA);
        this.e = PngHelperInternal.readByte(byteArrayInputStreamA);
        this.f = PngHelperInternal.readByte(byteArrayInputStreamA);
        this.g = PngHelperInternal.readByte(byteArrayInputStreamA);
    }

    public int getCols() {
        return this.a;
    }

    public void setCols(int i) {
        this.a = i;
    }

    public int getRows() {
        return this.b;
    }

    public void setRows(int i) {
        this.b = i;
    }

    public int getBitspc() {
        return this.c;
    }

    public void setBitspc(int i) {
        this.c = i;
    }

    public int getColormodel() {
        return this.d;
    }

    public void setColormodel(int i) {
        this.d = i;
    }

    public int getCompmeth() {
        return this.e;
    }

    public void setCompmeth(int i) {
        this.e = i;
    }

    public int getFilmeth() {
        return this.f;
    }

    public void setFilmeth(int i) {
        this.f = i;
    }

    public int getInterlaced() {
        return this.g;
    }

    public void setInterlaced(int i) {
        this.g = i;
    }

    public boolean isInterlaced() {
        return getInterlaced() == 1;
    }

    public ImageInfo createImageInfo() {
        check();
        return new ImageInfo(getCols(), getRows(), getBitspc(), (getColormodel() & 4) != 0, getColormodel() == 0 || getColormodel() == 4, (getColormodel() & 1) != 0);
    }

    public void check() {
        if (this.a < 1 || this.b < 1 || this.e != 0 || this.f != 0) {
            throw new PngjInputException("bad IHDR: col/row/compmethod/filmethod invalid");
        }
        if (this.c != 1 && this.c != 2 && this.c != 4 && this.c != 8 && this.c != 16) {
            throw new PngjInputException("bad IHDR: bitdepth invalid");
        }
        if (this.g < 0 || this.g > 1) {
            throw new PngjInputException("bad IHDR: interlace invalid");
        }
        switch (this.d) {
            case 0:
                return;
            case 1:
            case 5:
            default:
                throw new PngjInputException("bad IHDR: invalid colormodel");
            case 2:
            case 4:
            case 6:
                if (this.c != 8 && this.c != 16) {
                    throw new PngjInputException("bad IHDR: bitdepth invalid");
                }
                return;
            case 3:
                if (this.c == 16) {
                    throw new PngjInputException("bad IHDR: bitdepth invalid");
                }
                return;
        }
    }
}
