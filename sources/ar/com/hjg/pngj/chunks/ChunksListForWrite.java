package ar.com.hjg.pngj.chunks;

import ar.com.hjg.pngj.ImageInfo;
import ar.com.hjg.pngj.PngjException;
import ar.com.hjg.pngj.PngjOutputException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ChunksListForWrite extends ChunksList {
    private final List<PngChunk> d;
    private HashMap<String, Integer> e;

    public ChunksListForWrite(ImageInfo imageInfo) {
        super(imageInfo);
        this.d = new ArrayList();
        this.e = new HashMap<>();
    }

    public List<? extends PngChunk> getQueuedById(String str) {
        return getQueuedById(str, null);
    }

    public List<? extends PngChunk> getQueuedById(String str, String str2) {
        return getXById(this.d, str, str2);
    }

    public PngChunk getQueuedById1(String str, String str2, boolean z) {
        List<? extends PngChunk> queuedById = getQueuedById(str, str2);
        if (queuedById.isEmpty()) {
            return null;
        }
        if (queuedById.size() > 1 && (z || !queuedById.get(0).allowsMultiple())) {
            throw new PngjException("unexpected multiple chunks id=" + str);
        }
        return queuedById.get(queuedById.size() - 1);
    }

    public PngChunk getQueuedById1(String str, boolean z) {
        return getQueuedById1(str, null, z);
    }

    public PngChunk getQueuedById1(String str) {
        return getQueuedById1(str, false);
    }

    public List<PngChunk> getQueuedEquivalent(final PngChunk pngChunk) {
        return ChunkHelper.filterList(this.d, new ChunkPredicate() { // from class: ar.com.hjg.pngj.chunks.ChunksListForWrite.1
            @Override // ar.com.hjg.pngj.chunks.ChunkPredicate
            public boolean match(PngChunk pngChunk2) {
                return ChunkHelper.equivalent(pngChunk2, pngChunk);
            }
        });
    }

    public boolean removeChunk(PngChunk pngChunk) {
        if (pngChunk == null) {
            return false;
        }
        return this.d.remove(pngChunk);
    }

    public boolean queue(PngChunk pngChunk) {
        this.d.add(pngChunk);
        return true;
    }

    private static boolean a(PngChunk pngChunk, int i) {
        int chunkGroup;
        int i2 = 3;
        if (i == 2) {
            return pngChunk.id.equals("PLTE");
        }
        if (i % 2 == 0) {
            throw new PngjOutputException("bad chunk group?");
        }
        if (pngChunk.getOrderingConstraint().mustGoBeforePLTE()) {
            i2 = 1;
            chunkGroup = 1;
        } else if (pngChunk.getOrderingConstraint().mustGoBeforeIDAT()) {
            chunkGroup = pngChunk.getOrderingConstraint().mustGoAfterPLTE() ? 3 : 1;
        } else {
            i2 = 5;
            chunkGroup = 1;
        }
        if (!pngChunk.hasPriority()) {
            chunkGroup = i2;
        }
        if (ChunkHelper.isUnknown(pngChunk) && pngChunk.getChunkGroup() > 0) {
            chunkGroup = pngChunk.getChunkGroup();
        }
        if (i != chunkGroup) {
            return i > chunkGroup && i <= i2;
        }
        return true;
    }

    public int writeChunks(OutputStream outputStream, int i) {
        Iterator<PngChunk> it = this.d.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            PngChunk next = it.next();
            if (a(next, i)) {
                if (ChunkHelper.isCritical(next.id) && !next.id.equals("PLTE")) {
                    throw new PngjOutputException("bad chunk queued: " + next);
                }
                if (this.e.containsKey(next.id) && !next.allowsMultiple()) {
                    throw new PngjOutputException("duplicated chunk does not allow multiple: " + next);
                }
                next.a(outputStream);
                this.a.add(next);
                this.e.put(next.id, Integer.valueOf(this.e.containsKey(next.id) ? this.e.get(next.id).intValue() + 1 : 1));
                next.a(i);
                it.remove();
                i2++;
            }
        }
        return i2;
    }

    public List<PngChunk> getQueuedChunks() {
        return this.d;
    }

    @Override // ar.com.hjg.pngj.chunks.ChunksList
    public String toString() {
        return "ChunkList: written: " + getChunks().size() + " queue: " + this.d.size();
    }

    @Override // ar.com.hjg.pngj.chunks.ChunksList
    public String toStringFull() {
        StringBuilder sb = new StringBuilder(toString());
        sb.append("\n Written:\n");
        for (PngChunk pngChunk : getChunks()) {
            sb.append(pngChunk).append(" G=" + pngChunk.getChunkGroup() + "\n");
        }
        if (!this.d.isEmpty()) {
            sb.append(" Queued:\n");
            Iterator<PngChunk> it = this.d.iterator();
            while (it.hasNext()) {
                sb.append(it.next()).append("\n");
            }
        }
        return sb.toString();
    }
}
