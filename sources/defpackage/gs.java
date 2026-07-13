package defpackage;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Equivalence;
import com.google.common.base.Function;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import java.io.Serializable;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Beta
@GwtCompatible
public final class gs<F, T> extends Equivalence<F> implements Serializable {
    private static final long serialVersionUID = 0;
    private final Function<F, ? extends T> a;
    private final Equivalence<T> b;

    public gs(Function<F, ? extends T> function, Equivalence<T> equivalence) {
        this.a = (Function) Preconditions.checkNotNull(function);
        this.b = (Equivalence) Preconditions.checkNotNull(equivalence);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.base.Equivalence
    public boolean doEquivalent(F f, F f2) {
        return this.b.equivalent(this.a.apply(f), this.a.apply(f2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.base.Equivalence
    public int doHash(F f) {
        return this.b.hash(this.a.apply(f));
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof gs)) {
            return false;
        }
        gs gsVar = (gs) obj;
        return this.a.equals(gsVar.a) && this.b.equals(gsVar.b);
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
