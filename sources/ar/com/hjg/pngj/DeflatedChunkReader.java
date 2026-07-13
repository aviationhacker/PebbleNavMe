package ar.com.hjg.pngj;

import ar.com.hjg.pngj.ChunkReader;

/* JADX INFO: loaded from: classes.dex */
public class DeflatedChunkReader extends ChunkReader {
    protected boolean alsoBuffer;
    protected final DeflatedChunksSet deflatedChunksSet;

    public DeflatedChunkReader(int i, String str, boolean z, long j, DeflatedChunksSet deflatedChunksSet) {
        super(i, str, j, ChunkReader.ChunkReaderMode.PROCESS);
        this.alsoBuffer = false;
        this.deflatedChunksSet = deflatedChunksSet;
        deflatedChunksSet.appendNewChunk(this);
    }

    @Override // ar.com.hjg.pngj.ChunkReader
    protected void processData(int i, byte[] bArr, int i2, int i3) {
        if (i3 > 0) {
            this.deflatedChunksSet.processBytes(bArr, i2, i3);
            if (this.alsoBuffer) {
                System.arraycopy(bArr, i2, getChunkRaw().data, this.read, i3);
            }
        }
    }

    @Override // ar.com.hjg.pngj.ChunkReader
    protected void chunkDone() {
    }

    public void setAlsoBuffer() {
        if (this.read > 0) {
            throw new RuntimeException("too late");
        }
        this.alsoBuffer = true;
        getChunkRaw().allocData();
    }
}
