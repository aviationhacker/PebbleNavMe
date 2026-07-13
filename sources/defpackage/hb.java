package defpackage;

import java.lang.reflect.Field;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.util.Random;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes.dex */
abstract class hb extends Number {
    static final ThreadLocal<int[]> a = new ThreadLocal<>();
    static final Random b = new Random();
    static final int c = Runtime.getRuntime().availableProcessors();
    private static final Unsafe g;
    private static final long h;
    private static final long i;
    volatile transient a[] d;
    volatile transient long e;
    volatile transient int f;

    abstract long a(long j, long j2);

    static final class a {
        private static final Unsafe b;
        private static final long c;
        volatile long a;

        a(long j) {
            this.a = j;
        }

        final boolean a(long j, long j2) {
            return b.compareAndSwapLong(this, c, j, j2);
        }

        static {
            try {
                b = hb.a();
                c = b.objectFieldOffset(a.class.getDeclaredField("value"));
            } catch (Exception e) {
                throw new Error(e);
            }
        }
    }

    static {
        try {
            g = a();
            h = g.objectFieldOffset(hb.class.getDeclaredField("base"));
            i = g.objectFieldOffset(hb.class.getDeclaredField("busy"));
        } catch (Exception e) {
            throw new Error(e);
        }
    }

    hb() {
    }

    final boolean b(long j, long j2) {
        return g.compareAndSwapLong(this, h, j, j2);
    }

    final boolean c() {
        return g.compareAndSwapInt(this, i, 0, 1);
    }

    final void a(long j, int[] iArr, boolean z) {
        int iNextInt;
        int length;
        int length2;
        if (iArr == null) {
            iArr = new int[1];
            a.set(iArr);
            iNextInt = b.nextInt();
            if (iNextInt == 0) {
                iNextInt = 1;
            }
            iArr[0] = iNextInt;
        } else {
            iNextInt = iArr[0];
        }
        int i2 = iNextInt;
        boolean z2 = false;
        while (true) {
            a[] aVarArr = this.d;
            if (aVarArr != null && (length = aVarArr.length) > 0) {
                a aVar = aVarArr[(length - 1) & i2];
                if (aVar == null) {
                    if (this.f == 0) {
                        a aVar2 = new a(j);
                        if (this.f == 0 && c()) {
                            boolean z3 = false;
                            try {
                                a[] aVarArr2 = this.d;
                                if (aVarArr2 != null && (length2 = aVarArr2.length) > 0) {
                                    int i3 = (length2 - 1) & i2;
                                    if (aVarArr2[i3] == null) {
                                        aVarArr2[i3] = aVar2;
                                        z3 = true;
                                    }
                                }
                                if (z3) {
                                    return;
                                }
                            } finally {
                            }
                        }
                    }
                    z2 = false;
                    int i4 = i2 ^ (i2 << 13);
                    int i5 = i4 ^ (i4 >>> 17);
                    i2 = i5 ^ (i5 << 5);
                    iArr[0] = i2;
                } else {
                    if (!z) {
                        z = true;
                    } else {
                        long j2 = aVar.a;
                        if (!aVar.a(j2, a(j2, j))) {
                            if (length >= c || this.d != aVarArr) {
                                z2 = false;
                            } else if (!z2) {
                                z2 = true;
                            } else if (this.f == 0 && c()) {
                                try {
                                    if (this.d == aVarArr) {
                                        a[] aVarArr3 = new a[length << 1];
                                        for (int i6 = 0; i6 < length; i6++) {
                                            aVarArr3[i6] = aVarArr[i6];
                                        }
                                        this.d = aVarArr3;
                                    }
                                    this.f = 0;
                                    z2 = false;
                                } finally {
                                }
                            }
                        } else {
                            return;
                        }
                    }
                    int i42 = i2 ^ (i2 << 13);
                    int i52 = i42 ^ (i42 >>> 17);
                    i2 = i52 ^ (i52 << 5);
                    iArr[0] = i2;
                }
            } else if (this.f == 0 && this.d == aVarArr && c()) {
                boolean z4 = false;
                try {
                    if (this.d == aVarArr) {
                        a[] aVarArr4 = new a[2];
                        aVarArr4[i2 & 1] = new a(j);
                        this.d = aVarArr4;
                        z4 = true;
                    }
                    if (z4) {
                        return;
                    }
                } finally {
                }
            } else {
                long j3 = this.e;
                if (b(j3, a(j3, j))) {
                    return;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Unsafe a() {
        try {
            return Unsafe.getUnsafe();
        } catch (SecurityException e) {
            try {
                return (Unsafe) AccessController.doPrivileged(new PrivilegedExceptionAction<Unsafe>() { // from class: hb.1
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
            } catch (PrivilegedActionException e2) {
                throw new RuntimeException("Could not initialize intrinsics", e2.getCause());
            }
        }
    }
}
