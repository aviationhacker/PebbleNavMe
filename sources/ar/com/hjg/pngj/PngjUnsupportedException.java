package ar.com.hjg.pngj;

/* JADX INFO: loaded from: classes.dex */
public class PngjUnsupportedException extends RuntimeException {
    private static final long serialVersionUID = 1;

    public PngjUnsupportedException() {
    }

    public PngjUnsupportedException(String str, Throwable th) {
        super(str, th);
    }

    public PngjUnsupportedException(String str) {
        super(str);
    }

    public PngjUnsupportedException(Throwable th) {
        super(th);
    }
}
