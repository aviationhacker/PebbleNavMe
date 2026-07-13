package defpackage;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Ordering;
import java.io.Serializable;
import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(serializable = true)
public final class hw<T> extends Ordering<T> implements Serializable {
    private static final long serialVersionUID = 0;
    final ImmutableList<Comparator<? super T>> a;

    public hw(Comparator<? super T> comparator, Comparator<? super T> comparator2) {
        this.a = ImmutableList.of(comparator, comparator2);
    }

    public hw(Iterable<? extends Comparator<? super T>> iterable) {
        this.a = ImmutableList.copyOf(iterable);
    }

    @Override // com.google.common.collect.Ordering, java.util.Comparator
    public int compare(T t, T t2) {
        int size = this.a.size();
        for (int i = 0; i < size; i++) {
            int iCompare = this.a.get(i).compare(t, t2);
            if (iCompare != 0) {
                return iCompare;
            }
        }
        return 0;
    }

    @Override // java.util.Comparator
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof hw) {
            return this.a.equals(((hw) obj).a);
        }
        return false;
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public String toString() {
        String strValueOf = String.valueOf(this.a);
        return new StringBuilder(String.valueOf(strValueOf).length() + 19).append("Ordering.compound(").append(strValueOf).append(")").toString();
    }
}
