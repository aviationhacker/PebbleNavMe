package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableCollection;
import com.google.common.primitives.Ints;
import defpackage.iv;
import defpackage.iw;
import defpackage.iz;
import defpackage.ju;
import defpackage.kd;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.Set;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(emulated = true, serializable = true)
public abstract class ImmutableSet<E> extends ImmutableCollection<E> implements Set<E> {
    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public abstract UnmodifiableIterator<E> iterator();

    public static <E> ImmutableSet<E> of() {
        return ju.a;
    }

    public static <E> ImmutableSet<E> of(E e) {
        return new kd(e);
    }

    public static <E> ImmutableSet<E> of(E e, E e2) {
        return b(2, e, e2);
    }

    public static <E> ImmutableSet<E> of(E e, E e2, E e3) {
        return b(3, e, e2, e3);
    }

    public static <E> ImmutableSet<E> of(E e, E e2, E e3, E e4) {
        return b(4, e, e2, e3, e4);
    }

    public static <E> ImmutableSet<E> of(E e, E e2, E e3, E e4, E e5) {
        return b(5, e, e2, e3, e4, e5);
    }

    public static <E> ImmutableSet<E> of(E e, E e2, E e3, E e4, E e5, E e6, E... eArr) {
        Object[] objArr = new Object[eArr.length + 6];
        objArr[0] = e;
        objArr[1] = e2;
        objArr[2] = e3;
        objArr[3] = e4;
        objArr[4] = e5;
        objArr[5] = e6;
        System.arraycopy(eArr, 0, objArr, 6, eArr.length);
        return b(objArr.length, objArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <E> ImmutableSet<E> b(int i, Object... objArr) {
        int i2;
        int i3;
        switch (i) {
            case 0:
                return of();
            case 1:
                return of(objArr[0]);
            default:
                int iC = c(i);
                Object[] objArr2 = new Object[iC];
                int i4 = iC - 1;
                int i5 = 0;
                int i6 = 0;
                int i7 = 0;
                while (i5 < i) {
                    Object objA = ObjectArrays.a(objArr[i5], i5);
                    int iHashCode = objA.hashCode();
                    int iA = iv.a(iHashCode);
                    while (true) {
                        int i8 = iA & i4;
                        Object obj = objArr2[i8];
                        if (obj == null) {
                            i2 = i6 + 1;
                            objArr[i6] = objA;
                            objArr2[i8] = objA;
                            i3 = i7 + iHashCode;
                        } else if (obj.equals(objA)) {
                            i2 = i6;
                            i3 = i7;
                        } else {
                            iA++;
                        }
                    }
                    i5++;
                    i7 = i3;
                    i6 = i2;
                }
                Arrays.fill(objArr, i6, i, (Object) null);
                if (i6 == 1) {
                    return new kd(objArr[0], i7);
                }
                if (iC != c(i6)) {
                    return b(i6, objArr);
                }
                if (i6 < objArr.length) {
                    objArr = ObjectArrays.a(objArr, i6);
                }
                return new ju(objArr, i7, objArr2, i4);
        }
    }

    @VisibleForTesting
    static int c(int i) {
        if (i < 751619276) {
            int iHighestOneBit = Integer.highestOneBit(i - 1);
            do {
                iHighestOneBit <<= 1;
            } while (((double) iHighestOneBit) * 0.7d < i);
            return iHighestOneBit;
        }
        Preconditions.checkArgument(i < 1073741824, "collection too large");
        return Ints.MAX_POWER_OF_TWO;
    }

    public static <E> ImmutableSet<E> copyOf(Collection<? extends E> collection) {
        if ((collection instanceof ImmutableSet) && !(collection instanceof ImmutableSortedSet)) {
            ImmutableSet<E> immutableSet = (ImmutableSet) collection;
            if (!immutableSet.a()) {
                return immutableSet;
            }
        } else if (collection instanceof EnumSet) {
            return a((EnumSet) collection);
        }
        Object[] array = collection.toArray();
        return b(array.length, array);
    }

    public static <E> ImmutableSet<E> copyOf(Iterable<? extends E> iterable) {
        return iterable instanceof Collection ? copyOf((Collection) iterable) : copyOf(iterable.iterator());
    }

    public static <E> ImmutableSet<E> copyOf(Iterator<? extends E> it) {
        if (!it.hasNext()) {
            return of();
        }
        E next = it.next();
        if (!it.hasNext()) {
            return of((Object) next);
        }
        return new Builder().add((Object) next).addAll((Iterator) it).build();
    }

    public static <E> ImmutableSet<E> copyOf(E[] eArr) {
        switch (eArr.length) {
            case 0:
                return of();
            case 1:
                return of((Object) eArr[0]);
            default:
                return b(eArr.length, (Object[]) eArr.clone());
        }
    }

    private static ImmutableSet a(EnumSet enumSet) {
        return iz.a(EnumSet.copyOf(enumSet));
    }

    protected ImmutableSet() {
    }

    public boolean e() {
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof ImmutableSet) && e() && ((ImmutableSet) obj).e() && hashCode() != obj.hashCode()) {
            return false;
        }
        return Sets.a(this, obj);
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return Sets.a(this);
    }

    public static abstract class a<E> extends ImmutableSet<E> {
        public abstract E a(int i);

        protected a() {
        }

        @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public UnmodifiableIterator<E> iterator() {
            return asList().iterator();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableCollection
        public ImmutableList<E> f() {
            return new iw<E>() { // from class: com.google.common.collect.ImmutableSet.a.1
                @Override // java.util.List
                public E get(int i) {
                    return (E) a.this.a(i);
                }

                /* JADX INFO: Access modifiers changed from: package-private */
                @Override // defpackage.iw
                /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
                public a<E> b() {
                    return a.this;
                }
            };
        }
    }

    static class b implements Serializable {
        private static final long serialVersionUID = 0;
        final Object[] a;

        b(Object[] objArr) {
            this.a = objArr;
        }

        Object readResolve() {
            return ImmutableSet.copyOf(this.a);
        }
    }

    @Override // com.google.common.collect.ImmutableCollection
    public Object writeReplace() {
        return new b(toArray());
    }

    public static <E> Builder<E> builder() {
        return new Builder<>();
    }

    public static class Builder<E> extends ImmutableCollection.a<E> {
        public Builder() {
            this(4);
        }

        Builder(int i) {
            super(i);
        }

        @Override // com.google.common.collect.ImmutableCollection.a, com.google.common.collect.ImmutableCollection.Builder
        public Builder<E> add(E e) {
            super.add((Object) e);
            return this;
        }

        @Override // com.google.common.collect.ImmutableCollection.a, com.google.common.collect.ImmutableCollection.Builder
        public Builder<E> add(E... eArr) {
            super.add((Object[]) eArr);
            return this;
        }

        @Override // com.google.common.collect.ImmutableCollection.a, com.google.common.collect.ImmutableCollection.Builder
        public Builder<E> addAll(Iterable<? extends E> iterable) {
            super.addAll((Iterable) iterable);
            return this;
        }

        @Override // com.google.common.collect.ImmutableCollection.Builder
        public Builder<E> addAll(Iterator<? extends E> it) {
            super.addAll((Iterator) it);
            return this;
        }

        @Override // com.google.common.collect.ImmutableCollection.Builder
        public ImmutableSet<E> build() {
            ImmutableSet<E> immutableSetB = ImmutableSet.b(this.b, this.a);
            this.b = immutableSetB.size();
            return immutableSetB;
        }
    }
}
