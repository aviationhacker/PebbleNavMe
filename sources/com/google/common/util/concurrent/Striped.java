package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Iterables;
import com.google.common.collect.MapMaker;
import com.google.common.math.IntMath;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.math.RoundingMode;
import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* JADX INFO: loaded from: classes.dex */
@Beta
public abstract class Striped<L> {
    private static final Supplier<ReadWriteLock> a = new Supplier<ReadWriteLock>() { // from class: com.google.common.util.concurrent.Striped.5
        @Override // com.google.common.base.Supplier
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ReadWriteLock get() {
            return new ReentrantReadWriteLock();
        }
    };

    abstract int a(Object obj);

    public abstract L get(Object obj);

    public abstract L getAt(int i);

    public abstract int size();

    private Striped() {
    }

    public Iterable<L> bulkGet(Iterable<?> iterable) {
        Object[] array = Iterables.toArray(iterable, Object.class);
        if (array.length == 0) {
            return ImmutableList.of();
        }
        int[] iArr = new int[array.length];
        for (int i = 0; i < array.length; i++) {
            iArr[i] = a(array[i]);
        }
        Arrays.sort(iArr);
        int i2 = iArr[0];
        array[0] = getAt(i2);
        int i3 = i2;
        for (int i4 = 1; i4 < array.length; i4++) {
            int i5 = iArr[i4];
            if (i5 == i3) {
                array[i4] = array[i4 - 1];
            } else {
                array[i4] = getAt(i5);
                i3 = i5;
            }
        }
        return Collections.unmodifiableList(Arrays.asList(array));
    }

    public static Striped<Lock> lock(int i) {
        return new a(i, new Supplier<Lock>() { // from class: com.google.common.util.concurrent.Striped.1
            @Override // com.google.common.base.Supplier
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Lock get() {
                return new c();
            }
        });
    }

    public static Striped<Lock> lazyWeakLock(int i) {
        return a(i, new Supplier<Lock>() { // from class: com.google.common.util.concurrent.Striped.2
            @Override // com.google.common.base.Supplier
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Lock get() {
                return new ReentrantLock(false);
            }
        });
    }

    private static <L> Striped<L> a(int i, Supplier<L> supplier) {
        return i < 1024 ? new f(i, supplier) : new b(i, supplier);
    }

    public static Striped<Semaphore> semaphore(int i, final int i2) {
        return new a(i, new Supplier<Semaphore>() { // from class: com.google.common.util.concurrent.Striped.3
            @Override // com.google.common.base.Supplier
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Semaphore get() {
                return new d(i2);
            }
        });
    }

    public static Striped<Semaphore> lazyWeakSemaphore(int i, final int i2) {
        return a(i, new Supplier<Semaphore>() { // from class: com.google.common.util.concurrent.Striped.4
            @Override // com.google.common.base.Supplier
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Semaphore get() {
                return new Semaphore(i2, false);
            }
        });
    }

    public static Striped<ReadWriteLock> readWriteLock(int i) {
        return new a(i, a);
    }

    public static Striped<ReadWriteLock> lazyWeakReadWriteLock(int i) {
        return a(i, a);
    }

    static abstract class e<L> extends Striped<L> {
        final int d;

        e(int i) {
            super();
            Preconditions.checkArgument(i > 0, "Stripes must be positive");
            this.d = i > 1073741824 ? -1 : Striped.c(i) - 1;
        }

        @Override // com.google.common.util.concurrent.Striped
        final int a(Object obj) {
            return Striped.d(obj.hashCode()) & this.d;
        }

        @Override // com.google.common.util.concurrent.Striped
        public final L get(Object obj) {
            return getAt(a(obj));
        }
    }

    static class a<L> extends e<L> {
        private final Object[] a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private a(int i, Supplier<L> supplier) {
            super(i);
            Preconditions.checkArgument(i <= 1073741824, "Stripes must be <= 2^30)");
            this.a = new Object[this.d + 1];
            for (int i2 = 0; i2 < this.a.length; i2++) {
                this.a[i2] = supplier.get();
            }
        }

        @Override // com.google.common.util.concurrent.Striped
        public L getAt(int i) {
            return (L) this.a[i];
        }

        @Override // com.google.common.util.concurrent.Striped
        public int size() {
            return this.a.length;
        }
    }

    @VisibleForTesting
    static class f<L> extends e<L> {
        final AtomicReferenceArray<a<? extends L>> a;
        final Supplier<L> b;
        final int c;
        final ReferenceQueue<L> e;

        f(int i, Supplier<L> supplier) {
            super(i);
            this.e = new ReferenceQueue<>();
            this.c = this.d == -1 ? Integer.MAX_VALUE : this.d + 1;
            this.a = new AtomicReferenceArray<>(this.c);
            this.b = supplier;
        }

        @Override // com.google.common.util.concurrent.Striped
        public L getAt(int i) {
            if (this.c != Integer.MAX_VALUE) {
                Preconditions.checkElementIndex(i, size());
            }
            a<? extends L> aVar = this.a.get(i);
            Object obj = aVar == null ? null : aVar.get();
            if (obj != null) {
                return (L) obj;
            }
            L l = this.b.get();
            a<? extends L> aVar2 = new a<>(l, i, this.e);
            while (!this.a.compareAndSet(i, aVar, aVar2)) {
                aVar = this.a.get(i);
                Object obj2 = aVar == null ? null : aVar.get();
                if (obj2 != null) {
                    return (L) obj2;
                }
            }
            a();
            return l;
        }

        private void a() {
            while (true) {
                Reference<? extends L> referencePoll = this.e.poll();
                if (referencePoll != null) {
                    a<? extends L> aVar = (a) referencePoll;
                    this.a.compareAndSet(aVar.a, aVar, null);
                } else {
                    return;
                }
            }
        }

        @Override // com.google.common.util.concurrent.Striped
        public int size() {
            return this.c;
        }

        static final class a<L> extends WeakReference<L> {
            final int a;

            a(L l, int i, ReferenceQueue<L> referenceQueue) {
                super(l, referenceQueue);
                this.a = i;
            }
        }
    }

    @VisibleForTesting
    static class b<L> extends e<L> {
        final ConcurrentMap<Integer, L> a;
        final Supplier<L> b;
        final int c;

        b(int i, Supplier<L> supplier) {
            super(i);
            this.c = this.d == -1 ? Integer.MAX_VALUE : this.d + 1;
            this.b = supplier;
            this.a = (ConcurrentMap<Integer, L>) new MapMaker().weakValues2().makeMap();
        }

        @Override // com.google.common.util.concurrent.Striped
        public L getAt(int i) {
            if (this.c != Integer.MAX_VALUE) {
                Preconditions.checkElementIndex(i, size());
            }
            L l = this.a.get(Integer.valueOf(i));
            if (l == null) {
                L l2 = this.b.get();
                return (L) MoreObjects.firstNonNull(this.a.putIfAbsent(Integer.valueOf(i), l2), l2);
            }
            return l;
        }

        @Override // com.google.common.util.concurrent.Striped
        public int size() {
            return this.c;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int c(int i) {
        return 1 << IntMath.log2(i, RoundingMode.CEILING);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int d(int i) {
        int i2 = ((i >>> 20) ^ (i >>> 12)) ^ i;
        return (i2 >>> 4) ^ ((i2 >>> 7) ^ i2);
    }

    static class c extends ReentrantLock {
        c() {
            super(false);
        }
    }

    static class d extends Semaphore {
        d(int i) {
            super(i, false);
        }
    }
}
