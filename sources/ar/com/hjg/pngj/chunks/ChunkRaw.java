package ar.com.hjg.pngj.chunks;

import ar.com.hjg.pngj.PngHelperInternal;
import ar.com.hjg.pngj.PngjBadCrcException;
import ar.com.hjg.pngj.PngjException;
import ar.com.hjg.pngj.PngjOutputException;
import java.io.ByteArrayInputStream;
import java.io.OutputStream;
import java.util.zip.CRC32;

/* JADX INFO: loaded from: classes.dex */
public class ChunkRaw {
    private long a;
    private CRC32 b;
    public byte[] crcval;
    public byte[] data;
    public final String id;
    public final byte[] idbytes;
    public final int len;

    public ChunkRaw(int i, String str, boolean z) {
        this.data = null;
        this.a = 0L;
        this.crcval = new byte[4];
        this.len = i;
        this.id = str;
        this.idbytes = ChunkHelper.toBytes(str);
        for (int i2 = 0; i2 < 4; i2++) {
            if (this.idbytes[i2] < 65 || this.idbytes[i2] > 122 || (this.idbytes[i2] > 90 && this.idbytes[i2] < 97)) {
                throw new PngjException("Bad id chunk: must be ascii letters " + str);
            }
        }
        if (z) {
            allocData();
        }
    }

    public ChunkRaw(int i, byte[] bArr, boolean z) {
        this(i, ChunkHelper.toString(bArr), z);
    }

    public void allocData() {
        if (this.data == null || this.data.length < this.len) {
            this.data = new byte[this.len];
        }
    }

    private void b() {
        this.b = new CRC32();
        this.b.update(this.idbytes, 0, 4);
        if (this.len > 0) {
            this.b.update(this.data, 0, this.len);
        }
        PngHelperInternal.writeInt4tobytes((int) this.b.getValue(), this.crcval, 0);
    }

    public void writeChunk(OutputStream outputStream) {
        writeChunkHeader(outputStream);
        if (this.len > 0) {
            if (this.data == null) {
                throw new PngjOutputException("cannot write chunk, raw chunk data is null [" + this.id + "]");
            }
            PngHelperInternal.writeBytes(outputStream, this.data, 0, this.len);
        }
        b();
        writeChunkCrc(outputStream);
    }

    public void writeChunkHeader(OutputStream outputStream) {
        if (this.idbytes.length != 4) {
            throw new PngjOutputException("bad chunkid [" + this.id + "]");
        }
        PngHelperInternal.writeInt4(outputStream, this.len);
        PngHelperInternal.writeBytes(outputStream, this.idbytes);
    }

    public void writeChunkCrc(OutputStream outputStream) {
        PngHelperInternal.writeBytes(outputStream, this.crcval, 0, 4);
    }

    public void checkCrc() {
        int value = (int) this.b.getValue();
        int int4fromBytes = PngHelperInternal.readInt4fromBytes(this.crcval, 0);
        if (value != int4fromBytes) {
            throw new PngjBadCrcException("chunk: " + toString() + " expected=" + int4fromBytes + " read=" + value);
        }
    }

    public void updateCrc(byte[] bArr, int i, int i2) {
        if (this.b == null) {
            this.b = new CRC32();
        }
        this.b.update(bArr, i, i2);
    }

    ByteArrayInputStream a() {
        return new ByteArrayInputStream(this.data);
    }

    public long getOffset() {
        return this.a;
    }

    public void setOffset(long j) {
        this.a = j;
    }

    public String toString() {
        return "chunkid=" + ChunkHelper.toString(this.idbytes) + " len=" + this.len;
    }

    public int hashCode() {
        return (((this.id == null ? 0 : this.id.hashCode()) + 31) * 31) + ((int) (this.a ^ (this.a >>> 32)));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            ChunkRaw chunkRaw = (ChunkRaw) obj;
            if (this.id == null) {
                if (chunkRaw.id != null) {
                    return false;
                }
            } else if (!this.id.equals(chunkRaw.id)) {
                return false;
            }
            return this.a == chunkRaw.a;
        }
        return false;
    }
}
