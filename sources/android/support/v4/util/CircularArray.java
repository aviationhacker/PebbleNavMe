package android.support.v4.util;

/* JADX INFO: loaded from: classes.dex */
public final class CircularArray<E> {
    private E[] a;
    private int b;
    private int c;
    private int d;

    private void a() {
        int length = this.a.length;
        int i = length - this.b;
        int i2 = length << 1;
        if (i2 < 0) {
            throw new RuntimeException("Max array capacity exceeded");
        }
        Object[] objArr = new Object[i2];
        System.arraycopy(this.a, this.b, objArr, 0, i);
        System.arraycopy(this.a, 0, objArr, i, this.b);
        this.a = (E[]) objArr;
        this.b = 0;
        this.c = length;
        this.d = i2 - 1;
    }

    public CircularArray() {
        this(8);
    }

    public CircularArray(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("capacity must be positive");
        }
        i = Integer.bitCount(i) != 1 ? 1 << (Integer.highestOneBit(i) + 1) : i;
        this.d = i - 1;
        this.a = (E[]) new Object[i];
    }

    public void addFirst(E e) {
        this.b = (this.b - 1) & this.d;
        this.a[this.b] = e;
        if (this.b == this.c) {
            a();
        }
    }

    public void addLast(E e) {
        this.a[this.c] = e;
        this.c = (this.c + 1) & this.d;
        if (this.c == this.b) {
            a();
        }
    }

    public E popFirst() {
        if (this.b == this.c) {
            throw new ArrayIndexOutOfBoundsException();
        }
        E e = this.a[this.b];
        this.a[this.b] = null;
        this.b = (this.b + 1) & this.d;
        return e;
    }

    public E popLast() {
        if (this.b == this.c) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int i = (this.c - 1) & this.d;
        E e = this.a[i];
        this.a[i] = null;
        this.c = i;
        return e;
    }

    public void clear() {
        removeFromStart(size());
    }

    public void removeFromStart(int i) {
        if (i > 0) {
            if (i > size()) {
                throw new ArrayIndexOutOfBoundsException();
            }
            int length = this.a.length;
            if (i < length - this.b) {
                length = this.b + i;
            }
            for (int i2 = this.b; i2 < length; i2++) {
                this.a[i2] = null;
            }
            int i3 = length - this.b;
            int i4 = i - i3;
            this.b = (i3 + this.b) & this.d;
            if (i4 > 0) {
                for (int i5 = 0; i5 < i4; i5++) {
                    this.a[i5] = null;
                }
                this.b = i4;
            }
        }
    }

    public void removeFromEnd(int i) {
        if (i > 0) {
            if (i > size()) {
                throw new ArrayIndexOutOfBoundsException();
            }
            int i2 = 0;
            if (i < this.c) {
                i2 = this.c - i;
            }
            for (int i3 = i2; i3 < this.c; i3++) {
                this.a[i3] = null;
            }
            int i4 = this.c - i2;
            int i5 = i - i4;
            this.c -= i4;
            if (i5 > 0) {
                this.c = this.a.length;
                int i6 = this.c - i5;
                for (int i7 = i6; i7 < this.c; i7++) {
                    this.a[i7] = null;
                }
                this.c = i6;
            }
        }
    }

    public E getFirst() {
        if (this.b == this.c) {
            throw new ArrayIndexOutOfBoundsException();
        }
        return this.a[this.b];
    }

    public E getLast() {
        if (this.b == this.c) {
            throw new ArrayIndexOutOfBoundsException();
        }
        return this.a[(this.c - 1) & this.d];
    }

    public E get(int i) {
        if (i < 0 || i >= size()) {
            throw new ArrayIndexOutOfBoundsException();
        }
        return this.a[(this.b + i) & this.d];
    }

    public int size() {
        return (this.c - this.b) & this.d;
    }

    public boolean isEmpty() {
        return this.b == this.c;
    }
}
