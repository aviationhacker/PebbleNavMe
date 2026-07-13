package ar.com.hjg.pngj.pixels;

import ar.com.hjg.pngj.PngjOutputException;
import java.io.OutputStream;
import java.util.zip.Deflater;

/* JADX INFO: loaded from: classes.dex */
public class CompressorStreamLz4 extends CompressorStream {
    private final DeflaterEstimatorLz4 b;
    private byte[] c;
    private final int d;
    private int e;

    public CompressorStreamLz4(OutputStream outputStream, int i, long j) {
        super(outputStream, i, j);
        this.e = 0;
        this.b = new DeflaterEstimatorLz4();
        this.d = (int) (j > 16000 ? 16000L : j);
    }

    public CompressorStreamLz4(OutputStream outputStream, int i, long j, Deflater deflater) {
        this(outputStream, i, j);
    }

    public CompressorStreamLz4(OutputStream outputStream, int i, long j, int i2, int i3) {
        this(outputStream, i, j);
    }

    @Override // ar.com.hjg.pngj.pixels.CompressorStream
    public void mywrite(byte[] bArr, int i, int i2) {
        if (i2 != 0) {
            if (this.done || this.a) {
                throw new PngjOutputException("write beyond end of stream");
            }
            this.bytesIn += (long) i2;
            int i3 = i2;
            while (i3 > 0) {
                if (this.e == 0 && (i3 >= 16000 || this.bytesIn == this.totalbytes)) {
                    this.bytesOut = ((long) this.b.compressEstim(bArr, i, i3)) + this.bytesOut;
                    i3 = 0;
                } else {
                    if (this.c == null) {
                        this.c = new byte[this.d];
                    }
                    int i4 = this.e + i3 <= this.d ? i3 : this.d - this.e;
                    if (i4 > 0) {
                        System.arraycopy(bArr, i, this.c, this.e, i4);
                    }
                    this.e += i4;
                    i3 -= i4;
                    i += i4;
                    if (this.e == this.d) {
                        a();
                    }
                }
            }
        }
    }

    void a() {
        if (this.e > 0) {
            this.bytesOut += (long) this.b.compressEstim(this.c, 0, this.e);
            this.e = 0;
        }
    }

    @Override // ar.com.hjg.pngj.pixels.CompressorStream
    public void done() {
        if (!this.done) {
            a();
            this.done = true;
            flush();
        }
    }

    @Override // ar.com.hjg.pngj.pixels.CompressorStream, java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        done();
        if (!this.a) {
            super.close();
            this.c = null;
        }
    }

    @Override // ar.com.hjg.pngj.pixels.CompressorStream
    public void reset() {
        done();
        super.reset();
    }
}
