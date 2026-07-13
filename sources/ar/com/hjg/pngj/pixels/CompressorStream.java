package ar.com.hjg.pngj.pixels;

import ar.com.hjg.pngj.PngjOutputException;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
public abstract class CompressorStream extends FilterOutputStream {
    boolean a;
    private byte[] b;
    protected int block;
    public final int blockLen;
    protected long bytesIn;
    protected long bytesOut;
    protected boolean done;
    protected OutputStream os;
    protected boolean storeFirstByte;
    public final long totalbytes;

    public abstract void done();

    protected abstract void mywrite(byte[] bArr, int i, int i2);

    public CompressorStream(OutputStream outputStream, int i, long j) {
        super(outputStream);
        this.a = false;
        this.done = false;
        this.bytesIn = 0L;
        this.bytesOut = 0L;
        this.block = -1;
        this.storeFirstByte = false;
        i = i < 0 ? 4096 : i;
        j = j < 0 ? Long.MAX_VALUE : j;
        if (i < 1 || j < 1) {
            throw new RuntimeException(" maxBlockLen or totalLen invalid");
        }
        this.os = outputStream;
        this.blockLen = i;
        this.totalbytes = j;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        done();
        this.a = true;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        this.block++;
        if (i2 <= this.blockLen) {
            mywrite(bArr, i, i2);
            if (this.storeFirstByte && this.block < this.b.length) {
                this.b[this.block] = bArr[i];
            }
        } else {
            while (i2 > 0) {
                mywrite(bArr, i, this.blockLen);
                i += this.blockLen;
                i2 -= this.blockLen;
            }
        }
        if (this.bytesIn >= this.totalbytes) {
            done();
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(int i) {
        throw new PngjOutputException("should not be used");
    }

    public void reset() {
        reset(this.os);
    }

    public void reset(OutputStream outputStream) {
        if (this.a) {
            throw new PngjOutputException("cannot reset, discarded object");
        }
        done();
        this.bytesIn = 0L;
        this.bytesOut = 0L;
        this.block = -1;
        this.done = false;
        this.os = outputStream;
    }

    public final double getCompressionRatio() {
        if (this.bytesOut == 0) {
            return 1.0d;
        }
        return this.bytesOut / this.bytesIn;
    }

    public final long getBytesRaw() {
        return this.bytesIn;
    }

    public final long getBytesCompressed() {
        return this.bytesOut;
    }

    public OutputStream getOs() {
        return this.os;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
    public void flush() {
        if (this.os != null) {
            try {
                this.os.flush();
            } catch (IOException e) {
                throw new PngjOutputException(e);
            }
        }
    }

    public boolean isClosed() {
        return this.a;
    }

    public boolean isDone() {
        return this.done;
    }

    public byte[] getFirstBytes() {
        return this.b;
    }

    public void setStoreFirstByte(boolean z, int i) {
        this.storeFirstByte = z;
        if (this.storeFirstByte) {
            if (this.b == null || this.b.length < i) {
                this.b = new byte[i];
                return;
            }
            return;
        }
        this.b = null;
    }
}
