package ar.com.hjg.pngj;

import ar.com.hjg.pngj.chunks.ChunkRaw;

/* JADX INFO: loaded from: classes.dex */
public abstract class ChunkReader {
    private final ChunkRaw a;
    private boolean b;
    public final ChunkReaderMode mode;
    protected int read = 0;
    private int c = 0;

    public enum ChunkReaderMode {
        BUFFER,
        PROCESS,
        SKIP
    }

    protected abstract void chunkDone();

    protected abstract void processData(int i, byte[] bArr, int i2, int i3);

    public ChunkReader(int i, String str, long j, ChunkReaderMode chunkReaderMode) {
        if (chunkReaderMode == null || str.length() != 4 || i < 0) {
            throw new PngjExceptionInternal("Bad chunk paramenters: " + chunkReaderMode);
        }
        this.mode = chunkReaderMode;
        this.a = new ChunkRaw(i, str, chunkReaderMode == ChunkReaderMode.BUFFER);
        this.a.setOffset(j);
        this.b = chunkReaderMode != ChunkReaderMode.SKIP;
    }

    public ChunkRaw getChunkRaw() {
        return this.a;
    }

    public final int feedBytes(byte[] bArr, int i, int i2) {
        int i3;
        if (i2 == 0) {
            return 0;
        }
        if (i2 < 0) {
            throw new PngjException("negative length??");
        }
        if (this.read == 0 && this.c == 0 && this.b) {
            this.a.updateCrc(this.a.idbytes, 0, 4);
        }
        int i4 = this.a.len - this.read;
        int i5 = i4 > i2 ? i2 : i4;
        if (i5 > 0 || this.c == 0) {
            if (this.b && this.mode != ChunkReaderMode.BUFFER && i5 > 0) {
                this.a.updateCrc(bArr, i, i5);
            }
            if (this.mode == ChunkReaderMode.BUFFER) {
                if (this.a.data != bArr && i5 > 0) {
                    System.arraycopy(bArr, i, this.a.data, this.read, i5);
                }
            } else if (this.mode == ChunkReaderMode.PROCESS) {
                processData(this.read, bArr, i, i5);
            }
            this.read += i5;
            i += i5;
            i2 -= i5;
        }
        if (this.read == this.a.len) {
            i3 = 4 - this.c;
            if (i3 > i2) {
                i3 = i2;
            }
            if (i3 > 0) {
                if (bArr != this.a.crcval) {
                    System.arraycopy(bArr, i, this.a.crcval, this.c, i3);
                }
                this.c += i3;
                if (this.c == 4) {
                    if (this.b) {
                        if (this.mode == ChunkReaderMode.BUFFER) {
                            this.a.updateCrc(this.a.data, 0, this.a.len);
                        }
                        this.a.checkCrc();
                    }
                    chunkDone();
                }
            }
        } else {
            i3 = 0;
        }
        return i5 + i3;
    }

    public final boolean isDone() {
        return this.c == 4;
    }

    public void setCrcCheck(boolean z) {
        if (this.read != 0 && z && !this.b) {
            throw new PngjException("too late!");
        }
        this.b = z;
    }

    public int hashCode() {
        return (this.a == null ? 0 : this.a.hashCode()) + 31;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            ChunkReader chunkReader = (ChunkReader) obj;
            return this.a == null ? chunkReader.a == null : this.a.equals(chunkReader.a);
        }
        return false;
    }

    public String toString() {
        return this.a.toString();
    }
}
