package com.google.android.gms.internal;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzlk {
    private static final ExecutorService a = Executors.newFixedThreadPool(2, new a());

    static final class a implements ThreadFactory {
        private final ThreadFactory a;
        private AtomicInteger b;

        private a() {
            this.a = Executors.defaultThreadFactory();
            this.b = new AtomicInteger(0);
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread threadNewThread = this.a.newThread(runnable);
            threadNewThread.setName("GAC_Executor[" + this.b.getAndIncrement() + "]");
            return threadNewThread;
        }
    }

    public static ExecutorService zzoj() {
        return a;
    }
}
