package ar.com.hjg.pngj;

/* JADX INFO: loaded from: classes.dex */
public class PngjExceptionInternal extends RuntimeException {
    private static final long serialVersionUID = 1;

    public PngjExceptionInternal(String str, Throwable th) {
        super(str, th);
    }

    public PngjExceptionInternal(String str) {
        super(str);
    }

    public PngjExceptionInternal(Throwable th) {
        super(th);
    }
}
