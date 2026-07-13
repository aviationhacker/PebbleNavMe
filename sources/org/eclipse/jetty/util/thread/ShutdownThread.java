package org.eclipse.jetty.util.thread;

import java.util.Arrays;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import org.eclipse.jetty.util.component.Destroyable;
import org.eclipse.jetty.util.component.LifeCycle;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes.dex */
public class ShutdownThread extends Thread {
    private static final Logger a = Log.getLogger((Class<?>) ShutdownThread.class);
    private static final ShutdownThread b = new ShutdownThread();
    private boolean c;
    private final List<LifeCycle> d = new CopyOnWriteArrayList();

    private ShutdownThread() {
    }

    private synchronized void a() {
        try {
            if (!this.c) {
                Runtime.getRuntime().addShutdownHook(this);
            }
            this.c = true;
        } catch (Exception e) {
            a.ignore(e);
            a.info("shutdown already commenced", new Object[0]);
        }
    }

    private synchronized void b() {
        try {
            this.c = false;
            Runtime.getRuntime().removeShutdownHook(this);
        } catch (Exception e) {
            a.ignore(e);
            a.debug("shutdown already commenced", new Object[0]);
        }
    }

    public static ShutdownThread getInstance() {
        return b;
    }

    public static synchronized void register(LifeCycle... lifeCycleArr) {
        b.d.addAll(Arrays.asList(lifeCycleArr));
        if (b.d.size() > 0) {
            b.a();
        }
    }

    public static synchronized void register(int i, LifeCycle... lifeCycleArr) {
        b.d.addAll(i, Arrays.asList(lifeCycleArr));
        if (b.d.size() > 0) {
            b.a();
        }
    }

    public static synchronized void deregister(LifeCycle lifeCycle) {
        b.d.remove(lifeCycle);
        if (b.d.size() == 0) {
            b.b();
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        for (LifeCycle lifeCycle : b.d) {
            try {
                if (lifeCycle.isStarted()) {
                    lifeCycle.stop();
                    a.debug("Stopped {}", lifeCycle);
                }
                if (lifeCycle instanceof Destroyable) {
                    ((Destroyable) lifeCycle).destroy();
                    a.debug("Destroyed {}", lifeCycle);
                }
            } catch (Exception e) {
                a.debug(e);
            }
        }
    }
}
