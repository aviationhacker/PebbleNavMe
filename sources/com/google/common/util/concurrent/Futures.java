package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Function;
import com.google.common.base.Optional;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableCollection;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Lists;
import com.google.common.collect.Queues;
import com.google.common.util.concurrent.AbstractFuture;
import defpackage.ls;
import defpackage.lu;
import defpackage.lv;
import defpackage.lw;
import defpackage.ma;
import java.lang.reflect.UndeclaredThrowableException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.CheckReturnValue;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Beta
@GwtCompatible(emulated = true)
public final class Futures extends lw {
    private static final AsyncFunction<ListenableFuture<Object>, Object> a = new AsyncFunction<ListenableFuture<Object>, Object>() { // from class: com.google.common.util.concurrent.Futures.4
        @Override // com.google.common.util.concurrent.AsyncFunction
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ListenableFuture<Object> apply(ListenableFuture<Object> listenableFuture) {
            return listenableFuture;
        }
    };

    private Futures() {
    }

    @GwtIncompatible("TODO")
    @CheckReturnValue
    public static <V, X extends Exception> CheckedFuture<V, X> makeChecked(ListenableFuture<V> listenableFuture, Function<? super Exception, X> function) {
        return new n((ListenableFuture) Preconditions.checkNotNull(listenableFuture), function);
    }

    static abstract class j<V> implements ListenableFuture<V> {
        private static final Logger a = Logger.getLogger(j.class.getName());

        @Override // java.util.concurrent.Future
        public abstract V get();

        private j() {
        }

        @Override // com.google.common.util.concurrent.ListenableFuture
        public void addListener(Runnable runnable, Executor executor) {
            Preconditions.checkNotNull(runnable, "Runnable was null.");
            Preconditions.checkNotNull(executor, "Executor was null.");
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

        @Override // java.util.concurrent.Future
        public boolean cancel(boolean z) {
            return false;
        }

        @Override // java.util.concurrent.Future
        public V get(long j, TimeUnit timeUnit) {
            Preconditions.checkNotNull(timeUnit);
            return get();
        }

        @Override // java.util.concurrent.Future
        public boolean isCancelled() {
            return false;
        }

        @Override // java.util.concurrent.Future
        public boolean isDone() {
            return true;
        }
    }

    static class l<V> extends j<V> {
        static final l<Object> a = new l<>(null);

        @Nullable
        private final V b;

        l(@Nullable V v) {
            super();
            this.b = v;
        }

        @Override // com.google.common.util.concurrent.Futures.j, java.util.concurrent.Future
        public V get() {
            return this.b;
        }
    }

    @GwtIncompatible("TODO")
    static class k<V, X extends Exception> extends j<V> implements CheckedFuture<V, X> {

        @Nullable
        private final V a;

        k(@Nullable V v) {
            super();
            this.a = v;
        }

        @Override // com.google.common.util.concurrent.Futures.j, java.util.concurrent.Future
        public V get() {
            return this.a;
        }

        @Override // com.google.common.util.concurrent.CheckedFuture
        public V checkedGet() {
            return this.a;
        }

        @Override // com.google.common.util.concurrent.CheckedFuture
        public V checkedGet(long j, TimeUnit timeUnit) {
            Preconditions.checkNotNull(timeUnit);
            return this.a;
        }
    }

    static class i<V> extends j<V> {
        private final Throwable a;

        i(Throwable th) {
            super();
            this.a = th;
        }

        @Override // com.google.common.util.concurrent.Futures.j, java.util.concurrent.Future
        public V get() throws ExecutionException {
            throw new ExecutionException(this.a);
        }
    }

    @GwtIncompatible("TODO")
    static class g<V> extends j<V> {
        private final CancellationException a;

        g() {
            super();
            this.a = new CancellationException("Immediate cancelled future.");
        }

        @Override // com.google.common.util.concurrent.Futures.j, java.util.concurrent.Future
        public boolean isCancelled() {
            return true;
        }

        @Override // com.google.common.util.concurrent.Futures.j, java.util.concurrent.Future
        public V get() {
            throw AbstractFuture.a("Task was cancelled.", this.a);
        }
    }

    @GwtIncompatible("TODO")
    static class h<V, X extends Exception> extends j<V> implements CheckedFuture<V, X> {
        private final X a;

        h(X x) {
            super();
            this.a = x;
        }

        @Override // com.google.common.util.concurrent.Futures.j, java.util.concurrent.Future
        public V get() throws ExecutionException {
            throw new ExecutionException(this.a);
        }

        /* JADX INFO: Thrown type has an unknown type hierarchy: X extends java.lang.Exception */
        @Override // com.google.common.util.concurrent.CheckedFuture
        public V checkedGet() throws X {
            throw this.a;
        }

        /* JADX INFO: Thrown type has an unknown type hierarchy: X extends java.lang.Exception */
        @Override // com.google.common.util.concurrent.CheckedFuture
        public V checkedGet(long j, TimeUnit timeUnit) throws X {
            Preconditions.checkNotNull(timeUnit);
            throw this.a;
        }
    }

    @CheckReturnValue
    public static <V> ListenableFuture<V> immediateFuture(@Nullable V v) {
        return v == null ? l.a : new l(v);
    }

    @GwtIncompatible("TODO")
    @CheckReturnValue
    public static <V, X extends Exception> CheckedFuture<V, X> immediateCheckedFuture(@Nullable V v) {
        return new k(v);
    }

    @CheckReturnValue
    public static <V> ListenableFuture<V> immediateFailedFuture(Throwable th) {
        Preconditions.checkNotNull(th);
        return new i(th);
    }

    @GwtIncompatible("TODO")
    @CheckReturnValue
    public static <V> ListenableFuture<V> immediateCancelledFuture() {
        return new g();
    }

    @GwtIncompatible("TODO")
    @CheckReturnValue
    public static <V, X extends Exception> CheckedFuture<V, X> immediateFailedCheckedFuture(X x) {
        Preconditions.checkNotNull(x);
        return new h(x);
    }

    @CheckReturnValue
    @Deprecated
    public static <V> ListenableFuture<V> withFallback(ListenableFuture<? extends V> listenableFuture, FutureFallback<? extends V> futureFallback) {
        return withFallback(listenableFuture, futureFallback, MoreExecutors.directExecutor());
    }

    @CheckReturnValue
    @Deprecated
    public static <V> ListenableFuture<V> withFallback(ListenableFuture<? extends V> listenableFuture, FutureFallback<? extends V> futureFallback, Executor executor) {
        return catchingAsync(listenableFuture, Throwable.class, a(futureFallback), executor);
    }

    @GwtIncompatible("AVAILABLE but requires exceptionType to be Throwable.class")
    @CheckReturnValue
    public static <V, X extends Throwable> ListenableFuture<V> catching(ListenableFuture<? extends V> listenableFuture, Class<X> cls, Function<? super X, ? extends V> function) {
        e eVar = new e(listenableFuture, cls, function);
        listenableFuture.addListener(eVar, MoreExecutors.directExecutor());
        return eVar;
    }

    @GwtIncompatible("AVAILABLE but requires exceptionType to be Throwable.class")
    @CheckReturnValue
    public static <V, X extends Throwable> ListenableFuture<V> catching(ListenableFuture<? extends V> listenableFuture, Class<X> cls, Function<? super X, ? extends V> function, Executor executor) {
        e eVar = new e(listenableFuture, cls, function);
        listenableFuture.addListener(eVar, a(executor, eVar));
        return eVar;
    }

    @GwtIncompatible("AVAILABLE but requires exceptionType to be Throwable.class")
    public static <V, X extends Throwable> ListenableFuture<V> catchingAsync(ListenableFuture<? extends V> listenableFuture, Class<X> cls, AsyncFunction<? super X, ? extends V> asyncFunction) {
        c cVar = new c(listenableFuture, cls, asyncFunction);
        listenableFuture.addListener(cVar, MoreExecutors.directExecutor());
        return cVar;
    }

    @GwtIncompatible("AVAILABLE but requires exceptionType to be Throwable.class")
    public static <V, X extends Throwable> ListenableFuture<V> catchingAsync(ListenableFuture<? extends V> listenableFuture, Class<X> cls, AsyncFunction<? super X, ? extends V> asyncFunction, Executor executor) {
        c cVar = new c(listenableFuture, cls, asyncFunction);
        listenableFuture.addListener(cVar, a(executor, cVar));
        return cVar;
    }

    @Deprecated
    static <V> AsyncFunction<Throwable, V> a(final FutureFallback<V> futureFallback) {
        Preconditions.checkNotNull(futureFallback);
        return new AsyncFunction<Throwable, V>() { // from class: com.google.common.util.concurrent.Futures.1
            @Override // com.google.common.util.concurrent.AsyncFunction
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public ListenableFuture<V> apply(Throwable th) {
                return (ListenableFuture) Preconditions.checkNotNull(futureFallback.create(th), "FutureFallback.create returned null instead of a Future. Did you mean to return immediateFuture(null)?");
            }
        };
    }

    static abstract class a<V, X extends Throwable, F> extends AbstractFuture.g<V> implements Runnable {

        @Nullable
        ListenableFuture<? extends V> a;

        @Nullable
        Class<X> b;

        @Nullable
        F c;

        abstract void a(F f, X x);

        a(ListenableFuture<? extends V> listenableFuture, Class<X> cls, F f) {
            this.a = (ListenableFuture) Preconditions.checkNotNull(listenableFuture);
            this.b = (Class) Preconditions.checkNotNull(cls);
            this.c = (F) Preconditions.checkNotNull(f);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:22:0x003a A[Catch: Throwable -> 0x003e, TRY_LEAVE, TryCatch #0 {Throwable -> 0x003e, blocks: (B:20:0x0034, B:22:0x003a, B:26:0x0043), top: B:31:0x0034 }] */
        /* JADX WARN: Removed duplicated region for block: B:26:0x0043 A[Catch: Throwable -> 0x003e, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Throwable -> 0x003e, blocks: (B:20:0x0034, B:22:0x003a, B:26:0x0043), top: B:31:0x0034 }] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x003f -> B:30:0x001a). Please report as a decompilation issue!!! */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void run() {
            /*
                r8 = this;
                r7 = 0
                r0 = 1
                r1 = 0
                com.google.common.util.concurrent.ListenableFuture<? extends V> r4 = r8.a
                java.lang.Class<X extends java.lang.Throwable> r5 = r8.b
                F r6 = r8.c
                if (r4 != 0) goto L1b
                r3 = r0
            Lc:
                if (r5 != 0) goto L1d
                r2 = r0
            Lf:
                r2 = r2 | r3
                if (r6 != 0) goto L1f
            L12:
                r0 = r0 | r2
                boolean r1 = r8.isCancelled()
                r0 = r0 | r1
                if (r0 == 0) goto L21
            L1a:
                return
            L1b:
                r3 = r1
                goto Lc
            L1d:
                r2 = r1
                goto Lf
            L1f:
                r0 = r1
                goto L12
            L21:
                r8.a = r7
                r8.b = r7
                r8.c = r7
                java.lang.Object r0 = com.google.common.util.concurrent.Uninterruptibles.getUninterruptibly(r4)     // Catch: java.util.concurrent.ExecutionException -> L2f java.lang.Throwable -> L47
                r8.set(r0)     // Catch: java.util.concurrent.ExecutionException -> L2f java.lang.Throwable -> L47
                goto L1a
            L2f:
                r0 = move-exception
                java.lang.Throwable r0 = r0.getCause()
            L34:
                boolean r1 = defpackage.lz.a(r0, r5)     // Catch: java.lang.Throwable -> L3e
                if (r1 == 0) goto L43
                r8.a(r6, r0)     // Catch: java.lang.Throwable -> L3e
                goto L1a
            L3e:
                r0 = move-exception
                r8.setException(r0)
                goto L1a
            L43:
                r8.setException(r0)     // Catch: java.lang.Throwable -> L3e
                goto L1a
            L47:
                r0 = move-exception
                goto L34
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.util.concurrent.Futures.a.run():void");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.util.concurrent.AbstractFuture
        public final void a() {
            a((Future<?>) this.a);
            this.a = null;
            this.b = null;
            this.c = null;
        }
    }

    static final class c<V, X extends Throwable> extends a<V, X, AsyncFunction<? super X, ? extends V>> {
        c(ListenableFuture<? extends V> listenableFuture, Class<X> cls, AsyncFunction<? super X, ? extends V> asyncFunction) {
            super(listenableFuture, cls, asyncFunction);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.util.concurrent.Futures.a
        public void a(AsyncFunction<? super X, ? extends V> asyncFunction, X x) {
            ListenableFuture<? extends V> listenableFutureApply = asyncFunction.apply(x);
            Preconditions.checkNotNull(listenableFutureApply, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)?");
            setFuture(listenableFutureApply);
        }
    }

    static final class e<V, X extends Throwable> extends a<V, X, Function<? super X, ? extends V>> {
        e(ListenableFuture<? extends V> listenableFuture, Class<X> cls, Function<? super X, ? extends V> function) {
            super(listenableFuture, cls, function);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.util.concurrent.Futures.a
        public void a(Function<? super X, ? extends V> function, X x) {
            set(function.apply(x));
        }
    }

    @GwtIncompatible("java.util.concurrent.ScheduledExecutorService")
    @CheckReturnValue
    public static <V> ListenableFuture<V> withTimeout(ListenableFuture<V> listenableFuture, long j2, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        p pVar = new p(listenableFuture);
        p.a aVar = new p.a(pVar);
        pVar.b = scheduledExecutorService.schedule(aVar, j2, timeUnit);
        listenableFuture.addListener(aVar, MoreExecutors.directExecutor());
        return pVar;
    }

    static final class p<V> extends AbstractFuture.g<V> {

        @Nullable
        ListenableFuture<V> a;

        @Nullable
        Future<?> b;

        p(ListenableFuture<V> listenableFuture) {
            this.a = (ListenableFuture) Preconditions.checkNotNull(listenableFuture);
        }

        static final class a<V> implements Runnable {

            @Nullable
            p<V> a;

            a(p<V> pVar) {
                this.a = pVar;
            }

            /* JADX WARN: Type inference incomplete: some casts might be missing */
            @Override // java.lang.Runnable
            public void run() {
                ListenableFuture<V> listenableFuture;
                p<V> pVar = this.a;
                if (pVar != null && (listenableFuture = pVar.a) != null) {
                    this.a = null;
                    if (listenableFuture.isDone()) {
                        pVar.setFuture((ListenableFuture<? extends V>) listenableFuture);
                        return;
                    }
                    try {
                        String strValueOf = String.valueOf(listenableFuture);
                        pVar.setException(new TimeoutException(new StringBuilder(String.valueOf(strValueOf).length() + 18).append("Future timed out: ").append(strValueOf).toString()));
                    } finally {
                        listenableFuture.cancel(true);
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.util.concurrent.AbstractFuture
        public void a() {
            a((Future<?>) this.a);
            Future<?> future = this.b;
            if (future != null) {
                future.cancel(false);
            }
            this.a = null;
            this.b = null;
        }
    }

    @Deprecated
    public static <I, O> ListenableFuture<O> transform(ListenableFuture<I> listenableFuture, AsyncFunction<? super I, ? extends O> asyncFunction) {
        return transformAsync(listenableFuture, asyncFunction);
    }

    @Deprecated
    public static <I, O> ListenableFuture<O> transform(ListenableFuture<I> listenableFuture, AsyncFunction<? super I, ? extends O> asyncFunction, Executor executor) {
        return transformAsync(listenableFuture, asyncFunction, executor);
    }

    public static <I, O> ListenableFuture<O> transformAsync(ListenableFuture<I> listenableFuture, AsyncFunction<? super I, ? extends O> asyncFunction) {
        d dVar = new d(listenableFuture, asyncFunction);
        listenableFuture.addListener(dVar, MoreExecutors.directExecutor());
        return dVar;
    }

    public static <I, O> ListenableFuture<O> transformAsync(ListenableFuture<I> listenableFuture, AsyncFunction<? super I, ? extends O> asyncFunction, Executor executor) {
        Preconditions.checkNotNull(executor);
        d dVar = new d(listenableFuture, asyncFunction);
        listenableFuture.addListener(dVar, a(executor, dVar));
        return dVar;
    }

    private static Executor a(Executor executor, AbstractFuture<?> abstractFuture) {
        Preconditions.checkNotNull(executor);
        return executor == MoreExecutors.directExecutor() ? executor : new AnonymousClass2(executor, abstractFuture);
    }

    /* JADX INFO: renamed from: com.google.common.util.concurrent.Futures$2, reason: invalid class name */
    static class AnonymousClass2 implements Executor {
        volatile boolean a = true;
        final /* synthetic */ Executor b;
        final /* synthetic */ AbstractFuture c;

        AnonymousClass2(Executor executor, AbstractFuture abstractFuture) {
            this.b = executor;
            this.c = abstractFuture;
        }

        @Override // java.util.concurrent.Executor
        public void execute(final Runnable runnable) {
            try {
                this.b.execute(new Runnable() { // from class: com.google.common.util.concurrent.Futures.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AnonymousClass2.this.a = false;
                        runnable.run();
                    }
                });
            } catch (RejectedExecutionException e) {
                if (this.a) {
                    this.c.setException(e);
                }
            }
        }
    }

    public static <I, O> ListenableFuture<O> transform(ListenableFuture<I> listenableFuture, Function<? super I, ? extends O> function) {
        Preconditions.checkNotNull(function);
        f fVar = new f(listenableFuture, function);
        listenableFuture.addListener(fVar, MoreExecutors.directExecutor());
        return fVar;
    }

    public static <I, O> ListenableFuture<O> transform(ListenableFuture<I> listenableFuture, Function<? super I, ? extends O> function, Executor executor) {
        Preconditions.checkNotNull(function);
        f fVar = new f(listenableFuture, function);
        listenableFuture.addListener(fVar, a(executor, fVar));
        return fVar;
    }

    @GwtIncompatible("TODO")
    @CheckReturnValue
    public static <I, O> Future<O> lazyTransform(final Future<I> future, final Function<? super I, ? extends O> function) {
        Preconditions.checkNotNull(future);
        Preconditions.checkNotNull(function);
        return new Future<O>() { // from class: com.google.common.util.concurrent.Futures.3
            @Override // java.util.concurrent.Future
            public boolean cancel(boolean z) {
                return future.cancel(z);
            }

            @Override // java.util.concurrent.Future
            public boolean isCancelled() {
                return future.isCancelled();
            }

            @Override // java.util.concurrent.Future
            public boolean isDone() {
                return future.isDone();
            }

            @Override // java.util.concurrent.Future
            public O get() {
                return a(future.get());
            }

            @Override // java.util.concurrent.Future
            public O get(long j2, TimeUnit timeUnit) {
                return a(future.get(j2, timeUnit));
            }

            private O a(I i2) throws ExecutionException {
                try {
                    return (O) function.apply(i2);
                } catch (Throwable th) {
                    throw new ExecutionException(th);
                }
            }
        };
    }

    static abstract class b<I, O, F> extends AbstractFuture.g<O> implements Runnable {

        @Nullable
        ListenableFuture<? extends I> a;

        @Nullable
        F b;

        abstract void a(F f, I i);

        b(ListenableFuture<? extends I> listenableFuture, F f) {
            this.a = (ListenableFuture) Preconditions.checkNotNull(listenableFuture);
            this.b = (F) Preconditions.checkNotNull(f);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public final void run() {
            try {
                ListenableFuture<? extends I> listenableFuture = this.a;
                F f = this.b;
                if (!((f == null) | (listenableFuture == null) | isCancelled())) {
                    this.a = null;
                    this.b = null;
                    try {
                        a(f, Uninterruptibles.getUninterruptibly(listenableFuture));
                    } catch (CancellationException e) {
                        cancel(false);
                    } catch (ExecutionException e2) {
                        setException(e2.getCause());
                    }
                }
            } catch (UndeclaredThrowableException e3) {
                setException(e3.getCause());
            } catch (Throwable th) {
                setException(th);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.util.concurrent.AbstractFuture
        public final void a() {
            a((Future<?>) this.a);
            this.a = null;
            this.b = null;
        }
    }

    static final class d<I, O> extends b<I, O, AsyncFunction<? super I, ? extends O>> {
        d(ListenableFuture<? extends I> listenableFuture, AsyncFunction<? super I, ? extends O> asyncFunction) {
            super(listenableFuture, asyncFunction);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.util.concurrent.Futures.b
        public void a(AsyncFunction<? super I, ? extends O> asyncFunction, I i) {
            ListenableFuture<? extends O> listenableFutureApply = asyncFunction.apply(i);
            Preconditions.checkNotNull(listenableFutureApply, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)?");
            setFuture(listenableFutureApply);
        }
    }

    static final class f<I, O> extends b<I, O, Function<? super I, ? extends O>> {
        f(ListenableFuture<? extends I> listenableFuture, Function<? super I, ? extends O> function) {
            super(listenableFuture, function);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.util.concurrent.Futures.b
        public void a(Function<? super I, ? extends O> function, I i) {
            set(function.apply(i));
        }
    }

    @CheckReturnValue
    public static <V> ListenableFuture<V> dereference(ListenableFuture<? extends ListenableFuture<? extends V>> listenableFuture) {
        return transformAsync(listenableFuture, a);
    }

    @SafeVarargs
    @Beta
    @CheckReturnValue
    public static <V> ListenableFuture<List<V>> allAsList(ListenableFuture<? extends V>... listenableFutureArr) {
        return new m(ImmutableList.copyOf(listenableFutureArr), true);
    }

    @Beta
    @CheckReturnValue
    public static <V> ListenableFuture<List<V>> allAsList(Iterable<? extends ListenableFuture<? extends V>> iterable) {
        return new m(ImmutableList.copyOf(iterable), true);
    }

    @GwtIncompatible("TODO")
    @CheckReturnValue
    public static <V> ListenableFuture<V> nonCancellationPropagating(ListenableFuture<V> listenableFuture) {
        return new o(listenableFuture);
    }

    @GwtIncompatible("TODO")
    static final class o<V> extends AbstractFuture.g<V> {
        o(final ListenableFuture<V> listenableFuture) {
            listenableFuture.addListener(new Runnable() { // from class: com.google.common.util.concurrent.Futures.o.1
                @Override // java.lang.Runnable
                public void run() {
                    o.this.setFuture(listenableFuture);
                }
            }, MoreExecutors.directExecutor());
        }
    }

    @SafeVarargs
    @Beta
    @CheckReturnValue
    public static <V> ListenableFuture<List<V>> successfulAsList(ListenableFuture<? extends V>... listenableFutureArr) {
        return new m(ImmutableList.copyOf(listenableFutureArr), false);
    }

    @Beta
    @CheckReturnValue
    public static <V> ListenableFuture<List<V>> successfulAsList(Iterable<? extends ListenableFuture<? extends V>> iterable) {
        return new m(ImmutableList.copyOf(iterable), false);
    }

    @Beta
    @GwtIncompatible("TODO")
    @CheckReturnValue
    public static <T> ImmutableList<ListenableFuture<T>> inCompletionOrder(Iterable<? extends ListenableFuture<? extends T>> iterable) {
        final ConcurrentLinkedQueue concurrentLinkedQueueNewConcurrentLinkedQueue = Queues.newConcurrentLinkedQueue();
        ImmutableList.Builder builder = ImmutableList.builder();
        ma maVar = new ma(MoreExecutors.directExecutor());
        for (final ListenableFuture<? extends T> listenableFuture : iterable) {
            SettableFuture settableFutureCreate = SettableFuture.create();
            concurrentLinkedQueueNewConcurrentLinkedQueue.add(settableFutureCreate);
            listenableFuture.addListener(new Runnable() { // from class: com.google.common.util.concurrent.Futures.5
                @Override // java.lang.Runnable
                public void run() {
                    ((SettableFuture) concurrentLinkedQueueNewConcurrentLinkedQueue.remove()).setFuture(listenableFuture);
                }
            }, maVar);
            builder.add(settableFutureCreate);
        }
        return builder.build();
    }

    public static <V> void addCallback(ListenableFuture<V> listenableFuture, FutureCallback<? super V> futureCallback) {
        addCallback(listenableFuture, futureCallback, MoreExecutors.directExecutor());
    }

    public static <V> void addCallback(final ListenableFuture<V> listenableFuture, final FutureCallback<? super V> futureCallback, Executor executor) {
        Preconditions.checkNotNull(futureCallback);
        listenableFuture.addListener(new Runnable() { // from class: com.google.common.util.concurrent.Futures.6
            @Override // java.lang.Runnable
            public void run() {
                try {
                    futureCallback.onSuccess(Uninterruptibles.getUninterruptibly(listenableFuture));
                } catch (Error e2) {
                    futureCallback.onFailure(e2);
                } catch (RuntimeException e3) {
                    futureCallback.onFailure(e3);
                } catch (ExecutionException e4) {
                    futureCallback.onFailure(e4.getCause());
                }
            }
        }, executor);
    }

    @GwtIncompatible("reflection")
    @Deprecated
    public static <V, X extends Exception> V get(Future<V> future, Class<X> cls) {
        return (V) getChecked(future, cls);
    }

    @GwtIncompatible("reflection")
    @Deprecated
    public static <V, X extends Exception> V get(Future<V> future, long j2, TimeUnit timeUnit, Class<X> cls) {
        return (V) getChecked(future, cls, j2, timeUnit);
    }

    @GwtIncompatible("reflection")
    public static <V, X extends Exception> V getChecked(Future<V> future, Class<X> cls) {
        return (V) lv.a(future, cls);
    }

    @GwtIncompatible("reflection")
    public static <V, X extends Exception> V getChecked(Future<V> future, Class<X> cls, long j2, TimeUnit timeUnit) {
        return (V) lv.a(future, cls, j2, timeUnit);
    }

    @GwtIncompatible("TODO")
    public static <V> V getUnchecked(Future<V> future) {
        Preconditions.checkNotNull(future);
        try {
            return (V) Uninterruptibles.getUninterruptibly(future);
        } catch (ExecutionException e2) {
            a(e2.getCause());
            throw new AssertionError();
        }
    }

    @GwtIncompatible("TODO")
    private static void a(Throwable th) {
        if (th instanceof Error) {
            throw new ExecutionError((Error) th);
        }
        throw new UncheckedExecutionException(th);
    }

    static final class m<V> extends lu<V, List<V>> {
        m(ImmutableCollection<? extends ListenableFuture<? extends V>> immutableCollection, boolean z) {
            a((ls.a) new a(immutableCollection, z));
        }

        final class a extends lu<V, List<V>>.a {
            a(ImmutableCollection<? extends ListenableFuture<? extends V>> immutableCollection, boolean z) {
                super(immutableCollection, z);
            }

            @Override // lu.a
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public List<V> a(List<Optional<V>> list) {
                ArrayList arrayListNewArrayList = Lists.newArrayList();
                Iterator<Optional<V>> it = list.iterator();
                while (it.hasNext()) {
                    Optional<V> next = it.next();
                    arrayListNewArrayList.add(next != null ? next.orNull() : null);
                }
                return Collections.unmodifiableList(arrayListNewArrayList);
            }
        }
    }

    @GwtIncompatible("TODO")
    static class n<V, X extends Exception> extends AbstractCheckedFuture<V, X> {
        final Function<? super Exception, X> a;

        n(ListenableFuture<V> listenableFuture, Function<? super Exception, X> function) {
            super(listenableFuture);
            this.a = (Function) Preconditions.checkNotNull(function);
        }

        @Override // com.google.common.util.concurrent.AbstractCheckedFuture
        protected X mapException(Exception exc) {
            return this.a.apply(exc);
        }
    }
}
