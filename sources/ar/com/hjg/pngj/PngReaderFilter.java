package ar.com.hjg.pngj;

import ar.com.hjg.pngj.chunks.PngChunk;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class PngReaderFilter extends FilterInputStream {
    private ChunkSeqReaderPng a;

    public PngReaderFilter(InputStream inputStream) {
        super(inputStream);
        this.a = createChunkSequenceReader();
    }

    protected ChunkSeqReaderPng createChunkSequenceReader() {
        return new ChunkSeqReaderPng(true) { // from class: ar.com.hjg.pngj.PngReaderFilter.1
            @Override // ar.com.hjg.pngj.ChunkSeqReaderPng, ar.com.hjg.pngj.ChunkSeqReader
            public boolean shouldSkipContent(int i, String str) {
                return super.shouldSkipContent(i, str) || str.equals("IDAT");
            }

            @Override // ar.com.hjg.pngj.ChunkSeqReaderPng, ar.com.hjg.pngj.ChunkSeqReader
            protected boolean shouldCheckCrc(int i, String str) {
                return false;
            }

            @Override // ar.com.hjg.pngj.ChunkSeqReaderPng, ar.com.hjg.pngj.ChunkSeqReader
            protected void postProcessChunk(ChunkReader chunkReader) {
                super.postProcessChunk(chunkReader);
            }
        };
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        super.close();
        this.a.close();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int i = super.read();
        if (i > 0) {
            this.a.feedAll(new byte[]{(byte) i}, 0, 1);
        }
        return i;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = super.read(bArr, i, i2);
        if (i3 > 0) {
            this.a.feedAll(bArr, i, i3);
        }
        return i3;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        int i = super.read(bArr);
        if (i > 0) {
            this.a.feedAll(bArr, 0, i);
        }
        return i;
    }

    public void readUntilEndAndClose() throws IOException {
        BufferedStreamFeeder bufferedStreamFeeder = new BufferedStreamFeeder(this.in);
        while (!this.a.isDone() && bufferedStreamFeeder.hasMoreToFeed()) {
            bufferedStreamFeeder.feed(this.a);
        }
        close();
    }

    public List<PngChunk> getChunksList() {
        return this.a.getChunks();
    }

    public ChunkSeqReaderPng getChunkseq() {
        return this.a;
    }
}
