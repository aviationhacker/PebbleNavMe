package ar.com.hjg.pngj.chunks;

import ar.com.hjg.pngj.ImageInfo;
import ar.com.hjg.pngj.PngjException;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class PngChunkZTXT extends PngChunkTextVar {
    public static final String ID = "zTXt";

    public PngChunkZTXT(ImageInfo imageInfo) {
        super("zTXt", imageInfo);
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
            byteArrayOutputStream.write(0);
            byteArrayOutputStream.write(ChunkHelper.compressBytes(ChunkHelper.toBytes(this.val), true));
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
        int i = 0;
        while (true) {
            if (i >= chunkRaw.data.length) {
                i = -1;
                break;
            } else if (chunkRaw.data[i] == 0) {
                break;
            } else {
                i++;
            }
        }
        if (i < 0 || i > chunkRaw.data.length - 2) {
            throw new PngjException("bad zTXt chunk: no separator found");
        }
        this.key = ChunkHelper.toString(chunkRaw.data, 0, i);
        if (chunkRaw.data[i + 1] != 0) {
            throw new PngjException("bad zTXt chunk: unknown compression method");
        }
        this.val = ChunkHelper.toString(ChunkHelper.compressBytes(chunkRaw.data, i + 2, (chunkRaw.data.length - i) - 2, false));
    }
}
