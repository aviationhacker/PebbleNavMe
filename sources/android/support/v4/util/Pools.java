package android.support.v4.util;

/* JADX INFO: loaded from: classes.dex */
public final class Pools {

    public interface Pool<T> {
        T acquire();

        boolean release(T t);
    }

    private Pools() {
    }

    public static class SimplePool<T> implements Pool<T> {
        private final Object[] a;
        private int b;

        public SimplePool(int i) {
            if (i <= 0) {
                throw new IllegalArgumentException("The max pool size must be > 0");
            }
            this.a = new Object[i];
        }

        @Override // android.support.v4.util.Pools.Pool
        public T acquire() {
            if (this.b <= 0) {
                return null;
            }
            int i = this.b - 1;
            T t = (T) this.a[i];
            this.a[i] = null;
            this.b--;
            return t;
        }

        @Override // android.support.v4.util.Pools.Pool
        public boolean release(T t) {
            if (a(t)) {
                throw new IllegalStateException("Already in the pool!");
            }
            if (this.b >= this.a.length) {
                return false;
            }
            this.a[this.b] = t;
            this.b++;
            return true;
        }

        private boolean a(T t) {
            for (int i = 0; i < this.b; i++) {
                if (this.a[i] == t) {
                    return true;
                }
            }
            return false;
        }
    }

    public static class SynchronizedPool<T> extends SimplePool<T> {
        private final Object a;

        public SynchronizedPool(int i) {
            super(i);
            this.a = new Object();
        }

        @Override // android.support.v4.util.Pools.SimplePool, android.support.v4.util.Pools.Pool
        public T acquire() {
            T t;
            synchronized (this.a) {
                t = (T) super.acquire();
            }
            return t;
        }

        @Override // android.support.v4.util.Pools.SimplePool, android.support.v4.util.Pools.Pool
        public boolean release(T t) {
            boolean zRelease;
            synchronized (this.a) {
                zRelease = super.release(t);
            }
            return zRelease;
        }
    }
}
