package com.google.common.base;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import defpackage.gu;
import javax.annotation.CheckReturnValue;

/* JADX INFO: loaded from: classes.dex */
@Beta
@GwtCompatible
public abstract class Ticker {
    private static final Ticker a = new Ticker() { // from class: com.google.common.base.Ticker.1
        @Override // com.google.common.base.Ticker
        public long read() {
            return gu.a();
        }
    };

    public abstract long read();

    protected Ticker() {
    }

    @CheckReturnValue
    public static Ticker systemTicker() {
        return a;
    }
}
