package defpackage;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Lists;
import com.google.common.collect.Ordering;
import java.io.Serializable;
import java.util.List;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(serializable = true)
public final class hr extends Ordering<Object> implements Serializable {
    public static final hr a = new hr();
    private static final long serialVersionUID = 0;

    hr() {
    }

    @Override // com.google.common.collect.Ordering, java.util.Comparator
    public int compare(@Nullable Object obj, @Nullable Object obj2) {
        return 0;
    }

    @Override // com.google.common.collect.Ordering
    public <E> List<E> sortedCopy(Iterable<E> iterable) {
        return Lists.newArrayList(iterable);
    }

    @Override // com.google.common.collect.Ordering
    public <E> ImmutableList<E> immutableSortedCopy(Iterable<E> iterable) {
        return ImmutableList.copyOf(iterable);
    }

    @Override // com.google.common.collect.Ordering
    public <S> Ordering<S> reverse() {
        return this;
    }

    private Object readResolve() {
        return a;
    }

    public String toString() {
        return "Ordering.allEqual()";
    }
}
