package ar.com.hjg.pngj.chunks;

import ar.com.hjg.pngj.ImageInfo;
import ar.com.hjg.pngj.PngjException;
import ar.com.hjg.pngj.chunks.PngChunk;
import com.google.common.primitives.UnsignedBytes;

/* JADX INFO: loaded from: classes.dex */
public class PngChunkICCP extends PngChunkSingle {
    public static final String ID = "iCCP";
    private String a;
    private byte[] b;

    public PngChunkICCP(ImageInfo imageInfo) {
        super("iCCP", imageInfo);
    }

    @Override // ar.com.hjg.pngj.chunks.PngChunk
    public PngChunk.ChunkOrderingConstraint getOrderingConstraint() {
        return PngChunk.ChunkOrderingConstraint.BEFORE_PLTE_AND_IDAT;
    }

    @Override // ar.com.hjg.pngj.chunks.PngChunk
    public ChunkRaw createRawChunk() {
        ChunkRaw chunkRawCreateEmptyChunk = createEmptyChunk(this.a.length() + this.b.length + 2, true);
        System.arraycopy(ChunkHelper.toBytes(this.a), 0, chunkRawCreateEmptyChunk.data, 0, this.a.length());
        chunkRawCreateEmptyChunk.data[this.a.length()] = 0;
        chunkRawCreateEmptyChunk.data[this.a.length() + 1] = 0;
        System.arraycopy(this.b, 0, chunkRawCreateEmptyChunk.data, this.a.length() + 2, this.b.length);
        return chunkRawCreateEmptyChunk;
    }

    @Override // ar.com.hjg.pngj.chunks.PngChunk
    public void parseFromRaw(ChunkRaw chunkRaw) {
        int iPosNullByte = ChunkHelper.posNullByte(chunkRaw.data);
        this.a = ChunkHelper.toString(chunkRaw.data, 0, iPosNullByte);
        if ((chunkRaw.data[iPosNullByte + 1] & UnsignedBytes.MAX_VALUE) != 0) {
            throw new PngjException("bad compression for ChunkTypeICCP");
        }
        int length = chunkRaw.data.length - (iPosNullByte + 2);
        this.b = new byte[length];
        System.arraycopy(chunkRaw.data, iPosNullByte + 2, this.b, 0, length);
    }

    public void setProfileNameAndContent(String str, byte[] bArr) {
        this.a = str;
        this.b = ChunkHelper.compressBytes(bArr, true);
    }

    public void setProfileNameAndContent(String str, String str2) {
        setProfileNameAndContent(str, ChunkHelper.toBytes(str2));
    }

    public String getProfileName() {
        return this.a;
    }

    public byte[] getProfile() {
        return ChunkHelper.compressBytes(this.b, false);
    }

    public String getProfileAsString() {
        return ChunkHelper.toString(getProfile());
    }
}
