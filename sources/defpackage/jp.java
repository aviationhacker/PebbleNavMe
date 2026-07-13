package defpackage;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.collect.ImmutableCollection;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.UnmodifiableListIterator;
import com.google.j2objc.annotations.Weak;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(emulated = true)
public class jp<E> extends iw<E> {

    @Weak
    private final ImmutableCollection<E> a;
    private final ImmutableList<? extends E> b;

    jp(ImmutableCollection<E> immutableCollection, ImmutableList<? extends E> immutableList) {
        this.a = immutableCollection;
        this.b = immutableList;
    }

    public jp(ImmutableCollection<E> immutableCollection, Object[] objArr) {
        this(immutableCollection, ImmutableList.a(objArr));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // defpackage.iw
    protected ImmutableCollection<E> b() {
        return this.a;
    }

    @Override // com.google.common.collect.ImmutableList, java.util.List
    public UnmodifiableListIterator<E> listIterator(int i) {
        return this.b.listIterator(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection
    @GwtIncompatible("not present in emulated superclass")
    public int a(Object[] objArr, int i) {
        return this.b.a(objArr, i);
    }

    @Override // java.util.List
    public E get(int i) {
        return this.b.get(i);
    }
}
