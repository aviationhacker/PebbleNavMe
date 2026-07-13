package ar.com.hjg.pngj.chunks;

import ar.com.hjg.pngj.ImageInfo;
import ar.com.hjg.pngj.PngjException;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class PngChunkITXT extends PngChunkTextVar {
    public static final String ID = "iTXt";
    private boolean a;
    private String b;
    private String c;

    public PngChunkITXT(ImageInfo imageInfo) {
        super("iTXt", imageInfo);
        this.a = false;
        this.b = "";
        this.c = "";
    }

    @Override // ar.com.hjg.pngj.chunks.PngChunk
    public ChunkRaw createRawChunk() {
        if (this.key == null || this.key.trim().length() == 0) {
            throw new PngjException("Text chunk key must be non empty");
        }
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byteArrayOutputStream.write(ChunkHelper.toBytes(this.key));
            byteArrayOutputStream.write(0);
            byteArrayOutputStream.write(this.a ? 1 : 0);
            byteArrayOutputStream.write(0);
            byteArrayOutputStream.write(ChunkHelper.toBytes(this.b));
            byteArrayOutputStream.write(0);
            byteArrayOutputStream.write(ChunkHelper.toBytesUTF8(this.c));
            byteArrayOutputStream.write(0);
            byte[] bytesUTF8 = ChunkHelper.toBytesUTF8(this.val);
            if (this.a) {
                bytesUTF8 = ChunkHelper.compressBytes(bytesUTF8, true);
            }
            byteArrayOutputStream.write(bytesUTF8);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            ChunkRaw chunkRawCreateEmptyChunk = createEmptyChunk(byteArray.length, false);
            chunkRawCreateEmptyChunk.data = byteArray;
            return chunkRawCreateEmptyChunk;
        } catch (IOException e) {
            throw new PngjException(e);
        }
    }

    @Override // ar.com.hjg.pngj.chunks.PngChunk
    public void parseFromRaw(ChunkRaw chunkRaw) {
        int[] iArr = new int[3];
        int i = 0;
        int i2 = 0;
        while (i < chunkRaw.data.length) {
            if (chunkRaw.data[i] == 0) {
                iArr[i2] = i;
                i2++;
                if (i2 == 1) {
                    i += 2;
                }
                if (i2 == 3) {
                    break;
                }
            }
            i++;
        }
        if (i2 != 3) {
            throw new PngjException("Bad formed PngChunkITXT chunk");
        }
        this.key = ChunkHelper.toString(chunkRaw.data, 0, iArr[0]);
        int i3 = iArr[0] + 1;
        this.a = chunkRaw.data[i3] != 0;
        int i4 = i3 + 1;
        if (this.a && chunkRaw.data[i4] != 0) {
            throw new PngjException("Bad formed PngChunkITXT chunk - bad compression method ");
        }
        this.b = ChunkHelper.toString(chunkRaw.data, i4, iArr[1] - i4);
        this.c = ChunkHelper.toStringUTF8(chunkRaw.data, iArr[1] + 1, (iArr[2] - iArr[1]) - 1);
        int i5 = iArr[2] + 1;
        if (this.a) {
            this.val = ChunkHelper.toStringUTF8(ChunkHelper.compressBytes(chunkRaw.data, i5, chunkRaw.data.length - i5, false));
        } else {
            this.val = ChunkHelper.toStringUTF8(chunkRaw.data, i5, chunkRaw.data.length - i5);
        }
    }

    public boolean isCompressed() {
        return this.a;
    }

    public void setCompressed(boolean z) {
        this.a = z;
    }

    public String getLangtag() {
        return this.b;
    }

    public void setLangtag(String str) {
        this.b = str;
    }

    public String getTranslatedTag() {
        return this.c;
    }

    public void setTranslatedTag(String str) {
        this.c = str;
    }
}
