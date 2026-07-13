package com.batescorp.pebble.nav.lib.billing;

/* JADX INFO: loaded from: classes.dex */
public class IabResult {
    int a;
    String b;

    public IabResult(int i, String str) {
        this.a = i;
        if (str == null || str.trim().length() == 0) {
            this.b = IabHelper.getResponseDesc(i);
        } else {
            this.b = str + " (response: " + IabHelper.getResponseDesc(i) + ")";
        }
    }

    public int getResponse() {
        return this.a;
    }

    public String getMessage() {
        return this.b;
    }

    public boolean isSuccess() {
        return this.a == 0;
    }

    public boolean isFailure() {
        return !isSuccess();
    }

    public String toString() {
        return "IabResult: " + getMessage();
    }
}
