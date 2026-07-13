package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible
public abstract class AbstractIterator<T> extends UnmodifiableIterator<T> {
    private a a = a.NOT_READY;
    private T b;

    enum a {
        READY,
        NOT_READY,
        DONE,
        FAILED
    }

    public abstract T computeNext();

    protected AbstractIterator() {
    }

    protected final T endOfData() {
        this.a = a.DONE;
        return null;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        Preconditions.checkState(this.a != a.FAILED);
        switch (this.a) {
            case DONE:
                return false;
            case READY:
                return true;
            default:
                return a();
        }
    }

    private boolean a() {
        this.a = a.FAILED;
        this.b = computeNext();
        if (this.a == a.DONE) {
            return false;
        }
        this.a = a.READY;
        return true;
    }

    @Override // java.util.Iterator
    public final T next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.a = a.NOT_READY;
        T t = this.b;
        this.b = null;
        return t;
    }

    public final T peek() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        return this.b;
    }
}
