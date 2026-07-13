package org.eclipse.jetty.util.thread;

import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes.dex */
public class Timeout {
    private static final Logger a = Log.getLogger((Class<?>) Timeout.class);
    private Object b;
    private long c;
    private volatile long d;
    private Task e;

    public Timeout() {
        this.d = System.currentTimeMillis();
        this.e = new Task();
        this.b = new Object();
        this.e.c = this;
    }

    public Timeout(Object obj) {
        this.d = System.currentTimeMillis();
        this.e = new Task();
        this.b = obj;
        this.e.c = this;
    }

    public long getDuration() {
        return this.c;
    }

    public void setDuration(long j) {
        this.c = j;
    }

    public long setNow() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.d = jCurrentTimeMillis;
        return jCurrentTimeMillis;
    }

    public long getNow() {
        return this.d;
    }

    public void setNow(long j) {
        this.d = j;
    }

    public Task expired() {
        synchronized (this.b) {
            long j = this.d - this.c;
            if (this.e.a == this.e) {
                return null;
            }
            Task task = this.e.a;
            if (task.e > j) {
                return null;
            }
            task.a();
            task.f = true;
            return task;
        }
    }

    public void tick() {
        Task task;
        long j = this.d - this.c;
        while (true) {
            try {
                synchronized (this.b) {
                    task = this.e.a;
                    if (task == this.e || task.e > j) {
                        return;
                    }
                    task.a();
                    task.f = true;
                    task.expire();
                }
                task.expired();
            } catch (Throwable th) {
                a.warn(Log.EXCEPTION, th);
            }
        }
    }

    public void tick(long j) {
        this.d = j;
        tick();
    }

    public void schedule(Task task) {
        schedule(task, 0L);
    }

    public void schedule(Task task, long j) {
        synchronized (this.b) {
            if (task.e != 0) {
                task.a();
                task.e = 0L;
            }
            task.c = this;
            task.f = false;
            task.d = j;
            task.e = this.d + j;
            Task task2 = this.e.b;
            while (task2 != this.e && task2.e > task.e) {
                task2 = task2.b;
            }
            task2.b(task);
        }
    }

    public void cancelAll() {
        synchronized (this.b) {
            Task task = this.e;
            Task task2 = this.e;
            Task task3 = this.e;
            task2.b = task3;
            task.a = task3;
        }
    }

    public boolean isEmpty() {
        boolean z;
        synchronized (this.b) {
            z = this.e.a == this.e;
        }
        return z;
    }

    public long getTimeToNext() {
        long j;
        synchronized (this.b) {
            if (this.e.a == this.e) {
                j = -1;
            } else {
                long j2 = (this.c + this.e.a.e) - this.d;
                j = j2 >= 0 ? j2 : 0L;
            }
        }
        return j;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(super.toString());
        for (Task task = this.e.a; task != this.e; task = task.a) {
            stringBuffer.append("-->");
            stringBuffer.append(task);
        }
        return stringBuffer.toString();
    }

    public static class Task {
        Timeout c;
        long d;
        long e = 0;
        boolean f = false;
        Task b = this;
        Task a = this;

        protected Task() {
        }

        public long getTimestamp() {
            return this.e;
        }

        public long getAge() {
            Timeout timeout = this.c;
            if (timeout == null) {
                return 0L;
            }
            long j = timeout.d;
            if (j == 0 || this.e == 0) {
                return 0L;
            }
            return j - this.e;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a() {
            this.a.b = this.b;
            this.b.a = this.a;
            this.b = this;
            this.a = this;
            this.f = false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b(Task task) {
            Task task2 = this.a;
            this.a.b = task;
            this.a = task;
            this.a.a = task2;
            this.a.b = this;
        }

        public void schedule(Timeout timeout) {
            timeout.schedule(this);
        }

        public void schedule(Timeout timeout, long j) {
            timeout.schedule(this, j);
        }

        public void reschedule() {
            Timeout timeout = this.c;
            if (timeout != null) {
                timeout.schedule(this, this.d);
            }
        }

        public void cancel() {
            Timeout timeout = this.c;
            if (timeout != null) {
                synchronized (timeout.b) {
                    a();
                    this.e = 0L;
                }
            }
        }

        public boolean isExpired() {
            return this.f;
        }

        public boolean isScheduled() {
            return this.a != this;
        }

        protected void expire() {
        }

        public void expired() {
        }
    }
}
