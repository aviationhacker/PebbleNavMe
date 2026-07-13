package com.google.common.base;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import javax.annotation.CheckReturnValue;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(emulated = true)
public final class Stopwatch {
    private final Ticker a;
    private boolean b;
    private long c;
    private long d;

    @CheckReturnValue
    public static Stopwatch createUnstarted() {
        return new Stopwatch();
    }

    @CheckReturnValue
    public static Stopwatch createUnstarted(Ticker ticker) {
        return new Stopwatch(ticker);
    }

    @CheckReturnValue
    public static Stopwatch createStarted() {
        return new Stopwatch().start();
    }

    @CheckReturnValue
    public static Stopwatch createStarted(Ticker ticker) {
        return new Stopwatch(ticker).start();
    }

    Stopwatch() {
        this.a = Ticker.systemTicker();
    }

    Stopwatch(Ticker ticker) {
        this.a = (Ticker) Preconditions.checkNotNull(ticker, "ticker");
    }

    @CheckReturnValue
    public boolean isRunning() {
        return this.b;
    }

    public Stopwatch start() {
        Preconditions.checkState(!this.b, "This stopwatch is already running.");
        this.b = true;
        this.d = this.a.read();
        return this;
    }

    public Stopwatch stop() {
        long j = this.a.read();
        Preconditions.checkState(this.b, "This stopwatch is already stopped.");
        this.b = false;
        this.c = (j - this.d) + this.c;
        return this;
    }

    public Stopwatch reset() {
        this.c = 0L;
        this.b = false;
        return this;
    }

    private long a() {
        return this.b ? (this.a.read() - this.d) + this.c : this.c;
    }

    @CheckReturnValue
    public long elapsed(TimeUnit timeUnit) {
        return timeUnit.convert(a(), TimeUnit.NANOSECONDS);
    }

    @GwtIncompatible("String.format()")
    public String toString() {
        long jA = a();
        return String.format(Locale.ROOT, "%.4g %s", Double.valueOf(jA / TimeUnit.NANOSECONDS.convert(1L, r2)), a(a(jA)));
    }

    private static TimeUnit a(long j) {
        if (TimeUnit.DAYS.convert(j, TimeUnit.NANOSECONDS) > 0) {
            return TimeUnit.DAYS;
        }
        if (TimeUnit.HOURS.convert(j, TimeUnit.NANOSECONDS) > 0) {
            return TimeUnit.HOURS;
        }
        if (TimeUnit.MINUTES.convert(j, TimeUnit.NANOSECONDS) > 0) {
            return TimeUnit.MINUTES;
        }
        if (TimeUnit.SECONDS.convert(j, TimeUnit.NANOSECONDS) > 0) {
            return TimeUnit.SECONDS;
        }
        if (TimeUnit.MILLISECONDS.convert(j, TimeUnit.NANOSECONDS) > 0) {
            return TimeUnit.MILLISECONDS;
        }
        if (TimeUnit.MICROSECONDS.convert(j, TimeUnit.NANOSECONDS) > 0) {
            return TimeUnit.MICROSECONDS;
        }
        return TimeUnit.NANOSECONDS;
    }

    /* JADX INFO: renamed from: com.google.common.base.Stopwatch$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] a = new int[TimeUnit.values().length];

        static {
            try {
                a[TimeUnit.NANOSECONDS.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                a[TimeUnit.MICROSECONDS.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                a[TimeUnit.MILLISECONDS.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                a[TimeUnit.SECONDS.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                a[TimeUnit.MINUTES.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                a[TimeUnit.HOURS.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                a[TimeUnit.DAYS.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    private static String a(TimeUnit timeUnit) {
        switch (AnonymousClass1.a[timeUnit.ordinal()]) {
            case 1:
                return "ns";
            case 2:
                return "μs";
            case 3:
                return "ms";
            case 4:
                return "s";
            case 5:
                return "min";
            case 6:
                return "h";
            case 7:
                return "d";
            default:
                throw new AssertionError();
        }
    }
}
