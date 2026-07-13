package org.eclipse.jetty.util;

import java.util.AbstractList;
import java.util.Collection;
import java.util.NoSuchElementException;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes.dex */
public class BlockingArrayQueue<E> extends AbstractList<E> implements BlockingQueue<E> {
    public final int DEFAULT_CAPACITY;
    public final int DEFAULT_GROWTH;
    private final int a;
    private final AtomicInteger b;
    private final int c;
    private volatile int d;
    private Object[] e;
    private final ReentrantLock f;
    private final Condition g;
    private int h;
    private final ReentrantLock i;
    private int j;

    public BlockingArrayQueue() {
        this.DEFAULT_CAPACITY = 128;
        this.DEFAULT_GROWTH = 64;
        this.b = new AtomicInteger();
        this.f = new ReentrantLock();
        this.g = this.f.newCondition();
        this.i = new ReentrantLock();
        this.e = new Object[128];
        this.c = 64;
        this.d = this.e.length;
        this.a = Integer.MAX_VALUE;
    }

    public BlockingArrayQueue(int i) {
        this.DEFAULT_CAPACITY = 128;
        this.DEFAULT_GROWTH = 64;
        this.b = new AtomicInteger();
        this.f = new ReentrantLock();
        this.g = this.f.newCondition();
        this.i = new ReentrantLock();
        this.e = new Object[i];
        this.d = this.e.length;
        this.c = -1;
        this.a = i;
    }

    public BlockingArrayQueue(int i, int i2) {
        this.DEFAULT_CAPACITY = 128;
        this.DEFAULT_GROWTH = 64;
        this.b = new AtomicInteger();
        this.f = new ReentrantLock();
        this.g = this.f.newCondition();
        this.i = new ReentrantLock();
        this.e = new Object[i];
        this.d = this.e.length;
        this.c = i2;
        this.a = Integer.MAX_VALUE;
    }

    public BlockingArrayQueue(int i, int i2, int i3) {
        this.DEFAULT_CAPACITY = 128;
        this.DEFAULT_GROWTH = 64;
        this.b = new AtomicInteger();
        this.f = new ReentrantLock();
        this.g = this.f.newCondition();
        this.i = new ReentrantLock();
        if (i > i3) {
            throw new IllegalArgumentException();
        }
        this.e = new Object[i];
        this.d = this.e.length;
        this.c = i2;
        this.a = i3;
    }

    public int getCapacity() {
        return this.d;
    }

    public int getLimit() {
        return this.a;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List, java.util.concurrent.BlockingQueue, java.util.Queue
    public boolean add(E e) {
        return offer(e);
    }

    @Override // java.util.Queue
    public E element() {
        E ePeek = peek();
        if (ePeek == null) {
            throw new NoSuchElementException();
        }
        return ePeek;
    }

    @Override // java.util.Queue
    public E peek() {
        E e = null;
        if (this.b.get() != 0) {
            this.f.lock();
            try {
                if (this.b.get() > 0) {
                    e = (E) this.e[this.h];
                }
            } finally {
                this.f.unlock();
            }
        }
        return e;
    }

    @Override // java.util.concurrent.BlockingQueue, java.util.Queue
    public boolean offer(E e) {
        if (e == null) {
            throw new NullPointerException();
        }
        this.i.lock();
        try {
            if (this.b.get() >= this.a) {
                return false;
            }
            if (this.b.get() == this.d) {
                this.f.lock();
                try {
                    if (!a()) {
                        return false;
                    }
                    this.f.unlock();
                } finally {
                }
            }
            this.e[this.j] = e;
            this.j = (this.j + 1) % this.d;
            if (this.b.getAndIncrement() == 0) {
                this.f.lock();
                try {
                    this.g.signal();
                } finally {
                }
            }
            return true;
        } finally {
            this.i.unlock();
        }
    }

    @Override // java.util.Queue
    public E poll() {
        E e = null;
        if (this.b.get() != 0) {
            this.f.lock();
            try {
                if (this.b.get() > 0) {
                    int i = this.h;
                    e = (E) this.e[i];
                    this.e[i] = null;
                    this.h = (i + 1) % this.d;
                    if (this.b.decrementAndGet() > 0) {
                        this.g.signal();
                    }
                }
            } finally {
                this.f.unlock();
            }
        }
        return e;
    }

    @Override // java.util.concurrent.BlockingQueue
    public E take() throws InterruptedException {
        this.f.lockInterruptibly();
        while (this.b.get() == 0) {
            try {
                try {
                    this.g.await();
                } catch (InterruptedException e) {
                    this.g.signal();
                    throw e;
                }
            } finally {
                this.f.unlock();
            }
        }
        int i = this.h;
        E e2 = (E) this.e[i];
        this.e[i] = null;
        this.h = (i + 1) % this.d;
        if (this.b.decrementAndGet() > 0) {
            this.g.signal();
        }
        return e2;
    }

    @Override // java.util.concurrent.BlockingQueue
    public E poll(long j, TimeUnit timeUnit) throws InterruptedException {
        E e = null;
        long nanos = timeUnit.toNanos(j);
        this.f.lockInterruptibly();
        while (true) {
            try {
                try {
                    if (this.b.get() != 0) {
                        e = (E) this.e[this.h];
                        this.e[this.h] = null;
                        this.h = (this.h + 1) % this.d;
                        if (this.b.decrementAndGet() > 0) {
                            this.g.signal();
                        }
                    } else {
                        if (nanos <= 0) {
                            break;
                        }
                        nanos = this.g.awaitNanos(nanos);
                    }
                } catch (InterruptedException e2) {
                    this.g.signal();
                    throw e2;
                }
            } finally {
                this.f.unlock();
            }
        }
        return e;
    }

    @Override // java.util.Queue
    public E remove() {
        E ePoll = poll();
        if (ePoll == null) {
            throw new NoSuchElementException();
        }
        return ePoll;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        this.i.lock();
        try {
            this.f.lock();
            try {
                this.h = 0;
                this.j = 0;
                this.b.set(0);
            } finally {
                this.f.unlock();
            }
        } finally {
            this.i.unlock();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean isEmpty() {
        return this.b.get() == 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.b.get();
    }

    @Override // java.util.AbstractList, java.util.List
    public E get(int i) {
        this.i.lock();
        try {
            this.f.lock();
            if (i >= 0) {
                try {
                    if (i < this.b.get()) {
                        int i2 = this.h + i;
                        if (i2 >= this.d) {
                            i2 -= this.d;
                        }
                        return (E) this.e[i2];
                    }
                } finally {
                    this.f.unlock();
                }
            }
            throw new IndexOutOfBoundsException("!(0<" + i + "<=" + this.b + ")");
        } finally {
            this.i.unlock();
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public E remove(int i) {
        this.i.lock();
        try {
            this.f.lock();
            if (i >= 0) {
                try {
                    if (i < this.b.get()) {
                        int i2 = this.h + i;
                        if (i2 >= this.d) {
                            i2 -= this.d;
                        }
                        E e = (E) this.e[i2];
                        if (i2 < this.j) {
                            System.arraycopy(this.e, i2 + 1, this.e, i2, this.j - i2);
                            this.j--;
                            this.b.decrementAndGet();
                        } else {
                            System.arraycopy(this.e, i2 + 1, this.e, i2, (this.d - i2) - 1);
                            if (this.j > 0) {
                                this.e[this.d] = this.e[0];
                                System.arraycopy(this.e, 1, this.e, 0, this.j - 1);
                                this.j--;
                            } else {
                                this.j = this.d - 1;
                            }
                            this.b.decrementAndGet();
                        }
                        return e;
                    }
                } finally {
                    this.f.unlock();
                }
            }
            throw new IndexOutOfBoundsException("!(0<" + i + "<=" + this.b + ")");
        } finally {
            this.i.unlock();
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public E set(int i, E e) {
        if (e == null) {
            throw new NullPointerException();
        }
        this.i.lock();
        try {
            this.f.lock();
            if (i >= 0) {
                try {
                    if (i < this.b.get()) {
                        int i2 = this.h + i;
                        if (i2 >= this.d) {
                            i2 -= this.d;
                        }
                        E e2 = (E) this.e[i2];
                        this.e[i2] = e;
                        return e2;
                    }
                } finally {
                    this.f.unlock();
                }
            }
            throw new IndexOutOfBoundsException("!(0<" + i + "<=" + this.b + ")");
        } finally {
            this.i.unlock();
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int i, E e) {
        if (e == null) {
            throw new NullPointerException();
        }
        this.i.lock();
        try {
            this.f.lock();
            if (i >= 0) {
                try {
                    if (i <= this.b.get()) {
                        if (i == this.b.get()) {
                            add(e);
                        } else {
                            if (this.j == this.h && !a()) {
                                throw new IllegalStateException("full");
                            }
                            int i2 = this.h + i;
                            if (i2 >= this.d) {
                                i2 -= this.d;
                            }
                            this.b.incrementAndGet();
                            this.j = (this.j + 1) % this.d;
                            if (i2 < this.j) {
                                System.arraycopy(this.e, i2, this.e, i2 + 1, this.j - i2);
                                this.e[i2] = e;
                            } else {
                                if (this.j > 0) {
                                    System.arraycopy(this.e, 0, this.e, 1, this.j);
                                    this.e[0] = this.e[this.d - 1];
                                }
                                System.arraycopy(this.e, i2, this.e, i2 + 1, (this.d - i2) - 1);
                                this.e[i2] = e;
                            }
                        }
                        return;
                    }
                } finally {
                    this.f.unlock();
                }
            }
            throw new IndexOutOfBoundsException("!(0<" + i + "<=" + this.b + ")");
        } finally {
            this.i.unlock();
        }
    }

    private boolean a() {
        boolean z = false;
        int i = 0;
        if (this.c > 0) {
            this.i.lock();
            try {
                this.f.lock();
                try {
                    int i2 = this.h;
                    int i3 = this.j;
                    Object[] objArr = new Object[this.d + this.c];
                    if (i2 < i3) {
                        i = i3 - i2;
                        System.arraycopy(this.e, i2, objArr, 0, i);
                    } else if (i2 > i3 || this.b.get() > 0) {
                        i = (this.d + i3) - i2;
                        int i4 = this.d - i2;
                        System.arraycopy(this.e, i2, objArr, 0, i4);
                        System.arraycopy(this.e, 0, objArr, i4, i3);
                    }
                    this.e = objArr;
                    this.d = this.e.length;
                    this.h = 0;
                    this.j = i;
                    z = true;
                } finally {
                    this.f.unlock();
                }
            } finally {
                this.i.unlock();
            }
        }
        return z;
    }

    @Override // java.util.concurrent.BlockingQueue
    public int drainTo(Collection<? super E> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.concurrent.BlockingQueue
    public int drainTo(Collection<? super E> collection, int i) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.concurrent.BlockingQueue
    public boolean offer(E e, long j, TimeUnit timeUnit) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.concurrent.BlockingQueue
    public void put(E e) {
        if (!add(e)) {
            throw new IllegalStateException("full");
        }
    }

    @Override // java.util.concurrent.BlockingQueue
    public int remainingCapacity() {
        this.i.lock();
        try {
            this.f.lock();
            try {
                return getCapacity() - size();
            } finally {
                this.f.unlock();
            }
        } finally {
            this.i.unlock();
        }
    }
}
