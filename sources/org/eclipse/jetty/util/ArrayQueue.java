package org.eclipse.jetty.util;

import java.util.AbstractList;
import java.util.NoSuchElementException;
import java.util.Queue;

/* JADX INFO: loaded from: classes.dex */
public class ArrayQueue<E> extends AbstractList<E> implements Queue<E> {
    public static final int DEFAULT_CAPACITY = 64;
    public static final int DEFAULT_GROWTH = 32;
    protected Object[] _elements;
    protected final int _growCapacity;
    protected final Object _lock;
    protected int _nextE;
    protected int _nextSlot;
    protected int _size;

    public ArrayQueue() {
        this(64, -1);
    }

    public ArrayQueue(int i) {
        this(i, -1);
    }

    public ArrayQueue(int i, int i2) {
        this(i, i2, null);
    }

    public ArrayQueue(int i, int i2, Object obj) {
        this._lock = obj == null ? this : obj;
        this._growCapacity = i2;
        this._elements = new Object[i];
    }

    public int getCapacity() {
        int length;
        synchronized (this._lock) {
            length = this._elements.length;
        }
        return length;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List, java.util.Queue
    public boolean add(E e) {
        if (!offer(e)) {
            throw new IllegalStateException("Full");
        }
        return true;
    }

    @Override // java.util.Queue
    public boolean offer(E e) {
        boolean zA;
        synchronized (this._lock) {
            zA = a(e);
        }
        return zA;
    }

    private boolean a(E e) {
        if (this._size == this._elements.length && !grow()) {
            return false;
        }
        this._size++;
        Object[] objArr = this._elements;
        int i = this._nextSlot;
        this._nextSlot = i + 1;
        objArr[i] = e;
        if (this._nextSlot == this._elements.length) {
            this._nextSlot = 0;
        }
        return true;
    }

    public void addUnsafe(E e) {
        if (!a(e)) {
            throw new IllegalStateException("Full");
        }
    }

    @Override // java.util.Queue
    public E element() {
        E eA;
        synchronized (this._lock) {
            if (isEmpty()) {
                throw new NoSuchElementException();
            }
            eA = a(this._nextE);
        }
        return eA;
    }

    private E a(int i) {
        return (E) this._elements[i];
    }

    @Override // java.util.Queue
    public E peek() {
        E eA;
        synchronized (this._lock) {
            eA = isEmpty() ? null : a(this._nextE);
        }
        return eA;
    }

    @Override // java.util.Queue
    public E poll() {
        E eA;
        synchronized (this._lock) {
            eA = this._size == 0 ? null : a();
        }
        return eA;
    }

    private E a() {
        E eA = a(this._nextE);
        this._elements[this._nextE] = null;
        this._size--;
        int i = this._nextE + 1;
        this._nextE = i;
        if (i == this._elements.length) {
            this._nextE = 0;
        }
        return eA;
    }

    @Override // java.util.Queue
    public E remove() {
        E eA;
        synchronized (this._lock) {
            if (this._size == 0) {
                throw new NoSuchElementException();
            }
            eA = a();
        }
        return eA;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        synchronized (this._lock) {
            this._size = 0;
            this._nextE = 0;
            this._nextSlot = 0;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean isEmpty() {
        boolean z;
        synchronized (this._lock) {
            z = this._size == 0;
        }
        return z;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        int i;
        synchronized (this._lock) {
            i = this._size;
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public E get(int i) {
        E unsafe;
        synchronized (this._lock) {
            if (i >= 0) {
                if (i < this._size) {
                    unsafe = getUnsafe(i);
                }
            }
            throw new IndexOutOfBoundsException("!(0<" + i + "<=" + this._size + ")");
        }
        return unsafe;
    }

    public E getUnsafe(int i) {
        return a((this._nextE + i) % this._elements.length);
    }

    @Override // java.util.AbstractList, java.util.List
    public E remove(int i) {
        E eA;
        synchronized (this._lock) {
            if (i >= 0) {
                if (i < this._size) {
                    int length = (this._nextE + i) % this._elements.length;
                    eA = a(length);
                    if (length < this._nextSlot) {
                        System.arraycopy(this._elements, length + 1, this._elements, length, this._nextSlot - length);
                        this._nextSlot--;
                        this._size--;
                    } else {
                        System.arraycopy(this._elements, length + 1, this._elements, length, (this._elements.length - length) - 1);
                        if (this._nextSlot > 0) {
                            this._elements[this._elements.length - 1] = this._elements[0];
                            System.arraycopy(this._elements, 1, this._elements, 0, this._nextSlot - 1);
                            this._nextSlot--;
                        } else {
                            this._nextSlot = this._elements.length - 1;
                        }
                        this._size--;
                    }
                }
            }
            throw new IndexOutOfBoundsException("!(0<" + i + "<=" + this._size + ")");
        }
        return eA;
    }

    @Override // java.util.AbstractList, java.util.List
    public E set(int i, E e) {
        E eA;
        synchronized (this._lock) {
            if (i >= 0) {
                if (i < this._size) {
                    int length = this._nextE + i;
                    if (length >= this._elements.length) {
                        length -= this._elements.length;
                    }
                    eA = a(length);
                    this._elements[length] = e;
                }
            }
            throw new IndexOutOfBoundsException("!(0<" + i + "<=" + this._size + ")");
        }
        return eA;
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int i, E e) {
        synchronized (this._lock) {
            if (i >= 0) {
                if (i <= this._size) {
                    if (this._size == this._elements.length && !grow()) {
                        throw new IllegalStateException("Full");
                    }
                    if (i == this._size) {
                        add(e);
                    } else {
                        int length = this._nextE + i;
                        if (length >= this._elements.length) {
                            length -= this._elements.length;
                        }
                        this._size++;
                        this._nextSlot++;
                        if (this._nextSlot == this._elements.length) {
                            this._nextSlot = 0;
                        }
                        if (length < this._nextSlot) {
                            System.arraycopy(this._elements, length, this._elements, length + 1, this._nextSlot - length);
                            this._elements[length] = e;
                        } else {
                            if (this._nextSlot > 0) {
                                System.arraycopy(this._elements, 0, this._elements, 1, this._nextSlot);
                                this._elements[0] = this._elements[this._elements.length - 1];
                            }
                            System.arraycopy(this._elements, length, this._elements, length + 1, (this._elements.length - length) - 1);
                            this._elements[length] = e;
                        }
                    }
                }
            }
            throw new IndexOutOfBoundsException("!(0<" + i + "<=" + this._size + ")");
        }
    }

    protected boolean grow() {
        boolean z = false;
        synchronized (this._lock) {
            if (this._growCapacity > 0) {
                Object[] objArr = new Object[this._elements.length + this._growCapacity];
                int length = this._elements.length - this._nextE;
                if (length > 0) {
                    System.arraycopy(this._elements, this._nextE, objArr, 0, length);
                }
                if (this._nextE != 0) {
                    System.arraycopy(this._elements, 0, objArr, length, this._nextSlot);
                }
                this._elements = objArr;
                this._nextE = 0;
                this._nextSlot = this._size;
                z = true;
            }
        }
        return z;
    }
}
