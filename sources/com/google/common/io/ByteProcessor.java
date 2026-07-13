package com.google.common.io;

import com.google.common.annotations.Beta;

/* JADX INFO: loaded from: classes.dex */
@Beta
public interface ByteProcessor<T> {
    T getResult();

    boolean processBytes(byte[] bArr, int i, int i2);
}
