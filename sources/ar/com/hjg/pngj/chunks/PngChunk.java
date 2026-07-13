package ar.com.hjg.pngj.chunks;

import ar.com.hjg.pngj.ImageInfo;
import ar.com.hjg.pngj.PngjExceptionInternal;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
public abstract class PngChunk {
    private boolean a = false;
    protected int chunkGroup = -1;
    public final boolean crit;
    public final String id;
    protected final ImageInfo imgInfo;
    public final boolean pub;
    protected ChunkRaw raw;
    public final boolean safe;

    protected abstract boolean allowsMultiple();

    protected abstract ChunkRaw createRawChunk();

    public abstract ChunkOrderingConstraint getOrderingConstraint();

    protected abstract void parseFromRaw(ChunkRaw chunkRaw);

    public enum ChunkOrderingConstraint {
        NONE,
        BEFORE_PLTE_AND_IDAT,
        AFTER_PLTE_BEFORE_IDAT,
        AFTER_PLTE_BEFORE_IDAT_PLTE_REQUIRED,
        BEFORE_IDAT,
        NA;

        public boolean mustGoBeforePLTE() {
            return this == BEFORE_PLTE_AND_IDAT;
        }

        public boolean mustGoBeforeIDAT() {
            return this == BEFORE_IDAT || this == BEFORE_PLTE_AND_IDAT || this == AFTER_PLTE_BEFORE_IDAT;
        }

        public boolean mustGoAfterPLTE() {
            return this == AFTER_PLTE_BEFORE_IDAT || this == AFTER_PLTE_BEFORE_IDAT_PLTE_REQUIRED;
        }

        public boolean isOk(int i, boolean z) {
            if (this == NONE) {
                return true;
            }
            if (this == BEFORE_IDAT) {
                return i < 4;
            }
            if (this == BEFORE_PLTE_AND_IDAT) {
                return i < 2;
            }
            if (this == AFTER_PLTE_BEFORE_IDAT) {
                return z ? i < 4 : i < 4 && i > 2;
            }
            return false;
        }
    }

    public PngChunk(String str, ImageInfo imageInfo) {
        this.id = str;
        this.imgInfo = imageInfo;
        this.crit = ChunkHelper.isCritical(str);
        this.pub = ChunkHelper.isPublic(str);
        this.safe = ChunkHelper.isSafeToCopy(str);
    }

    protected final ChunkRaw createEmptyChunk(int i, boolean z) {
        return new ChunkRaw(i, ChunkHelper.toBytes(this.id), z);
    }

    public final int getChunkGroup() {
        return this.chunkGroup;
    }

    final void a(int i) {
        this.chunkGroup = i;
    }

    public boolean hasPriority() {
        return this.a;
    }

    public void setPriority(boolean z) {
        this.a = z;
    }

    final void a(OutputStream outputStream) {
        if (this.raw == null || this.raw.data == null) {
            this.raw = createRawChunk();
        }
        if (this.raw == null) {
            throw new PngjExceptionInternal("null chunk ! creation failed for " + this);
        }
        this.raw.writeChunk(outputStream);
    }

    public ChunkRaw getRaw() {
        return this.raw;
    }

    void a(ChunkRaw chunkRaw) {
        this.raw = chunkRaw;
    }

    public int getLen() {
        if (this.raw != null) {
            return this.raw.len;
        }
        return -1;
    }

    public long getOffset() {
        if (this.raw != null) {
            return this.raw.getOffset();
        }
        return -1L;
    }

    public void invalidateRawData() {
        this.raw = null;
    }

    public String toString() {
        return "chunk id= " + this.id + " (len=" + getLen() + " offset=" + getOffset() + ")";
    }
}
