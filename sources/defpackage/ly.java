package defpackage;

import com.google.common.base.Preconditions;
import com.google.common.collect.Queues;
import java.util.Iterator;
import java.util.Queue;
import java.util.concurrent.Executor;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: classes.dex */
public final class ly<L> implements Runnable {
    private static final Logger a = Logger.getLogger(ly.class.getName());
    private final L b;
    private final Executor c;

    @GuardedBy("this")
    private final Queue<a<L>> d = Queues.newArrayDeque();

    @GuardedBy("this")
    private boolean e;

    public static abstract class a<L> {
        private final String a;

        protected abstract void a(L l);

        protected a(String str) {
            this.a = str;
        }

        public void a(Iterable<ly<L>> iterable) {
            Iterator<ly<L>> it = iterable.iterator();
            while (it.hasNext()) {
                it.next().a(this);
            }
        }
    }

    public ly(L l, Executor executor) {
        this.b = (L) Preconditions.checkNotNull(l);
        this.c = (Executor) Preconditions.checkNotNull(executor);
    }

    synchronized void a(a<L> aVar) {
        this.d.add(aVar);
    }

    public void a() {
        boolean z = true;
        synchronized (this) {
            if (this.e) {
                z = false;
            } else {
                this.e = true;
            }
        }
        if (z) {
            try {
                this.c.execute(this);
            } catch (RuntimeException e) {
                synchronized (this) {
                    this.e = false;
                    Logger logger = a;
                    Level level = Level.SEVERE;
                    String strValueOf = String.valueOf(this.b);
                    String strValueOf2 = String.valueOf(this.c);
                    logger.log(level, new StringBuilder(String.valueOf(strValueOf).length() + 42 + String.valueOf(strValueOf2).length()).append("Exception while running callbacks for ").append(strValueOf).append(" on ").append(strValueOf2).toString(), (Throwable) e);
                    throw e;
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0018, code lost:
    
        r0.a(r10.b);
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x001e, code lost:
    
        r3 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x001f, code lost:
    
        r4 = defpackage.ly.a;
        r5 = java.util.logging.Level.SEVERE;
        r6 = java.lang.String.valueOf(r10.b);
        r0 = ((ly.a) r0).a;
        r4.log(r5, new java.lang.StringBuilder((java.lang.String.valueOf(r6).length() + 37) + java.lang.String.valueOf(r0).length()).append("Exception while executing callback: ").append(r6).append(".").append(r0).toString(), (java.lang.Throwable) r3);
     */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run() throws java.lang.Throwable {
        /*
            r10 = this;
            r1 = 0
            r2 = 1
        L2:
            monitor-enter(r10)     // Catch: java.lang.Throwable -> L61
            boolean r0 = r10.e     // Catch: java.lang.Throwable -> L6a
            com.google.common.base.Preconditions.checkState(r0)     // Catch: java.lang.Throwable -> L6a
            java.util.Queue<ly$a<L>> r0 = r10.d     // Catch: java.lang.Throwable -> L6a
            java.lang.Object r0 = r0.poll()     // Catch: java.lang.Throwable -> L6a
            ly$a r0 = (ly.a) r0     // Catch: java.lang.Throwable -> L6a
            if (r0 != 0) goto L17
            r0 = 0
            r10.e = r0     // Catch: java.lang.Throwable -> L6a
            monitor-exit(r10)     // Catch: java.lang.Throwable -> L74
            return
        L17:
            monitor-exit(r10)     // Catch: java.lang.Throwable -> L6a
            L r3 = r10.b     // Catch: java.lang.RuntimeException -> L1e java.lang.Throwable -> L61
            r0.a(r3)     // Catch: java.lang.RuntimeException -> L1e java.lang.Throwable -> L61
            goto L2
        L1e:
            r3 = move-exception
            java.util.logging.Logger r4 = defpackage.ly.a     // Catch: java.lang.Throwable -> L61
            java.util.logging.Level r5 = java.util.logging.Level.SEVERE     // Catch: java.lang.Throwable -> L61
            L r6 = r10.b     // Catch: java.lang.Throwable -> L61
            java.lang.String r6 = java.lang.String.valueOf(r6)     // Catch: java.lang.Throwable -> L61
            java.lang.String r0 = ly.a.a(r0)     // Catch: java.lang.Throwable -> L61
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L61
            java.lang.String r8 = java.lang.String.valueOf(r6)     // Catch: java.lang.Throwable -> L61
            int r8 = r8.length()     // Catch: java.lang.Throwable -> L61
            int r8 = r8 + 37
            java.lang.String r9 = java.lang.String.valueOf(r0)     // Catch: java.lang.Throwable -> L61
            int r9 = r9.length()     // Catch: java.lang.Throwable -> L61
            int r8 = r8 + r9
            r7.<init>(r8)     // Catch: java.lang.Throwable -> L61
            java.lang.String r8 = "Exception while executing callback: "
            java.lang.StringBuilder r7 = r7.append(r8)     // Catch: java.lang.Throwable -> L61
            java.lang.StringBuilder r6 = r7.append(r6)     // Catch: java.lang.Throwable -> L61
            java.lang.String r7 = "."
            java.lang.StringBuilder r6 = r6.append(r7)     // Catch: java.lang.Throwable -> L61
            java.lang.StringBuilder r0 = r6.append(r0)     // Catch: java.lang.Throwable -> L61
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> L61
            r4.log(r5, r0, r3)     // Catch: java.lang.Throwable -> L61
            goto L2
        L61:
            r0 = move-exception
        L62:
            if (r2 == 0) goto L69
            monitor-enter(r10)
            r1 = 0
            r10.e = r1     // Catch: java.lang.Throwable -> L71
            monitor-exit(r10)     // Catch: java.lang.Throwable -> L71
        L69:
            throw r0
        L6a:
            r0 = move-exception
            r1 = r2
        L6c:
            monitor-exit(r10)     // Catch: java.lang.Throwable -> L74
            throw r0     // Catch: java.lang.Throwable -> L6e
        L6e:
            r0 = move-exception
            r2 = r1
            goto L62
        L71:
            r0 = move-exception
            monitor-exit(r10)     // Catch: java.lang.Throwable -> L71
            throw r0
        L74:
            r0 = move-exception
            goto L6c
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ly.run():void");
    }
}
