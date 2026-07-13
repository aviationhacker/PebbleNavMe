package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import com.google.common.base.Throwables;
import com.google.common.util.concurrent.ForwardingListenableFuture;
import defpackage.mc;
import defpackage.me;
import java.lang.reflect.InvocationTargetException;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Delayed;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(emulated = true)
public final class MoreExecutors {
    private MoreExecutors() {
    }

    @Beta
    @GwtIncompatible("TODO")
    public static ExecutorService getExitingExecutorService(ThreadPoolExecutor threadPoolExecutor, long j, TimeUnit timeUnit) {
        return new a().a(threadPoolExecutor, j, timeUnit);
    }

    @Beta
    @GwtIncompatible("TODO")
    public static ScheduledExecutorService getExitingScheduledExecutorService(ScheduledThreadPoolExecutor scheduledThreadPoolExecutor, long j, TimeUnit timeUnit) {
        return new a().a(scheduledThreadPoolExecutor, j, timeUnit);
    }

    @Beta
    @GwtIncompatible("TODO")
    public static void addDelayedShutdownHook(ExecutorService executorService, long j, TimeUnit timeUnit) {
        new a().a(executorService, j, timeUnit);
    }

    @Beta
    @GwtIncompatible("concurrency")
    public static ExecutorService getExitingExecutorService(ThreadPoolExecutor threadPoolExecutor) {
        return new a().a(threadPoolExecutor);
    }

    @Beta
    @GwtIncompatible("TODO")
    public static ScheduledExecutorService getExitingScheduledExecutorService(ScheduledThreadPoolExecutor scheduledThreadPoolExecutor) {
        return new a().a(scheduledThreadPoolExecutor);
    }

    @VisibleForTesting
    @GwtIncompatible("TODO")
    static class a {
        a() {
        }

        final ExecutorService a(ThreadPoolExecutor threadPoolExecutor, long j, TimeUnit timeUnit) {
            MoreExecutors.b(threadPoolExecutor);
            ExecutorService executorServiceUnconfigurableExecutorService = Executors.unconfigurableExecutorService(threadPoolExecutor);
            a(executorServiceUnconfigurableExecutorService, j, timeUnit);
            return executorServiceUnconfigurableExecutorService;
        }

        final ScheduledExecutorService a(ScheduledThreadPoolExecutor scheduledThreadPoolExecutor, long j, TimeUnit timeUnit) {
            MoreExecutors.b(scheduledThreadPoolExecutor);
            ScheduledExecutorService scheduledExecutorServiceUnconfigurableScheduledExecutorService = Executors.unconfigurableScheduledExecutorService(scheduledThreadPoolExecutor);
            a(scheduledExecutorServiceUnconfigurableScheduledExecutorService, j, timeUnit);
            return scheduledExecutorServiceUnconfigurableScheduledExecutorService;
        }

        final void a(final ExecutorService executorService, final long j, final TimeUnit timeUnit) {
            Preconditions.checkNotNull(executorService);
            Preconditions.checkNotNull(timeUnit);
            String strValueOf = String.valueOf(executorService);
            a(MoreExecutors.a(new StringBuilder(String.valueOf(strValueOf).length() + 24).append("DelayedShutdownHook-for-").append(strValueOf).toString(), new Runnable() { // from class: com.google.common.util.concurrent.MoreExecutors.a.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        executorService.shutdown();
                        executorService.awaitTermination(j, timeUnit);
                    } catch (InterruptedException e) {
                    }
                }
            }));
        }

        final ExecutorService a(ThreadPoolExecutor threadPoolExecutor) {
            return a(threadPoolExecutor, 120L, TimeUnit.SECONDS);
        }

        final ScheduledExecutorService a(ScheduledThreadPoolExecutor scheduledThreadPoolExecutor) {
            return a(scheduledThreadPoolExecutor, 120L, TimeUnit.SECONDS);
        }

        @VisibleForTesting
        void a(Thread thread) {
            Runtime.getRuntime().addShutdownHook(thread);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @GwtIncompatible("TODO")
    public static void b(ThreadPoolExecutor threadPoolExecutor) {
        threadPoolExecutor.setThreadFactory(new ThreadFactoryBuilder().setDaemon(true).setThreadFactory(threadPoolExecutor.getThreadFactory()).build());
    }

    @GwtIncompatible("TODO")
    @Deprecated
    public static ListeningExecutorService sameThreadExecutor() {
        return new c(null);
    }

    @GwtIncompatible("TODO")
    static final class c extends AbstractListeningExecutorService {
        private final Object a;

        @GuardedBy("lock")
        private int b;

        @GuardedBy("lock")
        private boolean c;

        private c() {
            this.a = new Object();
            this.b = 0;
            this.c = false;
        }

        /* synthetic */ c(AnonymousClass1 anonymousClass1) {
            this();
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            a();
            try {
                runnable.run();
            } finally {
                b();
            }
        }

        @Override // java.util.concurrent.ExecutorService
        public boolean isShutdown() {
            boolean z;
            synchronized (this.a) {
                z = this.c;
            }
            return z;
        }

        @Override // java.util.concurrent.ExecutorService
        public void shutdown() {
            synchronized (this.a) {
                this.c = true;
                if (this.b == 0) {
                    this.a.notifyAll();
                }
            }
        }

        @Override // java.util.concurrent.ExecutorService
        public List<Runnable> shutdownNow() {
            shutdown();
            return Collections.emptyList();
        }

        @Override // java.util.concurrent.ExecutorService
        public boolean isTerminated() {
            boolean z;
            synchronized (this.a) {
                z = this.c && this.b == 0;
            }
            return z;
        }

        @Override // java.util.concurrent.ExecutorService
        public boolean awaitTermination(long j, TimeUnit timeUnit) {
            boolean z;
            long nanos = timeUnit.toNanos(j);
            synchronized (this.a) {
                while (true) {
                    if (this.c && this.b == 0) {
                        z = true;
                        break;
                    }
                    if (nanos <= 0) {
                        z = false;
                        break;
                    }
                    long jNanoTime = System.nanoTime();
                    TimeUnit.NANOSECONDS.timedWait(this.a, nanos);
                    nanos -= System.nanoTime() - jNanoTime;
                }
            }
            return z;
        }

        private void a() {
            synchronized (this.a) {
                if (this.c) {
                    throw new RejectedExecutionException("Executor already shutdown");
                }
                this.b++;
            }
        }

        private void b() {
            synchronized (this.a) {
                int i = this.b - 1;
                this.b = i;
                if (i == 0) {
                    this.a.notifyAll();
                }
            }
        }
    }

    @GwtIncompatible("TODO")
    public static ListeningExecutorService newDirectExecutorService() {
        return new c(null);
    }

    public static Executor directExecutor() {
        return b.INSTANCE;
    }

    enum b implements Executor {
        INSTANCE;

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            runnable.run();
        }

        @Override // java.lang.Enum
        public String toString() {
            return "MoreExecutors.directExecutor()";
        }
    }

    @GwtIncompatible("TODO")
    public static ListeningExecutorService listeningDecorator(ExecutorService executorService) {
        return executorService instanceof ListeningExecutorService ? (ListeningExecutorService) executorService : executorService instanceof ScheduledExecutorService ? new e((ScheduledExecutorService) executorService) : new d(executorService);
    }

    @GwtIncompatible("TODO")
    public static ListeningScheduledExecutorService listeningDecorator(ScheduledExecutorService scheduledExecutorService) {
        return scheduledExecutorService instanceof ListeningScheduledExecutorService ? (ListeningScheduledExecutorService) scheduledExecutorService : new e(scheduledExecutorService);
    }

    @GwtIncompatible("TODO")
    static class d extends AbstractListeningExecutorService {
        private final ExecutorService a;

        d(ExecutorService executorService) {
            this.a = (ExecutorService) Preconditions.checkNotNull(executorService);
        }

        @Override // java.util.concurrent.ExecutorService
        public final boolean awaitTermination(long j, TimeUnit timeUnit) {
            return this.a.awaitTermination(j, timeUnit);
        }

        @Override // java.util.concurrent.ExecutorService
        public final boolean isShutdown() {
            return this.a.isShutdown();
        }

        @Override // java.util.concurrent.ExecutorService
        public final boolean isTerminated() {
            return this.a.isTerminated();
        }

        @Override // java.util.concurrent.ExecutorService
        public final void shutdown() {
            this.a.shutdown();
        }

        @Override // java.util.concurrent.ExecutorService
        public final List<Runnable> shutdownNow() {
            return this.a.shutdownNow();
        }

        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            this.a.execute(runnable);
        }
    }

    @GwtIncompatible("TODO")
    static final class e extends d implements ListeningScheduledExecutorService {
        final ScheduledExecutorService a;

        e(ScheduledExecutorService scheduledExecutorService) {
            super(scheduledExecutorService);
            this.a = (ScheduledExecutorService) Preconditions.checkNotNull(scheduledExecutorService);
        }

        @Override // java.util.concurrent.ScheduledExecutorService
        public ListenableScheduledFuture<?> schedule(Runnable runnable, long j, TimeUnit timeUnit) {
            mc mcVarA = mc.a(runnable, (Object) null);
            return new a(mcVarA, this.a.schedule(mcVarA, j, timeUnit));
        }

        @Override // java.util.concurrent.ScheduledExecutorService
        public <V> ListenableScheduledFuture<V> schedule(Callable<V> callable, long j, TimeUnit timeUnit) {
            mc mcVarA = mc.a((Callable) callable);
            return new a(mcVarA, this.a.schedule(mcVarA, j, timeUnit));
        }

        @Override // java.util.concurrent.ScheduledExecutorService
        public ListenableScheduledFuture<?> scheduleAtFixedRate(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
            b bVar = new b(runnable);
            return new a(bVar, this.a.scheduleAtFixedRate(bVar, j, j2, timeUnit));
        }

        @Override // java.util.concurrent.ScheduledExecutorService
        public ListenableScheduledFuture<?> scheduleWithFixedDelay(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
            b bVar = new b(runnable);
            return new a(bVar, this.a.scheduleWithFixedDelay(bVar, j, j2, timeUnit));
        }

        static final class a<V> extends ForwardingListenableFuture.SimpleForwardingListenableFuture<V> implements ListenableScheduledFuture<V> {
            private final ScheduledFuture<?> a;

            public a(ListenableFuture<V> listenableFuture, ScheduledFuture<?> scheduledFuture) {
                super(listenableFuture);
                this.a = scheduledFuture;
            }

            @Override // com.google.common.util.concurrent.ForwardingFuture, java.util.concurrent.Future
            public boolean cancel(boolean z) {
                boolean zCancel = super.cancel(z);
                if (zCancel) {
                    this.a.cancel(z);
                }
                return zCancel;
            }

            @Override // java.util.concurrent.Delayed
            public long getDelay(TimeUnit timeUnit) {
                return this.a.getDelay(timeUnit);
            }

            @Override // java.lang.Comparable
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public int compareTo(Delayed delayed) {
                return this.a.compareTo(delayed);
            }
        }

        @GwtIncompatible("TODO")
        static final class b extends AbstractFuture<Void> implements Runnable {
            private final Runnable a;

            public b(Runnable runnable) {
                this.a = (Runnable) Preconditions.checkNotNull(runnable);
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    this.a.run();
                } catch (Throwable th) {
                    setException(th);
                    throw Throwables.propagate(th);
                }
            }
        }
    }

    /* JADX INFO: renamed from: com.google.common.util.concurrent.MoreExecutors$1, reason: invalid class name */
    static class AnonymousClass1 implements Runnable {
        final /* synthetic */ BlockingQueue a;
        final /* synthetic */ ListenableFuture b;

        @Override // java.lang.Runnable
        public void run() {
            this.a.add(this.b);
        }
    }

    @Beta
    @GwtIncompatible("concurrency")
    public static ThreadFactory platformThreadFactory() {
        if (!a()) {
            return Executors.defaultThreadFactory();
        }
        try {
            return (ThreadFactory) Class.forName("com.google.appengine.api.ThreadManager").getMethod("currentRequestThreadFactory", new Class[0]).invoke(null, new Object[0]);
        } catch (ClassNotFoundException e2) {
            throw new RuntimeException("Couldn't invoke ThreadManager.currentRequestThreadFactory", e2);
        } catch (IllegalAccessException e3) {
            throw new RuntimeException("Couldn't invoke ThreadManager.currentRequestThreadFactory", e3);
        } catch (NoSuchMethodException e4) {
            throw new RuntimeException("Couldn't invoke ThreadManager.currentRequestThreadFactory", e4);
        } catch (InvocationTargetException e5) {
            throw Throwables.propagate(e5.getCause());
        }
    }

    @GwtIncompatible("TODO")
    private static boolean a() {
        if (System.getProperty("com.google.appengine.runtime.environment") == null) {
            return false;
        }
        try {
            return Class.forName("com.google.apphosting.api.ApiProxy").getMethod("getCurrentEnvironment", new Class[0]).invoke(null, new Object[0]) != null;
        } catch (ClassNotFoundException e2) {
            return false;
        } catch (IllegalAccessException e3) {
            return false;
        } catch (NoSuchMethodException e4) {
            return false;
        } catch (InvocationTargetException e5) {
            return false;
        }
    }

    @GwtIncompatible("concurrency")
    static Thread a(String str, Runnable runnable) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(runnable);
        Thread threadNewThread = platformThreadFactory().newThread(runnable);
        try {
            threadNewThread.setName(str);
        } catch (SecurityException e2) {
        }
        return threadNewThread;
    }

    @GwtIncompatible("concurrency")
    static Executor a(final Executor executor, final Supplier<String> supplier) {
        Preconditions.checkNotNull(executor);
        Preconditions.checkNotNull(supplier);
        return a() ? executor : new Executor() { // from class: com.google.common.util.concurrent.MoreExecutors.2
            @Override // java.util.concurrent.Executor
            public void execute(Runnable runnable) {
                executor.execute(Callables.a(runnable, (Supplier<String>) supplier));
            }
        };
    }

    @GwtIncompatible("concurrency")
    static ScheduledExecutorService a(ScheduledExecutorService scheduledExecutorService, final Supplier<String> supplier) {
        Preconditions.checkNotNull(scheduledExecutorService);
        Preconditions.checkNotNull(supplier);
        return a() ? scheduledExecutorService : new me(scheduledExecutorService) { // from class: com.google.common.util.concurrent.MoreExecutors.3
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // defpackage.md
            public <T> Callable<T> a(Callable<T> callable) {
                return Callables.a(callable, (Supplier<String>) supplier);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // defpackage.md
            public Runnable a(Runnable runnable) {
                return Callables.a(runnable, (Supplier<String>) supplier);
            }
        };
    }

    @Beta
    @GwtIncompatible("concurrency")
    public static boolean shutdownAndAwaitTermination(ExecutorService executorService, long j, TimeUnit timeUnit) {
        Preconditions.checkNotNull(timeUnit);
        executorService.shutdown();
        try {
            long jConvert = TimeUnit.NANOSECONDS.convert(j, timeUnit) / 2;
            if (!executorService.awaitTermination(jConvert, TimeUnit.NANOSECONDS)) {
                executorService.shutdownNow();
                executorService.awaitTermination(jConvert, TimeUnit.NANOSECONDS);
            }
        } catch (InterruptedException e2) {
            Thread.currentThread().interrupt();
            executorService.shutdownNow();
        }
        return executorService.isTerminated();
    }
}
