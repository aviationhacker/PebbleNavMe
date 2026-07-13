package com.google.common.collect;

import com.google.common.annotations.Beta;

/* JADX INFO: loaded from: classes.dex */
@Beta
public interface Interner<E> {
    E intern(E e);
}
