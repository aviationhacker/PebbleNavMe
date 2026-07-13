package android.support.v4.util;

import defpackage.cj;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class SimpleArrayMap<K, V> {
    static Object[] b;
    static int c;
    static Object[] d;
    static int e;
    int[] f;
    Object[] g;
    int h;

    int a(Object obj, int i) {
        int i2 = this.h;
        if (i2 == 0) {
            return -1;
        }
        int iA = cj.a(this.f, i2, i);
        if (iA >= 0 && !obj.equals(this.g[iA << 1])) {
            int i3 = iA + 1;
            while (i3 < i2 && this.f[i3] == i) {
                if (obj.equals(this.g[i3 << 1])) {
                    return i3;
                }
                i3++;
            }
            for (int i4 = iA - 1; i4 >= 0 && this.f[i4] == i; i4--) {
                if (obj.equals(this.g[i4 << 1])) {
                    return i4;
                }
            }
            return i3 ^ (-1);
        }
        return iA;
    }

    int a() {
        int i = this.h;
        if (i == 0) {
            return -1;
        }
        int iA = cj.a(this.f, i, 0);
        if (iA >= 0 && this.g[iA << 1] != null) {
            int i2 = iA + 1;
            while (i2 < i && this.f[i2] == 0) {
                if (this.g[i2 << 1] == null) {
                    return i2;
                }
                i2++;
            }
            for (int i3 = iA - 1; i3 >= 0 && this.f[i3] == 0; i3--) {
                if (this.g[i3 << 1] == null) {
                    return i3;
                }
            }
            return i2 ^ (-1);
        }
        return iA;
    }

    private void a(int i) {
        if (i == 8) {
            synchronized (ArrayMap.class) {
                if (d != null) {
                    Object[] objArr = d;
                    this.g = objArr;
                    d = (Object[]) objArr[0];
                    this.f = (int[]) objArr[1];
                    objArr[1] = null;
                    objArr[0] = null;
                    e--;
                    return;
                }
            }
        } else if (i == 4) {
            synchronized (ArrayMap.class) {
                if (b != null) {
                    Object[] objArr2 = b;
                    this.g = objArr2;
                    b = (Object[]) objArr2[0];
                    this.f = (int[]) objArr2[1];
                    objArr2[1] = null;
                    objArr2[0] = null;
                    c--;
                    return;
                }
            }
        }
        this.f = new int[i];
        this.g = new Object[i << 1];
    }

    private static void a(int[] iArr, Object[] objArr, int i) {
        if (iArr.length == 8) {
            synchronized (ArrayMap.class) {
                if (e < 10) {
                    objArr[0] = d;
                    objArr[1] = iArr;
                    for (int i2 = (i << 1) - 1; i2 >= 2; i2--) {
                        objArr[i2] = null;
                    }
                    d = objArr;
                    e++;
                }
            }
            return;
        }
        if (iArr.length == 4) {
            synchronized (ArrayMap.class) {
                if (c < 10) {
                    objArr[0] = b;
                    objArr[1] = iArr;
                    for (int i3 = (i << 1) - 1; i3 >= 2; i3--) {
                        objArr[i3] = null;
                    }
                    b = objArr;
                    c++;
                }
            }
        }
    }

    public SimpleArrayMap() {
        this.f = cj.a;
        this.g = cj.c;
        this.h = 0;
    }

    public SimpleArrayMap(int i) {
        if (i == 0) {
            this.f = cj.a;
            this.g = cj.c;
        } else {
            a(i);
        }
        this.h = 0;
    }

    public SimpleArrayMap(SimpleArrayMap simpleArrayMap) {
        this();
        if (simpleArrayMap != null) {
            putAll(simpleArrayMap);
        }
    }

    public void clear() {
        if (this.h != 0) {
            a(this.f, this.g, this.h);
            this.f = cj.a;
            this.g = cj.c;
            this.h = 0;
        }
    }

    public void ensureCapacity(int i) {
        if (this.f.length < i) {
            int[] iArr = this.f;
            Object[] objArr = this.g;
            a(i);
            if (this.h > 0) {
                System.arraycopy(iArr, 0, this.f, 0, this.h);
                System.arraycopy(objArr, 0, this.g, 0, this.h << 1);
            }
            a(iArr, objArr, this.h);
        }
    }

    public boolean containsKey(Object obj) {
        return indexOfKey(obj) >= 0;
    }

    public int indexOfKey(Object obj) {
        return obj == null ? a() : a(obj, obj.hashCode());
    }

    int a(Object obj) {
        int i = 1;
        int i2 = this.h * 2;
        Object[] objArr = this.g;
        if (obj == null) {
            while (i < i2) {
                if (objArr[i] != null) {
                    i += 2;
                } else {
                    return i >> 1;
                }
            }
        } else {
            while (i < i2) {
                if (!obj.equals(objArr[i])) {
                    i += 2;
                } else {
                    return i >> 1;
                }
            }
        }
        return -1;
    }

    public boolean containsValue(Object obj) {
        return a(obj) >= 0;
    }

    public V get(Object obj) {
        int iIndexOfKey = indexOfKey(obj);
        if (iIndexOfKey >= 0) {
            return (V) this.g[(iIndexOfKey << 1) + 1];
        }
        return null;
    }

    public K keyAt(int i) {
        return (K) this.g[i << 1];
    }

    public V valueAt(int i) {
        return (V) this.g[(i << 1) + 1];
    }

    public V setValueAt(int i, V v) {
        int i2 = (i << 1) + 1;
        V v2 = (V) this.g[i2];
        this.g[i2] = v;
        return v2;
    }

    public boolean isEmpty() {
        return this.h <= 0;
    }

    public V put(K k, V v) {
        int iHashCode;
        int iA;
        int i = 8;
        if (k == null) {
            iA = a();
            iHashCode = 0;
        } else {
            iHashCode = k.hashCode();
            iA = a(k, iHashCode);
        }
        if (iA >= 0) {
            int i2 = (iA << 1) + 1;
            V v2 = (V) this.g[i2];
            this.g[i2] = v;
            return v2;
        }
        int i3 = iA ^ (-1);
        if (this.h >= this.f.length) {
            if (this.h >= 8) {
                i = this.h + (this.h >> 1);
            } else if (this.h < 4) {
                i = 4;
            }
            int[] iArr = this.f;
            Object[] objArr = this.g;
            a(i);
            if (this.f.length > 0) {
                System.arraycopy(iArr, 0, this.f, 0, iArr.length);
                System.arraycopy(objArr, 0, this.g, 0, objArr.length);
            }
            a(iArr, objArr, this.h);
        }
        if (i3 < this.h) {
            System.arraycopy(this.f, i3, this.f, i3 + 1, this.h - i3);
            System.arraycopy(this.g, i3 << 1, this.g, (i3 + 1) << 1, (this.h - i3) << 1);
        }
        this.f[i3] = iHashCode;
        this.g[i3 << 1] = k;
        this.g[(i3 << 1) + 1] = v;
        this.h++;
        return null;
    }

    public void putAll(SimpleArrayMap<? extends K, ? extends V> simpleArrayMap) {
        int i = simpleArrayMap.h;
        ensureCapacity(this.h + i);
        if (this.h == 0) {
            if (i > 0) {
                System.arraycopy(simpleArrayMap.f, 0, this.f, 0, i);
                System.arraycopy(simpleArrayMap.g, 0, this.g, 0, i << 1);
                this.h = i;
                return;
            }
            return;
        }
        for (int i2 = 0; i2 < i; i2++) {
            put(simpleArrayMap.keyAt(i2), simpleArrayMap.valueAt(i2));
        }
    }

    public V remove(Object obj) {
        int iIndexOfKey = indexOfKey(obj);
        if (iIndexOfKey >= 0) {
            return removeAt(iIndexOfKey);
        }
        return null;
    }

    public V removeAt(int i) {
        V v = (V) this.g[(i << 1) + 1];
        if (this.h <= 1) {
            a(this.f, this.g, this.h);
            this.f = cj.a;
            this.g = cj.c;
            this.h = 0;
        } else if (this.f.length > 8 && this.h < this.f.length / 3) {
            int i2 = this.h > 8 ? this.h + (this.h >> 1) : 8;
            int[] iArr = this.f;
            Object[] objArr = this.g;
            a(i2);
            this.h--;
            if (i > 0) {
                System.arraycopy(iArr, 0, this.f, 0, i);
                System.arraycopy(objArr, 0, this.g, 0, i << 1);
            }
            if (i < this.h) {
                System.arraycopy(iArr, i + 1, this.f, i, this.h - i);
                System.arraycopy(objArr, (i + 1) << 1, this.g, i << 1, (this.h - i) << 1);
            }
        } else {
            this.h--;
            if (i < this.h) {
                System.arraycopy(this.f, i + 1, this.f, i, this.h - i);
                System.arraycopy(this.g, (i + 1) << 1, this.g, i << 1, (this.h - i) << 1);
            }
            this.g[this.h << 1] = null;
            this.g[(this.h << 1) + 1] = null;
        }
        return v;
    }

    public int size() {
        return this.h;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Map)) {
            return false;
        }
        Map map = (Map) obj;
        if (size() != map.size()) {
            return false;
        }
        for (int i = 0; i < this.h; i++) {
            try {
                K kKeyAt = keyAt(i);
                V vValueAt = valueAt(i);
                Object obj2 = map.get(kKeyAt);
                if (vValueAt == null) {
                    if (obj2 != null || !map.containsKey(kKeyAt)) {
                        return false;
                    }
                } else if (!vValueAt.equals(obj2)) {
                    return false;
                }
            } catch (ClassCastException e2) {
                return false;
            } catch (NullPointerException e3) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        int[] iArr = this.f;
        Object[] objArr = this.g;
        int i = this.h;
        int i2 = 1;
        int i3 = 0;
        int iHashCode = 0;
        while (i3 < i) {
            Object obj = objArr[i2];
            iHashCode += (obj == null ? 0 : obj.hashCode()) ^ iArr[i3];
            i3++;
            i2 += 2;
        }
        return iHashCode;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.h * 28);
        sb.append('{');
        for (int i = 0; i < this.h; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            K kKeyAt = keyAt(i);
            if (kKeyAt != this) {
                sb.append(kKeyAt);
            } else {
                sb.append("(this Map)");
            }
            sb.append('=');
            V vValueAt = valueAt(i);
            if (vValueAt != this) {
                sb.append(vValueAt);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
