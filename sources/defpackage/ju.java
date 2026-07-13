package defpackage;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Iterators;
import com.google.common.collect.ObjectArrays;
import com.google.common.collect.UnmodifiableIterator;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(emulated = true, serializable = true)
public final class ju<E> extends ImmutableSet<E> {
    public static final ju<Object> a = new ju<>(ObjectArrays.a, 0, null, 0);

    @VisibleForTesting
    final transient Object[] b;
    private final transient Object[] c;
    private final transient int d;
    private final transient int e;

    public ju(Object[] objArr, int i, Object[] objArr2, int i2) {
        this.c = objArr;
        this.b = objArr2;
        this.d = i2;
        this.e = i;
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
    public boolean contains(@Nullable Object obj) {
        Object[] objArr = this.b;
        if (obj == null || objArr == null) {
            return false;
        }
        int iA = iv.a(obj);
        while (true) {
            int i = iA & this.d;
            Object obj2 = objArr[i];
            if (obj2 == null) {
                return false;
            }
            if (!obj2.equals(obj)) {
                iA = i + 1;
            } else {
                return true;
            }
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.c.length;
    }

    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public UnmodifiableIterator<E> iterator() {
        return Iterators.forArray(this.c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    protected int a(Object[] objArr, int i) {
        System.arraycopy(this.c, 0, objArr, i, this.c.length);
        return this.c.length + i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public ImmutableList<E> f() {
        return this.b == null ? ImmutableList.of() : new jp(this, this.c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public boolean a() {
        return false;
    }

    @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
    public int hashCode() {
        return this.e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableSet
    public boolean e() {
        return true;
    }
}
