package com.google.common.io;

import com.google.common.annotations.Beta;

/* JADX INFO: loaded from: classes.dex */
@Beta
public interface LineProcessor<T> {
    T getResult();

    boolean processLine(String str);
}
