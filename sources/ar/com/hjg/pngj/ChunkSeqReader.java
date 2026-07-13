package ar.com.hjg.pngj;

import ar.com.hjg.pngj.ChunkReader;
import ar.com.hjg.pngj.chunks.ChunkHelper;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class ChunkSeqReader implements IBytesConsumer {
    protected static final int SIGNATURE_LEN = 8;
    private byte[] a;
    private int b;
    private boolean c;
    private boolean d;
    private int e;
    private long f;
    private DeflatedChunksSet g;
    private ChunkReader h;
    private long i;
    protected final boolean withSignature;

    public ChunkSeqReader() {
        this(true);
    }

    public ChunkSeqReader(boolean z) {
        this.a = new byte[8];
        this.b = 0;
        this.c = false;
        this.d = false;
        this.e = 0;
        this.f = 0L;
        this.withSignature = z;
        this.c = z ? false : true;
    }

    @Override // ar.com.hjg.pngj.IBytesConsumer
    public int consume(byte[] bArr, int i, int i2) {
        if (this.d) {
            return -1;
        }
        if (i2 == 0) {
            return 0;
        }
        if (i2 < 0) {
            throw new PngjInputException("Bad len: " + i2);
        }
        if (this.c) {
            if (this.h == null || this.h.isDone()) {
                int i3 = 8 - this.b;
                if (i3 > i2) {
                    i3 = i2;
                }
                System.arraycopy(bArr, i, this.a, this.b, i3);
                this.b += i3;
                int i4 = 0 + i3;
                this.f += (long) i3;
                int i5 = i2 - i3;
                int i6 = i3 + i;
                if (this.b == 8) {
                    this.e++;
                    startNewChunk(PngHelperInternal.readInt4fromBytes(this.a, 0), ChunkHelper.toString(this.a, 4, 4), this.f - 8);
                    this.b = 0;
                }
                return i4;
            }
            int iFeedBytes = this.h.feedBytes(bArr, i, i2);
            int i7 = 0 + iFeedBytes;
            this.f += (long) iFeedBytes;
            return i7;
        }
        int i8 = 8 - this.b;
        if (i8 <= i2) {
            i2 = i8;
        }
        System.arraycopy(bArr, i, this.a, this.b, i2);
        this.b += i2;
        if (this.b == 8) {
            checkSignature(this.a);
            this.b = 0;
            this.c = true;
        }
        int i9 = 0 + i2;
        this.f += (long) i2;
        return i9;
    }

    public boolean feedAll(byte[] bArr, int i, int i2) {
        while (i2 > 0) {
            int iConsume = consume(bArr, i, i2);
            if (iConsume < 1) {
                return false;
            }
            i2 -= iConsume;
            i += iConsume;
        }
        return true;
    }

    protected void startNewChunk(int i, String str, long j) {
        if (str.equals("IDAT")) {
            this.i += (long) i;
        }
        boolean zShouldCheckCrc = shouldCheckCrc(i, str);
        boolean zShouldSkipContent = shouldSkipContent(i, str);
        boolean zIsIdatKind = isIdatKind(str);
        boolean zAckNextChunkId = false;
        if (this.g != null) {
            zAckNextChunkId = this.g.ackNextChunkId(str);
        }
        if (zIsIdatKind && !zShouldSkipContent) {
            if (!zAckNextChunkId) {
                if (this.g != null) {
                    throw new PngjInputException("too many IDAT (or idatlike) chunks");
                }
                this.g = createIdatSet(str);
            }
            this.h = new DeflatedChunkReader(i, str, zShouldCheckCrc, j, this.g) { // from class: ar.com.hjg.pngj.ChunkSeqReader.1
                @Override // ar.com.hjg.pngj.DeflatedChunkReader, ar.com.hjg.pngj.ChunkReader
                protected void chunkDone() {
                    ChunkSeqReader.this.postProcessChunk(this);
                }
            };
            return;
        }
        this.h = createChunkReaderForNewChunk(str, i, j, zShouldSkipContent);
        if (!zShouldCheckCrc) {
            this.h.setCrcCheck(false);
        }
    }

    protected ChunkReader createChunkReaderForNewChunk(String str, int i, long j, boolean z) {
        return new ChunkReader(i, str, j, z ? ChunkReader.ChunkReaderMode.SKIP : ChunkReader.ChunkReaderMode.BUFFER) { // from class: ar.com.hjg.pngj.ChunkSeqReader.2
            @Override // ar.com.hjg.pngj.ChunkReader
            protected void chunkDone() {
                ChunkSeqReader.this.postProcessChunk(this);
            }

            @Override // ar.com.hjg.pngj.ChunkReader
            protected void processData(int i2, byte[] bArr, int i3, int i4) {
                throw new PngjExceptionInternal("should never happen");
            }
        };
    }

    protected void postProcessChunk(ChunkReader chunkReader) {
        String strFirstChunkId;
        if (this.e == 1 && (strFirstChunkId = firstChunkId()) != null && !strFirstChunkId.equals(chunkReader.getChunkRaw().id)) {
            throw new PngjInputException("Bad first chunk: " + chunkReader.getChunkRaw().id + " expected: " + firstChunkId());
        }
        if (chunkReader.getChunkRaw().id.equals(endChunkId())) {
            this.d = true;
        }
    }

    protected DeflatedChunksSet createIdatSet(String str) {
        return new DeflatedChunksSet(str, 1024, 1024);
    }

    protected boolean isIdatKind(String str) {
        return false;
    }

    protected boolean shouldSkipContent(int i, String str) {
        return false;
    }

    protected boolean shouldCheckCrc(int i, String str) {
        return true;
    }

    protected void checkSignature(byte[] bArr) {
        if (!Arrays.equals(bArr, PngHelperInternal.getPngIdSignature())) {
            throw new PngjInputException("Bad PNG signature");
        }
    }

    public boolean isSignatureDone() {
        return this.c;
    }

    public boolean isDone() {
        return this.d;
    }

    public long getBytesCount() {
        return this.f;
    }

    public int getChunkCount() {
        return this.e;
    }

    public ChunkReader getCurChunkReader() {
        return this.h;
    }

    public DeflatedChunksSet getCurReaderDeflatedSet() {
        return this.g;
    }

    public void close() {
        if (this.g != null) {
            this.g.close();
        }
        this.d = true;
    }

    public boolean isAtChunkBoundary() {
        return this.f == 0 || this.f == 8 || this.d || this.h == null || this.h.isDone();
    }

    protected String firstChunkId() {
        return "IHDR";
    }

    public long getIdatBytes() {
        return this.i;
    }

    protected String endChunkId() {
        return "IEND";
    }

    public void feedFromFile(File file) {
        try {
            feedFromInputStream(new FileInputStream(file), true);
        } catch (FileNotFoundException e) {
            throw new PngjInputException(e.getMessage());
        }
    }

    public void feedFromInputStream(InputStream inputStream, boolean z) {
        BufferedStreamFeeder bufferedStreamFeeder = new BufferedStreamFeeder(inputStream);
        bufferedStreamFeeder.setCloseStream(z);
        while (bufferedStreamFeeder.hasMoreToFeed()) {
            try {
                bufferedStreamFeeder.feed(this);
            } finally {
                close();
                bufferedStreamFeeder.close();
            }
        }
    }

    public void feedFromInputStream(InputStream inputStream) {
        feedFromInputStream(inputStream, true);
    }
}
