package ar.com.hjg.pngj;

import ar.com.hjg.pngj.chunks.ChunkLoadBehaviour;
import ar.com.hjg.pngj.chunks.ChunksList;
import ar.com.hjg.pngj.chunks.PngMetadata;
import java.io.File;
import java.io.InputStream;
import java.util.zip.Adler32;
import java.util.zip.CRC32;

/* JADX INFO: loaded from: classes.dex */
public class PngReader {
    public static final long MAX_BYTES_METADATA_DEFAULT = 5024024;
    public static final long MAX_CHUNK_SIZE_SKIP = 2024024;
    public static final long MAX_TOTAL_BYTES_READ_DEFAULT = 901001001;
    CRC32 a;
    Adler32 b;
    private IImageLineSetFactory<? extends IImageLine> c;
    protected ChunkSeqReaderPng chunkseq;
    public final ImageInfo imgInfo;
    protected IImageLineSet<? extends IImageLine> imlinesSet;
    public final boolean interlaced;
    protected final PngMetadata metadata;
    protected int rowNum;
    protected BufferedStreamFeeder streamFeeder;

    public PngReader(InputStream inputStream) {
        this(inputStream, true);
    }

    public PngReader(InputStream inputStream, boolean z) {
        this.rowNum = -1;
        try {
            this.streamFeeder = new BufferedStreamFeeder(inputStream);
            this.streamFeeder.setCloseStream(z);
            this.chunkseq = new ChunkSeqReaderPng(false);
            this.streamFeeder.setFailIfNoFeed(true);
            if (!this.streamFeeder.feedFixed(this.chunkseq, 36)) {
                throw new PngjInputException("error reading first 21 bytes");
            }
            this.imgInfo = this.chunkseq.getImageInfo();
            this.interlaced = this.chunkseq.getDeinterlacer() != null;
            setMaxBytesMetadata(MAX_BYTES_METADATA_DEFAULT);
            setMaxTotalBytesRead(MAX_TOTAL_BYTES_READ_DEFAULT);
            setSkipChunkMaxSize(MAX_CHUNK_SIZE_SKIP);
            this.metadata = new PngMetadata(this.chunkseq.chunksList);
            setLineSetFactory(ImageLineSetDefault.getFactoryInt());
            this.rowNum = -1;
        } catch (RuntimeException e) {
            this.streamFeeder.close();
            if (this.chunkseq != null) {
                this.chunkseq.close();
            }
            throw e;
        }
    }

    public PngReader(File file) {
        this(PngHelperInternal.istreamFromFile(file), true);
    }

    protected void readFirstChunks() {
        while (this.chunkseq.currentChunkGroup < 4) {
            this.streamFeeder.feed(this.chunkseq);
        }
    }

    public void setChunkLoadBehaviour(ChunkLoadBehaviour chunkLoadBehaviour) {
        this.chunkseq.setChunkLoadBehaviour(chunkLoadBehaviour);
    }

    public ChunksList getChunksList() {
        if (this.chunkseq.firstChunksNotYetRead()) {
            readFirstChunks();
        }
        return this.chunkseq.chunksList;
    }

    public PngMetadata getMetadata() {
        if (this.chunkseq.firstChunksNotYetRead()) {
            readFirstChunks();
        }
        return this.metadata;
    }

    public IImageLine readRow() {
        return readRow(this.rowNum + 1);
    }

    public boolean hasMoreRows() {
        return this.rowNum < this.imgInfo.rows + (-1);
    }

    public IImageLine readRow(int i) {
        if (this.chunkseq.firstChunksNotYetRead()) {
            readFirstChunks();
        }
        if (!this.interlaced) {
            if (this.imlinesSet == null) {
                this.imlinesSet = createLineSet(true, 1, 0, 1);
            }
            IImageLine imageLine = this.imlinesSet.getImageLine(i);
            if (i != this.rowNum) {
                if (i < this.rowNum) {
                    throw new PngjInputException("rows must be read in increasing order: " + i);
                }
                while (this.rowNum < i) {
                    while (!this.chunkseq.getIdatSet().isRowReady()) {
                        this.streamFeeder.feed(this.chunkseq);
                    }
                    this.rowNum++;
                    this.chunkseq.getIdatSet().a(this.a, this.b);
                    if (this.rowNum == i) {
                        imageLine.readFromPngRaw(this.chunkseq.getIdatSet().getUnfilteredRow(), this.imgInfo.bytesPerRow + 1, 0, 1);
                        imageLine.endReadFromPngRaw();
                    }
                    this.chunkseq.getIdatSet().advanceToNextRow();
                }
                return imageLine;
            }
            return imageLine;
        }
        if (this.imlinesSet == null) {
            this.imlinesSet = createLineSet(false, this.imgInfo.rows, 0, 1);
            loadAllInterlaced(this.imgInfo.rows, 0, 1);
        }
        this.rowNum = i;
        return this.imlinesSet.getImageLine(i);
    }

    public IImageLineSet<? extends IImageLine> readRows() {
        return readRows(this.imgInfo.rows, 0, 1);
    }

    public IImageLineSet<? extends IImageLine> readRows(int i, int i2, int i3) {
        if (this.chunkseq.firstChunksNotYetRead()) {
            readFirstChunks();
        }
        if (i < 0) {
            i = (this.imgInfo.rows - i2) / i3;
        }
        if (i3 < 1 || i2 < 0 || i == 0 || (i * i3) + i2 > this.imgInfo.rows) {
            throw new PngjInputException("bad args");
        }
        if (this.rowNum >= 0) {
            throw new PngjInputException("readRows cannot be mixed with readRow");
        }
        this.imlinesSet = createLineSet(false, i, i2, i3);
        if (!this.interlaced) {
            int i4 = -1;
            while (i4 < i - 1) {
                while (!this.chunkseq.getIdatSet().isRowReady()) {
                    this.streamFeeder.feed(this.chunkseq);
                }
                this.rowNum++;
                this.chunkseq.getIdatSet().a(this.a, this.b);
                i4 = (this.rowNum - i2) / i3;
                if (this.rowNum >= i2 && (i3 * i4) + i2 == this.rowNum) {
                    IImageLine imageLine = this.imlinesSet.getImageLine(this.rowNum);
                    imageLine.readFromPngRaw(this.chunkseq.getIdatSet().getUnfilteredRow(), this.imgInfo.bytesPerRow + 1, 0, 1);
                    imageLine.endReadFromPngRaw();
                }
                this.chunkseq.getIdatSet().advanceToNextRow();
            }
        } else {
            loadAllInterlaced(i, i2, i3);
        }
        this.chunkseq.getIdatSet().done();
        end();
        return this.imlinesSet;
    }

    public void setLineSetFactory(IImageLineSetFactory<? extends IImageLine> iImageLineSetFactory) {
        this.c = iImageLineSetFactory;
    }

    protected IImageLineSet<? extends IImageLine> createLineSet(boolean z, int i, int i2, int i3) {
        return this.c.create(this.imgInfo, z, i, i2, i3);
    }

    protected void loadAllInterlaced(int i, int i2, int i3) {
        int i4 = 0;
        IdatSet idatSet = this.chunkseq.getIdatSet();
        int i5 = 0;
        while (true) {
            if (!this.chunkseq.getIdatSet().isRowReady()) {
                this.streamFeeder.feed(this.chunkseq);
            } else {
                this.chunkseq.getIdatSet().a(this.a, this.b);
                int i6 = idatSet.b.i;
                if ((i6 - i2) % i3 == 0) {
                    this.imlinesSet.getImageLine(i6).readFromPngRaw(idatSet.getUnfilteredRow(), idatSet.b.p, idatSet.b.g, idatSet.b.e);
                    i5++;
                }
                idatSet.advanceToNextRow();
                if (i5 >= i && idatSet.isDone()) {
                    break;
                }
            }
        }
        idatSet.done();
        while (i4 < i) {
            this.imlinesSet.getImageLine(i2).endReadFromPngRaw();
            i4++;
            i2 += i3;
        }
    }

    public void readSkippingAllRows() {
        this.chunkseq.addChunkToSkip("IDAT");
        if (this.chunkseq.firstChunksNotYetRead()) {
            readFirstChunks();
        }
        end();
    }

    public void setMaxTotalBytesRead(long j) {
        this.chunkseq.setMaxTotalBytesRead(j);
    }

    public void setMaxBytesMetadata(long j) {
        this.chunkseq.setMaxBytesMetadata(j);
    }

    public void setSkipChunkMaxSize(long j) {
        this.chunkseq.setSkipChunkMaxSize(j);
    }

    public void setChunksToSkip(String... strArr) {
        this.chunkseq.setChunksToSkip(strArr);
    }

    public void addChunkToSkip(String str) {
        this.chunkseq.addChunkToSkip(str);
    }

    public void setShouldCloseStream(boolean z) {
        this.streamFeeder.setCloseStream(z);
    }

    public void end() {
        try {
            if (this.chunkseq.firstChunksNotYetRead()) {
                readFirstChunks();
            }
            if (this.chunkseq.getIdatSet() != null && !this.chunkseq.getIdatSet().isDone()) {
                this.chunkseq.getIdatSet().done();
            }
            while (!this.chunkseq.isDone()) {
                this.streamFeeder.feed(this.chunkseq);
            }
        } finally {
            close();
        }
    }

    public void close() {
        try {
            if (this.chunkseq != null) {
                this.chunkseq.close();
            }
        } catch (Exception e) {
            PngHelperInternal.LOGGER.warning("error closing chunk sequence:" + e.getMessage());
        }
        if (this.streamFeeder != null) {
            this.streamFeeder.close();
        }
    }

    public boolean isInterlaced() {
        return this.interlaced;
    }

    public void setCrcCheckDisabled() {
        this.chunkseq.setCheckCrc(false);
    }

    public ChunkSeqReaderPng getChunkseq() {
        return this.chunkseq;
    }

    public void prepareSimpleDigestComputation() {
        if (this.a == null) {
            this.a = new CRC32();
        } else {
            this.a.reset();
        }
        if (this.b == null) {
            this.b = new Adler32();
        } else {
            this.b.reset();
        }
        this.a.update((byte) this.imgInfo.rows);
        this.a.update((byte) (this.imgInfo.rows >> 8));
        this.a.update((byte) (this.imgInfo.rows >> 16));
        this.a.update((byte) this.imgInfo.cols);
        this.a.update((byte) (this.imgInfo.cols >> 8));
        this.a.update((byte) (this.imgInfo.cols >> 16));
        this.a.update((byte) this.imgInfo.channels);
        this.a.update((byte) this.imgInfo.bitDepth);
        this.a.update((byte) (this.imgInfo.indexed ? 10 : 20));
        this.b.update((byte) this.imgInfo.bytesPerRow);
        this.b.update((byte) this.imgInfo.channels);
        this.b.update((byte) this.imgInfo.rows);
    }

    long a() {
        if (this.a == null) {
            return 0L;
        }
        return this.a.getValue() ^ (this.b.getValue() << 31);
    }

    public String getSimpleDigestHex() {
        return String.format("%016X", Long.valueOf(a()));
    }

    public String toString() {
        return this.imgInfo.toString() + " interlaced=" + this.interlaced;
    }

    public String toStringCompact() {
        return this.imgInfo.toStringBrief() + (this.interlaced ? "i" : "");
    }
}
