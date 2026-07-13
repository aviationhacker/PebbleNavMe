package android.support.v4.util;

import defpackage.cj;

/* JADX INFO: loaded from: classes.dex */
public class LongSparseArray<E> implements Cloneable {
    private static final Object a = new Object();
    private boolean b;
    private long[] c;
    private Object[] d;
    private int e;

    public LongSparseArray() {
        this(10);
    }

    public LongSparseArray(int i) {
        this.b = false;
        if (i == 0) {
            this.c = cj.b;
            this.d = cj.c;
        } else {
            int iB = cj.b(i);
            this.c = new long[iB];
            this.d = new Object[iB];
        }
        this.e = 0;
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public LongSparseArray<E> m2clone() {
        try {
            LongSparseArray<E> longSparseArray = (LongSparseArray) super.clone();
            try {
                longSparseArray.c = (long[]) this.c.clone();
                longSparseArray.d = (Object[]) this.d.clone();
                return longSparseArray;
            } catch (CloneNotSupportedException e) {
                return longSparseArray;
            }
        } catch (CloneNotSupportedException e2) {
            return null;
        }
    }

    public E get(long j) {
        return get(j, null);
    }

    public E get(long j, E e) {
        int iA = cj.a(this.c, this.e, j);
        return (iA < 0 || this.d[iA] == a) ? e : (E) this.d[iA];
    }

    public void delete(long j) {
        int iA = cj.a(this.c, this.e, j);
        if (iA >= 0 && this.d[iA] != a) {
            this.d[iA] = a;
            this.b = true;
        }
    }

    public void remove(long j) {
        delete(j);
    }

    public void removeAt(int i) {
        if (this.d[i] != a) {
            this.d[i] = a;
            this.b = true;
        }
    }

    private void a() {
        int i = this.e;
        long[] jArr = this.c;
        Object[] objArr = this.d;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[i3];
            if (obj != a) {
                if (i3 != i2) {
                    jArr[i2] = jArr[i3];
                    objArr[i2] = obj;
                    objArr[i3] = null;
                }
                i2++;
            }
        }
        this.b = false;
        this.e = i2;
    }

    public void put(long j, E e) {
        int iA = cj.a(this.c, this.e, j);
        if (iA >= 0) {
            this.d[iA] = e;
            return;
        }
        int iA2 = iA ^ (-1);
        if (iA2 < this.e && this.d[iA2] == a) {
            this.c[iA2] = j;
            this.d[iA2] = e;
            return;
        }
        if (this.b && this.e >= this.c.length) {
            a();
            iA2 = cj.a(this.c, this.e, j) ^ (-1);
        }
        if (this.e >= this.c.length) {
            int iB = cj.b(this.e + 1);
            long[] jArr = new long[iB];
            Object[] objArr = new Object[iB];
            System.arraycopy(this.c, 0, jArr, 0, this.c.length);
            System.arraycopy(this.d, 0, objArr, 0, this.d.length);
            this.c = jArr;
            this.d = objArr;
        }
        if (this.e - iA2 != 0) {
            System.arraycopy(this.c, iA2, this.c, iA2 + 1, this.e - iA2);
            System.arraycopy(this.d, iA2, this.d, iA2 + 1, this.e - iA2);
        }
        this.c[iA2] = j;
        this.d[iA2] = e;
        this.e++;
    }

    public int size() {
        if (this.b) {
            a();
        }
        return this.e;
    }

    public long keyAt(int i) {
        if (this.b) {
            a();
        }
        return this.c[i];
    }

    public E valueAt(int i) {
        if (this.b) {
            a();
        }
        return (E) this.d[i];
    }

    public void setValueAt(int i, E e) {
        if (this.b) {
            a();
        }
        this.d[i] = e;
    }

    public int indexOfKey(long j) {
        if (this.b) {
            a();
        }
        return cj.a(this.c, this.e, j);
    }

    public int indexOfValue(E e) {
        if (this.b) {
            a();
        }
        for (int i = 0; i < this.e; i++) {
            if (this.d[i] == e) {
                return i;
            }
        }
        return -1;
    }

    public void clear() {
        int i = this.e;
        Object[] objArr = this.d;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        this.e = 0;
        this.b = false;
    }

    public void append(long j, E e) {
        if (this.e != 0 && j <= this.c[this.e - 1]) {
            put(j, e);
            return;
        }
        if (this.b && this.e >= this.c.length) {
            a();
        }
        int i = this.e;
        if (i >= this.c.length) {
            int iB = cj.b(i + 1);
            long[] jArr = new long[iB];
            Object[] objArr = new Object[iB];
            System.arraycopy(this.c, 0, jArr, 0, this.c.length);
            System.arraycopy(this.d, 0, objArr, 0, this.d.length);
            this.c = jArr;
            this.d = objArr;
        }
        this.c[i] = j;
        this.d[i] = e;
        this.e = i + 1;
    }

    public String toString() {
        if (size() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.e * 28);
        sb.append('{');
        for (int i = 0; i < this.e; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            sb.append(keyAt(i));
            sb.append('=');
            E eValueAt = valueAt(i);
            if (eValueAt != this) {
                sb.append(eValueAt);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
