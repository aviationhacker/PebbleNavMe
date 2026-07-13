package com.google.common.util.concurrent;

import com.google.common.base.Preconditions;
import java.lang.Thread;
import java.util.Locale;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes.dex */
public final class ThreadFactoryBuilder {
    private String a = null;
    private Boolean b = null;
    private Integer c = null;
    private Thread.UncaughtExceptionHandler d = null;
    private ThreadFactory e = null;

    public ThreadFactoryBuilder setNameFormat(String str) {
        b(str, 0);
        this.a = str;
        return this;
    }

    public ThreadFactoryBuilder setDaemon(boolean z) {
        this.b = Boolean.valueOf(z);
        return this;
    }

    public ThreadFactoryBuilder setPriority(int i) {
        Preconditions.checkArgument(i >= 1, "Thread priority (%s) must be >= %s", Integer.valueOf(i), 1);
        Preconditions.checkArgument(i <= 10, "Thread priority (%s) must be <= %s", Integer.valueOf(i), 10);
        this.c = Integer.valueOf(i);
        return this;
    }

    public ThreadFactoryBuilder setUncaughtExceptionHandler(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.d = (Thread.UncaughtExceptionHandler) Preconditions.checkNotNull(uncaughtExceptionHandler);
        return this;
    }

    public ThreadFactoryBuilder setThreadFactory(ThreadFactory threadFactory) {
        this.e = (ThreadFactory) Preconditions.checkNotNull(threadFactory);
        return this;
    }

    public ThreadFactory build() {
        return a(this);
    }

    private static ThreadFactory a(ThreadFactoryBuilder threadFactoryBuilder) {
        final String str = threadFactoryBuilder.a;
        final Boolean bool = threadFactoryBuilder.b;
        final Integer num = threadFactoryBuilder.c;
        final Thread.UncaughtExceptionHandler uncaughtExceptionHandler = threadFactoryBuilder.d;
        final ThreadFactory threadFactoryDefaultThreadFactory = threadFactoryBuilder.e != null ? threadFactoryBuilder.e : Executors.defaultThreadFactory();
        final AtomicLong atomicLong = str != null ? new AtomicLong(0L) : null;
        return new ThreadFactory() { // from class: com.google.common.util.concurrent.ThreadFactoryBuilder.1
            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                Thread threadNewThread = threadFactoryDefaultThreadFactory.newThread(runnable);
                if (str != null) {
                    threadNewThread.setName(ThreadFactoryBuilder.b(str, Long.valueOf(atomicLong.getAndIncrement())));
                }
                if (bool != null) {
                    threadNewThread.setDaemon(bool.booleanValue());
                }
                if (num != null) {
                    threadNewThread.setPriority(num.intValue());
                }
                if (uncaughtExceptionHandler != null) {
                    threadNewThread.setUncaughtExceptionHandler(uncaughtExceptionHandler);
                }
                return threadNewThread;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String b(String str, Object... objArr) {
        return String.format(Locale.ROOT, str, objArr);
    }
}
