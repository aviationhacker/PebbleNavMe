package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import com.google.common.base.Preconditions;
import com.google.common.util.concurrent.Monitor;
import com.google.common.util.concurrent.Service;
import defpackage.ly;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import javax.annotation.concurrent.Immutable;

/* JADX INFO: loaded from: classes.dex */
@Beta
public abstract class AbstractService implements Service {
    private static final ly.a<Service.Listener> a = new ly.a<Service.Listener>("starting()") { // from class: com.google.common.util.concurrent.AbstractService.1
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // ly.a
        public void a(Service.Listener listener) {
            listener.starting();
        }
    };
    private static final ly.a<Service.Listener> b = new ly.a<Service.Listener>("running()") { // from class: com.google.common.util.concurrent.AbstractService.2
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // ly.a
        public void a(Service.Listener listener) {
            listener.running();
        }
    };
    private static final ly.a<Service.Listener> c = b(Service.State.STARTING);
    private static final ly.a<Service.Listener> d = b(Service.State.RUNNING);
    private static final ly.a<Service.Listener> e = a(Service.State.NEW);
    private static final ly.a<Service.Listener> f = a(Service.State.RUNNING);
    private static final ly.a<Service.Listener> g = a(Service.State.STOPPING);
    private final Monitor h = new Monitor();
    private final Monitor.Guard i = new b();
    private final Monitor.Guard j = new c();
    private final Monitor.Guard k = new a();
    private final Monitor.Guard l = new d();

    @GuardedBy("monitor")
    private final List<ly<Service.Listener>> m = Collections.synchronizedList(new ArrayList());

    @GuardedBy("monitor")
    private volatile e n = new e(Service.State.NEW);

    protected abstract void doStart();

    protected abstract void doStop();

    private static ly.a<Service.Listener> a(final Service.State state) {
        String strValueOf = String.valueOf(state);
        return new ly.a<Service.Listener>(new StringBuilder(String.valueOf(strValueOf).length() + 21).append("terminated({from = ").append(strValueOf).append("})").toString()) { // from class: com.google.common.util.concurrent.AbstractService.3
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // ly.a
            public void a(Service.Listener listener) {
                listener.terminated(state);
            }
        };
    }

    private static ly.a<Service.Listener> b(final Service.State state) {
        String strValueOf = String.valueOf(state);
        return new ly.a<Service.Listener>(new StringBuilder(String.valueOf(strValueOf).length() + 19).append("stopping({from = ").append(strValueOf).append("})").toString()) { // from class: com.google.common.util.concurrent.AbstractService.4
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // ly.a
            public void a(Service.Listener listener) {
                listener.stopping(state);
            }
        };
    }

    final class b extends Monitor.Guard {
        b() {
            super(AbstractService.this.h);
        }

        @Override // com.google.common.util.concurrent.Monitor.Guard
        public boolean isSatisfied() {
            return AbstractService.this.state() == Service.State.NEW;
        }
    }

    final class c extends Monitor.Guard {
        c() {
            super(AbstractService.this.h);
        }

        @Override // com.google.common.util.concurrent.Monitor.Guard
        public boolean isSatisfied() {
            return AbstractService.this.state().compareTo(Service.State.RUNNING) <= 0;
        }
    }

    final class a extends Monitor.Guard {
        a() {
            super(AbstractService.this.h);
        }

        @Override // com.google.common.util.concurrent.Monitor.Guard
        public boolean isSatisfied() {
            return AbstractService.this.state().compareTo(Service.State.RUNNING) >= 0;
        }
    }

    final class d extends Monitor.Guard {
        d() {
            super(AbstractService.this.h);
        }

        @Override // com.google.common.util.concurrent.Monitor.Guard
        public boolean isSatisfied() {
            return AbstractService.this.state().a();
        }
    }

    protected AbstractService() {
    }

    @Override // com.google.common.util.concurrent.Service
    public final Service startAsync() {
        if (this.h.enterIf(this.i)) {
            try {
                this.n = new e(Service.State.STARTING);
                b();
                doStart();
            } catch (Throwable th) {
                notifyFailed(th);
            } finally {
                this.h.leave();
                a();
            }
            return this;
        }
        String strValueOf = String.valueOf(this);
        throw new IllegalStateException(new StringBuilder(String.valueOf(strValueOf).length() + 33).append("Service ").append(strValueOf).append(" has already been started").toString());
    }

    @Override // com.google.common.util.concurrent.Service
    public final Service stopAsync() {
        try {
            if (this.h.enterIf(this.j)) {
                Service.State state = state();
                switch (state) {
                    case NEW:
                        this.n = new e(Service.State.TERMINATED);
                        e(Service.State.NEW);
                        break;
                    case STARTING:
                        this.n = new e(Service.State.STARTING, true, null);
                        d(Service.State.STARTING);
                        break;
                    case RUNNING:
                        this.n = new e(Service.State.STOPPING);
                        d(Service.State.RUNNING);
                        doStop();
                        break;
                    case STOPPING:
                    case TERMINATED:
                    case FAILED:
                        String strValueOf = String.valueOf(state);
                        throw new AssertionError(new StringBuilder(String.valueOf(strValueOf).length() + 45).append("isStoppable is incorrectly implemented, saw: ").append(strValueOf).toString());
                    default:
                        String strValueOf2 = String.valueOf(state);
                        throw new AssertionError(new StringBuilder(String.valueOf(strValueOf2).length() + 18).append("Unexpected state: ").append(strValueOf2).toString());
                }
            }
        } catch (Throwable th) {
            notifyFailed(th);
        } finally {
            this.h.leave();
            a();
        }
        return this;
    }

    @Override // com.google.common.util.concurrent.Service
    public final void awaitRunning() {
        this.h.enterWhenUninterruptibly(this.k);
        try {
            c(Service.State.RUNNING);
        } finally {
            this.h.leave();
        }
    }

    @Override // com.google.common.util.concurrent.Service
    public final void awaitRunning(long j, TimeUnit timeUnit) throws TimeoutException {
        if (this.h.enterWhenUninterruptibly(this.k, j, timeUnit)) {
            try {
                c(Service.State.RUNNING);
                return;
            } finally {
                this.h.leave();
            }
        }
        String strValueOf = String.valueOf(this);
        throw new TimeoutException(new StringBuilder(String.valueOf(strValueOf).length() + 50).append("Timed out waiting for ").append(strValueOf).append(" to reach the RUNNING state.").toString());
    }

    @Override // com.google.common.util.concurrent.Service
    public final void awaitTerminated() {
        this.h.enterWhenUninterruptibly(this.l);
        try {
            c(Service.State.TERMINATED);
        } finally {
            this.h.leave();
        }
    }

    @Override // com.google.common.util.concurrent.Service
    public final void awaitTerminated(long j, TimeUnit timeUnit) throws TimeoutException {
        if (this.h.enterWhenUninterruptibly(this.l, j, timeUnit)) {
            try {
                c(Service.State.TERMINATED);
            } finally {
                this.h.leave();
            }
        } else {
            String strValueOf = String.valueOf(this);
            String strValueOf2 = String.valueOf(state());
            throw new TimeoutException(new StringBuilder(String.valueOf(strValueOf).length() + 65 + String.valueOf(strValueOf2).length()).append("Timed out waiting for ").append(strValueOf).append(" to reach a terminal state. ").append("Current state: ").append(strValueOf2).toString());
        }
    }

    @GuardedBy("monitor")
    private void c(Service.State state) {
        Service.State state2 = state();
        if (state2 != state) {
            if (state2 == Service.State.FAILED) {
                String strValueOf = String.valueOf(state);
                throw new IllegalStateException(new StringBuilder(String.valueOf(strValueOf).length() + 55).append("Expected the service to be ").append(strValueOf).append(", but the service has FAILED").toString(), failureCause());
            }
            String strValueOf2 = String.valueOf(state);
            String strValueOf3 = String.valueOf(state2);
            throw new IllegalStateException(new StringBuilder(String.valueOf(strValueOf2).length() + 37 + String.valueOf(strValueOf3).length()).append("Expected the service to be ").append(strValueOf2).append(", but was ").append(strValueOf3).toString());
        }
    }

    protected final void notifyStarted() {
        this.h.enter();
        try {
            if (this.n.a != Service.State.STARTING) {
                String strValueOf = String.valueOf(this.n.a);
                IllegalStateException illegalStateException = new IllegalStateException(new StringBuilder(String.valueOf(strValueOf).length() + 43).append("Cannot notifyStarted() when the service is ").append(strValueOf).toString());
                notifyFailed(illegalStateException);
                throw illegalStateException;
            }
            if (this.n.b) {
                this.n = new e(Service.State.STOPPING);
                doStop();
            } else {
                this.n = new e(Service.State.RUNNING);
                c();
            }
        } finally {
            this.h.leave();
            a();
        }
    }

    protected final void notifyStopped() {
        this.h.enter();
        try {
            Service.State state = this.n.a;
            if (state != Service.State.STOPPING && state != Service.State.RUNNING) {
                String strValueOf = String.valueOf(state);
                IllegalStateException illegalStateException = new IllegalStateException(new StringBuilder(String.valueOf(strValueOf).length() + 43).append("Cannot notifyStopped() when the service is ").append(strValueOf).toString());
                notifyFailed(illegalStateException);
                throw illegalStateException;
            }
            this.n = new e(Service.State.TERMINATED);
            e(state);
        } finally {
            this.h.leave();
            a();
        }
    }

    protected final void notifyFailed(Throwable th) {
        Preconditions.checkNotNull(th);
        this.h.enter();
        try {
            Service.State state = state();
            switch (state) {
                case NEW:
                case TERMINATED:
                    String strValueOf = String.valueOf(state);
                    throw new IllegalStateException(new StringBuilder(String.valueOf(strValueOf).length() + 22).append("Failed while in state:").append(strValueOf).toString(), th);
                case STARTING:
                case RUNNING:
                case STOPPING:
                    this.n = new e(Service.State.FAILED, false, th);
                    a(state, th);
                    break;
                case FAILED:
                    break;
                default:
                    String strValueOf2 = String.valueOf(state);
                    throw new AssertionError(new StringBuilder(String.valueOf(strValueOf2).length() + 18).append("Unexpected state: ").append(strValueOf2).toString());
            }
        } finally {
            this.h.leave();
            a();
        }
    }

    @Override // com.google.common.util.concurrent.Service
    public final boolean isRunning() {
        return state() == Service.State.RUNNING;
    }

    @Override // com.google.common.util.concurrent.Service
    public final Service.State state() {
        return this.n.a();
    }

    @Override // com.google.common.util.concurrent.Service
    public final Throwable failureCause() {
        return this.n.b();
    }

    @Override // com.google.common.util.concurrent.Service
    public final void addListener(Service.Listener listener, Executor executor) {
        Preconditions.checkNotNull(listener, "listener");
        Preconditions.checkNotNull(executor, "executor");
        this.h.enter();
        try {
            if (!state().a()) {
                this.m.add(new ly<>(listener, executor));
            }
        } finally {
            this.h.leave();
        }
    }

    public String toString() {
        String strValueOf = String.valueOf(getClass().getSimpleName());
        String strValueOf2 = String.valueOf(state());
        return new StringBuilder(String.valueOf(strValueOf).length() + 3 + String.valueOf(strValueOf2).length()).append(strValueOf).append(" [").append(strValueOf2).append("]").toString();
    }

    private void a() {
        if (!this.h.isOccupiedByCurrentThread()) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.m.size()) {
                    this.m.get(i2).a();
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }
    }

    @GuardedBy("monitor")
    private void b() {
        a.a(this.m);
    }

    @GuardedBy("monitor")
    private void c() {
        b.a(this.m);
    }

    @GuardedBy("monitor")
    private void d(Service.State state) {
        if (state == Service.State.STARTING) {
            c.a(this.m);
        } else {
            if (state == Service.State.RUNNING) {
                d.a(this.m);
                return;
            }
            throw new AssertionError();
        }
    }

    @GuardedBy("monitor")
    private void e(Service.State state) {
        switch (state) {
            case NEW:
                e.a(this.m);
                return;
            case STARTING:
            default:
                throw new AssertionError();
            case RUNNING:
                f.a(this.m);
                return;
            case STOPPING:
                g.a(this.m);
                return;
        }
    }

    @GuardedBy("monitor")
    private void a(final Service.State state, final Throwable th) {
        String strValueOf = String.valueOf(state);
        String strValueOf2 = String.valueOf(th);
        new ly.a<Service.Listener>(new StringBuilder(String.valueOf(strValueOf).length() + 27 + String.valueOf(strValueOf2).length()).append("failed({from = ").append(strValueOf).append(", cause = ").append(strValueOf2).append("})").toString()) { // from class: com.google.common.util.concurrent.AbstractService.5
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // ly.a
            public void a(Service.Listener listener) {
                listener.failed(state, th);
            }
        }.a(this.m);
    }

    @Immutable
    static final class e {
        final Service.State a;
        final boolean b;

        @Nullable
        final Throwable c;

        e(Service.State state) {
            this(state, false, null);
        }

        e(Service.State state, boolean z, @Nullable Throwable th) {
            Preconditions.checkArgument(!z || state == Service.State.STARTING, "shudownWhenStartupFinishes can only be set if state is STARTING. Got %s instead.", state);
            Preconditions.checkArgument(!((th != null) ^ (state == Service.State.FAILED)), "A failure cause should be set if and only if the state is failed.  Got %s and %s instead.", state, th);
            this.a = state;
            this.b = z;
            this.c = th;
        }

        Service.State a() {
            return (this.b && this.a == Service.State.STARTING) ? Service.State.STOPPING : this.a;
        }

        Throwable b() {
            Preconditions.checkState(this.a == Service.State.FAILED, "failureCause() is only valid if the service has failed, service is %s", this.a);
            return this.c;
        }
    }
}
