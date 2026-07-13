package defpackage;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Equivalence;
import com.google.common.base.Preconditions;
import java.io.Serializable;
import java.util.Iterator;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(serializable = true)
public final class gt<T> extends Equivalence<Iterable<T>> implements Serializable {
    private static final long serialVersionUID = 1;
    final Equivalence<? super T> a;

    public gt(Equivalence<? super T> equivalence) {
        this.a = (Equivalence) Preconditions.checkNotNull(equivalence);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.base.Equivalence
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public boolean doEquivalent(Iterable<T> iterable, Iterable<T> iterable2) {
        Iterator<T> it = iterable.iterator();
        Iterator<T> it2 = iterable2.iterator();
        while (it.hasNext() && it2.hasNext()) {
            if (!this.a.equivalent(it.next(), it2.next())) {
                return false;
            }
        }
        return (it.hasNext() || it2.hasNext()) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.base.Equivalence
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int doHash(Iterable<T> iterable) {
        int iHash = 78721;
        Iterator<T> it = iterable.iterator();
        while (it.hasNext()) {
            iHash = (iHash * 24943) + this.a.hash(it.next());
        }
        return iHash;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof gt) {
            return this.a.equals(((gt) obj).a);
        }
        return false;
    }

    public int hashCode() {
        return this.a.hashCode() ^ 1185147655;
    }

    public String toString() {
        String strValueOf = String.valueOf(this.a);
        return new StringBuilder(String.valueOf(strValueOf).length() + 11).append(strValueOf).append(".pairwise()").toString();
    }
}
