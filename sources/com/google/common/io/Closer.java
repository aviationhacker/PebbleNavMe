package com.google.common.io;

import com.google.common.annotations.Beta;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import com.google.common.base.Throwables;
import java.io.Closeable;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Beta
public final class Closer implements Closeable {
    private static final c b;

    @VisibleForTesting
    final c a;
    private final Deque<Closeable> c = new ArrayDeque(4);
    private Throwable d;

    @VisibleForTesting
    interface c {
        void a(Closeable closeable, Throwable th, Throwable th2);
    }

    static {
        b = b.a() ? b.a : a.a;
    }

    public static Closer create() {
        return new Closer(b);
    }

    @VisibleForTesting
    Closer(c cVar) {
        this.a = (c) Preconditions.checkNotNull(cVar);
    }

    public <C extends Closeable> C register(@Nullable C c2) {
        if (c2 != null) {
            this.c.addFirst(c2);
        }
        return c2;
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: X */
    public RuntimeException rethrow(Throwable th) throws X {
        Preconditions.checkNotNull(th);
        this.d = th;
        Throwables.propagateIfPossible(th, IOException.class);
        throw new RuntimeException(th);
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: X */
    public <X extends Exception> RuntimeException rethrow(Throwable th, Class<X> cls) throws X {
        Preconditions.checkNotNull(th);
        this.d = th;
        Throwables.propagateIfPossible(th, IOException.class);
        Throwables.propagateIfPossible(th, cls);
        throw new RuntimeException(th);
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: X */
    public <X1 extends Exception, X2 extends Exception> RuntimeException rethrow(Throwable th, Class<X1> cls, Class<X2> cls2) throws X {
        Preconditions.checkNotNull(th);
        this.d = th;
        Throwables.propagateIfPossible(th, IOException.class);
        Throwables.propagateIfPossible(th, cls, cls2);
        throw new RuntimeException(th);
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: X */
    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws X {
        Throwable th;
        Throwable th2 = this.d;
        while (!this.c.isEmpty()) {
            Closeable closeableRemoveFirst = this.c.removeFirst();
            try {
                closeableRemoveFirst.close();
                th = th2;
            } catch (Throwable th3) {
                if (th2 == null) {
                    th = th3;
                } else {
                    this.a.a(closeableRemoveFirst, th2, th3);
                    th = th2;
                }
            }
            th2 = th;
        }
        if (this.d == null && th2 != null) {
            Throwables.propagateIfPossible(th2, IOException.class);
            throw new AssertionError(th2);
        }
    }

    @VisibleForTesting
    static final class a implements c {
        static final a a = new a();

        a() {
        }

        @Override // com.google.common.io.Closer.c
        public void a(Closeable closeable, Throwable th, Throwable th2) {
            Logger logger = Closeables.a;
            Level level = Level.WARNING;
            String strValueOf = String.valueOf(closeable);
            logger.log(level, new StringBuilder(String.valueOf(strValueOf).length() + 42).append("Suppressing exception thrown when closing ").append(strValueOf).toString(), th2);
        }
    }

    @VisibleForTesting
    static final class b implements c {
        static final b a = new b();
        static final Method b = b();

        b() {
        }

        static boolean a() {
            return b != null;
        }

        private static Method b() {
            try {
                return Throwable.class.getMethod("addSuppressed", Throwable.class);
            } catch (Throwable th) {
                return null;
            }
        }

        @Override // com.google.common.io.Closer.c
        public void a(Closeable closeable, Throwable th, Throwable th2) {
            if (th != th2) {
                try {
                    b.invoke(th, th2);
                } catch (Throwable th3) {
                    a.a.a(closeable, th, th2);
                }
            }
        }
    }
}
