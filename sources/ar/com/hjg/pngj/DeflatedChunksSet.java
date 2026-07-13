package ar.com.hjg.pngj;

import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
import org.eclipse.jetty.util.URIUtil;

/* JADX INFO: loaded from: classes.dex */
public class DeflatedChunksSet {
    a a;
    private int b;
    private int c;
    public final String chunkid;
    private int d;
    private Inflater e;
    private final boolean f;
    private DeflatedChunkReader g;
    private boolean h;
    private long i;
    private long j;
    protected byte[] row;

    enum a {
        WAITING_FOR_INPUT,
        ROW_READY,
        WORK_DONE,
        TERMINATED;

        public boolean a() {
            return this == WORK_DONE || this == TERMINATED;
        }

        public boolean b() {
            return this == TERMINATED;
        }
    }

    public DeflatedChunksSet(String str, int i, int i2, Inflater inflater, byte[] bArr) {
        this.a = a.WAITING_FOR_INPUT;
        this.h = true;
        this.i = 0L;
        this.j = 0L;
        this.chunkid = str;
        this.c = i;
        if (i < 1 || i2 < i) {
            throw new PngjException("bad inital row len " + i);
        }
        if (inflater != null) {
            this.e = inflater;
            this.f = false;
        } else {
            this.e = new Inflater();
            this.f = true;
        }
        this.row = (bArr == null || bArr.length < i) ? new byte[i2] : bArr;
        this.d = -1;
        this.a = a.WAITING_FOR_INPUT;
        try {
            prepareForNextRow(i);
        } catch (RuntimeException e) {
            close();
            throw e;
        }
    }

    public DeflatedChunksSet(String str, int i, int i2) {
        this(str, i, i2, null, null);
    }

    protected void appendNewChunk(DeflatedChunkReader deflatedChunkReader) {
        if (!this.chunkid.equals(deflatedChunkReader.getChunkRaw().id)) {
            throw new PngjInputException("Bad chunk inside IdatSet, id:" + deflatedChunkReader.getChunkRaw().id + ", expected:" + this.chunkid);
        }
        this.g = deflatedChunkReader;
    }

    protected void processBytes(byte[] bArr, int i, int i2) {
        this.i += (long) i2;
        if (i2 >= 1 && !this.a.a()) {
            if (this.a == a.ROW_READY) {
                throw new PngjInputException("this should only be called if waitingForMoreInput");
            }
            if (this.e.needsDictionary() || !this.e.needsInput()) {
                throw new RuntimeException("should not happen");
            }
            this.e.setInput(bArr, i, i2);
            if (isCallbackMode()) {
                while (a()) {
                    prepareForNextRow(processRowCallback());
                    if (isDone()) {
                        processDoneCallback();
                    }
                }
                return;
            }
            a();
        }
    }

    private boolean a() {
        a aVar;
        try {
            if (this.a == a.ROW_READY) {
                throw new PngjException("invalid state");
            }
            if (this.a.a()) {
                return false;
            }
            if (this.row == null || this.row.length < this.c) {
                this.row = new byte[this.c];
            }
            if (this.b < this.c && !this.e.finished()) {
                try {
                    int iInflate = this.e.inflate(this.row, this.b, this.c - this.b);
                    this.b += iInflate;
                    this.j += (long) iInflate;
                } catch (DataFormatException e) {
                    throw new PngjInputException("error decompressing zlib stream ", e);
                }
            }
            if (this.b == this.c) {
                aVar = a.ROW_READY;
            } else if (!this.e.finished()) {
                aVar = a.WAITING_FOR_INPUT;
            } else if (this.b > 0) {
                aVar = a.ROW_READY;
            } else {
                aVar = a.WORK_DONE;
            }
            this.a = aVar;
            if (this.a != a.ROW_READY) {
                return false;
            }
            preProcessRow();
            return true;
        } catch (RuntimeException e2) {
            close();
            throw e2;
        }
    }

    protected void preProcessRow() {
    }

    protected int processRowCallback() {
        throw new PngjInputException("not implemented");
    }

    protected void processDoneCallback() {
    }

    public byte[] getInflatedRow() {
        return this.row;
    }

    public void prepareForNextRow(int i) {
        this.b = 0;
        this.d++;
        if (i < 1) {
            this.c = 0;
            done();
        } else {
            if (this.e.finished()) {
                this.c = 0;
                done();
                return;
            }
            this.a = a.WAITING_FOR_INPUT;
            this.c = i;
            if (!this.h) {
                a();
            }
        }
    }

    public boolean isWaitingForMoreInput() {
        return this.a == a.WAITING_FOR_INPUT;
    }

    public boolean isRowReady() {
        return this.a == a.ROW_READY;
    }

    public boolean isDone() {
        return this.a.a();
    }

    public boolean isTerminated() {
        return this.a.b();
    }

    public boolean ackNextChunkId(String str) {
        if (this.a.b()) {
            return false;
        }
        if (!str.equals(this.chunkid) && !allowOtherChunksInBetween(str)) {
            if (this.a.a()) {
                if (isTerminated()) {
                    return false;
                }
                terminate();
                return false;
            }
            throw new PngjInputException("Unexpected chunk " + str + " while " + this.chunkid + " set is not done");
        }
        return true;
    }

    protected void terminate() {
        close();
    }

    public void close() {
        try {
            if (!this.a.b()) {
                this.a = a.TERMINATED;
            }
            if (this.f && this.e != null) {
                this.e.end();
                this.e = null;
            }
        } catch (Exception e) {
        }
    }

    public void done() {
        if (!isDone()) {
            this.a = a.WORK_DONE;
        }
    }

    public int getRowLen() {
        return this.c;
    }

    public int getRowFilled() {
        return this.b;
    }

    public int getRown() {
        return this.d;
    }

    public boolean allowOtherChunksInBetween(String str) {
        return false;
    }

    public boolean isCallbackMode() {
        return this.h;
    }

    public void setCallbackMode(boolean z) {
        this.h = z;
    }

    public long getBytesIn() {
        return this.i;
    }

    public long getBytesOut() {
        return this.j;
    }

    public String toString() {
        return new StringBuilder("idatSet : " + this.g.getChunkRaw().id + " state=" + this.a + " rows=" + this.d + " bytes=" + this.i + URIUtil.SLASH + this.j).toString();
    }
}
