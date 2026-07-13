package defpackage;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Function;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.collect.Ordering;
import java.io.Serializable;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(serializable = true)
public final class hs<F, T> extends Ordering<F> implements Serializable {
    private static final long serialVersionUID = 0;
    final Function<F, ? extends T> a;
    final Ordering<T> b;

    public hs(Function<F, ? extends T> function, Ordering<T> ordering) {
        this.a = (Function) Preconditions.checkNotNull(function);
        this.b = (Ordering) Preconditions.checkNotNull(ordering);
    }

    @Override // com.google.common.collect.Ordering, java.util.Comparator
    public int compare(F f, F f2) {
        return this.b.compare(this.a.apply(f), this.a.apply(f2));
    }

    @Override // java.util.Comparator
    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof hs)) {
            return false;
        }
        hs hsVar = (hs) obj;
        return this.a.equals(hsVar.a) && this.b.equals(hsVar.b);
    }

    public int hashCode() {
        return Objects.hashCode(this.a, this.b);
    }

    public String toString() {
        String strValueOf = String.valueOf(this.b);
        String strValueOf2 = String.valueOf(this.a);
        return new StringBuilder(String.valueOf(strValueOf).length() + 13 + String.valueOf(strValueOf2).length()).append(strValueOf).append(".onResultOf(").append(strValueOf2).append(")").toString();
    }
}
