package ar.com.hjg.pngj;

/* JADX INFO: loaded from: classes.dex */
public class PngjBadCrcException extends PngjInputException {
    private static final long serialVersionUID = 1;

    public PngjBadCrcException(String str, Throwable th) {
        super(str, th);
    }

    public PngjBadCrcException(String str) {
        super(str);
    }

    public PngjBadCrcException(Throwable th) {
        super(th);
    }
}
