package org.eclipse.jetty.util.thread;

import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.eclipse.jetty.util.component.AbstractLifeCycle;
import org.eclipse.jetty.util.component.LifeCycle;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes.dex */
public class ExecutorThreadPool extends AbstractLifeCycle implements LifeCycle, ThreadPool {
    private static final Logger a = Log.getLogger((Class<?>) ExecutorThreadPool.class);
    private final ExecutorService b;

    public ExecutorThreadPool(ExecutorService executorService) {
        this.b = executorService;
    }

    public ExecutorThreadPool() {
        this(new ThreadPoolExecutor(256, 256, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue()));
    }

    public ExecutorThreadPool(int i) {
        ThreadPoolExecutor threadPoolExecutor;
        if (i < 0) {
            threadPoolExecutor = new ThreadPoolExecutor(256, 256, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue());
        } else {
            threadPoolExecutor = i == 0 ? new ThreadPoolExecutor(32, 256, 60L, TimeUnit.SECONDS, new SynchronousQueue()) : new ThreadPoolExecutor(32, 256, 60L, TimeUnit.SECONDS, new ArrayBlockingQueue(i));
        }
        this(threadPoolExecutor);
    }

    public ExecutorThreadPool(int i, int i2, long j) {
        this(i, i2, j, TimeUnit.MILLISECONDS);
    }

    public ExecutorThreadPool(int i, int i2, long j, TimeUnit timeUnit) {
        this(i, i2, j, timeUnit, new LinkedBlockingQueue());
    }

    public ExecutorThreadPool(int i, int i2, long j, TimeUnit timeUnit, BlockingQueue<Runnable> blockingQueue) {
        this(new ThreadPoolExecutor(i, i2, j, timeUnit, blockingQueue));
    }

    @Override // org.eclipse.jetty.util.thread.ThreadPool
    public boolean dispatch(Runnable runnable) {
        try {
            this.b.execute(runnable);
            return true;
        } catch (RejectedExecutionException e) {
            a.warn(e);
            return false;
        }
    }

    @Override // org.eclipse.jetty.util.thread.ThreadPool
    public int getIdleThreads() {
        if (!(this.b instanceof ThreadPoolExecutor)) {
            return -1;
        }
        ThreadPoolExecutor threadPoolExecutor = (ThreadPoolExecutor) this.b;
        return threadPoolExecutor.getPoolSize() - threadPoolExecutor.getActiveCount();
    }

    @Override // org.eclipse.jetty.util.thread.ThreadPool
    public int getThreads() {
        if (this.b instanceof ThreadPoolExecutor) {
            return ((ThreadPoolExecutor) this.b).getPoolSize();
        }
        return -1;
    }

    @Override // org.eclipse.jetty.util.thread.ThreadPool
    public boolean isLowOnThreads() {
        if (!(this.b instanceof ThreadPoolExecutor)) {
            return false;
        }
        ThreadPoolExecutor threadPoolExecutor = (ThreadPoolExecutor) this.b;
        return threadPoolExecutor.getPoolSize() == threadPoolExecutor.getMaximumPoolSize() && threadPoolExecutor.getQueue().size() >= threadPoolExecutor.getPoolSize() - threadPoolExecutor.getActiveCount();
    }

    @Override // org.eclipse.jetty.util.thread.ThreadPool
    public void join() throws InterruptedException {
        this.b.awaitTermination(Long.MAX_VALUE, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.eclipse.jetty.util.component.AbstractLifeCycle
    public void doStop() {
        super.doStop();
        this.b.shutdownNow();
    }
}
