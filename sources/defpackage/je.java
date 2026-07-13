package defpackage;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSortedSet;
import java.util.Comparator;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(emulated = true)
final class je<E> extends jp<E> implements kf<E> {
    je(ImmutableSortedSet<E> immutableSortedSet, ImmutableList<E> immutableList) {
        super(immutableSortedSet, immutableList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // defpackage.jp, defpackage.iw
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public ImmutableSortedSet<E> b() {
        return (ImmutableSortedSet) super.b();
    }

    @Override // defpackage.kf
    public Comparator<? super E> comparator() {
        return b().comparator();
    }

    @Override // com.google.common.collect.ImmutableList, java.util.List
    @GwtIncompatible("ImmutableSortedSet.indexOf")
    public int indexOf(@Nullable Object obj) {
        int iA = b().a(obj);
        if (iA < 0 || !get(iA).equals(obj)) {
            return -1;
        }
        return iA;
    }

    @Override // com.google.common.collect.ImmutableList, java.util.List
    @GwtIncompatible("ImmutableSortedSet.indexOf")
    public int lastIndexOf(@Nullable Object obj) {
        return indexOf(obj);
    }

    @Override // defpackage.iw, com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableList
    @GwtIncompatible("super.subListUnchecked does not exist; inherited subList is valid if slow")
    public ImmutableList<E> a(int i, int i2) {
        return new jw(super.a(i, i2), comparator()).asList();
    }
}
