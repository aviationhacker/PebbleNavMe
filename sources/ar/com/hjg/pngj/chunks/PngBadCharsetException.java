package ar.com.hjg.pngj.chunks;

import ar.com.hjg.pngj.PngjException;

/* JADX INFO: loaded from: classes.dex */
public class PngBadCharsetException extends PngjException {
    private static final long serialVersionUID = 1;

    public PngBadCharsetException(String str, Throwable th) {
        super(str, th);
    }

    public PngBadCharsetException(String str) {
        super(str);
    }

    public PngBadCharsetException(Throwable th) {
        super(th);
    }
}
