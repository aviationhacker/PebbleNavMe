package com.batescorp.pebble.nav.lib.billing;

/* JADX INFO: loaded from: classes.dex */
public class IabException extends Exception {
    IabResult a;

    public IabException(IabResult iabResult) {
        this(iabResult, (Exception) null);
    }

    public IabException(int i, String str) {
        this(new IabResult(i, str));
    }

    public IabException(IabResult iabResult, Exception exc) {
        super(iabResult.getMessage(), exc);
        this.a = iabResult;
    }

    public IabException(int i, String str, Exception exc) {
        this(new IabResult(i, str), exc);
    }

    public IabResult getResult() {
        return this.a;
    }
}
