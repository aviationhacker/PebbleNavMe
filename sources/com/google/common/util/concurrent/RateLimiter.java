package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import com.google.common.base.Stopwatch;
import defpackage.mb;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import javax.annotation.concurrent.ThreadSafe;

/* JADX INFO: loaded from: classes.dex */
@Beta
@ThreadSafe
public abstract class RateLimiter {
    private final a a;
    private volatile Object b;

    protected abstract double a();

    protected abstract long a(long j);

    protected abstract void a(double d, long j);

    protected abstract long b(int i, long j);

    public static RateLimiter create(double d) {
        return a(a.b(), d);
    }

    @VisibleForTesting
    static RateLimiter a(a aVar, double d) {
        mb.a aVar2 = new mb.a(aVar, 1.0d);
        aVar2.setRate(d);
        return aVar2;
    }

    public static RateLimiter create(double d, long j, TimeUnit timeUnit) {
        Preconditions.checkArgument(j >= 0, "warmupPeriod must not be negative: %s", Long.valueOf(j));
        return a(a.b(), d, j, timeUnit, 3.0d);
    }

    @VisibleForTesting
    static RateLimiter a(a aVar, double d, long j, TimeUnit timeUnit, double d2) {
        mb.b bVar = new mb.b(aVar, j, timeUnit, d2);
        bVar.setRate(d);
        return bVar;
    }

    private Object b() {
        Object obj = this.b;
        if (obj == null) {
            synchronized (this) {
                obj = this.b;
                if (obj == null) {
                    obj = new Object();
                    this.b = obj;
                }
            }
        }
        return obj;
    }

    protected RateLimiter(a aVar) {
        this.a = (a) Preconditions.checkNotNull(aVar);
    }

    public final void setRate(double d) {
        Preconditions.checkArgument(d > 0.0d && !Double.isNaN(d), "rate must be positive");
        synchronized (b()) {
            a(d, this.a.a());
        }
    }

    public final double getRate() {
        double dA;
        synchronized (b()) {
            dA = a();
        }
        return dA;
    }

    public double acquire() {
        return acquire(1);
    }

    public double acquire(int i) {
        long jA = a(i);
        this.a.a(jA);
        return (jA * 1.0d) / TimeUnit.SECONDS.toMicros(1L);
    }

    final long a(int i) {
        long jA;
        b(i);
        synchronized (b()) {
            jA = a(i, this.a.a());
        }
        return jA;
    }

    public boolean tryAcquire(long j, TimeUnit timeUnit) {
        return tryAcquire(1, j, timeUnit);
    }

    public boolean tryAcquire(int i) {
        return tryAcquire(i, 0L, TimeUnit.MICROSECONDS);
    }

    public boolean tryAcquire() {
        return tryAcquire(1, 0L, TimeUnit.MICROSECONDS);
    }

    public boolean tryAcquire(int i, long j, TimeUnit timeUnit) {
        long jMax = Math.max(timeUnit.toMicros(j), 0L);
        b(i);
        synchronized (b()) {
            long jA = this.a.a();
            if (!a(jA, jMax)) {
                return false;
            }
            this.a.a(a(i, jA));
            return true;
        }
    }

    private boolean a(long j, long j2) {
        return a(j) - j2 <= j;
    }

    final long a(int i, long j) {
        return Math.max(b(i, j) - j, 0L);
    }

    public String toString() {
        return String.format(Locale.ROOT, "RateLimiter[stableRate=%3.1fqps]", Double.valueOf(getRate()));
    }

    @VisibleForTesting
    public static abstract class a {
        abstract long a();

        abstract void a(long j);

        a() {
        }

        static final a b() {
            return new a() { // from class: com.google.common.util.concurrent.RateLimiter.a.1
                final Stopwatch a = Stopwatch.createStarted();

                @Override // com.google.common.util.concurrent.RateLimiter.a
                long a() {
                    return this.a.elapsed(TimeUnit.MICROSECONDS);
                }

                @Override // com.google.common.util.concurrent.RateLimiter.a
                void a(long j) {
                    if (j > 0) {
                        Uninterruptibles.sleepUninterruptibly(j, TimeUnit.MICROSECONDS);
                    }
                }
            };
        }
    }

    private static int b(int i) {
        Preconditions.checkArgument(i > 0, "Requested permits (%s) must be positive", Integer.valueOf(i));
        return i;
    }
}
