package org.apache.commons.lang3.concurrent;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public abstract class AtomicSafeInitializer<T> implements ConcurrentInitializer<T> {
    private final AtomicReference<AtomicSafeInitializer<T>> a = new AtomicReference<>();
    private final AtomicReference<T> b = new AtomicReference<>();

    protected abstract T initialize();

    @Override // org.apache.commons.lang3.concurrent.ConcurrentInitializer
    public final T get() {
        while (true) {
            T t = this.b.get();
            if (t == null) {
                if (this.a.compareAndSet(null, this)) {
                    this.b.set(initialize());
                }
            } else {
                return t;
            }
        }
    }
}
