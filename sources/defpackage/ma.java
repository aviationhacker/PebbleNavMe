package defpackage;

import com.google.common.base.Preconditions;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.concurrent.Executor;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: classes.dex */
public final class ma implements Executor {
    private static final Logger a = Logger.getLogger(ma.class.getName());
    private final Executor b;

    @GuardedBy("internalLock")
    private final Deque<Runnable> c = new ArrayDeque();

    @GuardedBy("internalLock")
    private boolean d = false;

    @GuardedBy("internalLock")
    private int e = 0;
    private final Object f = new Object();

    public ma(Executor executor) {
        this.b = (Executor) Preconditions.checkNotNull(executor);
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        synchronized (this.f) {
            this.c.add(runnable);
        }
        b();
    }

    private void b() {
        synchronized (this.f) {
            if (this.c.peek() != null) {
                if (this.e <= 0) {
                    if (!this.d) {
                        this.d = true;
                        try {
                            this.b.execute(new a());
                        } catch (Throwable th) {
                            synchronized (this.f) {
                                this.d = false;
                                throw th;
                            }
                        }
                    }
                }
            }
        }
    }

    final class a implements Runnable {
        private a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                a();
            } catch (Error e) {
                synchronized (ma.this.f) {
                    ma.this.d = false;
                    throw e;
                }
            }
        }

        private void a() {
            while (true) {
                Runnable runnable = null;
                synchronized (ma.this.f) {
                    if (ma.this.e == 0) {
                        runnable = (Runnable) ma.this.c.poll();
                    }
                    if (runnable == null) {
                        ma.this.d = false;
                        return;
                    }
                }
                try {
                    runnable.run();
                } catch (RuntimeException e) {
                    Logger logger = ma.a;
                    Level level = Level.SEVERE;
                    String strValueOf = String.valueOf(runnable);
                    logger.log(level, new StringBuilder(String.valueOf(strValueOf).length() + 35).append("Exception while executing runnable ").append(strValueOf).toString(), (Throwable) e);
                }
            }
        }
    }
}
