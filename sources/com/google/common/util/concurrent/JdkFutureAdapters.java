package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import com.google.common.base.Preconditions;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
@Beta
public final class JdkFutureAdapters {
    public static <V> ListenableFuture<V> listenInPoolThread(Future<V> future) {
        return future instanceof ListenableFuture ? (ListenableFuture) future : new a(future);
    }

    public static <V> ListenableFuture<V> listenInPoolThread(Future<V> future, Executor executor) {
        Preconditions.checkNotNull(executor);
        return future instanceof ListenableFuture ? (ListenableFuture) future : new a(future, executor);
    }

    static class a<V> extends ForwardingFuture<V> implements ListenableFuture<V> {
        private static final ThreadFactory a = new ThreadFactoryBuilder().setDaemon(true).setNameFormat("ListenableFutureAdapter-thread-%d").build();
        private static final Executor b = Executors.newCachedThreadPool(a);
        private final Executor c;
        private final ExecutionList d;
        private final AtomicBoolean e;
        private final Future<V> f;

        a(Future<V> future) {
            this(future, b);
        }

        a(Future<V> future, Executor executor) {
            this.d = new ExecutionList();
            this.e = new AtomicBoolean(false);
            this.f = (Future) Preconditions.checkNotNull(future);
            this.c = (Executor) Preconditions.checkNotNull(executor);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.util.concurrent.ForwardingFuture, com.google.common.collect.ForwardingObject
        public Future<V> delegate() {
            return this.f;
        }

        @Override // com.google.common.util.concurrent.ListenableFuture
        public void addListener(Runnable runnable, Executor executor) {
            this.d.add(runnable, executor);
            if (this.e.compareAndSet(false, true)) {
                if (this.f.isDone()) {
                    this.d.execute();
                } else {
                    this.c.execute(new Runnable() { // from class: com.google.common.util.concurrent.JdkFutureAdapters.a.1
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                Uninterruptibles.getUninterruptibly(a.this.f);
                            } catch (Throwable th) {
                            }
                            a.this.d.execute();
                        }
                    });
                }
            }
        }
    }

    private JdkFutureAdapters() {
    }
}
