package org.eclipse.jetty.util.thread;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import org.eclipse.jetty.util.BlockingArrayQueue;
import org.eclipse.jetty.util.URIUtil;
import org.eclipse.jetty.util.component.AbstractLifeCycle;
import org.eclipse.jetty.util.component.AggregateLifeCycle;
import org.eclipse.jetty.util.component.Dumpable;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;
import org.eclipse.jetty.util.thread.ThreadPool;

/* JADX INFO: loaded from: classes.dex */
public class QueuedThreadPool extends AbstractLifeCycle implements Executor, Dumpable, ThreadPool.SizedThreadPool {
    private static final Logger a = Log.getLogger((Class<?>) QueuedThreadPool.class);
    private final AtomicInteger b;
    private final AtomicInteger c;
    private final AtomicLong d;
    private final ConcurrentLinkedQueue<Thread> e;
    private final Object f;
    private BlockingQueue<Runnable> g;
    private String h;
    private int i;
    private int j;
    private int k;
    private int l;
    private int m;
    private boolean n;
    private int o;
    private boolean p;
    private Runnable q;

    public QueuedThreadPool() {
        this.b = new AtomicInteger();
        this.c = new AtomicInteger();
        this.d = new AtomicLong();
        this.e = new ConcurrentLinkedQueue<>();
        this.f = new Object();
        this.i = 60000;
        this.j = 254;
        this.k = 8;
        this.l = -1;
        this.m = 5;
        this.n = false;
        this.o = 100;
        this.p = false;
        this.q = new Runnable() { // from class: org.eclipse.jetty.util.thread.QueuedThreadPool.3
            /* JADX WARN: Removed duplicated region for block: B:60:0x014b  */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void run() throws java.lang.Throwable {
                /*
                    Method dump skipped, instruction units count: 363
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.util.thread.QueuedThreadPool.AnonymousClass3.run():void");
            }
        };
        this.h = "qtp" + super.hashCode();
    }

    public QueuedThreadPool(int i) {
        this();
        setMaxThreads(i);
    }

    public QueuedThreadPool(BlockingQueue<Runnable> blockingQueue) {
        this();
        this.g = blockingQueue;
        this.g.clear();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.eclipse.jetty.util.component.AbstractLifeCycle
    public void doStart() {
        super.doStart();
        this.b.set(0);
        if (this.g == null) {
            this.g = this.l > 0 ? new ArrayBlockingQueue<>(this.l) : new BlockingArrayQueue<>(this.k, this.k);
        }
        int i = this.b.get();
        while (isRunning() && i < this.k) {
            a(i);
            i = this.b.get();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.eclipse.jetty.util.component.AbstractLifeCycle
    public void doStop() throws InterruptedException {
        super.doStop();
        long jCurrentTimeMillis = System.currentTimeMillis();
        while (this.b.get() > 0 && System.currentTimeMillis() - jCurrentTimeMillis < this.o / 2) {
            Thread.sleep(1L);
        }
        this.g.clear();
        Runnable runnable = new Runnable() { // from class: org.eclipse.jetty.util.thread.QueuedThreadPool.1
            @Override // java.lang.Runnable
            public void run() {
            }
        };
        int i = this.c.get();
        while (true) {
            int i2 = i - 1;
            if (i <= 0) {
                break;
            }
            this.g.offer(runnable);
            i = i2;
        }
        Thread.yield();
        if (this.b.get() > 0) {
            Iterator<Thread> it = this.e.iterator();
            while (it.hasNext()) {
                it.next().interrupt();
            }
        }
        while (this.b.get() > 0 && System.currentTimeMillis() - jCurrentTimeMillis < this.o) {
            Thread.sleep(1L);
        }
        Thread.yield();
        int size = this.e.size();
        if (size > 0) {
            a.warn(size + " threads could not be stopped", new Object[0]);
            if (size == 1 || a.isDebugEnabled()) {
                for (Thread thread : this.e) {
                    a.info("Couldn't stop " + thread, new Object[0]);
                    StackTraceElement[] stackTrace = thread.getStackTrace();
                    for (StackTraceElement stackTraceElement : stackTrace) {
                        a.info(" at " + stackTraceElement, new Object[0]);
                    }
                }
            }
        }
        synchronized (this.f) {
            this.f.notifyAll();
        }
    }

    public void setDaemon(boolean z) {
        this.n = z;
    }

    public void setMaxIdleTimeMs(int i) {
        this.i = i;
    }

    public void setMaxStopTimeMs(int i) {
        this.o = i;
    }

    @Override // org.eclipse.jetty.util.thread.ThreadPool.SizedThreadPool
    public void setMaxThreads(int i) {
        this.j = i;
        if (this.k > this.j) {
            this.k = this.j;
        }
    }

    @Override // org.eclipse.jetty.util.thread.ThreadPool.SizedThreadPool
    public void setMinThreads(int i) {
        this.k = i;
        if (this.k > this.j) {
            this.j = this.k;
        }
        int i2 = this.b.get();
        while (isStarted() && i2 < this.k) {
            a(i2);
            i2 = this.b.get();
        }
    }

    public void setName(String str) {
        if (isRunning()) {
            throw new IllegalStateException("started");
        }
        this.h = str;
    }

    public void setThreadsPriority(int i) {
        this.m = i;
    }

    public int getMaxQueued() {
        return this.l;
    }

    public void setMaxQueued(int i) {
        if (isRunning()) {
            throw new IllegalStateException("started");
        }
        this.l = i;
    }

    public int getMaxIdleTimeMs() {
        return this.i;
    }

    public int getMaxStopTimeMs() {
        return this.o;
    }

    @Override // org.eclipse.jetty.util.thread.ThreadPool.SizedThreadPool
    public int getMaxThreads() {
        return this.j;
    }

    @Override // org.eclipse.jetty.util.thread.ThreadPool.SizedThreadPool
    public int getMinThreads() {
        return this.k;
    }

    public String getName() {
        return this.h;
    }

    public int getThreadsPriority() {
        return this.m;
    }

    public boolean isDaemon() {
        return this.n;
    }

    public boolean isDetailedDump() {
        return this.p;
    }

    public void setDetailedDump(boolean z) {
        this.p = z;
    }

    @Override // org.eclipse.jetty.util.thread.ThreadPool
    public boolean dispatch(Runnable runnable) {
        int i;
        if (isRunning()) {
            int size = this.g.size();
            int idleThreads = getIdleThreads();
            if (this.g.offer(runnable)) {
                if ((idleThreads != 0 && size <= idleThreads) || (i = this.b.get()) >= this.j) {
                    return true;
                }
                a(i);
                return true;
            }
        }
        a.debug("Dispatched {} to stopped {}", runnable, this);
        return false;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        if (!dispatch(runnable)) {
            throw new RejectedExecutionException();
        }
    }

    @Override // org.eclipse.jetty.util.thread.ThreadPool
    public void join() throws InterruptedException {
        synchronized (this.f) {
            while (isRunning()) {
                this.f.wait();
            }
        }
        while (isStopping()) {
            Thread.sleep(1L);
        }
    }

    @Override // org.eclipse.jetty.util.thread.ThreadPool
    public int getThreads() {
        return this.b.get();
    }

    @Override // org.eclipse.jetty.util.thread.ThreadPool
    public int getIdleThreads() {
        return this.c.get();
    }

    @Override // org.eclipse.jetty.util.thread.ThreadPool
    public boolean isLowOnThreads() {
        return this.b.get() == this.j && this.g.size() >= this.c.get();
    }

    private boolean a(int i) {
        if (!this.b.compareAndSet(i, i + 1)) {
            return false;
        }
        try {
            Thread threadNewThread = newThread(this.q);
            threadNewThread.setDaemon(this.n);
            threadNewThread.setPriority(this.m);
            threadNewThread.setName(this.h + "-" + threadNewThread.getId());
            this.e.add(threadNewThread);
            threadNewThread.start();
            return true;
        } catch (Throwable th) {
            this.b.decrementAndGet();
            throw th;
        }
    }

    protected Thread newThread(Runnable runnable) {
        return new Thread(runnable);
    }

    @Override // org.eclipse.jetty.util.component.Dumpable
    public String dump() {
        return AggregateLifeCycle.dump(this);
    }

    @Override // org.eclipse.jetty.util.component.Dumpable
    public void dump(Appendable appendable, String str) throws IOException {
        final boolean z;
        ArrayList arrayList = new ArrayList(getMaxThreads());
        for (final Thread thread : this.e) {
            final StackTraceElement[] stackTrace = thread.getStackTrace();
            if (stackTrace != null) {
                for (StackTraceElement stackTraceElement : stackTrace) {
                    if ("idleJobPoll".equals(stackTraceElement.getMethodName())) {
                        z = true;
                        break;
                    }
                }
                z = false;
            } else {
                z = false;
            }
            if (this.p) {
                arrayList.add(new Dumpable() { // from class: org.eclipse.jetty.util.thread.QueuedThreadPool.2
                    @Override // org.eclipse.jetty.util.component.Dumpable
                    public void dump(Appendable appendable2, String str2) throws IOException {
                        appendable2.append(String.valueOf(thread.getId())).append(' ').append(thread.getName()).append(' ').append(thread.getState().toString()).append(z ? " IDLE" : "").append('\n');
                        if (!z) {
                            AggregateLifeCycle.dump(appendable2, str2, Arrays.asList(stackTrace));
                        }
                    }

                    @Override // org.eclipse.jetty.util.component.Dumpable
                    public String dump() {
                        return null;
                    }
                });
            } else {
                arrayList.add(thread.getId() + " " + thread.getName() + " " + thread.getState() + " @ " + (stackTrace.length > 0 ? stackTrace[0] : "???") + (z ? " IDLE" : ""));
            }
        }
        AggregateLifeCycle.dumpObject(appendable, this);
        AggregateLifeCycle.dump(appendable, str, arrayList);
    }

    public String toString() {
        return this.h + "{" + getMinThreads() + "<=" + getIdleThreads() + "<=" + getThreads() + URIUtil.SLASH + getMaxThreads() + "," + (this.g == null ? -1 : this.g.size()) + "}";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Runnable b() {
        return this.g.poll(this.i, TimeUnit.MILLISECONDS);
    }

    protected void runJob(Runnable runnable) {
        runnable.run();
    }

    protected BlockingQueue<Runnable> getQueue() {
        return this.g;
    }

    @Deprecated
    public boolean stopThread(long j) {
        for (Thread thread : this.e) {
            if (thread.getId() == j) {
                thread.stop();
                return true;
            }
        }
        return false;
    }

    public boolean interruptThread(long j) {
        for (Thread thread : this.e) {
            if (thread.getId() == j) {
                thread.interrupt();
                return true;
            }
        }
        return false;
    }

    public String dumpThread(long j) {
        for (Thread thread : this.e) {
            if (thread.getId() == j) {
                StringBuilder sb = new StringBuilder();
                sb.append(thread.getId()).append(" ").append(thread.getName()).append(" ").append(thread.getState()).append(":\n");
                StackTraceElement[] stackTrace = thread.getStackTrace();
                for (StackTraceElement stackTraceElement : stackTrace) {
                    sb.append("  at ").append(stackTraceElement.toString()).append('\n');
                }
                return sb.toString();
            }
        }
        return null;
    }
}
