package org.apache.commons.lang3.concurrent;

/* JADX INFO: loaded from: classes.dex */
public class ConcurrentException extends Exception {
    private static final long serialVersionUID = 6622707671812226130L;

    protected ConcurrentException() {
    }

    public ConcurrentException(Throwable th) {
        super(ConcurrentUtils.a(th));
    }

    public ConcurrentException(String str, Throwable th) {
        super(str, ConcurrentUtils.a(th));
    }
}
