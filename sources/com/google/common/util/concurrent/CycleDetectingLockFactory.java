package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Lists;
import com.google.common.collect.MapMaker;
import com.google.common.collect.Maps;
import com.google.common.collect.Sets;
import com.google.j2objc.annotations.Weak;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Nullable;
import javax.annotation.concurrent.ThreadSafe;

/* JADX INFO: loaded from: classes.dex */
@Beta
@ThreadSafe
public class CycleDetectingLockFactory {
    private static final ConcurrentMap<Class<? extends Enum>, Map<? extends Enum, g>> b = new MapMaker().weakKeys2().makeMap();
    private static final Logger c = Logger.getLogger(CycleDetectingLockFactory.class.getName());
    private static final ThreadLocal<ArrayList<g>> d = new ThreadLocal<ArrayList<g>>() { // from class: com.google.common.util.concurrent.CycleDetectingLockFactory.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ArrayList<g> initialValue() {
            return Lists.newArrayListWithCapacity(3);
        }
    };
    final Policy a;

    @Beta
    public enum Policies implements Policy {
        THROW { // from class: com.google.common.util.concurrent.CycleDetectingLockFactory.Policies.1
            @Override // com.google.common.util.concurrent.CycleDetectingLockFactory.Policy
            public void handlePotentialDeadlock(PotentialDeadlockException potentialDeadlockException) {
                throw potentialDeadlockException;
            }
        },
        WARN { // from class: com.google.common.util.concurrent.CycleDetectingLockFactory.Policies.2
            @Override // com.google.common.util.concurrent.CycleDetectingLockFactory.Policy
            public void handlePotentialDeadlock(PotentialDeadlockException potentialDeadlockException) {
                CycleDetectingLockFactory.c.log(Level.SEVERE, "Detected potential deadlock", (Throwable) potentialDeadlockException);
            }
        },
        DISABLED { // from class: com.google.common.util.concurrent.CycleDetectingLockFactory.Policies.3
            @Override // com.google.common.util.concurrent.CycleDetectingLockFactory.Policy
            public void handlePotentialDeadlock(PotentialDeadlockException potentialDeadlockException) {
            }
        }
    }

    @Beta
    @ThreadSafe
    public interface Policy {
        void handlePotentialDeadlock(PotentialDeadlockException potentialDeadlockException);
    }

    interface a {
        g a();

        boolean b();
    }

    public static CycleDetectingLockFactory newInstance(Policy policy) {
        return new CycleDetectingLockFactory(policy);
    }

    public ReentrantLock newReentrantLock(String str) {
        return newReentrantLock(str, false);
    }

    public ReentrantLock newReentrantLock(String str, boolean z) {
        return this.a == Policies.DISABLED ? new ReentrantLock(z) : new b(new g(str), z);
    }

    public ReentrantReadWriteLock newReentrantReadWriteLock(String str) {
        return newReentrantReadWriteLock(str, false);
    }

    public ReentrantReadWriteLock newReentrantReadWriteLock(String str, boolean z) {
        return this.a == Policies.DISABLED ? new ReentrantReadWriteLock(z) : new d(new g(str), z);
    }

    public static <E extends Enum<E>> WithExplicitOrdering<E> newInstanceWithExplicitOrdering(Class<E> cls, Policy policy) {
        Preconditions.checkNotNull(cls);
        Preconditions.checkNotNull(policy);
        return new WithExplicitOrdering<>(policy, b((Class<? extends Enum>) cls));
    }

    private static Map<? extends Enum, g> b(Class<? extends Enum> cls) {
        Map<? extends Enum, g> map = b.get(cls);
        if (map == null) {
            Map<? extends Enum, g> mapA = a(cls);
            return (Map) MoreObjects.firstNonNull(b.putIfAbsent(cls, mapA), mapA);
        }
        return map;
    }

    @VisibleForTesting
    static <E extends Enum<E>> Map<E, g> a(Class<E> cls) {
        EnumMap enumMapNewEnumMap = Maps.newEnumMap(cls);
        E[] enumConstants = cls.getEnumConstants();
        int length = enumConstants.length;
        ArrayList arrayListNewArrayListWithCapacity = Lists.newArrayListWithCapacity(length);
        for (E e2 : enumConstants) {
            g gVar = new g(a((Enum<?>) e2));
            arrayListNewArrayListWithCapacity.add(gVar);
            enumMapNewEnumMap.put(e2, gVar);
        }
        for (int i = 1; i < length; i++) {
            ((g) arrayListNewArrayListWithCapacity.get(i)).a(Policies.THROW, arrayListNewArrayListWithCapacity.subList(0, i));
        }
        for (int i2 = 0; i2 < length - 1; i2++) {
            ((g) arrayListNewArrayListWithCapacity.get(i2)).a(Policies.DISABLED, arrayListNewArrayListWithCapacity.subList(i2 + 1, length));
        }
        return Collections.unmodifiableMap(enumMapNewEnumMap);
    }

    private static String a(Enum<?> r5) {
        String strValueOf = String.valueOf(r5.getDeclaringClass().getSimpleName());
        String strValueOf2 = String.valueOf(r5.name());
        return new StringBuilder(String.valueOf(strValueOf).length() + 1 + String.valueOf(strValueOf2).length()).append(strValueOf).append(".").append(strValueOf2).toString();
    }

    @Beta
    public static final class WithExplicitOrdering<E extends Enum<E>> extends CycleDetectingLockFactory {
        private final Map<E, g> b;

        @VisibleForTesting
        WithExplicitOrdering(Policy policy, Map<E, g> map) {
            super(policy);
            this.b = map;
        }

        public ReentrantLock newReentrantLock(E e) {
            return newReentrantLock((Enum) e, false);
        }

        public ReentrantLock newReentrantLock(E e, boolean z) {
            return this.a == Policies.DISABLED ? new ReentrantLock(z) : new b(this.b.get(e), z);
        }

        public ReentrantReadWriteLock newReentrantReadWriteLock(E e) {
            return newReentrantReadWriteLock((Enum) e, false);
        }

        public ReentrantReadWriteLock newReentrantReadWriteLock(E e, boolean z) {
            return this.a == Policies.DISABLED ? new ReentrantReadWriteLock(z) : new d(this.b.get(e), z);
        }
    }

    private CycleDetectingLockFactory(Policy policy) {
        this.a = (Policy) Preconditions.checkNotNull(policy);
    }

    static class f extends IllegalStateException {
        static final StackTraceElement[] a = new StackTraceElement[0];
        static final Set<String> b = ImmutableSet.of(CycleDetectingLockFactory.class.getName(), f.class.getName(), g.class.getName());

        /* JADX WARN: Illegal instructions before constructor call */
        f(g gVar, g gVar2) {
            String strA = gVar.a();
            String strA2 = gVar2.a();
            super(new StringBuilder(String.valueOf(strA).length() + 4 + String.valueOf(strA2).length()).append(strA).append(" -> ").append(strA2).toString());
            StackTraceElement[] stackTrace = getStackTrace();
            int length = stackTrace.length;
            for (int i = 0; i < length; i++) {
                if (WithExplicitOrdering.class.getName().equals(stackTrace[i].getClassName())) {
                    setStackTrace(a);
                    return;
                } else {
                    if (!b.contains(stackTrace[i].getClassName())) {
                        setStackTrace((StackTraceElement[]) Arrays.copyOfRange(stackTrace, i, length));
                        return;
                    }
                }
            }
        }
    }

    @Beta
    public static final class PotentialDeadlockException extends f {
        private final f c;

        private PotentialDeadlockException(g gVar, g gVar2, f fVar) {
            super(gVar, gVar2);
            this.c = fVar;
            initCause(fVar);
        }

        public f getConflictingStackTrace() {
            return this.c;
        }

        @Override // java.lang.Throwable
        public String getMessage() {
            StringBuilder sb = new StringBuilder(super.getMessage());
            for (Throwable cause = this.c; cause != null; cause = cause.getCause()) {
                sb.append(", ").append(cause.getMessage());
            }
            return sb.toString();
        }
    }

    static class g {
        final Map<g, f> a = new MapMaker().weakKeys2().makeMap();
        final Map<g, PotentialDeadlockException> b = new MapMaker().weakKeys2().makeMap();
        final String c;

        g(String str) {
            this.c = (String) Preconditions.checkNotNull(str);
        }

        String a() {
            return this.c;
        }

        void a(Policy policy, List<g> list) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                a(policy, list.get(i));
            }
        }

        void a(Policy policy, g gVar) {
            Preconditions.checkState(this != gVar, "Attempted to acquire multiple locks with the same rank %s", gVar.a());
            if (!this.a.containsKey(gVar)) {
                PotentialDeadlockException potentialDeadlockException = this.b.get(gVar);
                if (potentialDeadlockException != null) {
                    policy.handlePotentialDeadlock(new PotentialDeadlockException(gVar, this, potentialDeadlockException.getConflictingStackTrace()));
                    return;
                }
                f fVarA = gVar.a(this, Sets.newIdentityHashSet());
                if (fVarA == null) {
                    this.a.put(gVar, new f(gVar, this));
                    return;
                }
                PotentialDeadlockException potentialDeadlockException2 = new PotentialDeadlockException(gVar, this, fVarA);
                this.b.put(gVar, potentialDeadlockException2);
                policy.handlePotentialDeadlock(potentialDeadlockException2);
            }
        }

        @Nullable
        private f a(g gVar, Set<g> set) {
            if (!set.add(this)) {
                return null;
            }
            f fVar = this.a.get(gVar);
            if (fVar == null) {
                for (Map.Entry<g, f> entry : this.a.entrySet()) {
                    g key = entry.getKey();
                    f fVarA = key.a(gVar, set);
                    if (fVarA != null) {
                        f fVar2 = new f(key, this);
                        fVar2.setStackTrace(entry.getValue().getStackTrace());
                        fVar2.initCause(fVarA);
                        return fVar2;
                    }
                }
                return null;
            }
            return fVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(a aVar) {
        if (!aVar.b()) {
            ArrayList<g> arrayList = d.get();
            g gVarA = aVar.a();
            gVarA.a(this.a, arrayList);
            arrayList.add(gVarA);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(a aVar) {
        if (!aVar.b()) {
            ArrayList<g> arrayList = d.get();
            g gVarA = aVar.a();
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                if (arrayList.get(size) == gVarA) {
                    arrayList.remove(size);
                    return;
                }
            }
        }
    }

    final class b extends ReentrantLock implements a {
        private final g b;

        private b(g gVar, boolean z) {
            super(z);
            this.b = (g) Preconditions.checkNotNull(gVar);
        }

        @Override // com.google.common.util.concurrent.CycleDetectingLockFactory.a
        public g a() {
            return this.b;
        }

        @Override // com.google.common.util.concurrent.CycleDetectingLockFactory.a
        public boolean b() {
            return isHeldByCurrentThread();
        }

        @Override // java.util.concurrent.locks.ReentrantLock, java.util.concurrent.locks.Lock
        public void lock() {
            CycleDetectingLockFactory.this.a(this);
            try {
                super.lock();
            } finally {
                CycleDetectingLockFactory.this.b(this);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantLock, java.util.concurrent.locks.Lock
        public void lockInterruptibly() {
            CycleDetectingLockFactory.this.a(this);
            try {
                super.lockInterruptibly();
            } finally {
                CycleDetectingLockFactory.this.b(this);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantLock, java.util.concurrent.locks.Lock
        public boolean tryLock() {
            CycleDetectingLockFactory.this.a(this);
            try {
                return super.tryLock();
            } finally {
                CycleDetectingLockFactory.this.b(this);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantLock, java.util.concurrent.locks.Lock
        public boolean tryLock(long j, TimeUnit timeUnit) {
            CycleDetectingLockFactory.this.a(this);
            try {
                return super.tryLock(j, timeUnit);
            } finally {
                CycleDetectingLockFactory.this.b(this);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantLock, java.util.concurrent.locks.Lock
        public void unlock() {
            try {
                super.unlock();
            } finally {
                CycleDetectingLockFactory.this.b(this);
            }
        }
    }

    final class d extends ReentrantReadWriteLock implements a {
        private final c b;
        private final e c;
        private final g d;

        private d(g gVar, boolean z) {
            super(z);
            this.b = CycleDetectingLockFactory.this.new c(this);
            this.c = CycleDetectingLockFactory.this.new e(this);
            this.d = (g) Preconditions.checkNotNull(gVar);
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock, java.util.concurrent.locks.ReadWriteLock
        public ReentrantReadWriteLock.ReadLock readLock() {
            return this.b;
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock, java.util.concurrent.locks.ReadWriteLock
        public ReentrantReadWriteLock.WriteLock writeLock() {
            return this.c;
        }

        @Override // com.google.common.util.concurrent.CycleDetectingLockFactory.a
        public g a() {
            return this.d;
        }

        @Override // com.google.common.util.concurrent.CycleDetectingLockFactory.a
        public boolean b() {
            return isWriteLockedByCurrentThread() || getReadHoldCount() > 0;
        }
    }

    class c extends ReentrantReadWriteLock.ReadLock {

        @Weak
        final d a;

        c(d dVar) {
            super(dVar);
            this.a = dVar;
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.ReadLock, java.util.concurrent.locks.Lock
        public void lock() {
            CycleDetectingLockFactory.this.a(this.a);
            try {
                super.lock();
            } finally {
                CycleDetectingLockFactory.this.b(this.a);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.ReadLock, java.util.concurrent.locks.Lock
        public void lockInterruptibly() {
            CycleDetectingLockFactory.this.a(this.a);
            try {
                super.lockInterruptibly();
            } finally {
                CycleDetectingLockFactory.this.b(this.a);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.ReadLock, java.util.concurrent.locks.Lock
        public boolean tryLock() {
            CycleDetectingLockFactory.this.a(this.a);
            try {
                return super.tryLock();
            } finally {
                CycleDetectingLockFactory.this.b(this.a);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.ReadLock, java.util.concurrent.locks.Lock
        public boolean tryLock(long j, TimeUnit timeUnit) {
            CycleDetectingLockFactory.this.a(this.a);
            try {
                return super.tryLock(j, timeUnit);
            } finally {
                CycleDetectingLockFactory.this.b(this.a);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.ReadLock, java.util.concurrent.locks.Lock
        public void unlock() {
            try {
                super.unlock();
            } finally {
                CycleDetectingLockFactory.this.b(this.a);
            }
        }
    }

    class e extends ReentrantReadWriteLock.WriteLock {

        @Weak
        final d a;

        e(d dVar) {
            super(dVar);
            this.a = dVar;
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.WriteLock, java.util.concurrent.locks.Lock
        public void lock() {
            CycleDetectingLockFactory.this.a(this.a);
            try {
                super.lock();
            } finally {
                CycleDetectingLockFactory.this.b(this.a);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.WriteLock, java.util.concurrent.locks.Lock
        public void lockInterruptibly() {
            CycleDetectingLockFactory.this.a(this.a);
            try {
                super.lockInterruptibly();
            } finally {
                CycleDetectingLockFactory.this.b(this.a);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.WriteLock, java.util.concurrent.locks.Lock
        public boolean tryLock() {
            CycleDetectingLockFactory.this.a(this.a);
            try {
                return super.tryLock();
            } finally {
                CycleDetectingLockFactory.this.b(this.a);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.WriteLock, java.util.concurrent.locks.Lock
        public boolean tryLock(long j, TimeUnit timeUnit) {
            CycleDetectingLockFactory.this.a(this.a);
            try {
                return super.tryLock(j, timeUnit);
            } finally {
                CycleDetectingLockFactory.this.b(this.a);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.WriteLock, java.util.concurrent.locks.Lock
        public void unlock() {
            try {
                super.unlock();
            } finally {
                CycleDetectingLockFactory.this.b(this.a);
            }
        }
    }
}
