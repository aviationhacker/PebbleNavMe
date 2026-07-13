package com.google.common.util.concurrent;

import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import java.util.concurrent.Executor;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: classes.dex */
public final class ExecutionList {

    @VisibleForTesting
    static final Logger a = Logger.getLogger(ExecutionList.class.getName());

    @GuardedBy("this")
    private a b;

    @GuardedBy("this")
    private boolean c;

    public void add(Runnable runnable, Executor executor) {
        Preconditions.checkNotNull(runnable, "Runnable was null.");
        Preconditions.checkNotNull(executor, "Executor was null.");
        synchronized (this) {
            if (!this.c) {
                this.b = new a(runnable, executor, this.b);
            } else {
                a(runnable, executor);
            }
        }
    }

    public void execute() {
        a aVar = null;
        synchronized (this) {
            if (!this.c) {
                this.c = true;
                a aVar2 = this.b;
                this.b = null;
                while (aVar2 != null) {
                    a aVar3 = aVar2.c;
                    aVar2.c = aVar;
                    aVar = aVar2;
                    aVar2 = aVar3;
                }
                while (aVar != null) {
                    a(aVar.a, aVar.b);
                    aVar = aVar.c;
                }
            }
        }
    }

    private static void a(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e) {
            Logger logger = a;
            Level level = Level.SEVERE;
            String strValueOf = String.valueOf(runnable);
            String strValueOf2 = String.valueOf(executor);
            logger.log(level, new StringBuilder(String.valueOf(strValueOf).length() + 57 + String.valueOf(strValueOf2).length()).append("RuntimeException while executing runnable ").append(strValueOf).append(" with executor ").append(strValueOf2).toString(), (Throwable) e);
        }
    }

    static final class a {
        final Runnable a;
        final Executor b;

        @Nullable
        a c;

        a(Runnable runnable, Executor executor, a aVar) {
            this.a = runnable;
            this.b = executor;
            this.c = aVar;
        }
    }
}
