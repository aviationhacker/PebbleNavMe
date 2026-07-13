package defpackage;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.Ordering;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(serializable = true)
public final class jk extends Ordering<Comparable> implements Serializable {
    public static final jk a = new jk();
    private static final long serialVersionUID = 0;

    @Override // com.google.common.collect.Ordering, java.util.Comparator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compare(Comparable comparable, Comparable comparable2) {
        Preconditions.checkNotNull(comparable);
        Preconditions.checkNotNull(comparable2);
        return comparable.compareTo(comparable2);
    }

    @Override // com.google.common.collect.Ordering
    public <S extends Comparable> Ordering<S> reverse() {
        return jy.a;
    }

    private Object readResolve() {
        return a;
    }

    public String toString() {
        return "Ordering.natural()";
    }

    private jk() {
    }
}
