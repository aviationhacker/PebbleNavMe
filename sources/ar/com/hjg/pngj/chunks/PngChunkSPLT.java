package ar.com.hjg.pngj.chunks;

import ar.com.hjg.pngj.ImageInfo;
import ar.com.hjg.pngj.PngHelperInternal;
import ar.com.hjg.pngj.PngjException;
import ar.com.hjg.pngj.chunks.PngChunk;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class PngChunkSPLT extends PngChunkMultiple {
    public static final String ID = "sPLT";
    private String a;
    private int b;
    private int[] c;

    public PngChunkSPLT(ImageInfo imageInfo) {
        super("sPLT", imageInfo);
    }

    @Override // ar.com.hjg.pngj.chunks.PngChunk
    public PngChunk.ChunkOrderingConstraint getOrderingConstraint() {
        return PngChunk.ChunkOrderingConstraint.BEFORE_IDAT;
    }

    @Override // ar.com.hjg.pngj.chunks.PngChunk
    public ChunkRaw createRawChunk() {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byteArrayOutputStream.write(ChunkHelper.toBytes(this.a));
            byteArrayOutputStream.write(0);
            byteArrayOutputStream.write((byte) this.b);
            int nentries = getNentries();
            for (int i = 0; i < nentries; i++) {
                for (int i2 = 0; i2 < 4; i2++) {
                    if (this.b == 8) {
                        PngHelperInternal.writeByte(byteArrayOutputStream, (byte) this.c[(i * 5) + i2]);
                    } else {
                        PngHelperInternal.writeInt2(byteArrayOutputStream, this.c[(i * 5) + i2]);
                    }
                }
                PngHelperInternal.writeInt2(byteArrayOutputStream, this.c[(i * 5) + 4]);
            }
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
        int int2fromBytes;
        int int2fromBytes2;
        int int2fromBytes3;
        int int2fromBytes4;
        int i;
        int i2 = 0;
        while (true) {
            if (i2 >= chunkRaw.data.length) {
                i2 = -1;
                break;
            } else if (chunkRaw.data[i2] == 0) {
                break;
            } else {
                i2++;
            }
        }
        if (i2 <= 0 || i2 > chunkRaw.data.length - 2) {
            throw new PngjException("bad sPLT chunk: no separator found");
        }
        this.a = ChunkHelper.toString(chunkRaw.data, 0, i2);
        this.b = PngHelperInternal.readInt1fromByte(chunkRaw.data, i2 + 1);
        int i3 = i2 + 2;
        int length = (chunkRaw.data.length - i3) / (this.b == 8 ? 6 : 10);
        this.c = new int[length * 5];
        int i4 = 0;
        int i5 = 0;
        int i6 = i3;
        while (i4 < length) {
            if (this.b == 8) {
                int i7 = i6 + 1;
                int2fromBytes = PngHelperInternal.readInt1fromByte(chunkRaw.data, i6);
                int i8 = i7 + 1;
                int2fromBytes2 = PngHelperInternal.readInt1fromByte(chunkRaw.data, i7);
                int i9 = i8 + 1;
                int2fromBytes3 = PngHelperInternal.readInt1fromByte(chunkRaw.data, i8);
                i = i9 + 1;
                int2fromBytes4 = PngHelperInternal.readInt1fromByte(chunkRaw.data, i9);
            } else {
                int2fromBytes = PngHelperInternal.readInt2fromBytes(chunkRaw.data, i6);
                int i10 = i6 + 2;
                int2fromBytes2 = PngHelperInternal.readInt2fromBytes(chunkRaw.data, i10);
                int i11 = i10 + 2;
                int2fromBytes3 = PngHelperInternal.readInt2fromBytes(chunkRaw.data, i11);
                int i12 = i11 + 2;
                int2fromBytes4 = PngHelperInternal.readInt2fromBytes(chunkRaw.data, i12);
                i = i12 + 2;
            }
            int int2fromBytes5 = PngHelperInternal.readInt2fromBytes(chunkRaw.data, i);
            int i13 = i5 + 1;
            this.c[i5] = int2fromBytes;
            int i14 = i13 + 1;
            this.c[i13] = int2fromBytes2;
            int i15 = i14 + 1;
            this.c[i14] = int2fromBytes3;
            int i16 = i15 + 1;
            this.c[i15] = int2fromBytes4;
            this.c[i16] = int2fromBytes5;
            i4++;
            i5 = i16 + 1;
            i6 = i + 2;
        }
    }

    public int getNentries() {
        return this.c.length / 5;
    }

    public String getPalName() {
        return this.a;
    }

    public void setPalName(String str) {
        this.a = str;
    }

    public int getSampledepth() {
        return this.b;
    }

    public void setSampledepth(int i) {
        this.b = i;
    }

    public int[] getPalette() {
        return this.c;
    }

    public void setPalette(int[] iArr) {
        this.c = iArr;
    }
}
