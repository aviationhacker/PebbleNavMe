package defpackage;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMultiset;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Multiset;
import com.google.common.collect.Multisets;
import com.google.common.primitives.Ints;
import java.util.Collection;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(serializable = true)
public class jt<E> extends ImmutableMultiset<E> {
    public static final jt<Object> a = new jt<>(ImmutableList.of());
    private final transient Multisets.e<E>[] b;
    private final transient Multisets.e<E>[] c;
    private final transient int d;
    private final transient int e;
    private transient ImmutableSet<E> f;

    public jt(Collection<? extends Multiset.Entry<? extends E>> collection) {
        Multisets.e<E> bVar;
        int size = collection.size();
        Multisets.e<E>[] eVarArr = new Multisets.e[size];
        if (size == 0) {
            this.b = eVarArr;
            this.c = null;
            this.d = 0;
            this.e = 0;
            this.f = ImmutableSet.of();
            return;
        }
        int iA = iv.a(size, 1.0d);
        int i = iA - 1;
        Multisets.e<E>[] eVarArr2 = new Multisets.e[iA];
        int i2 = 0;
        long j = 0;
        int i3 = 0;
        for (Multiset.Entry<? extends E> entry : collection) {
            Object objCheckNotNull = Preconditions.checkNotNull(entry.getElement());
            int count = entry.getCount();
            int iHashCode = objCheckNotNull.hashCode();
            int iA2 = iv.a(iHashCode) & i;
            Multisets.e<E> eVar = eVarArr2[iA2];
            if (eVar == null) {
                bVar = (entry instanceof Multisets.e) && !(entry instanceof b) ? (Multisets.e) entry : new Multisets.e<>(objCheckNotNull, count);
            } else {
                bVar = new b<>(objCheckNotNull, count, eVar);
            }
            eVarArr[i2] = bVar;
            eVarArr2[iA2] = bVar;
            j = ((long) count) + j;
            i2++;
            i3 = (iHashCode ^ count) + i3;
        }
        this.b = eVarArr;
        this.c = eVarArr2;
        this.d = Ints.saturatedCast(j);
        this.e = i3;
    }

    static final class b<E> extends Multisets.e<E> {
        private final Multisets.e<E> a;

        b(E e, int i, Multisets.e<E> eVar) {
            super(e, i);
            this.a = eVar;
        }

        @Override // com.google.common.collect.Multisets.e
        public Multisets.e<E> a() {
            return this.a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public boolean a() {
        return false;
    }

    @Override // com.google.common.collect.Multiset
    public int count(@Nullable Object obj) {
        Multisets.e<E>[] eVarArr = this.c;
        if (obj == null || eVarArr == null) {
            return 0;
        }
        for (Multisets.e<E> eVarA = eVarArr[iv.a(obj) & (eVarArr.length - 1)]; eVarA != null; eVarA = eVarA.a()) {
            if (Objects.equal(obj, eVarA.getElement())) {
                return eVarA.getCount();
            }
        }
        return 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public int size() {
        return this.d;
    }

    @Override // com.google.common.collect.Multiset
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ImmutableSet<E> elementSet() {
        ImmutableSet<E> immutableSet = this.f;
        if (immutableSet != null) {
            return immutableSet;
        }
        a aVar = new a();
        this.f = aVar;
        return aVar;
    }

    final class a extends ImmutableSet.a<E> {
        private a() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableSet.a
        public E a(int i) {
            return (E) jt.this.b[i].getElement();
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
        public boolean contains(@Nullable Object obj) {
            return jt.this.contains(obj);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableCollection
        public boolean a() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return jt.this.b.length;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableMultiset
    protected Multiset.Entry<E> a(int i) {
        return this.b[i];
    }

    @Override // com.google.common.collect.ImmutableMultiset, java.util.Collection, com.google.common.collect.Multiset
    public int hashCode() {
        return this.e;
    }
}
