package defpackage;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.Iterators;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible
public abstract class ko<F, T> extends kn<F, T> implements ListIterator<T> {
    protected ko(ListIterator<? extends F> listIterator) {
        super(listIterator);
    }

    private ListIterator<? extends F> a() {
        return Iterators.c(this.c);
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return a().hasPrevious();
    }

    @Override // java.util.ListIterator
    public final T previous() {
        return a(a().previous());
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return a().nextIndex();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return a().previousIndex();
    }

    public void set(T t) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    public void add(T t) {
        throw new UnsupportedOperationException();
    }
}
