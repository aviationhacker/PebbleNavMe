package android.support.v4.util;

import defpackage.cj;

/* JADX INFO: loaded from: classes.dex */
public class SparseArrayCompat<E> implements Cloneable {
    private static final Object a = new Object();
    private boolean b;
    private int[] c;
    private Object[] d;
    private int e;

    public SparseArrayCompat() {
        this(10);
    }

    public SparseArrayCompat(int i) {
        this.b = false;
        if (i == 0) {
            this.c = cj.a;
            this.d = cj.c;
        } else {
            int iA = cj.a(i);
            this.c = new int[iA];
            this.d = new Object[iA];
        }
        this.e = 0;
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public SparseArrayCompat<E> m3clone() {
        try {
            SparseArrayCompat<E> sparseArrayCompat = (SparseArrayCompat) super.clone();
            try {
                sparseArrayCompat.c = (int[]) this.c.clone();
                sparseArrayCompat.d = (Object[]) this.d.clone();
                return sparseArrayCompat;
            } catch (CloneNotSupportedException e) {
                return sparseArrayCompat;
            }
        } catch (CloneNotSupportedException e2) {
            return null;
        }
    }

    public E get(int i) {
        return get(i, null);
    }

    public E get(int i, E e) {
        int iA = cj.a(this.c, this.e, i);
        return (iA < 0 || this.d[iA] == a) ? e : (E) this.d[iA];
    }

    public void delete(int i) {
        int iA = cj.a(this.c, this.e, i);
        if (iA >= 0 && this.d[iA] != a) {
            this.d[iA] = a;
            this.b = true;
        }
    }

    public void remove(int i) {
        delete(i);
    }

    public void removeAt(int i) {
        if (this.d[i] != a) {
            this.d[i] = a;
            this.b = true;
        }
    }

    public void removeAtRange(int i, int i2) {
        int iMin = Math.min(this.e, i + i2);
        while (i < iMin) {
            removeAt(i);
            i++;
        }
    }

    private void a() {
        int i = this.e;
        int[] iArr = this.c;
        Object[] objArr = this.d;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[i3];
            if (obj != a) {
                if (i3 != i2) {
                    iArr[i2] = iArr[i3];
                    objArr[i2] = obj;
                    objArr[i3] = null;
                }
                i2++;
            }
        }
        this.b = false;
        this.e = i2;
    }

    public void put(int i, E e) {
        int iA = cj.a(this.c, this.e, i);
        if (iA >= 0) {
            this.d[iA] = e;
            return;
        }
        int iA2 = iA ^ (-1);
        if (iA2 < this.e && this.d[iA2] == a) {
            this.c[iA2] = i;
            this.d[iA2] = e;
            return;
        }
        if (this.b && this.e >= this.c.length) {
            a();
            iA2 = cj.a(this.c, this.e, i) ^ (-1);
        }
        if (this.e >= this.c.length) {
            int iA3 = cj.a(this.e + 1);
            int[] iArr = new int[iA3];
            Object[] objArr = new Object[iA3];
            System.arraycopy(this.c, 0, iArr, 0, this.c.length);
            System.arraycopy(this.d, 0, objArr, 0, this.d.length);
            this.c = iArr;
            this.d = objArr;
        }
        if (this.e - iA2 != 0) {
            System.arraycopy(this.c, iA2, this.c, iA2 + 1, this.e - iA2);
            System.arraycopy(this.d, iA2, this.d, iA2 + 1, this.e - iA2);
        }
        this.c[iA2] = i;
        this.d[iA2] = e;
        this.e++;
    }

    public int size() {
        if (this.b) {
            a();
        }
        return this.e;
    }

    public int keyAt(int i) {
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

    public int indexOfKey(int i) {
        if (this.b) {
            a();
        }
        return cj.a(this.c, this.e, i);
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

    public void append(int i, E e) {
        if (this.e != 0 && i <= this.c[this.e - 1]) {
            put(i, e);
            return;
        }
        if (this.b && this.e >= this.c.length) {
            a();
        }
        int i2 = this.e;
        if (i2 >= this.c.length) {
            int iA = cj.a(i2 + 1);
            int[] iArr = new int[iA];
            Object[] objArr = new Object[iA];
            System.arraycopy(this.c, 0, iArr, 0, this.c.length);
            System.arraycopy(this.d, 0, objArr, 0, this.d.length);
            this.c = iArr;
            this.d = objArr;
        }
        this.c[i2] = i;
        this.d[i2] = e;
        this.e = i2 + 1;
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
