package defpackage;

import com.google.common.collect.BoundType;
import com.google.common.collect.ImmutableSortedMultiset;
import com.google.common.collect.ImmutableSortedSet;
import com.google.common.collect.Multiset;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class ie<E> extends ImmutableSortedMultiset<E> {
    private final transient ImmutableSortedMultiset<E> b;

    public ie(ImmutableSortedMultiset<E> immutableSortedMultiset) {
        this.b = immutableSortedMultiset;
    }

    @Override // com.google.common.collect.Multiset
    public int count(@Nullable Object obj) {
        return this.b.count(obj);
    }

    @Override // com.google.common.collect.SortedMultiset
    public Multiset.Entry<E> firstEntry() {
        return this.b.lastEntry();
    }

    @Override // com.google.common.collect.SortedMultiset
    public Multiset.Entry<E> lastEntry() {
        return this.b.firstEntry();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public int size() {
        return this.b.size();
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.Multiset
    public ImmutableSortedSet<E> elementSet() {
        return this.b.elementSet().descendingSet();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableMultiset
    protected Multiset.Entry<E> a(int i) {
        return this.b.entrySet().asList().reverse().get(i);
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.SortedMultiset
    public ImmutableSortedMultiset<E> descendingMultiset() {
        return this.b;
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.SortedMultiset
    public ImmutableSortedMultiset<E> headMultiset(E e, BoundType boundType) {
        return this.b.tailMultiset((Object) e, boundType).descendingMultiset();
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.SortedMultiset
    public ImmutableSortedMultiset<E> tailMultiset(E e, BoundType boundType) {
        return this.b.headMultiset((Object) e, boundType).descendingMultiset();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public boolean a() {
        return this.b.a();
    }
}
