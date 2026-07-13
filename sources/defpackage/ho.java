package defpackage;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.BoundType;
import com.google.common.collect.Multiset;
import com.google.common.collect.Multisets;
import com.google.common.collect.Ordering;
import com.google.common.collect.SortedMultiset;
import defpackage.ki;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NavigableSet;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(emulated = true)
public abstract class ho<E> extends hj<E> implements SortedMultiset<E> {
    final Comparator<? super E> a;
    private transient SortedMultiset<E> b;

    protected abstract Iterator<Multiset.Entry<E>> e();

    ho() {
        this(Ordering.natural());
    }

    protected ho(Comparator<? super E> comparator) {
        this.a = (Comparator) Preconditions.checkNotNull(comparator);
    }

    @Override // defpackage.hj, com.google.common.collect.Multiset
    public NavigableSet<E> elementSet() {
        return (NavigableSet) super.elementSet();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // defpackage.hj
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public NavigableSet<E> c() {
        return new ki.b(this);
    }

    public Comparator<? super E> comparator() {
        return this.a;
    }

    public Multiset.Entry<E> firstEntry() {
        Iterator<Multiset.Entry<E>> itA = a();
        if (itA.hasNext()) {
            return itA.next();
        }
        return null;
    }

    public Multiset.Entry<E> lastEntry() {
        Iterator<Multiset.Entry<E>> itE = e();
        if (itE.hasNext()) {
            return itE.next();
        }
        return null;
    }

    public Multiset.Entry<E> pollFirstEntry() {
        Iterator<Multiset.Entry<E>> itA = a();
        if (!itA.hasNext()) {
            return null;
        }
        Multiset.Entry<E> next = itA.next();
        Multiset.Entry<E> entryImmutableEntry = Multisets.immutableEntry(next.getElement(), next.getCount());
        itA.remove();
        return entryImmutableEntry;
    }

    public Multiset.Entry<E> pollLastEntry() {
        Iterator<Multiset.Entry<E>> itE = e();
        if (!itE.hasNext()) {
            return null;
        }
        Multiset.Entry<E> next = itE.next();
        Multiset.Entry<E> entryImmutableEntry = Multisets.immutableEntry(next.getElement(), next.getCount());
        itE.remove();
        return entryImmutableEntry;
    }

    public SortedMultiset<E> subMultiset(@Nullable E e, BoundType boundType, @Nullable E e2, BoundType boundType2) {
        Preconditions.checkNotNull(boundType);
        Preconditions.checkNotNull(boundType2);
        return tailMultiset(e, boundType).headMultiset(e2, boundType2);
    }

    Iterator<E> f() {
        return Multisets.a((Multiset) descendingMultiset());
    }

    public SortedMultiset<E> descendingMultiset() {
        SortedMultiset<E> sortedMultiset = this.b;
        if (sortedMultiset != null) {
            return sortedMultiset;
        }
        SortedMultiset<E> sortedMultisetG = g();
        this.b = sortedMultisetG;
        return sortedMultisetG;
    }

    class a extends ig<E> {
        a() {
        }

        @Override // defpackage.ig
        SortedMultiset<E> a() {
            return ho.this;
        }

        @Override // defpackage.ig
        Iterator<Multiset.Entry<E>> b() {
            return ho.this.e();
        }

        @Override // defpackage.ig, com.google.common.collect.ForwardingCollection, java.util.Collection, java.lang.Iterable
        public Iterator<E> iterator() {
            return ho.this.f();
        }
    }

    SortedMultiset<E> g() {
        return new a();
    }
}
