package defpackage;

import com.google.common.annotations.GwtCompatible;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(emulated = true)
abstract class lx implements Runnable {
    private static final AtomicReferenceFieldUpdater<lx, Thread> a = AtomicReferenceFieldUpdater.newUpdater(lx.class, Thread.class, "b");
    private volatile Thread b;
    private volatile boolean c;

    abstract void a();

    abstract boolean b();

    lx() {
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (a.compareAndSet(this, null, Thread.currentThread())) {
            try {
                a();
            } finally {
                if (b()) {
                    while (!this.c) {
                        Thread.yield();
                    }
                }
            }
        }
    }

    final void c() {
        Thread thread = this.b;
        if (thread != null) {
            thread.interrupt();
        }
        this.c = true;
    }
}
