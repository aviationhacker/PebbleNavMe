package org.eclipse.jetty.util.component;

import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import org.eclipse.jetty.util.component.LifeCycle;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractLifeCycle implements LifeCycle {
    public static final String FAILED = "FAILED";
    public static final String RUNNING = "RUNNING";
    public static final String STARTED = "STARTED";
    public static final String STARTING = "STARTING";
    public static final String STOPPED = "STOPPED";
    public static final String STOPPING = "STOPPING";
    private static final Logger a = Log.getLogger((Class<?>) AbstractLifeCycle.class);
    private final Object b = new Object();
    private final int c = -1;
    private final int d = 0;
    private final int e = 1;
    private final int f = 2;
    private final int g = 3;
    private volatile int h = 0;
    protected final CopyOnWriteArrayList<LifeCycle.Listener> _listeners = new CopyOnWriteArrayList<>();

    public void doStart() {
    }

    public void doStop() {
    }

    @Override // org.eclipse.jetty.util.component.LifeCycle
    public final void start() {
        synchronized (this.b) {
            try {
                if (this.h != 2 && this.h != 1) {
                    b();
                    doStart();
                    a();
                }
            } catch (Error e) {
                a(e);
                throw e;
            } catch (Exception e2) {
                a(e2);
                throw e2;
            }
        }
    }

    @Override // org.eclipse.jetty.util.component.LifeCycle
    public final void stop() {
        synchronized (this.b) {
            try {
                if (this.h != 3 && this.h != 0) {
                    c();
                    doStop();
                    d();
                }
            } catch (Error e) {
                a(e);
                throw e;
            } catch (Exception e2) {
                a(e2);
                throw e2;
            }
        }
    }

    @Override // org.eclipse.jetty.util.component.LifeCycle
    public boolean isRunning() {
        int i = this.h;
        return i == 2 || i == 1;
    }

    @Override // org.eclipse.jetty.util.component.LifeCycle
    public boolean isStarted() {
        return this.h == 2;
    }

    @Override // org.eclipse.jetty.util.component.LifeCycle
    public boolean isStarting() {
        return this.h == 1;
    }

    @Override // org.eclipse.jetty.util.component.LifeCycle
    public boolean isStopping() {
        return this.h == 3;
    }

    @Override // org.eclipse.jetty.util.component.LifeCycle
    public boolean isStopped() {
        return this.h == 0;
    }

    @Override // org.eclipse.jetty.util.component.LifeCycle
    public boolean isFailed() {
        return this.h == -1;
    }

    @Override // org.eclipse.jetty.util.component.LifeCycle
    public void addLifeCycleListener(LifeCycle.Listener listener) {
        this._listeners.add(listener);
    }

    @Override // org.eclipse.jetty.util.component.LifeCycle
    public void removeLifeCycleListener(LifeCycle.Listener listener) {
        this._listeners.remove(listener);
    }

    public String getState() {
        switch (this.h) {
            case -1:
                return FAILED;
            case 0:
                return STOPPED;
            case 1:
                return STARTING;
            case 2:
                return STARTED;
            case 3:
                return STOPPING;
            default:
                return null;
        }
    }

    public static String getState(LifeCycle lifeCycle) {
        return lifeCycle.isStarting() ? STARTING : lifeCycle.isStarted() ? STARTED : lifeCycle.isStopping() ? STOPPING : lifeCycle.isStopped() ? STOPPED : FAILED;
    }

    private void a() {
        this.h = 2;
        a.debug("STARTED {}", this);
        Iterator<LifeCycle.Listener> it = this._listeners.iterator();
        while (it.hasNext()) {
            it.next().lifeCycleStarted(this);
        }
    }

    private void b() {
        a.debug("starting {}", this);
        this.h = 1;
        Iterator<LifeCycle.Listener> it = this._listeners.iterator();
        while (it.hasNext()) {
            it.next().lifeCycleStarting(this);
        }
    }

    private void c() {
        a.debug("stopping {}", this);
        this.h = 3;
        Iterator<LifeCycle.Listener> it = this._listeners.iterator();
        while (it.hasNext()) {
            it.next().lifeCycleStopping(this);
        }
    }

    private void d() {
        this.h = 0;
        a.debug("{} {}", STOPPED, this);
        Iterator<LifeCycle.Listener> it = this._listeners.iterator();
        while (it.hasNext()) {
            it.next().lifeCycleStopped(this);
        }
    }

    private void a(Throwable th) {
        this.h = -1;
        a.warn("FAILED " + this + ": " + th, th);
        Iterator<LifeCycle.Listener> it = this._listeners.iterator();
        while (it.hasNext()) {
            it.next().lifeCycleFailure(this, th);
        }
    }

    public static abstract class AbstractLifeCycleListener implements LifeCycle.Listener {
        @Override // org.eclipse.jetty.util.component.LifeCycle.Listener
        public void lifeCycleFailure(LifeCycle lifeCycle, Throwable th) {
        }

        @Override // org.eclipse.jetty.util.component.LifeCycle.Listener
        public void lifeCycleStarted(LifeCycle lifeCycle) {
        }

        @Override // org.eclipse.jetty.util.component.LifeCycle.Listener
        public void lifeCycleStarting(LifeCycle lifeCycle) {
        }

        @Override // org.eclipse.jetty.util.component.LifeCycle.Listener
        public void lifeCycleStopped(LifeCycle lifeCycle) {
        }

        @Override // org.eclipse.jetty.util.component.LifeCycle.Listener
        public void lifeCycleStopping(LifeCycle lifeCycle) {
        }
    }
}
