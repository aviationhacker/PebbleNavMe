package defpackage;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableCollection;
import com.google.common.collect.UnmodifiableIterator;
import com.google.common.util.concurrent.AbstractFuture;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.MoreExecutors;
import com.google.common.util.concurrent.Uninterruptibles;
import java.util.Set;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible
public abstract class ls<InputT, OutputT> extends AbstractFuture.g<OutputT> {
    private static final Logger a = Logger.getLogger(ls.class.getName());
    private ls<InputT, OutputT>.a b;

    ls() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.util.concurrent.AbstractFuture
    public final void a() {
        super.a();
        this.b = null;
    }

    @Override // com.google.common.util.concurrent.AbstractFuture, java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        ImmutableCollection immutableCollection;
        ls<InputT, OutputT>.a aVar = this.b;
        if (aVar == null) {
            immutableCollection = null;
        } else {
            immutableCollection = ((a) aVar).b;
        }
        boolean zCancel = super.cancel(z);
        if ((immutableCollection != null) & zCancel) {
            UnmodifiableIterator it = immutableCollection.iterator();
            while (it.hasNext()) {
                ((ListenableFuture) it.next()).cancel(z);
            }
        }
        return zCancel;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.util.concurrent.AbstractFuture
    @GwtIncompatible("Interruption not supported")
    public final void interruptTask() {
        ls<InputT, OutputT>.a aVar = this.b;
        if (aVar != null) {
            aVar.c();
        }
    }

    protected final void a(ls<InputT, OutputT>.a aVar) {
        this.b = aVar;
        aVar.f();
    }

    public abstract class a extends lt implements Runnable {
        private ImmutableCollection<? extends ListenableFuture<? extends InputT>> b;
        private final boolean c;
        private final boolean d;

        abstract void a(boolean z, int i, @Nullable InputT inputt);

        abstract void b();

        a(ImmutableCollection<? extends ListenableFuture<? extends InputT>> immutableCollection, boolean z, boolean z2) {
            super(immutableCollection.size());
            this.b = (ImmutableCollection) Preconditions.checkNotNull(immutableCollection);
            this.c = z;
            this.d = z2;
        }

        @Override // java.lang.Runnable
        public final void run() {
            g();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void f() {
            if (this.b.isEmpty()) {
                b();
                return;
            }
            if (this.c) {
                UnmodifiableIterator<? extends ListenableFuture<? extends InputT>> it = this.b.iterator();
                final int i = 0;
                while (it.hasNext()) {
                    final ListenableFuture<? extends InputT> next = it.next();
                    next.addListener(new Runnable() { // from class: ls.a.1
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                a.this.a(i, next);
                            } finally {
                                a.this.g();
                            }
                        }
                    }, MoreExecutors.directExecutor());
                    i++;
                }
                return;
            }
            UnmodifiableIterator<? extends ListenableFuture<? extends InputT>> it2 = this.b.iterator();
            while (it2.hasNext()) {
                it2.next().addListener(this, MoreExecutors.directExecutor());
            }
        }

        private void a(Throwable th) {
            boolean zB;
            boolean exception;
            Preconditions.checkNotNull(th);
            if (this.c) {
                exception = ls.this.setException(th);
                if (!exception) {
                    zB = ls.b(d(), th);
                } else {
                    a();
                    zB = true;
                }
            } else {
                zB = true;
                exception = false;
            }
            if ((zB & (exception ? false : true) & this.c) | (th instanceof Error)) {
                ls.a.log(Level.SEVERE, th instanceof Error ? "Input Future failed with Error" : "Got more than one input Future failure. Logging failures after the first", th);
            }
        }

        @Override // defpackage.lt
        final void a(Set<Throwable> set) {
            if (!ls.this.isCancelled()) {
                ls.b(set, ls.this.b());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        public void a(int i, Future<? extends InputT> future) {
            Preconditions.checkState(this.c || !ls.this.isDone() || ls.this.isCancelled(), "Future was done before all dependencies completed");
            try {
                Preconditions.checkState(future.isDone(), "Tried to set value from future which is not done");
                if (this.c) {
                    if (future.isCancelled()) {
                        ls.super.cancel(false);
                    } else {
                        Object uninterruptibly = Uninterruptibles.getUninterruptibly(future);
                        if (this.d) {
                            a(this.c, i, uninterruptibly);
                        }
                    }
                } else if (this.d && !future.isCancelled()) {
                    a(this.c, i, Uninterruptibles.getUninterruptibly(future));
                }
            } catch (ExecutionException e) {
                a(e.getCause());
            } catch (Throwable th) {
                a(th);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void g() {
            int iE = e();
            Preconditions.checkState(iE >= 0, "Less than 0 remaining futures");
            if (iE == 0) {
                h();
            }
        }

        private void h() {
            if ((!this.c) & this.d) {
                UnmodifiableIterator<? extends ListenableFuture<? extends InputT>> it = this.b.iterator();
                int i = 0;
                while (it.hasNext()) {
                    a(i, it.next());
                    i++;
                }
            }
            b();
        }

        void a() {
            this.b = null;
        }

        void c() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(Set<Throwable> set, Throwable th) {
        while (th != null) {
            if (set.add(th)) {
                th = th.getCause();
            } else {
                return false;
            }
        }
        return true;
    }
}
