package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Equivalence;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import defpackage.jj;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: loaded from: classes.dex */
@Beta
public final class Interners {
    private Interners() {
    }

    public static <E> Interner<E> newStrongInterner() {
        final ConcurrentMap concurrentMapMakeMap = new MapMaker().makeMap();
        return new Interner<E>() { // from class: com.google.common.collect.Interners.1
            @Override // com.google.common.collect.Interner
            public E intern(E e) {
                E e2 = (E) concurrentMapMakeMap.putIfAbsent(Preconditions.checkNotNull(e), e);
                return e2 == null ? e : e2;
            }
        };
    }

    @GwtIncompatible("java.lang.ref.WeakReference")
    public static <E> Interner<E> newWeakInterner() {
        return new b();
    }

    static class b<E> implements Interner<E> {
        private final jj<E, a> a;

        enum a {
            VALUE
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [com.google.common.collect.MapMaker] */
        private b() {
            this.a = new MapMaker().weakKeys2().a(Equivalence.equals()).b();
        }

        @Override // com.google.common.collect.Interner
        public E intern(E e) {
            E eD;
            do {
                jj.l<E, a> lVarC = this.a.c(e);
                if (lVarC != null && (eD = lVarC.d()) != null) {
                    return eD;
                }
            } while (this.a.putIfAbsent(e, a.VALUE) != null);
            return e;
        }
    }

    public static <E> Function<E, E> asFunction(Interner<E> interner) {
        return new a((Interner) Preconditions.checkNotNull(interner));
    }

    static class a<E> implements Function<E, E> {
        private final Interner<E> a;

        public a(Interner<E> interner) {
            this.a = interner;
        }

        @Override // com.google.common.base.Function
        public E apply(E e) {
            return this.a.intern(e);
        }

        public int hashCode() {
            return this.a.hashCode();
        }

        @Override // com.google.common.base.Function
        public boolean equals(Object obj) {
            if (obj instanceof a) {
                return this.a.equals(((a) obj).a);
            }
            return false;
        }
    }
}
