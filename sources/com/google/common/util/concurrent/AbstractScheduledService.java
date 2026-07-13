package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import com.google.common.util.concurrent.Service;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.locks.ReentrantLock;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes.dex */
@Beta
public abstract class AbstractScheduledService implements Service {
    private static final Logger a = Logger.getLogger(AbstractScheduledService.class.getName());
    private final AbstractService b = new b();

    protected abstract void runOneIteration();

    protected abstract Scheduler scheduler();

    public static abstract class Scheduler {
        abstract Future<?> a(AbstractService abstractService, ScheduledExecutorService scheduledExecutorService, Runnable runnable);

        public static Scheduler newFixedDelaySchedule(final long j, final long j2, final TimeUnit timeUnit) {
            Preconditions.checkNotNull(timeUnit);
            Preconditions.checkArgument(j2 > 0, "delay must be > 0, found %s", Long.valueOf(j2));
            return new Scheduler() { // from class: com.google.common.util.concurrent.AbstractScheduledService.Scheduler.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super();
                }

                @Override // com.google.common.util.concurrent.AbstractScheduledService.Scheduler
                public Future<?> a(AbstractService abstractService, ScheduledExecutorService scheduledExecutorService, Runnable runnable) {
                    return scheduledExecutorService.scheduleWithFixedDelay(runnable, j, j2, timeUnit);
                }
            };
        }

        public static Scheduler newFixedRateSchedule(final long j, final long j2, final TimeUnit timeUnit) {
            Preconditions.checkNotNull(timeUnit);
            Preconditions.checkArgument(j2 > 0, "period must be > 0, found %s", Long.valueOf(j2));
            return new Scheduler() { // from class: com.google.common.util.concurrent.AbstractScheduledService.Scheduler.2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super();
                }

                @Override // com.google.common.util.concurrent.AbstractScheduledService.Scheduler
                public Future<?> a(AbstractService abstractService, ScheduledExecutorService scheduledExecutorService, Runnable runnable) {
                    return scheduledExecutorService.scheduleAtFixedRate(runnable, j, j2, timeUnit);
                }
            };
        }

        private Scheduler() {
        }
    }

    final class b extends AbstractService {
        private volatile Future<?> b;
        private volatile ScheduledExecutorService c;
        private final ReentrantLock d;
        private final Runnable e;

        private b() {
            this.d = new ReentrantLock();
            this.e = new a();
        }

        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                b.this.d.lock();
                try {
                    try {
                        if (b.this.b.isCancelled()) {
                            b.this.d.unlock();
                            return;
                        } else {
                            AbstractScheduledService.this.runOneIteration();
                            b.this.d.unlock();
                            return;
                        }
                    } catch (Throwable th) {
                        try {
                            AbstractScheduledService.this.shutDown();
                        } catch (Exception e) {
                            AbstractScheduledService.a.log(Level.WARNING, "Error while attempting to shut down the service after failure.", (Throwable) e);
                        }
                        b.this.notifyFailed(th);
                        b.this.b.cancel(false);
                        b.this.d.unlock();
                        return;
                    }
                } catch (Throwable th2) {
                    b.this.d.unlock();
                    throw th2;
                }
                b.this.d.unlock();
                throw th2;
            }
        }

        @Override // com.google.common.util.concurrent.AbstractService
        protected final void doStart() {
            this.c = MoreExecutors.a(AbstractScheduledService.this.executor(), new Supplier<String>() { // from class: com.google.common.util.concurrent.AbstractScheduledService.b.1
                @Override // com.google.common.base.Supplier
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public String get() {
                    String strServiceName = AbstractScheduledService.this.serviceName();
                    String strValueOf = String.valueOf(b.this.state());
                    return new StringBuilder(String.valueOf(strServiceName).length() + 1 + String.valueOf(strValueOf).length()).append(strServiceName).append(" ").append(strValueOf).toString();
                }
            });
            this.c.execute(new Runnable() { // from class: com.google.common.util.concurrent.AbstractScheduledService.b.2
                @Override // java.lang.Runnable
                public void run() {
                    b.this.d.lock();
                    try {
                        AbstractScheduledService.this.startUp();
                        b.this.b = AbstractScheduledService.this.scheduler().a(AbstractScheduledService.this.b, b.this.c, b.this.e);
                        b.this.notifyStarted();
                    } catch (Throwable th) {
                        b.this.notifyFailed(th);
                        if (b.this.b != null) {
                            b.this.b.cancel(false);
                        }
                    } finally {
                        b.this.d.unlock();
                    }
                }
            });
        }

        @Override // com.google.common.util.concurrent.AbstractService
        protected final void doStop() {
            this.b.cancel(false);
            this.c.execute(new Runnable() { // from class: com.google.common.util.concurrent.AbstractScheduledService.b.3
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        b.this.d.lock();
                        try {
                            if (b.this.state() == Service.State.STOPPING) {
                                AbstractScheduledService.this.shutDown();
                                b.this.d.unlock();
                                b.this.notifyStopped();
                            }
                        } finally {
                            b.this.d.unlock();
                        }
                    } catch (Throwable th) {
                        b.this.notifyFailed(th);
                    }
                }
            });
        }

        @Override // com.google.common.util.concurrent.AbstractService
        public String toString() {
            return AbstractScheduledService.this.toString();
        }
    }

    protected AbstractScheduledService() {
    }

    protected void startUp() {
    }

    protected void shutDown() {
    }

    class a implements ThreadFactory {
        a() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return MoreExecutors.a(AbstractScheduledService.this.serviceName(), runnable);
        }
    }

    protected ScheduledExecutorService executor() {
        final ScheduledExecutorService scheduledExecutorServiceNewSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor(new a());
        addListener(new Service.Listener() { // from class: com.google.common.util.concurrent.AbstractScheduledService.1
            @Override // com.google.common.util.concurrent.Service.Listener
            public void terminated(Service.State state) {
                scheduledExecutorServiceNewSingleThreadScheduledExecutor.shutdown();
            }

            @Override // com.google.common.util.concurrent.Service.Listener
            public void failed(Service.State state, Throwable th) {
                scheduledExecutorServiceNewSingleThreadScheduledExecutor.shutdown();
            }
        }, MoreExecutors.directExecutor());
        return scheduledExecutorServiceNewSingleThreadScheduledExecutor;
    }

    protected String serviceName() {
        return getClass().getSimpleName();
    }

    public String toString() {
        String strServiceName = serviceName();
        String strValueOf = String.valueOf(state());
        return new StringBuilder(String.valueOf(strServiceName).length() + 3 + String.valueOf(strValueOf).length()).append(strServiceName).append(" [").append(strValueOf).append("]").toString();
    }

    @Override // com.google.common.util.concurrent.Service
    public final boolean isRunning() {
        return this.b.isRunning();
    }

    @Override // com.google.common.util.concurrent.Service
    public final Service.State state() {
        return this.b.state();
    }

    @Override // com.google.common.util.concurrent.Service
    public final void addListener(Service.Listener listener, Executor executor) {
        this.b.addListener(listener, executor);
    }

    @Override // com.google.common.util.concurrent.Service
    public final Throwable failureCause() {
        return this.b.failureCause();
    }

    @Override // com.google.common.util.concurrent.Service
    public final Service startAsync() {
        this.b.startAsync();
        return this;
    }

    @Override // com.google.common.util.concurrent.Service
    public final Service stopAsync() {
        this.b.stopAsync();
        return this;
    }

    @Override // com.google.common.util.concurrent.Service
    public final void awaitRunning() {
        this.b.awaitRunning();
    }

    @Override // com.google.common.util.concurrent.Service
    public final void awaitRunning(long j, TimeUnit timeUnit) throws TimeoutException {
        this.b.awaitRunning(j, timeUnit);
    }

    @Override // com.google.common.util.concurrent.Service
    public final void awaitTerminated() {
        this.b.awaitTerminated();
    }

    @Override // com.google.common.util.concurrent.Service
    public final void awaitTerminated(long j, TimeUnit timeUnit) throws TimeoutException {
        this.b.awaitTerminated(j, timeUnit);
    }

    @Beta
    public static abstract class CustomScheduler extends Scheduler {
        protected abstract Schedule getNextSchedule();

        public CustomScheduler() {
            super();
        }

        @Beta
        public static final class Schedule {
            private final long a;
            private final TimeUnit b;

            public Schedule(long j, TimeUnit timeUnit) {
                this.a = j;
                this.b = (TimeUnit) Preconditions.checkNotNull(timeUnit);
            }
        }
    }
}
