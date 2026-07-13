package defpackage;

import com.google.common.base.Preconditions;
import com.google.common.collect.BoundType;
import com.google.common.collect.ImmutableSortedMultiset;
import com.google.common.collect.ImmutableSortedSet;
import com.google.common.collect.Multiset;
import com.google.common.collect.Multisets;
import com.google.common.primitives.Ints;
import java.util.Comparator;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class jv<E> extends ImmutableSortedMultiset<E> {
    private static final long[] b = {0};
    private final transient jw<E> c;
    private final transient long[] d;
    private final transient int e;
    private final transient int f;

    public jv(Comparator<? super E> comparator) {
        this.c = ImmutableSortedSet.a((Comparator) comparator);
        this.d = b;
        this.e = 0;
        this.f = 0;
    }

    public jv(jw<E> jwVar, long[] jArr, int i, int i2) {
        this.c = jwVar;
        this.d = jArr;
        this.e = i;
        this.f = i2;
    }

    private int b(int i) {
        return (int) (this.d[(this.e + i) + 1] - this.d[this.e + i]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableMultiset
    protected Multiset.Entry<E> a(int i) {
        return Multisets.immutableEntry(this.c.asList().get(i), b(i));
    }

    @Override // com.google.common.collect.SortedMultiset
    public Multiset.Entry<E> firstEntry() {
        if (isEmpty()) {
            return null;
        }
        return a(0);
    }

    @Override // com.google.common.collect.SortedMultiset
    public Multiset.Entry<E> lastEntry() {
        if (isEmpty()) {
            return null;
        }
        return a(this.f - 1);
    }

    @Override // com.google.common.collect.Multiset
    public int count(@Nullable Object obj) {
        int iA = this.c.a(obj);
        if (iA >= 0) {
            return b(iA);
        }
        return 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public int size() {
        return Ints.saturatedCast(this.d[this.e + this.f] - this.d[this.e]);
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.Multiset
    public ImmutableSortedSet<E> elementSet() {
        return this.c;
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.SortedMultiset
    public ImmutableSortedMultiset<E> headMultiset(E e, BoundType boundType) {
        return a(0, this.c.c(e, Preconditions.checkNotNull(boundType) == BoundType.CLOSED));
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.SortedMultiset
    public ImmutableSortedMultiset<E> tailMultiset(E e, BoundType boundType) {
        return a(this.c.d(e, Preconditions.checkNotNull(boundType) == BoundType.CLOSED), this.f);
    }

    ImmutableSortedMultiset<E> a(int i, int i2) {
        Preconditions.checkPositionIndexes(i, i2, this.f);
        if (i == i2) {
            return a(comparator());
        }
        return (i == 0 && i2 == this.f) ? this : new jv(this.c.a(i, i2), this.d, this.e + i, i2 - i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public boolean a() {
        return this.e > 0 || this.f < this.d.length + (-1);
    }
}
