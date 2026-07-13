package ar.com.hjg.pngj;

/* JADX INFO: loaded from: classes.dex */
public class PngjException extends RuntimeException {
    private static final long serialVersionUID = 1;

    public PngjException(String str, Throwable th) {
        super(str, th);
    }

    public PngjException(String str) {
        super(str);
    }

    public PngjException(Throwable th) {
        super(th);
    }
}
