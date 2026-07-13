package ar.com.hjg.pngj;

import ar.com.hjg.pngj.ChunkReader;
import ar.com.hjg.pngj.chunks.ChunkFactory;
import ar.com.hjg.pngj.chunks.ChunkHelper;
import ar.com.hjg.pngj.chunks.ChunkLoadBehaviour;
import ar.com.hjg.pngj.chunks.ChunksList;
import ar.com.hjg.pngj.chunks.PngChunk;
import ar.com.hjg.pngj.chunks.PngChunkIHDR;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class ChunkSeqReaderPng extends ChunkSeqReader {
    protected final boolean callbackMode;
    protected Deinterlacer deinterlacer;
    protected ImageInfo imageInfo;
    protected int currentChunkGroup = -1;
    protected ChunksList chunksList = null;
    private long a = 0;
    private boolean b = true;
    private boolean c = false;
    private Set<String> d = new HashSet();
    private long e = 0;
    private long f = 0;
    private long g = 0;
    private ChunkLoadBehaviour i = ChunkLoadBehaviour.LOAD_CHUNK_ALWAYS;
    private IChunkFactory h = new ChunkFactory();

    public ChunkSeqReaderPng(boolean z) {
        this.callbackMode = z;
    }

    private void a(String str) {
        if (str.equals("IHDR")) {
            if (this.currentChunkGroup < 0) {
                this.currentChunkGroup = 0;
                return;
            }
            throw new PngjInputException("unexpected chunk " + str);
        }
        if (str.equals("PLTE")) {
            if (this.currentChunkGroup == 0 || this.currentChunkGroup == 1) {
                this.currentChunkGroup = 2;
                return;
            }
            throw new PngjInputException("unexpected chunk " + str);
        }
        if (str.equals("IDAT")) {
            if (this.currentChunkGroup >= 0 && this.currentChunkGroup <= 4) {
                this.currentChunkGroup = 4;
                return;
            }
            throw new PngjInputException("unexpected chunk " + str);
        }
        if (str.equals("IEND")) {
            if (this.currentChunkGroup >= 4) {
                this.currentChunkGroup = 6;
                return;
            }
            throw new PngjInputException("unexpected chunk " + str);
        }
        if (this.currentChunkGroup <= 1) {
            this.currentChunkGroup = 1;
        } else if (this.currentChunkGroup <= 3) {
            this.currentChunkGroup = 3;
        } else {
            this.currentChunkGroup = 5;
        }
    }

    @Override // ar.com.hjg.pngj.ChunkSeqReader
    public boolean shouldSkipContent(int i, String str) {
        if (super.shouldSkipContent(i, str)) {
            return true;
        }
        if (ChunkHelper.isCritical(str)) {
            return false;
        }
        if (this.e > 0 && ((long) i) + getBytesCount() > this.e) {
            throw new PngjInputException("Maximum total bytes to read exceeeded: " + this.e + " offset:" + getBytesCount() + " len=" + i);
        }
        if (this.d.contains(str)) {
            return true;
        }
        if (this.f > 0 && i > this.f) {
            return true;
        }
        if (this.g > 0 && i > this.g - this.a) {
            return true;
        }
        switch (this.i) {
            case LOAD_CHUNK_IF_SAFE:
                if (!ChunkHelper.isSafeToCopy(str)) {
                    return true;
                }
                break;
            case LOAD_CHUNK_NEVER:
                return true;
        }
        return false;
    }

    public long getBytesChunksLoaded() {
        return this.a;
    }

    public int getCurrentChunkGroup() {
        return this.currentChunkGroup;
    }

    public void setChunksToSkip(String... strArr) {
        this.d.clear();
        for (String str : strArr) {
            this.d.add(str);
        }
    }

    public void addChunkToSkip(String str) {
        this.d.add(str);
    }

    public boolean firstChunksNotYetRead() {
        return getCurrentChunkGroup() < 4;
    }

    @Override // ar.com.hjg.pngj.ChunkSeqReader
    protected void postProcessChunk(ChunkReader chunkReader) {
        super.postProcessChunk(chunkReader);
        if (chunkReader.getChunkRaw().id.equals("IHDR")) {
            PngChunkIHDR pngChunkIHDR = new PngChunkIHDR(null);
            pngChunkIHDR.parseFromRaw(chunkReader.getChunkRaw());
            this.imageInfo = pngChunkIHDR.createImageInfo();
            if (pngChunkIHDR.isInterlaced()) {
                this.deinterlacer = new Deinterlacer(this.imageInfo);
            }
            this.chunksList = new ChunksList(this.imageInfo);
        }
        if (chunkReader.mode == ChunkReader.ChunkReaderMode.BUFFER || this.c) {
            this.chunksList.appendReadChunk(this.h.createChunk(chunkReader.getChunkRaw(), getImageInfo()), this.currentChunkGroup);
        }
        if (isDone()) {
            processEndPng();
        }
    }

    @Override // ar.com.hjg.pngj.ChunkSeqReader
    protected DeflatedChunksSet createIdatSet(String str) {
        IdatSet idatSet = new IdatSet(str, this.imageInfo, this.deinterlacer);
        idatSet.setCallbackMode(this.callbackMode);
        return idatSet;
    }

    public IdatSet getIdatSet() {
        DeflatedChunksSet curReaderDeflatedSet = getCurReaderDeflatedSet();
        if (curReaderDeflatedSet instanceof IdatSet) {
            return (IdatSet) curReaderDeflatedSet;
        }
        return null;
    }

    @Override // ar.com.hjg.pngj.ChunkSeqReader
    protected boolean isIdatKind(String str) {
        return str.equals("IDAT");
    }

    @Override // ar.com.hjg.pngj.ChunkSeqReader, ar.com.hjg.pngj.IBytesConsumer
    public int consume(byte[] bArr, int i, int i2) {
        return super.consume(bArr, i, i2);
    }

    public void setChunkFactory(IChunkFactory iChunkFactory) {
        this.h = iChunkFactory;
    }

    protected void processEndPng() {
    }

    public ImageInfo getImageInfo() {
        return this.imageInfo;
    }

    public boolean isInterlaced() {
        return this.deinterlacer != null;
    }

    public Deinterlacer getDeinterlacer() {
        return this.deinterlacer;
    }

    @Override // ar.com.hjg.pngj.ChunkSeqReader
    protected void startNewChunk(int i, String str, long j) {
        a(str);
        super.startNewChunk(i, str, j);
    }

    @Override // ar.com.hjg.pngj.ChunkSeqReader
    public void close() {
        if (this.currentChunkGroup != 6) {
            this.currentChunkGroup = 6;
        }
        super.close();
    }

    public List<PngChunk> getChunks() {
        return this.chunksList.getChunks();
    }

    public void setMaxTotalBytesRead(long j) {
        this.e = j;
    }

    public long getSkipChunkMaxSize() {
        return this.f;
    }

    public void setSkipChunkMaxSize(long j) {
        this.f = j;
    }

    public long getMaxBytesMetadata() {
        return this.g;
    }

    public void setMaxBytesMetadata(long j) {
        this.g = j;
    }

    public long getMaxTotalBytesRead() {
        return this.e;
    }

    @Override // ar.com.hjg.pngj.ChunkSeqReader
    protected boolean shouldCheckCrc(int i, String str) {
        return this.b;
    }

    public boolean isCheckCrc() {
        return this.b;
    }

    public void setCheckCrc(boolean z) {
        this.b = z;
    }

    public boolean isCallbackMode() {
        return this.callbackMode;
    }

    public Set<String> getChunksToSkip() {
        return this.d;
    }

    public void setChunkLoadBehaviour(ChunkLoadBehaviour chunkLoadBehaviour) {
        this.i = chunkLoadBehaviour;
    }

    public void setIncludeNonBufferedChunks(boolean z) {
        this.c = z;
    }
}
