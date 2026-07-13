package defpackage;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Objects;
import com.google.common.collect.Iterators;
import com.google.common.collect.Multiset;
import com.google.common.collect.Multisets;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible
public abstract class hj<E> extends AbstractCollection<E> implements Multiset<E> {
    private transient Set<E> a;
    private transient Set<Multiset.Entry<E>> b;

    public abstract Iterator<Multiset.Entry<E>> a();

    public abstract int b();

    protected hj() {
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public int size() {
        return Multisets.b((Multiset<?>) this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        return entrySet().isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    public boolean contains(@Nullable Object obj) {
        return count(obj) > 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, com.google.common.collect.Multiset
    public Iterator<E> iterator() {
        return Multisets.a((Multiset) this);
    }

    public int count(@Nullable Object obj) {
        for (Multiset.Entry<E> entry : entrySet()) {
            if (Objects.equal(entry.getElement(), obj)) {
                return entry.getCount();
            }
        }
        return 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    public boolean add(@Nullable E e) {
        add(e, 1);
        return true;
    }

    public int add(@Nullable E e, int i) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    public boolean remove(@Nullable Object obj) {
        return remove(obj, 1) > 0;
    }

    public int remove(@Nullable Object obj, int i) {
        throw new UnsupportedOperationException();
    }

    public int setCount(@Nullable E e, int i) {
        return Multisets.a(this, e, i);
    }

    public boolean setCount(@Nullable E e, int i, int i2) {
        return Multisets.a(this, e, i, i2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean addAll(Collection<? extends E> collection) {
        return Multisets.a((Multiset) this, (Collection) collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    public boolean removeAll(Collection<?> collection) {
        return Multisets.b(this, collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    public boolean retainAll(Collection<?> collection) {
        return Multisets.c(this, collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public void clear() {
        Iterators.b(a());
    }

    public Set<E> elementSet() {
        Set<E> set = this.a;
        if (set == null) {
            Set<E> setC = c();
            this.a = setC;
            return setC;
        }
        return set;
    }

    public Set<E> c() {
        return new a();
    }

    class a extends Multisets.b<E> {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.Multisets.b
        public Multiset<E> a() {
            return hj.this;
        }
    }

    public Set<Multiset.Entry<E>> entrySet() {
        Set<Multiset.Entry<E>> set = this.b;
        if (set == null) {
            Set<Multiset.Entry<E>> setCreateEntrySet = createEntrySet();
            this.b = setCreateEntrySet;
            return setCreateEntrySet;
        }
        return set;
    }

    public class b extends Multisets.c<E> {
        protected b() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.Multisets.c
        public Multiset<E> a() {
            return hj.this;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Multiset.Entry<E>> iterator() {
            return hj.this.a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return hj.this.b();
        }
    }

    public Set<Multiset.Entry<E>> createEntrySet() {
        return new b();
    }

    @Override // java.util.Collection, com.google.common.collect.Multiset
    public boolean equals(@Nullable Object obj) {
        return Multisets.a(this, obj);
    }

    @Override // java.util.Collection, com.google.common.collect.Multiset
    public int hashCode() {
        return entrySet().hashCode();
    }

    @Override // java.util.AbstractCollection, com.google.common.collect.Multiset
    public String toString() {
        return entrySet().toString();
    }
}
