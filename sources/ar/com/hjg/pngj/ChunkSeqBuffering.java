package ar.com.hjg.pngj;

/* JADX INFO: loaded from: classes.dex */
public class ChunkSeqBuffering extends ChunkSeqReader {
    protected boolean checkCrc = true;

    @Override // ar.com.hjg.pngj.ChunkSeqReader
    protected boolean isIdatKind(String str) {
        return false;
    }

    @Override // ar.com.hjg.pngj.ChunkSeqReader
    protected boolean shouldCheckCrc(int i, String str) {
        return this.checkCrc;
    }

    public void setCheckCrc(boolean z) {
        this.checkCrc = z;
    }
}
