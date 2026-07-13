package defpackage;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.util.concurrent.AbstractFuture;
import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.RunnableFuture;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible
public class mc<V> extends AbstractFuture.g<V> implements RunnableFuture<V> {
    private mc<V>.a a;

    public static <V> mc<V> a(Callable<V> callable) {
        return new mc<>(callable);
    }

    public static <V> mc<V> a(Runnable runnable, @Nullable V v) {
        return new mc<>(Executors.callable(runnable, v));
    }

    mc(Callable<V> callable) {
        this.a = new a(callable);
    }

    @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
    public void run() {
        mc<V>.a aVar = this.a;
        if (aVar != null) {
            aVar.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.util.concurrent.AbstractFuture
    public final void a() {
        super.a();
        this.a = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.util.concurrent.AbstractFuture
    @GwtIncompatible("Interruption not supported")
    public final void interruptTask() {
        mc<V>.a aVar = this.a;
        if (aVar != null) {
            aVar.c();
        }
    }

    final class a extends lx {
        private final Callable<V> b;

        a(Callable<V> callable) {
            this.b = (Callable) Preconditions.checkNotNull(callable);
        }

        @Override // defpackage.lx
        void a() {
            if (!mc.this.isDone()) {
                try {
                    mc.this.set(this.b.call());
                } catch (Throwable th) {
                    mc.this.setException(th);
                }
            }
        }

        @Override // defpackage.lx
        boolean b() {
            return mc.this.wasInterrupted();
        }
    }
}
