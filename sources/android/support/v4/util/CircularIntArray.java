package android.support.v4.util;

/* JADX INFO: loaded from: classes.dex */
public final class CircularIntArray {
    private int[] a;
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
        int[] iArr = new int[i2];
        System.arraycopy(this.a, this.b, iArr, 0, i);
        System.arraycopy(this.a, 0, iArr, i, this.b);
        this.a = iArr;
        this.b = 0;
        this.c = length;
        this.d = i2 - 1;
    }

    public CircularIntArray() {
        this(8);
    }

    public CircularIntArray(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("capacity must be positive");
        }
        i = Integer.bitCount(i) != 1 ? 1 << (Integer.highestOneBit(i) + 1) : i;
        this.d = i - 1;
        this.a = new int[i];
    }

    public void addFirst(int i) {
        this.b = (this.b - 1) & this.d;
        this.a[this.b] = i;
        if (this.b == this.c) {
            a();
        }
    }

    public void addLast(int i) {
        this.a[this.c] = i;
        this.c = (this.c + 1) & this.d;
        if (this.c == this.b) {
            a();
        }
    }

    public int popFirst() {
        if (this.b == this.c) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int i = this.a[this.b];
        this.b = (this.b + 1) & this.d;
        return i;
    }

    public int popLast() {
        if (this.b == this.c) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int i = (this.c - 1) & this.d;
        int i2 = this.a[i];
        this.c = i;
        return i2;
    }

    public void clear() {
        this.c = this.b;
    }

    public void removeFromStart(int i) {
        if (i > 0) {
            if (i > size()) {
                throw new ArrayIndexOutOfBoundsException();
            }
            this.b = (this.b + i) & this.d;
        }
    }

    public void removeFromEnd(int i) {
        if (i > 0) {
            if (i > size()) {
                throw new ArrayIndexOutOfBoundsException();
            }
            this.c = (this.c - i) & this.d;
        }
    }

    public int getFirst() {
        if (this.b == this.c) {
            throw new ArrayIndexOutOfBoundsException();
        }
        return this.a[this.b];
    }

    public int getLast() {
        if (this.b == this.c) {
            throw new ArrayIndexOutOfBoundsException();
        }
        return this.a[(this.c - 1) & this.d];
    }

    public int get(int i) {
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
