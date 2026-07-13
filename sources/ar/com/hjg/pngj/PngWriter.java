package ar.com.hjg.pngj;

import ar.com.hjg.pngj.chunks.ChunkCopyBehaviour;
import ar.com.hjg.pngj.chunks.ChunkPredicate;
import ar.com.hjg.pngj.chunks.ChunksList;
import ar.com.hjg.pngj.chunks.ChunksListForWrite;
import ar.com.hjg.pngj.chunks.PngChunk;
import ar.com.hjg.pngj.chunks.PngChunkIEND;
import ar.com.hjg.pngj.chunks.PngChunkIHDR;
import ar.com.hjg.pngj.chunks.PngMetadata;
import ar.com.hjg.pngj.pixels.PixelsWriter;
import ar.com.hjg.pngj.pixels.PixelsWriterDefault;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class PngWriter {
    private final ChunksListForWrite a;
    private final PngMetadata b;
    private int c;
    protected int currentChunkGroup;
    private int d;
    protected StringBuilder debuginfo;
    private boolean e;
    private int f;
    private PngIDatChunkOutputStream g;
    private final OutputStream h;
    private ChunkPredicate i;
    public final ImageInfo imgInfo;
    private ChunksList j;
    protected PixelsWriter pixelsWriter;
    protected int rowNum;

    public PngWriter(File file, ImageInfo imageInfo, boolean z) {
        this(PngHelperInternal.a(file, z), imageInfo);
        setShouldCloseStream(true);
    }

    public PngWriter(File file, ImageInfo imageInfo) {
        this(file, imageInfo, true);
    }

    public PngWriter(OutputStream outputStream, ImageInfo imageInfo) {
        this.rowNum = -1;
        this.currentChunkGroup = -1;
        this.c = 1;
        this.d = 0;
        this.e = true;
        this.f = 0;
        this.i = null;
        this.j = null;
        this.debuginfo = new StringBuilder();
        this.h = outputStream;
        this.imgInfo = imageInfo;
        this.a = new ChunksListForWrite(imageInfo);
        this.b = new PngMetadata(this.a);
        this.pixelsWriter = createPixelsWriter(imageInfo);
        setCompLevel(9);
    }

    private void a() {
        this.g = new PngIDatChunkOutputStream(this.h, this.f);
        this.pixelsWriter.setOs(this.g);
        e();
        c();
    }

    private void b() {
        PngChunkIEND pngChunkIEND = new PngChunkIEND(this.imgInfo);
        pngChunkIEND.createRawChunk().writeChunk(this.h);
        this.a.getChunks().add(pngChunkIEND);
    }

    private void c() {
        if (this.currentChunkGroup < 4) {
            this.currentChunkGroup = 1;
            f();
            this.a.writeChunks(this.h, this.currentChunkGroup);
            this.currentChunkGroup = 2;
            int iWriteChunks = this.a.writeChunks(this.h, this.currentChunkGroup);
            if (iWriteChunks > 0 && this.imgInfo.greyscale) {
                throw new PngjOutputException("cannot write palette for this format");
            }
            if (iWriteChunks == 0 && this.imgInfo.indexed) {
                throw new PngjOutputException("missing palette");
            }
            this.currentChunkGroup = 3;
            this.a.writeChunks(this.h, this.currentChunkGroup);
            this.currentChunkGroup = 4;
        }
    }

    private void d() {
        f();
        this.currentChunkGroup = 5;
        this.a.writeChunks(this.h, this.currentChunkGroup);
        List<PngChunk> queuedChunks = this.a.getQueuedChunks();
        if (!queuedChunks.isEmpty()) {
            throw new PngjOutputException(queuedChunks.size() + " chunks were not written! Eg: " + queuedChunks.get(0).toString());
        }
        this.currentChunkGroup = 6;
    }

    private void e() {
        this.currentChunkGroup = 0;
        PngHelperInternal.writeBytes(this.h, PngHelperInternal.getPngIdSignature());
        PngChunkIHDR pngChunkIHDR = new PngChunkIHDR(this.imgInfo);
        pngChunkIHDR.setCols(this.imgInfo.cols);
        pngChunkIHDR.setRows(this.imgInfo.rows);
        pngChunkIHDR.setBitspc(this.imgInfo.bitDepth);
        int i = this.imgInfo.alpha ? 4 : 0;
        if (this.imgInfo.indexed) {
            i++;
        }
        if (!this.imgInfo.greyscale) {
            i += 2;
        }
        pngChunkIHDR.setColormodel(i);
        pngChunkIHDR.setCompmeth(0);
        pngChunkIHDR.setFilmeth(0);
        pngChunkIHDR.setInterlaced(0);
        pngChunkIHDR.createRawChunk().writeChunk(this.h);
        this.a.getChunks().add(pngChunkIHDR);
    }

    private void f() {
        int chunkGroup;
        if (this.j != null && this.i != null) {
            boolean z = this.currentChunkGroup >= 4;
            for (PngChunk pngChunk : this.j.getChunks()) {
                if (pngChunk.getRaw().data != null && ((chunkGroup = pngChunk.getChunkGroup()) > 4 || !z)) {
                    if (chunkGroup < 4 || z) {
                        if (!pngChunk.crit || pngChunk.id.equals("PLTE")) {
                            if (this.i.match(pngChunk) && this.a.getEquivalent(pngChunk).isEmpty() && this.a.getQueuedEquivalent(pngChunk).isEmpty()) {
                                this.a.queue(pngChunk);
                            }
                        }
                    }
                }
            }
        }
    }

    public void queueChunk(PngChunk pngChunk) {
        Iterator<PngChunk> it = this.a.getQueuedEquivalent(pngChunk).iterator();
        while (it.hasNext()) {
            getChunksList().removeChunk(it.next());
        }
        this.a.queue(pngChunk);
    }

    public void copyChunksFrom(ChunksList chunksList, int i) {
        copyChunksFrom(chunksList, ChunkCopyBehaviour.createPredicate(i, this.imgInfo));
    }

    public void copyChunksFrom(ChunksList chunksList) {
        copyChunksFrom(chunksList, 8);
    }

    public void copyChunksFrom(ChunksList chunksList, ChunkPredicate chunkPredicate) {
        if (this.j != null && chunksList != null) {
            PngHelperInternal.LOGGER.warning("copyChunksFrom should only be called once");
        }
        if (chunkPredicate == null) {
            throw new PngjOutputException("copyChunksFrom requires a predicate");
        }
        this.j = chunksList;
        this.i = chunkPredicate;
    }

    public double computeCompressionRatio() {
        if (this.currentChunkGroup < 6) {
            throw new PngjOutputException("must be called after end()");
        }
        return this.g.getCountFlushed() / ((double) ((this.imgInfo.bytesPerRow + 1) * this.imgInfo.rows));
    }

    public void end() {
        try {
            if (this.rowNum != this.imgInfo.rows - 1) {
                throw new PngjOutputException("all rows have not been written");
            }
            try {
                this.g.flush();
                d();
                b();
            } catch (IOException e) {
                throw new PngjOutputException(e);
            }
        } finally {
            close();
        }
    }

    public void close() {
        try {
            if (this.g != null) {
                this.g.close();
            }
        } catch (Exception e) {
        }
        if (this.pixelsWriter != null) {
            this.pixelsWriter.close();
        }
        if (this.e && this.h != null) {
            try {
                this.h.close();
            } catch (Exception e2) {
                PngHelperInternal.LOGGER.warning("Error closing writer " + e2.toString());
            }
        }
    }

    public ChunksListForWrite getChunksList() {
        return this.a;
    }

    public PngMetadata getMetadata() {
        return this.b;
    }

    public void setFilterType(FilterType filterType) {
        this.pixelsWriter.setFilterType(filterType);
    }

    public void setCompLevel(int i) {
        this.pixelsWriter.setDeflaterCompLevel(Integer.valueOf(i));
    }

    public void setFilterPreserve(boolean z) {
        if (z) {
            this.pixelsWriter.setFilterType(FilterType.FILTER_PRESERVE);
        } else if (this.pixelsWriter.getFilterType() == null) {
            this.pixelsWriter.setFilterType(FilterType.FILTER_DEFAULT);
        }
    }

    public void setIdatMaxSize(int i) {
        this.f = i;
    }

    public void setShouldCloseStream(boolean z) {
        this.e = z;
    }

    public void writeRow(IImageLine iImageLine) {
        writeRow(iImageLine, this.rowNum + 1);
    }

    public void writeRows(IImageLineSet<? extends IImageLine> iImageLineSet) {
        for (int i = 0; i < this.imgInfo.rows; i++) {
            writeRow(iImageLineSet.getImageLine(i));
        }
    }

    public void writeRow(IImageLine iImageLine, int i) {
        this.rowNum++;
        if (this.rowNum == this.imgInfo.rows) {
            this.rowNum = 0;
        }
        if (i == this.imgInfo.rows) {
            i = 0;
        }
        if (i >= 0 && this.rowNum != i) {
            throw new PngjOutputException("rows must be written in order: expected:" + this.rowNum + " passed:" + i);
        }
        if (this.rowNum == 0) {
            this.d++;
        }
        if (i == 0 && this.d == this.c) {
            a();
            c();
        }
        byte[] rowb = this.pixelsWriter.getRowb();
        iImageLine.writeToPngRaw(rowb);
        this.pixelsWriter.processRow(rowb);
    }

    public void writeRowInt(int[] iArr) {
        writeRow(new ImageLineInt(this.imgInfo, iArr));
    }

    protected PixelsWriter createPixelsWriter(ImageInfo imageInfo) {
        return new PixelsWriterDefault(imageInfo);
    }

    public final PixelsWriter getPixelsWriter() {
        return this.pixelsWriter;
    }

    public String getDebuginfo() {
        return this.debuginfo.toString();
    }
}
