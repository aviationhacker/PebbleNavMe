package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.base.Throwables;
import java.lang.reflect.Field;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Nullable;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(emulated = true)
public abstract class AbstractFuture<V> implements ListenableFuture<V> {
    private static final Logger a = Logger.getLogger(AbstractFuture.class.getName());
    private static final a b;
    private static final AtomicReferenceFieldUpdater<j, Thread> c;
    private static final AtomicReferenceFieldUpdater<j, j> d;
    private static final AtomicReferenceFieldUpdater<AbstractFuture, j> e;
    private static final AtomicReferenceFieldUpdater<AbstractFuture, d> f;
    private static final AtomicReferenceFieldUpdater<AbstractFuture, Object> g;
    private static final Object h;
    private volatile Object i;
    private volatile d j;
    private volatile j k;

    enum i {
        REALLY_TRY_TO_CREATE { // from class: com.google.common.util.concurrent.AbstractFuture.i.1
            @Override // com.google.common.util.concurrent.AbstractFuture.i
            a a() {
                return new h();
            }
        },
        DONT_EVEN_TRY_TO_CREATE { // from class: com.google.common.util.concurrent.AbstractFuture.i.2
            @Override // com.google.common.util.concurrent.AbstractFuture.i
            a a() {
                return null;
            }
        };

        abstract a a();
    }

    public static abstract class g<V> extends AbstractFuture<V> {
        protected g() {
        }

        @Override // com.google.common.util.concurrent.AbstractFuture, java.util.concurrent.Future
        public final V get() {
            return (V) super.get();
        }

        @Override // com.google.common.util.concurrent.AbstractFuture, java.util.concurrent.Future
        public final V get(long j, TimeUnit timeUnit) {
            return (V) super.get(j, timeUnit);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture, java.util.concurrent.Future
        public final boolean isDone() {
            return super.isDone();
        }

        @Override // com.google.common.util.concurrent.AbstractFuture, java.util.concurrent.Future
        public final boolean isCancelled() {
            return super.isCancelled();
        }

        @Override // com.google.common.util.concurrent.AbstractFuture, com.google.common.util.concurrent.ListenableFuture
        public final void addListener(Runnable runnable, Executor executor) {
            super.addListener(runnable, executor);
        }
    }

    static {
        a eVar;
        try {
            eVar = i.values()[0].a();
        } catch (Throwable th) {
            eVar = null;
        }
        if (eVar == null) {
            c = AtomicReferenceFieldUpdater.newUpdater(j.class, Thread.class, "b");
            d = AtomicReferenceFieldUpdater.newUpdater(j.class, j.class, "c");
            e = AtomicReferenceFieldUpdater.newUpdater(AbstractFuture.class, j.class, "k");
            f = AtomicReferenceFieldUpdater.newUpdater(AbstractFuture.class, d.class, "j");
            g = AtomicReferenceFieldUpdater.newUpdater(AbstractFuture.class, Object.class, "i");
            eVar = new e();
        } else {
            c = null;
            d = null;
            e = null;
            f = null;
            g = null;
        }
        b = eVar;
        h = new Object();
    }

    static final class j {
        static final j a = new j(false);

        @Nullable
        volatile Thread b;

        @Nullable
        volatile j c;

        j(boolean z) {
        }

        j() {
            AbstractFuture.b.a(this, Thread.currentThread());
        }

        void a(j jVar) {
            AbstractFuture.b.a(this, jVar);
        }

        void a() {
            Thread thread = this.b;
            if (thread != null) {
                this.b = null;
                LockSupport.unpark(thread);
            }
        }
    }

    private void a(j jVar) {
        jVar.b = null;
        while (true) {
            j jVar2 = this.k;
            if (jVar2 != j.a) {
                j jVar3 = null;
                while (jVar2 != null) {
                    j jVar4 = jVar2.c;
                    if (jVar2.b == null) {
                        if (jVar3 != null) {
                            jVar3.c = jVar4;
                            if (jVar3.b == null) {
                                break;
                            }
                            jVar2 = jVar3;
                        } else {
                            if (!b.a((AbstractFuture) this, jVar2, jVar4)) {
                                break;
                            }
                            jVar2 = jVar3;
                        }
                    }
                    jVar3 = jVar2;
                    jVar2 = jVar4;
                }
                return;
            }
            return;
        }
    }

    static final class d {
        static final d a = new d(null, null);
        final Runnable b;
        final Executor c;

        @Nullable
        d d;

        d(Runnable runnable, Executor executor) {
            this.b = runnable;
            this.c = executor;
        }
    }

    static final class c {
        static final c a = new c(new Throwable("Failure occurred while trying to finish a future.") { // from class: com.google.common.util.concurrent.AbstractFuture.c.1
            @Override // java.lang.Throwable
            public synchronized Throwable fillInStackTrace() {
                return this;
            }
        });
        final Throwable b;

        c(Throwable th) {
            this.b = (Throwable) Preconditions.checkNotNull(th);
        }
    }

    static final class b {
        final boolean a;
        final Throwable b;

        b(boolean z, Throwable th) {
            this.a = z;
            this.b = (Throwable) Preconditions.checkNotNull(th);
        }
    }

    final class f implements Runnable {
        final ListenableFuture<? extends V> a;

        f(ListenableFuture<? extends V> listenableFuture) {
            this.a = listenableFuture;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (AbstractFuture.this.i == this) {
                AbstractFuture.this.a(this.a, this);
            }
        }
    }

    protected AbstractFuture() {
    }

    @Override // java.util.concurrent.Future
    public V get(long j2, TimeUnit timeUnit) throws InterruptedException, TimeoutException {
        long jNanoTime;
        long nanos = timeUnit.toNanos(j2);
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj = this.i;
        if ((obj != null) & (!(obj instanceof f))) {
            return a(obj);
        }
        long jNanoTime2 = nanos > 0 ? System.nanoTime() + nanos : 0L;
        if (nanos >= 1000) {
            j jVar = this.k;
            if (jVar != j.a) {
                j jVar2 = new j();
                do {
                    jVar2.a(jVar);
                    if (b.a((AbstractFuture) this, jVar, jVar2)) {
                        jNanoTime = nanos;
                        do {
                            LockSupport.parkNanos(this, jNanoTime);
                            if (Thread.interrupted()) {
                                a(jVar2);
                                throw new InterruptedException();
                            }
                            Object obj2 = this.i;
                            if ((obj2 != null) & (!(obj2 instanceof f))) {
                                return a(obj2);
                            }
                            jNanoTime = jNanoTime2 - System.nanoTime();
                        } while (jNanoTime >= 1000);
                        a(jVar2);
                    } else {
                        jVar = this.k;
                    }
                } while (jVar != j.a);
            }
            return a(this.i);
        }
        jNanoTime = nanos;
        while (jNanoTime > 0) {
            Object obj3 = this.i;
            if ((obj3 != null) & (!(obj3 instanceof f))) {
                return a(obj3);
            }
            if (Thread.interrupted()) {
                throw new InterruptedException();
            }
            jNanoTime = jNanoTime2 - System.nanoTime();
        }
        throw new TimeoutException();
    }

    @Override // java.util.concurrent.Future
    public V get() throws InterruptedException {
        Object obj;
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj2 = this.i;
        if ((obj2 != null) & (!(obj2 instanceof f))) {
            return a(obj2);
        }
        j jVar = this.k;
        if (jVar != j.a) {
            j jVar2 = new j();
            do {
                jVar2.a(jVar);
                if (b.a((AbstractFuture) this, jVar, jVar2)) {
                    do {
                        LockSupport.park(this);
                        if (Thread.interrupted()) {
                            a(jVar2);
                            throw new InterruptedException();
                        }
                        obj = this.i;
                    } while (!((obj != null) & (!(obj instanceof f))));
                    return a(obj);
                }
                jVar = this.k;
            } while (jVar != j.a);
        }
        return a(this.i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private V a(Object obj) throws ExecutionException {
        if (obj instanceof b) {
            throw a("Task was cancelled.", ((b) obj).b);
        }
        if (obj instanceof c) {
            throw new ExecutionException(((c) obj).b);
        }
        if (obj == h) {
            return null;
        }
        return obj;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        Object obj = this.i;
        return (obj != null) & (obj instanceof f ? false : true);
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.i instanceof b;
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        Object obj = this.i;
        if ((obj == null) | (obj instanceof f)) {
            b bVar = new b(z, newCancellationCause());
            Object obj2 = obj;
            while (!b.a(this, obj2, bVar)) {
                obj2 = this.i;
                if (!(obj2 instanceof f)) {
                }
            }
            if (z) {
                interruptTask();
            }
            i();
            if (!(obj2 instanceof f)) {
                return true;
            }
            ((f) obj2).a.cancel(z);
            return true;
        }
        return false;
    }

    @Beta
    protected Throwable newCancellationCause() {
        return new CancellationException("Future.cancel() was called.");
    }

    public void interruptTask() {
    }

    public final boolean wasInterrupted() {
        Object obj = this.i;
        return (obj instanceof b) && ((b) obj).a;
    }

    @Override // com.google.common.util.concurrent.ListenableFuture
    public void addListener(Runnable runnable, Executor executor) {
        Preconditions.checkNotNull(runnable, "Runnable was null.");
        Preconditions.checkNotNull(executor, "Executor was null.");
        d dVar = this.j;
        if (dVar != d.a) {
            d dVar2 = new d(runnable, executor);
            do {
                dVar2.d = dVar;
                if (!b.a((AbstractFuture) this, dVar, dVar2)) {
                    dVar = this.j;
                } else {
                    return;
                }
            } while (dVar != d.a);
        }
        a(runnable, executor);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public boolean set(@Nullable V v) {
        if (v == null) {
            v = (V) h;
        }
        if (!b.a(this, (Object) null, v)) {
            return false;
        }
        i();
        return true;
    }

    public boolean setException(Throwable th) {
        if (!b.a(this, (Object) null, new c((Throwable) Preconditions.checkNotNull(th)))) {
            return false;
        }
        i();
        return true;
    }

    @Beta
    protected boolean setFuture(ListenableFuture<? extends V> listenableFuture) {
        c cVar;
        Preconditions.checkNotNull(listenableFuture);
        Object obj = this.i;
        if (obj == null) {
            if (listenableFuture.isDone()) {
                return a(listenableFuture, (Object) null);
            }
            f fVar = new f(listenableFuture);
            if (b.a(this, (Object) null, fVar)) {
                try {
                    listenableFuture.addListener(fVar, MoreExecutors.directExecutor());
                } catch (Throwable th) {
                    try {
                        cVar = new c(th);
                    } catch (Throwable th2) {
                        cVar = c.a;
                    }
                    b.a(this, fVar, cVar);
                }
                return true;
            }
            obj = this.i;
        }
        if (obj instanceof b) {
            listenableFuture.cancel(((b) obj).a);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(ListenableFuture<? extends V> listenableFuture, Object obj) {
        Object cVar;
        if (listenableFuture instanceof g) {
            cVar = ((AbstractFuture) listenableFuture).i;
        } else {
            try {
                cVar = Uninterruptibles.getUninterruptibly(listenableFuture);
                if (cVar == null) {
                    cVar = h;
                }
            } catch (CancellationException e2) {
                cVar = new b(false, e2);
            } catch (ExecutionException e3) {
                cVar = new c(e3.getCause());
            } catch (Throwable th) {
                cVar = new c(th);
            }
        }
        if (!b.a(this, obj, cVar)) {
            return false;
        }
        i();
        return true;
    }

    private void i() {
        for (j jVarJ = j(); jVarJ != null; jVarJ = jVarJ.c) {
            jVarJ.a();
        }
        d dVarK = k();
        d dVar = null;
        while (dVarK != null) {
            d dVar2 = dVarK.d;
            dVarK.d = dVar;
            dVar = dVarK;
            dVarK = dVar2;
        }
        while (dVar != null) {
            a(dVar.b, dVar.c);
            dVar = dVar.d;
        }
        a();
    }

    public void a() {
    }

    public final Throwable b() {
        return ((c) this.i).b;
    }

    final void a(@Nullable Future<?> future) {
        if ((future != null) & isCancelled()) {
            future.cancel(wasInterrupted());
        }
    }

    private j j() {
        j jVar;
        do {
            jVar = this.k;
        } while (!b.a((AbstractFuture) this, jVar, j.a));
        return jVar;
    }

    private d k() {
        d dVar;
        do {
            dVar = this.j;
        } while (!b.a((AbstractFuture) this, dVar, d.a));
        return dVar;
    }

    private static void a(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e2) {
            Logger logger = a;
            Level level = Level.SEVERE;
            String strValueOf = String.valueOf(runnable);
            String strValueOf2 = String.valueOf(executor);
            logger.log(level, new StringBuilder(String.valueOf(strValueOf).length() + 57 + String.valueOf(strValueOf2).length()).append("RuntimeException while executing runnable ").append(strValueOf).append(" with executor ").append(strValueOf2).toString(), (Throwable) e2);
        }
    }

    static final CancellationException a(@Nullable String str, @Nullable Throwable th) {
        CancellationException cancellationException = new CancellationException(str);
        cancellationException.initCause(th);
        return cancellationException;
    }

    static abstract class a {
        abstract void a(j jVar, j jVar2);

        abstract void a(j jVar, Thread thread);

        abstract boolean a(AbstractFuture abstractFuture, d dVar, d dVar2);

        abstract boolean a(AbstractFuture abstractFuture, j jVar, j jVar2);

        abstract boolean a(AbstractFuture abstractFuture, Object obj, Object obj2);

        private a() {
        }
    }

    static final class h extends a {
        static final Unsafe a;
        static final long b;
        static final long c;
        static final long d;
        static final long e;
        static final long f;

        private h() {
            super();
        }

        static {
            Unsafe unsafe;
            try {
                unsafe = Unsafe.getUnsafe();
            } catch (SecurityException e2) {
                try {
                    unsafe = (Unsafe) AccessController.doPrivileged(new PrivilegedExceptionAction<Unsafe>() { // from class: com.google.common.util.concurrent.AbstractFuture.h.1
                        @Override // java.security.PrivilegedExceptionAction
                        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                        public Unsafe run() throws IllegalAccessException {
                            for (Field field : Unsafe.class.getDeclaredFields()) {
                                field.setAccessible(true);
                                Object obj = field.get(null);
                                if (Unsafe.class.isInstance(obj)) {
                                    return (Unsafe) Unsafe.class.cast(obj);
                                }
                            }
                            throw new NoSuchFieldError("the Unsafe");
                        }
                    });
                } catch (PrivilegedActionException e3) {
                    throw new RuntimeException("Could not initialize intrinsics", e3.getCause());
                }
            }
            try {
                c = unsafe.objectFieldOffset(AbstractFuture.class.getDeclaredField("waiters"));
                b = unsafe.objectFieldOffset(AbstractFuture.class.getDeclaredField("listeners"));
                d = unsafe.objectFieldOffset(AbstractFuture.class.getDeclaredField("value"));
                e = unsafe.objectFieldOffset(j.class.getDeclaredField("b"));
                f = unsafe.objectFieldOffset(j.class.getDeclaredField("c"));
                a = unsafe;
            } catch (Exception e4) {
                throw Throwables.propagate(e4);
            }
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.a
        void a(j jVar, Thread thread) {
            a.putObject(jVar, e, thread);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.a
        void a(j jVar, j jVar2) {
            a.putObject(jVar, f, jVar2);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.a
        boolean a(AbstractFuture abstractFuture, j jVar, j jVar2) {
            return a.compareAndSwapObject(abstractFuture, c, jVar, jVar2);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.a
        boolean a(AbstractFuture abstractFuture, d dVar, d dVar2) {
            return a.compareAndSwapObject(abstractFuture, b, dVar, dVar2);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.a
        boolean a(AbstractFuture abstractFuture, Object obj, Object obj2) {
            return a.compareAndSwapObject(abstractFuture, d, obj, obj2);
        }
    }

    static final class e extends a {
        private e() {
            super();
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.a
        void a(j jVar, Thread thread) {
            AbstractFuture.c.lazySet(jVar, thread);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.a
        void a(j jVar, j jVar2) {
            AbstractFuture.d.lazySet(jVar, jVar2);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.a
        boolean a(AbstractFuture abstractFuture, j jVar, j jVar2) {
            return AbstractFuture.e.compareAndSet(abstractFuture, jVar, jVar2);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.a
        boolean a(AbstractFuture abstractFuture, d dVar, d dVar2) {
            return AbstractFuture.f.compareAndSet(abstractFuture, dVar, dVar2);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.a
        boolean a(AbstractFuture abstractFuture, Object obj, Object obj2) {
            return AbstractFuture.g.compareAndSet(abstractFuture, obj, obj2);
        }
    }
}
