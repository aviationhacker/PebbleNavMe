package com.google.common.base;

import java.lang.ref.SoftReference;

/* JADX INFO: loaded from: classes.dex */
public abstract class FinalizableSoftReference<T> extends SoftReference<T> implements FinalizableReference {
    protected FinalizableSoftReference(T t, FinalizableReferenceQueue finalizableReferenceQueue) {
        super(t, finalizableReferenceQueue.a);
        finalizableReferenceQueue.a();
    }
}
