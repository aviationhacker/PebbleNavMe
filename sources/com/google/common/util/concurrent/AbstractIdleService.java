package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import com.google.common.base.Supplier;
import com.google.common.util.concurrent.Service;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
@Beta
public abstract class AbstractIdleService implements Service {
    private final Supplier<String> a;
    private final Service b;

    protected abstract void shutDown();

    protected abstract void startUp();

    final class b implements Supplier<String> {
        private b() {
        }

        @Override // com.google.common.base.Supplier
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public String get() {
            String strServiceName = AbstractIdleService.this.serviceName();
            String strValueOf = String.valueOf(AbstractIdleService.this.state());
            return new StringBuilder(String.valueOf(strServiceName).length() + 1 + String.valueOf(strValueOf).length()).append(strServiceName).append(" ").append(strValueOf).toString();
        }
    }

    final class a extends AbstractService {
        private a() {
        }

        @Override // com.google.common.util.concurrent.AbstractService
        protected final void doStart() {
            MoreExecutors.a(AbstractIdleService.this.executor(), (Supplier<String>) AbstractIdleService.this.a).execute(new Runnable() { // from class: com.google.common.util.concurrent.AbstractIdleService.a.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        AbstractIdleService.this.startUp();
                        a.this.notifyStarted();
                    } catch (Throwable th) {
                        a.this.notifyFailed(th);
                    }
                }
            });
        }

        @Override // com.google.common.util.concurrent.AbstractService
        protected final void doStop() {
            MoreExecutors.a(AbstractIdleService.this.executor(), (Supplier<String>) AbstractIdleService.this.a).execute(new Runnable() { // from class: com.google.common.util.concurrent.AbstractIdleService.a.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        AbstractIdleService.this.shutDown();
                        a.this.notifyStopped();
                    } catch (Throwable th) {
                        a.this.notifyFailed(th);
                    }
                }
            });
        }

        @Override // com.google.common.util.concurrent.AbstractService
        public String toString() {
            return AbstractIdleService.this.toString();
        }
    }

    protected AbstractIdleService() {
        this.a = new b();
        this.b = new a();
    }

    protected Executor executor() {
        return new Executor() { // from class: com.google.common.util.concurrent.AbstractIdleService.1
            @Override // java.util.concurrent.Executor
            public void execute(Runnable runnable) {
                MoreExecutors.a((String) AbstractIdleService.this.a.get(), runnable).start();
            }
        };
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
    public final void awaitRunning(long j, TimeUnit timeUnit) {
        this.b.awaitRunning(j, timeUnit);
    }

    @Override // com.google.common.util.concurrent.Service
    public final void awaitTerminated() {
        this.b.awaitTerminated();
    }

    @Override // com.google.common.util.concurrent.Service
    public final void awaitTerminated(long j, TimeUnit timeUnit) {
        this.b.awaitTerminated(j, timeUnit);
    }

    protected String serviceName() {
        return getClass().getSimpleName();
    }
}
