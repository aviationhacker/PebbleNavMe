package org.apache.commons.lang3.concurrent;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes.dex */
public abstract class BackgroundInitializer<T> implements ConcurrentInitializer<T> {
    private ExecutorService a;
    private ExecutorService b;
    private Future<T> c;

    protected abstract T initialize();

    protected BackgroundInitializer() {
        this(null);
    }

    protected BackgroundInitializer(ExecutorService executorService) {
        setExternalExecutor(executorService);
    }

    public final synchronized ExecutorService getExternalExecutor() {
        return this.a;
    }

    public synchronized boolean isStarted() {
        return this.c != null;
    }

    public final synchronized void setExternalExecutor(ExecutorService executorService) {
        if (isStarted()) {
            throw new IllegalStateException("Cannot set ExecutorService after start()!");
        }
        this.a = executorService;
    }

    public synchronized boolean start() {
        boolean z;
        ExecutorService executorServiceA;
        if (!isStarted()) {
            this.b = getExternalExecutor();
            if (this.b == null) {
                executorServiceA = a();
                this.b = executorServiceA;
            } else {
                executorServiceA = null;
            }
            this.c = this.b.submit(a(executorServiceA));
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    @Override // org.apache.commons.lang3.concurrent.ConcurrentInitializer
    public T get() throws ConcurrentException {
        try {
            return getFuture().get();
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            throw new ConcurrentException(e);
        } catch (ExecutionException e2) {
            ConcurrentUtils.handleCause(e2);
            return null;
        }
    }

    public synchronized Future<T> getFuture() {
        if (this.c == null) {
            throw new IllegalStateException("start() must be called first!");
        }
        return this.c;
    }

    protected final synchronized ExecutorService getActiveExecutor() {
        return this.b;
    }

    protected int getTaskCount() {
        return 1;
    }

    private Callable<T> a(ExecutorService executorService) {
        return new a(executorService);
    }

    private ExecutorService a() {
        return Executors.newFixedThreadPool(getTaskCount());
    }

    class a implements Callable<T> {
        private final ExecutorService b;

        public a(ExecutorService executorService) {
            this.b = executorService;
        }

        @Override // java.util.concurrent.Callable
        public T call() {
            try {
                return (T) BackgroundInitializer.this.initialize();
            } finally {
                if (this.b != null) {
                    this.b.shutdown();
                }
            }
        }
    }
}
