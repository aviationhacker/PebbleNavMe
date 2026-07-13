package org.apache.commons.lang3.concurrent;

/* JADX INFO: loaded from: classes.dex */
public abstract class LazyInitializer<T> implements ConcurrentInitializer<T> {
    private volatile T a;

    protected abstract T initialize();

    @Override // org.apache.commons.lang3.concurrent.ConcurrentInitializer
    public T get() {
        T tInitialize = this.a;
        if (tInitialize == null) {
            synchronized (this) {
                tInitialize = this.a;
                if (tInitialize == null) {
                    tInitialize = initialize();
                    this.a = tInitialize;
                }
            }
        }
        return tInitialize;
    }
}
