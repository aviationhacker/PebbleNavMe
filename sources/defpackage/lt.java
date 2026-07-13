package defpackage;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.Sets;
import java.util.Set;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(emulated = true)
abstract class lt {
    private static final AtomicReferenceFieldUpdater<lt, Set<Throwable>> a = AtomicReferenceFieldUpdater.newUpdater(lt.class, Set.class, "c");
    private static final AtomicIntegerFieldUpdater<lt> b = AtomicIntegerFieldUpdater.newUpdater(lt.class, "d");
    private volatile Set<Throwable> c = null;
    private volatile int d;

    abstract void a(Set<Throwable> set);

    lt(int i) {
        this.d = i;
    }

    final Set<Throwable> d() {
        Set<Throwable> set = this.c;
        if (set == null) {
            Set<Throwable> setNewConcurrentHashSet = Sets.newConcurrentHashSet();
            a(setNewConcurrentHashSet);
            a.compareAndSet(this, null, setNewConcurrentHashSet);
            return this.c;
        }
        return set;
    }

    final int e() {
        return b.decrementAndGet(this);
    }
}
