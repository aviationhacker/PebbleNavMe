package defpackage;

import com.google.common.base.Equivalence;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.collect.MapMaker;
import defpackage.jj;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.lang.ref.ReferenceQueue;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ExecutionException;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: classes.dex */
public class hx<K, V> extends jj<K, V> {
    private static final long serialVersionUID = 4;
    protected final Function<? super K, ? extends V> a;

    protected hx(MapMaker mapMaker, Function<? super K, ? extends V> function) {
        super(mapMaker);
        this.a = (Function) Preconditions.checkNotNull(function);
    }

    @Override // defpackage.jj
    jj.n<K, V> a(int i, int i2) {
        return new c(this, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // defpackage.jj
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public c<K, V> b(int i) {
        return (c) super.b(i);
    }

    protected V a(K k) {
        int iB = b(Preconditions.checkNotNull(k));
        return b(iB).a((Object) k, iB, (Function) this.a);
    }

    static final class c<K, V> extends jj.n<K, V> {
        c(jj<K, V> jjVar, int i, int i2) {
            super(jjVar, i, i2);
        }

        /* JADX WARN: Code restructure failed: missing block: B:22:0x005d, code lost:
        
            if (r5.a().b() == false) goto L32;
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x005f, code lost:
        
            r6 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x0083, code lost:
        
            r1 = r5.a().get();
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x008b, code lost:
        
            if (r1 != null) goto L36;
         */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x008d, code lost:
        
            a((java.lang.Object) r9, r13, (java.lang.Object) r1, com.google.common.collect.MapMaker.d.COLLECTED);
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x0092, code lost:
        
            r11.k.remove(r5);
            r11.l.remove(r5);
            r11.b = r6;
            r6 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:37:0x00a6, code lost:
        
            if (r11.a.b() == false) goto L70;
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x00ae, code lost:
        
            if (r11.a.c((jj.l) r5) == false) goto L71;
         */
        /* JADX WARN: Code restructure failed: missing block: B:40:0x00b0, code lost:
        
            a((java.lang.Object) r9, r13, (java.lang.Object) r1, com.google.common.collect.MapMaker.d.EXPIRED);
         */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x00c3, code lost:
        
            b(r5);
         */
        /* JADX WARN: Code restructure failed: missing block: B:80:?, code lost:
        
            return r1;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        V a(K r12, int r13, com.google.common.base.Function<? super K, ? extends V> r14) {
            /*
                Method dump skipped, instruction units count: 261
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: hx.c.a(java.lang.Object, int, com.google.common.base.Function):java.lang.Object");
        }

        /* JADX WARN: Removed duplicated region for block: B:24:0x0034  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x0039  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        V a(K r7, int r8, jj.l<K, V> r9, hx.e<K, V> r10) throws java.lang.Throwable {
            /*
                r6 = this;
                r4 = 0
                r1 = 0
                java.lang.System.nanoTime()
                monitor-enter(r9)     // Catch: java.lang.Throwable -> L3d
                java.lang.Object r1 = r10.a(r7, r8)     // Catch: java.lang.Throwable -> L2b
                long r2 = java.lang.System.nanoTime()     // Catch: java.lang.Throwable -> L2b
                monitor-exit(r9)     // Catch: java.lang.Throwable -> L40
                if (r1 == 0) goto L1e
                r0 = 1
                java.lang.Object r0 = r6.a(r7, r8, r1, r0)     // Catch: java.lang.Throwable -> L2f
                if (r0 == 0) goto L1e
                com.google.common.collect.MapMaker$d r0 = com.google.common.collect.MapMaker.d.REPLACED     // Catch: java.lang.Throwable -> L2f
                r6.a(r7, r8, r1, r0)     // Catch: java.lang.Throwable -> L2f
            L1e:
                int r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
                if (r0 != 0) goto L25
                java.lang.System.nanoTime()
            L25:
                if (r1 != 0) goto L2a
                r6.b(r7, r8, r10)
            L2a:
                return r1
            L2b:
                r0 = move-exception
                r2 = r4
            L2d:
                monitor-exit(r9)     // Catch: java.lang.Throwable -> L40
                throw r0     // Catch: java.lang.Throwable -> L2f
            L2f:
                r0 = move-exception
            L30:
                int r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
                if (r2 != 0) goto L37
                java.lang.System.nanoTime()
            L37:
                if (r1 != 0) goto L3c
                r6.b(r7, r8, r10)
            L3c:
                throw r0
            L3d:
                r0 = move-exception
                r2 = r4
                goto L30
            L40:
                r0 = move-exception
                goto L2d
            */
            throw new UnsupportedOperationException("Method not decompiled: hx.c.a(java.lang.Object, int, jj$l, hx$e):java.lang.Object");
        }
    }

    static final class a<K, V> implements jj.x<K, V> {
        final Throwable a;

        a(Throwable th) {
            this.a = th;
        }

        @Override // jj.x
        public V get() {
            return null;
        }

        @Override // jj.x
        public jj.l<K, V> a() {
            return null;
        }

        @Override // jj.x
        public jj.x<K, V> a(ReferenceQueue<V> referenceQueue, V v, jj.l<K, V> lVar) {
            return this;
        }

        @Override // jj.x
        public boolean b() {
            return false;
        }

        @Override // jj.x
        public V c() throws ExecutionException {
            throw new ExecutionException(this.a);
        }

        @Override // jj.x
        public void a(jj.x<K, V> xVar) {
        }
    }

    static final class b<K, V> implements jj.x<K, V> {
        final V a;

        b(@Nullable V v) {
            this.a = v;
        }

        @Override // jj.x
        public V get() {
            return this.a;
        }

        @Override // jj.x
        public jj.l<K, V> a() {
            return null;
        }

        @Override // jj.x
        public jj.x<K, V> a(ReferenceQueue<V> referenceQueue, V v, jj.l<K, V> lVar) {
            return this;
        }

        @Override // jj.x
        public boolean b() {
            return false;
        }

        @Override // jj.x
        public V c() {
            return get();
        }

        @Override // jj.x
        public void a(jj.x<K, V> xVar) {
        }
    }

    static final class e<K, V> implements jj.x<K, V> {
        final Function<? super K, ? extends V> a;

        @GuardedBy("this")
        volatile jj.x<K, V> b = jj.g();

        public e(Function<? super K, ? extends V> function) {
            this.a = function;
        }

        @Override // jj.x
        public V get() {
            return null;
        }

        @Override // jj.x
        public jj.l<K, V> a() {
            return null;
        }

        @Override // jj.x
        public jj.x<K, V> a(ReferenceQueue<V> referenceQueue, @Nullable V v, jj.l<K, V> lVar) {
            return this;
        }

        @Override // jj.x
        public boolean b() {
            return true;
        }

        @Override // jj.x
        public V c() {
            if (this.b == jj.q) {
                boolean z = false;
                try {
                    synchronized (this) {
                        while (this.b == jj.q) {
                            try {
                                wait();
                            } catch (InterruptedException e) {
                                z = true;
                            }
                        }
                    }
                } finally {
                    if (z) {
                        Thread.currentThread().interrupt();
                    }
                }
            }
            return this.b.c();
        }

        @Override // jj.x
        public void a(jj.x<K, V> xVar) {
            b(xVar);
        }

        V a(K k, int i) throws ExecutionException {
            try {
                V vApply = this.a.apply(k);
                b(new b(vApply));
                return vApply;
            } catch (Throwable th) {
                b(new a(th));
                throw new ExecutionException(th);
            }
        }

        void b(jj.x<K, V> xVar) {
            synchronized (this) {
                if (this.b == jj.q) {
                    this.b = xVar;
                    notifyAll();
                }
            }
        }
    }

    @Override // defpackage.jj
    Object writeReplace() {
        return new d(this.h, this.i, this.f, this.g, this.l, this.k, this.j, this.e, this.n, this, this.a);
    }

    static final class d<K, V> extends jj.b<K, V> {
        private static final long serialVersionUID = 4;
        final Function<? super K, ? extends V> a;

        d(jj.q qVar, jj.q qVar2, Equivalence<Object> equivalence, Equivalence<Object> equivalence2, long j, long j2, int i, int i2, MapMaker.e<? super K, ? super V> eVar, ConcurrentMap<K, V> concurrentMap, Function<? super K, ? extends V> function) {
            super(qVar, qVar2, equivalence, equivalence2, j, j2, i, i2, eVar, concurrentMap);
            this.a = function;
        }

        private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.defaultWriteObject();
            a(objectOutputStream);
        }

        private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
            objectInputStream.defaultReadObject();
            this.k = a(objectInputStream).a(this.a);
            b(objectInputStream);
        }

        Object readResolve() {
            return this.k;
        }
    }
}
