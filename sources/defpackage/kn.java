package defpackage;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible
public abstract class kn<F, T> implements Iterator<T> {
    final Iterator<? extends F> c;

    public abstract T a(F f);

    protected kn(Iterator<? extends F> it) {
        this.c = (Iterator) Preconditions.checkNotNull(it);
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.c.hasNext();
    }

    @Override // java.util.Iterator
    public final T next() {
        return a(this.c.next());
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.c.remove();
    }
}
