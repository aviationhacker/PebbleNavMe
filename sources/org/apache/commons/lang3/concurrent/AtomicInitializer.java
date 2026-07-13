package org.apache.commons.lang3.concurrent;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public abstract class AtomicInitializer<T> implements ConcurrentInitializer<T> {
    private final AtomicReference<T> a = new AtomicReference<>();

    protected abstract T initialize();

    @Override // org.apache.commons.lang3.concurrent.ConcurrentInitializer
    public T get() {
        T t = this.a.get();
        if (t == null) {
            T tInitialize = initialize();
            if (!this.a.compareAndSet(null, tInitialize)) {
                return this.a.get();
            }
            return tInitialize;
        }
        return t;
    }
}
