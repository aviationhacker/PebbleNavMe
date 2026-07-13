package ar.com.hjg.pngj.chunks;

import ar.com.hjg.pngj.PngjException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class PngMetadata {
    private final ChunksList a;
    private final boolean b;

    public PngMetadata(ChunksList chunksList) {
        this.a = chunksList;
        if (chunksList instanceof ChunksListForWrite) {
            this.b = false;
        } else {
            this.b = true;
        }
    }

    public void queueChunk(final PngChunk pngChunk, boolean z) {
        ChunksListForWrite chunksListForWriteA = a();
        if (this.b) {
            throw new PngjException("cannot set chunk : readonly metadata");
        }
        if (z) {
            ChunkHelper.trimList(chunksListForWriteA.getQueuedChunks(), new ChunkPredicate() { // from class: ar.com.hjg.pngj.chunks.PngMetadata.1
                @Override // ar.com.hjg.pngj.chunks.ChunkPredicate
                public boolean match(PngChunk pngChunk2) {
                    return ChunkHelper.equivalent(pngChunk, pngChunk2);
                }
            });
        }
        chunksListForWriteA.queue(pngChunk);
    }

    public void queueChunk(PngChunk pngChunk) {
        queueChunk(pngChunk, true);
    }

    private ChunksListForWrite a() {
        return (ChunksListForWrite) this.a;
    }

    public double[] getDpi() {
        PngChunk byId1 = this.a.getById1("pHYs", true);
        return byId1 == null ? new double[]{-1.0d, -1.0d} : ((PngChunkPHYS) byId1).getAsDpi2();
    }

    public void setDpi(double d) {
        setDpi(d, d);
    }

    public void setDpi(double d, double d2) {
        PngChunkPHYS pngChunkPHYS = new PngChunkPHYS(this.a.b);
        pngChunkPHYS.setAsDpi2(d, d2);
        queueChunk(pngChunkPHYS);
    }

    public PngChunkTIME setTimeNow(int i) {
        PngChunkTIME pngChunkTIME = new PngChunkTIME(this.a.b);
        pngChunkTIME.setNow(i);
        queueChunk(pngChunkTIME);
        return pngChunkTIME;
    }

    public PngChunkTIME setTimeNow() {
        return setTimeNow(0);
    }

    public PngChunkTIME setTimeYMDHMS(int i, int i2, int i3, int i4, int i5, int i6) {
        PngChunkTIME pngChunkTIME = new PngChunkTIME(this.a.b);
        pngChunkTIME.setYMDHMS(i, i2, i3, i4, i5, i6);
        queueChunk(pngChunkTIME, true);
        return pngChunkTIME;
    }

    public PngChunkTIME getTime() {
        return (PngChunkTIME) this.a.getById1("tIME");
    }

    public String getTimeAsString() {
        PngChunkTIME time = getTime();
        return time == null ? "" : time.getAsString();
    }

    public PngChunkTextVar setText(String str, String str2, boolean z, boolean z2) {
        PngChunkTextVar pngChunkITXT;
        if (z2 && !z) {
            throw new PngjException("cannot compress non latin text");
        }
        if (z) {
            if (z2) {
                pngChunkITXT = new PngChunkZTXT(this.a.b);
            } else {
                pngChunkITXT = new PngChunkTEXT(this.a.b);
            }
        } else {
            pngChunkITXT = new PngChunkITXT(this.a.b);
            ((PngChunkITXT) pngChunkITXT).setLangtag(str);
        }
        pngChunkITXT.setKeyVal(str, str2);
        queueChunk(pngChunkITXT, true);
        return pngChunkITXT;
    }

    public PngChunkTextVar setText(String str, String str2) {
        return setText(str, str2, false, false);
    }

    public List<? extends PngChunkTextVar> getTxtsForKey(String str) {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.a.getById("tEXt", str));
        arrayList.addAll(this.a.getById("zTXt", str));
        arrayList.addAll(this.a.getById("iTXt", str));
        return arrayList;
    }

    public String getTxtForKey(String str) {
        List<? extends PngChunkTextVar> txtsForKey = getTxtsForKey(str);
        if (txtsForKey.isEmpty()) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        Iterator<? extends PngChunkTextVar> it = txtsForKey.iterator();
        while (it.hasNext()) {
            sb.append(it.next().getVal()).append("\n");
        }
        return sb.toString().trim();
    }

    public PngChunkPLTE getPLTE() {
        return (PngChunkPLTE) this.a.getById1("PLTE");
    }

    public PngChunkPLTE createPLTEChunk() {
        PngChunkPLTE pngChunkPLTE = new PngChunkPLTE(this.a.b);
        queueChunk(pngChunkPLTE);
        return pngChunkPLTE;
    }

    public PngChunkTRNS getTRNS() {
        return (PngChunkTRNS) this.a.getById1("tRNS");
    }

    public PngChunkTRNS createTRNSChunk() {
        PngChunkTRNS pngChunkTRNS = new PngChunkTRNS(this.a.b);
        queueChunk(pngChunkTRNS);
        return pngChunkTRNS;
    }
}
