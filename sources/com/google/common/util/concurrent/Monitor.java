package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import com.google.common.base.Preconditions;
import com.google.common.base.Throwables;
import com.google.j2objc.annotations.Weak;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: classes.dex */
@Beta
public final class Monitor {
    private final boolean a;
    private final ReentrantLock b;

    @GuardedBy("lock")
    private Guard c;

    @Beta
    public static abstract class Guard {

        @Weak
        final Monitor b;
        final Condition c;

        @GuardedBy("monitor.lock")
        int d = 0;

        @GuardedBy("monitor.lock")
        Guard e;

        public abstract boolean isSatisfied();

        protected Guard(Monitor monitor) {
            this.b = (Monitor) Preconditions.checkNotNull(monitor, "monitor");
            this.c = monitor.b.newCondition();
        }
    }

    public Monitor() {
        this(false);
    }

    public Monitor(boolean z) {
        this.c = null;
        this.a = z;
        this.b = new ReentrantLock(z);
    }

    public void enter() {
        this.b.lock();
    }

    public void enterInterruptibly() throws InterruptedException {
        this.b.lockInterruptibly();
    }

    public boolean enter(long j, TimeUnit timeUnit) throws Throwable {
        boolean zTryLock = true;
        long jA = a(j, timeUnit);
        ReentrantLock reentrantLock = this.b;
        if (this.a || !reentrantLock.tryLock()) {
            boolean zInterrupted = Thread.interrupted();
            try {
                long jNanoTime = System.nanoTime();
                long jA2 = jA;
                while (true) {
                    try {
                        zTryLock = reentrantLock.tryLock(jA2, TimeUnit.NANOSECONDS);
                        break;
                    } catch (InterruptedException e) {
                        try {
                            jA2 = a(jNanoTime, jA);
                            zInterrupted = zTryLock;
                        } catch (Throwable th) {
                            zInterrupted = zTryLock;
                            th = th;
                            if (zInterrupted) {
                                Thread.currentThread().interrupt();
                            }
                            throw th;
                        }
                    }
                }
                if (zInterrupted) {
                    Thread.currentThread().interrupt();
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
        return zTryLock;
    }

    public boolean enterInterruptibly(long j, TimeUnit timeUnit) {
        return this.b.tryLock(j, timeUnit);
    }

    public boolean tryEnter() {
        return this.b.tryLock();
    }

    public void enterWhen(Guard guard) throws InterruptedException {
        if (guard.b != this) {
            throw new IllegalMonitorStateException();
        }
        ReentrantLock reentrantLock = this.b;
        boolean zIsHeldByCurrentThread = reentrantLock.isHeldByCurrentThread();
        reentrantLock.lockInterruptibly();
        try {
            if (!guard.isSatisfied()) {
                a(guard, zIsHeldByCurrentThread);
            }
        } catch (Throwable th) {
            leave();
            throw th;
        }
    }

    public void enterWhenUninterruptibly(Guard guard) {
        if (guard.b != this) {
            throw new IllegalMonitorStateException();
        }
        ReentrantLock reentrantLock = this.b;
        boolean zIsHeldByCurrentThread = reentrantLock.isHeldByCurrentThread();
        reentrantLock.lock();
        try {
            if (!guard.isSatisfied()) {
                b(guard, zIsHeldByCurrentThread);
            }
        } catch (Throwable th) {
            leave();
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0047  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean enterWhen(com.google.common.util.concurrent.Monitor.Guard r11, long r12, java.util.concurrent.TimeUnit r14) throws java.lang.InterruptedException {
        /*
            r10 = this;
            r2 = 0
            r4 = 0
            long r6 = a(r12, r14)
            com.google.common.util.concurrent.Monitor r0 = r11.b
            if (r0 == r10) goto L11
            java.lang.IllegalMonitorStateException r0 = new java.lang.IllegalMonitorStateException
            r0.<init>()
            throw r0
        L11:
            java.util.concurrent.locks.ReentrantLock r5 = r10.b
            boolean r8 = r5.isHeldByCurrentThread()
            boolean r0 = r10.a
            if (r0 != 0) goto L47
            boolean r0 = java.lang.Thread.interrupted()
            if (r0 == 0) goto L27
            java.lang.InterruptedException r0 = new java.lang.InterruptedException
            r0.<init>()
            throw r0
        L27:
            boolean r0 = r5.tryLock()
            if (r0 == 0) goto L47
            r0 = r2
        L2e:
            boolean r9 = r11.isSatisfied()     // Catch: java.lang.Throwable -> L59
            if (r9 != 0) goto L3f
            int r2 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r2 != 0) goto L52
            r0 = r6
        L39:
            boolean r0 = r10.a(r11, r0, r8)     // Catch: java.lang.Throwable -> L59
            if (r0 == 0) goto L57
        L3f:
            r0 = 1
        L40:
            if (r0 != 0) goto L45
            r5.unlock()
        L45:
            r4 = r0
        L46:
            return r4
        L47:
            long r0 = a(r6)
            boolean r9 = r5.tryLock(r12, r14)
            if (r9 != 0) goto L2e
            goto L46
        L52:
            long r0 = a(r0, r6)     // Catch: java.lang.Throwable -> L59
            goto L39
        L57:
            r0 = r4
            goto L40
        L59:
            r0 = move-exception
            if (r8 != 0) goto L5f
            r10.a()     // Catch: java.lang.Throwable -> L63
        L5f:
            r5.unlock()
            throw r0
        L63:
            r0 = move-exception
            r5.unlock()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.util.concurrent.Monitor.enterWhen(com.google.common.util.concurrent.Monitor$Guard, long, java.util.concurrent.TimeUnit):boolean");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:20:0x003e A[Catch: all -> 0x007d, TRY_ENTER, TRY_LEAVE, TryCatch #4 {all -> 0x007d, blocks: (B:20:0x003e, B:41:0x0079, B:42:0x007c, B:16:0x0035, B:34:0x0065, B:35:0x006a, B:36:0x006f), top: B:58:0x0035, inners: #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x003b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:65:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v18, types: [boolean] */
    /* JADX WARN: Type inference failed for: r0v19, types: [boolean] */
    /* JADX WARN: Type inference failed for: r0v24 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean enterWhenUninterruptibly(com.google.common.util.concurrent.Monitor.Guard r13, long r14, java.util.concurrent.TimeUnit r16) throws java.lang.Throwable {
        /*
            r12 = this;
            long r6 = a(r14, r16)
            com.google.common.util.concurrent.Monitor r0 = r13.b
            if (r0 == r12) goto Le
            java.lang.IllegalMonitorStateException r0 = new java.lang.IllegalMonitorStateException
            r0.<init>()
            throw r0
        Le:
            java.util.concurrent.locks.ReentrantLock r10 = r12.b
            r2 = 0
            boolean r4 = r10.isHeldByCurrentThread()
            boolean r0 = java.lang.Thread.interrupted()
            boolean r1 = r12.a     // Catch: java.lang.Throwable -> L89
            if (r1 != 0) goto L24
            boolean r1 = r10.tryLock()     // Catch: java.lang.Throwable -> L89
            if (r1 != 0) goto L31
        L24:
            long r2 = a(r6)     // Catch: java.lang.Throwable -> L89
            r8 = r6
        L29:
            java.util.concurrent.TimeUnit r1 = java.util.concurrent.TimeUnit.NANOSECONDS     // Catch: java.lang.InterruptedException -> L57 java.lang.Throwable -> L8e
            boolean r1 = r10.tryLock(r8, r1)     // Catch: java.lang.InterruptedException -> L57 java.lang.Throwable -> L8e
            if (r1 == 0) goto L4b
        L31:
            r11 = r0
            r0 = r2
            r3 = r4
            r2 = r11
        L35:
            boolean r4 = r13.isSatisfied()     // Catch: java.lang.InterruptedException -> L74 java.lang.Throwable -> L78
            if (r4 == 0) goto L5f
            r0 = 1
        L3c:
            if (r0 != 0) goto L41
            r10.unlock()     // Catch: java.lang.Throwable -> L7d
        L41:
            if (r2 == 0) goto L4a
            java.lang.Thread r1 = java.lang.Thread.currentThread()
            r1.interrupt()
        L4a:
            return r0
        L4b:
            r1 = 0
            if (r0 == 0) goto L55
            java.lang.Thread r0 = java.lang.Thread.currentThread()
            r0.interrupt()
        L55:
            r0 = r1
            goto L4a
        L57:
            r0 = move-exception
            r1 = 1
            long r8 = a(r2, r6)     // Catch: java.lang.Throwable -> L93
            r0 = r1
            goto L29
        L5f:
            r4 = 0
            int r4 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r4 != 0) goto L6f
            long r0 = a(r6)     // Catch: java.lang.InterruptedException -> L74 java.lang.Throwable -> L78
            r4 = r6
        L6a:
            boolean r0 = r12.a(r13, r4, r3)     // Catch: java.lang.InterruptedException -> L74 java.lang.Throwable -> L78
            goto L3c
        L6f:
            long r4 = a(r0, r6)     // Catch: java.lang.InterruptedException -> L74 java.lang.Throwable -> L78
            goto L6a
        L74:
            r2 = move-exception
            r2 = 1
            r3 = 0
            goto L35
        L78:
            r0 = move-exception
            r10.unlock()     // Catch: java.lang.Throwable -> L7d
            throw r0     // Catch: java.lang.Throwable -> L7d
        L7d:
            r0 = move-exception
            r1 = r2
        L7f:
            if (r1 == 0) goto L88
            java.lang.Thread r1 = java.lang.Thread.currentThread()
            r1.interrupt()
        L88:
            throw r0
        L89:
            r1 = move-exception
            r11 = r1
            r1 = r0
            r0 = r11
            goto L7f
        L8e:
            r1 = move-exception
            r11 = r1
            r1 = r0
            r0 = r11
            goto L7f
        L93:
            r0 = move-exception
            goto L7f
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.util.concurrent.Monitor.enterWhenUninterruptibly(com.google.common.util.concurrent.Monitor$Guard, long, java.util.concurrent.TimeUnit):boolean");
    }

    public boolean enterIf(Guard guard) {
        if (guard.b != this) {
            throw new IllegalMonitorStateException();
        }
        ReentrantLock reentrantLock = this.b;
        reentrantLock.lock();
        try {
            boolean zIsSatisfied = guard.isSatisfied();
            if (!zIsSatisfied) {
            }
            return zIsSatisfied;
        } finally {
            reentrantLock.unlock();
        }
    }

    public boolean enterIfInterruptibly(Guard guard) throws InterruptedException {
        if (guard.b != this) {
            throw new IllegalMonitorStateException();
        }
        ReentrantLock reentrantLock = this.b;
        reentrantLock.lockInterruptibly();
        try {
            boolean zIsSatisfied = guard.isSatisfied();
            if (!zIsSatisfied) {
            }
            return zIsSatisfied;
        } finally {
            reentrantLock.unlock();
        }
    }

    public boolean enterIf(Guard guard, long j, TimeUnit timeUnit) {
        if (guard.b != this) {
            throw new IllegalMonitorStateException();
        }
        if (!enter(j, timeUnit)) {
            return false;
        }
        try {
            boolean zIsSatisfied = guard.isSatisfied();
            return !zIsSatisfied ? zIsSatisfied : zIsSatisfied;
        } finally {
            this.b.unlock();
        }
    }

    public boolean enterIfInterruptibly(Guard guard, long j, TimeUnit timeUnit) {
        if (guard.b != this) {
            throw new IllegalMonitorStateException();
        }
        ReentrantLock reentrantLock = this.b;
        if (!reentrantLock.tryLock(j, timeUnit)) {
            return false;
        }
        try {
            boolean zIsSatisfied = guard.isSatisfied();
            return !zIsSatisfied ? zIsSatisfied : zIsSatisfied;
        } finally {
            reentrantLock.unlock();
        }
    }

    public boolean tryEnterIf(Guard guard) {
        if (guard.b != this) {
            throw new IllegalMonitorStateException();
        }
        ReentrantLock reentrantLock = this.b;
        if (!reentrantLock.tryLock()) {
            return false;
        }
        try {
            boolean zIsSatisfied = guard.isSatisfied();
            return !zIsSatisfied ? zIsSatisfied : zIsSatisfied;
        } finally {
            reentrantLock.unlock();
        }
    }

    public void waitFor(Guard guard) {
        if (!((guard.b == this) & this.b.isHeldByCurrentThread())) {
            throw new IllegalMonitorStateException();
        }
        if (!guard.isSatisfied()) {
            a(guard, true);
        }
    }

    public void waitForUninterruptibly(Guard guard) {
        if (!((guard.b == this) & this.b.isHeldByCurrentThread())) {
            throw new IllegalMonitorStateException();
        }
        if (!guard.isSatisfied()) {
            b(guard, true);
        }
    }

    public boolean waitFor(Guard guard, long j, TimeUnit timeUnit) throws InterruptedException {
        long jA = a(j, timeUnit);
        if (!((guard.b == this) & this.b.isHeldByCurrentThread())) {
            throw new IllegalMonitorStateException();
        }
        if (guard.isSatisfied()) {
            return true;
        }
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        return a(guard, jA, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0055  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean waitForUninterruptibly(com.google.common.util.concurrent.Monitor.Guard r11, long r12, java.util.concurrent.TimeUnit r14) throws java.lang.Throwable {
        /*
            r10 = this;
            r2 = 0
            r1 = 1
            long r6 = a(r12, r14)
            com.google.common.util.concurrent.Monitor r0 = r11.b
            if (r0 != r10) goto L1a
            r0 = r1
        Lb:
            java.util.concurrent.locks.ReentrantLock r3 = r10.b
            boolean r3 = r3.isHeldByCurrentThread()
            r0 = r0 & r3
            if (r0 != 0) goto L1c
            java.lang.IllegalMonitorStateException r0 = new java.lang.IllegalMonitorStateException
            r0.<init>()
            throw r0
        L1a:
            r0 = r2
            goto Lb
        L1c:
            boolean r0 = r11.isSatisfied()
            if (r0 == 0) goto L23
        L22:
            return r1
        L23:
            long r8 = a(r6)
            boolean r3 = java.lang.Thread.interrupted()
            r4 = r6
            r0 = r1
        L2d:
            boolean r1 = r10.a(r11, r4, r0)     // Catch: java.lang.InterruptedException -> L3b java.lang.Throwable -> L51
            if (r3 == 0) goto L22
            java.lang.Thread r0 = java.lang.Thread.currentThread()
            r0.interrupt()
            goto L22
        L3b:
            r0 = move-exception
            boolean r0 = r11.isSatisfied()     // Catch: java.lang.Throwable -> L5d
            if (r0 == 0) goto L4a
            java.lang.Thread r0 = java.lang.Thread.currentThread()
            r0.interrupt()
            goto L22
        L4a:
            long r4 = a(r8, r6)     // Catch: java.lang.Throwable -> L5d
            r3 = r1
            r0 = r2
            goto L2d
        L51:
            r0 = move-exception
            r1 = r3
        L53:
            if (r1 == 0) goto L5c
            java.lang.Thread r1 = java.lang.Thread.currentThread()
            r1.interrupt()
        L5c:
            throw r0
        L5d:
            r0 = move-exception
            goto L53
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.util.concurrent.Monitor.waitForUninterruptibly(com.google.common.util.concurrent.Monitor$Guard, long, java.util.concurrent.TimeUnit):boolean");
    }

    public void leave() {
        ReentrantLock reentrantLock = this.b;
        try {
            if (reentrantLock.getHoldCount() == 1) {
                a();
            }
        } finally {
            reentrantLock.unlock();
        }
    }

    public boolean isFair() {
        return this.a;
    }

    public boolean isOccupied() {
        return this.b.isLocked();
    }

    public boolean isOccupiedByCurrentThread() {
        return this.b.isHeldByCurrentThread();
    }

    public int getOccupiedDepth() {
        return this.b.getHoldCount();
    }

    public int getQueueLength() {
        return this.b.getQueueLength();
    }

    public boolean hasQueuedThreads() {
        return this.b.hasQueuedThreads();
    }

    public boolean hasQueuedThread(Thread thread) {
        return this.b.hasQueuedThread(thread);
    }

    public boolean hasWaiters(Guard guard) {
        return getWaitQueueLength(guard) > 0;
    }

    public int getWaitQueueLength(Guard guard) {
        if (guard.b != this) {
            throw new IllegalMonitorStateException();
        }
        this.b.lock();
        try {
            return guard.d;
        } finally {
            this.b.unlock();
        }
    }

    private static long a(long j, TimeUnit timeUnit) {
        long nanos = timeUnit.toNanos(j);
        if (nanos <= 0) {
            return 0L;
        }
        if (nanos > 6917529027641081853L) {
            return 6917529027641081853L;
        }
        return nanos;
    }

    private static long a(long j) {
        if (j <= 0) {
            return 0L;
        }
        long jNanoTime = System.nanoTime();
        if (jNanoTime == 0) {
            return 1L;
        }
        return jNanoTime;
    }

    private static long a(long j, long j2) {
        if (j2 <= 0) {
            return 0L;
        }
        return j2 - (System.nanoTime() - j);
    }

    @GuardedBy("lock")
    private void a() {
        for (Guard guard = this.c; guard != null; guard = guard.e) {
            if (a(guard)) {
                guard.c.signal();
                return;
            }
        }
    }

    @GuardedBy("lock")
    private boolean a(Guard guard) {
        try {
            return guard.isSatisfied();
        } catch (Throwable th) {
            b();
            throw Throwables.propagate(th);
        }
    }

    @GuardedBy("lock")
    private void b() {
        for (Guard guard = this.c; guard != null; guard = guard.e) {
            guard.c.signalAll();
        }
    }

    @GuardedBy("lock")
    private void b(Guard guard) {
        int i = guard.d;
        guard.d = i + 1;
        if (i == 0) {
            guard.e = this.c;
            this.c = guard;
        }
    }

    @GuardedBy("lock")
    private void c(Guard guard) {
        int i = guard.d - 1;
        guard.d = i;
        if (i == 0) {
            Guard guard2 = this.c;
            Guard guard3 = null;
            while (guard2 != guard) {
                Guard guard4 = guard2;
                guard2 = guard2.e;
                guard3 = guard4;
            }
            if (guard3 == null) {
                this.c = guard2.e;
            } else {
                guard3.e = guard2.e;
            }
            guard2.e = null;
        }
    }

    @GuardedBy("lock")
    private void a(Guard guard, boolean z) {
        if (z) {
            a();
        }
        b(guard);
        do {
            try {
                guard.c.await();
            } finally {
                c(guard);
            }
        } while (!guard.isSatisfied());
    }

    @GuardedBy("lock")
    private void b(Guard guard, boolean z) {
        if (z) {
            a();
        }
        b(guard);
        do {
            try {
                guard.c.awaitUninterruptibly();
            } finally {
                c(guard);
            }
        } while (!guard.isSatisfied());
    }

    @GuardedBy("lock")
    private boolean a(Guard guard, long j, boolean z) {
        boolean z2 = true;
        while (j > 0) {
            if (z2) {
                if (z) {
                    try {
                        a();
                    } catch (Throwable th) {
                        if (!z2) {
                            c(guard);
                        }
                        throw th;
                    }
                }
                b(guard);
                z2 = false;
            }
            j = guard.c.awaitNanos(j);
            if (guard.isSatisfied()) {
                if (!z2) {
                    c(guard);
                }
                return true;
            }
        }
        if (z2) {
            return false;
        }
        c(guard);
        return false;
    }
}
