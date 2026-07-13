package defpackage;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Iterators;
import com.google.common.collect.ObjectArrays;
import com.google.common.collect.UnmodifiableListIterator;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(emulated = true, serializable = true)
public class jr<E> extends ImmutableList<E> {
    public static final ImmutableList<Object> a = new jr(ObjectArrays.a);
    private final transient int b;
    private final transient int c;
    private final transient Object[] d;

    jr(Object[] objArr, int i, int i2) {
        this.b = i;
        this.c = i2;
        this.d = objArr;
    }

    public jr(Object[] objArr) {
        this(objArr, 0, objArr.length);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public boolean a() {
        return this.c != this.d.length;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection
    public int a(Object[] objArr, int i) {
        System.arraycopy(this.d, this.b, objArr, i, this.c);
        return this.c + i;
    }

    @Override // java.util.List
    public E get(int i) {
        Preconditions.checkElementIndex(i, this.c);
        return (E) this.d[this.b + i];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableList
    public ImmutableList<E> a(int i, int i2) {
        return new jr(this.d, this.b + i, i2 - i);
    }

    @Override // com.google.common.collect.ImmutableList, java.util.List
    public UnmodifiableListIterator<E> listIterator(int i) {
        return Iterators.a(this.d, this.b, this.c, i);
    }
}
