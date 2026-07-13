package com.google.common.util.concurrent;

import com.google.common.annotations.VisibleForTesting;
import java.lang.Thread;
import java.util.Locale;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes.dex */
public final class UncaughtExceptionHandlers {
    private UncaughtExceptionHandlers() {
    }

    public static Thread.UncaughtExceptionHandler systemExit() {
        return new a(Runtime.getRuntime());
    }

    @VisibleForTesting
    static final class a implements Thread.UncaughtExceptionHandler {
        private static final Logger a = Logger.getLogger(a.class.getName());
        private final Runtime b;

        a(Runtime runtime) {
            this.b = runtime;
        }

        @Override // java.lang.Thread.UncaughtExceptionHandler
        public void uncaughtException(Thread thread, Throwable th) {
            try {
                a.log(Level.SEVERE, String.format(Locale.ROOT, "Caught an exception in %s.  Shutting down.", thread), th);
            } catch (Throwable th2) {
                System.err.println(th.getMessage());
                System.err.println(th2.getMessage());
            } finally {
                this.b.exit(1);
            }
        }
    }
}
