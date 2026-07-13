package ar.com.hjg.pngj;

import ar.com.hjg.pngj.chunks.ChunkHelper;
import ar.com.hjg.pngj.chunks.ChunkRaw;
import defpackage.gf;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
public class PngIDatChunkOutputStream extends gf {
    private final OutputStream a;
    private byte[] b;

    @Override // defpackage.gf
    public /* bridge */ /* synthetic */ long getCountFlushed() {
        return super.getCountFlushed();
    }

    @Override // defpackage.gf
    public /* bridge */ /* synthetic */ void setSize(int i) {
        super.setSize(i);
    }

    public PngIDatChunkOutputStream(OutputStream outputStream) {
        this(outputStream, 0);
    }

    public PngIDatChunkOutputStream(OutputStream outputStream, int i) {
        super(i <= 0 ? 32768 : i);
        this.b = null;
        this.a = outputStream;
    }

    @Override // defpackage.gf
    protected final void flushBuffer(byte[] bArr, int i) {
        int length = this.b == null ? i : this.b.length + i;
        ChunkRaw chunkRaw = new ChunkRaw(length, ChunkHelper.b_IDAT, false);
        if (i == length) {
            chunkRaw.data = bArr;
        }
        chunkRaw.writeChunk(this.a);
    }
}
