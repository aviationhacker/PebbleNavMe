package defpackage;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Maps;
import com.google.common.collect.Ordering;
import java.io.Serializable;
import java.util.List;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(serializable = true)
public final class ik<T> extends Ordering<T> implements Serializable {
    private static final long serialVersionUID = 0;
    final ImmutableMap<T, Integer> a;

    public ik(List<T> list) {
        this(Maps.a(list));
    }

    ik(ImmutableMap<T, Integer> immutableMap) {
        this.a = immutableMap;
    }

    @Override // com.google.common.collect.Ordering, java.util.Comparator
    public int compare(T t, T t2) {
        return a(t) - a(t2);
    }

    private int a(T t) {
        Integer num = this.a.get(t);
        if (num == null) {
            throw new Ordering.c(t);
        }
        return num.intValue();
    }

    @Override // java.util.Comparator
    public boolean equals(@Nullable Object obj) {
        if (obj instanceof ik) {
            return this.a.equals(((ik) obj).a);
        }
        return false;
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public String toString() {
        String strValueOf = String.valueOf(this.a.keySet());
        return new StringBuilder(String.valueOf(strValueOf).length() + 19).append("Ordering.explicit(").append(strValueOf).append(")").toString();
    }
}
