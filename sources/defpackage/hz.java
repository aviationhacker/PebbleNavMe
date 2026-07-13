package defpackage;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.ForwardingCollection;
import com.google.common.collect.ForwardingList;
import com.google.common.collect.ForwardingListIterator;
import com.google.common.collect.ForwardingSet;
import com.google.common.collect.ForwardingSortedSet;
import com.google.common.collect.Lists;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import java.util.Set;
import java.util.SortedSet;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible
public final class hz {
    public static <E> Collection<E> a(Collection<E> collection, hy<? super E> hyVar) {
        return new a(collection, hyVar);
    }

    static class a<E> extends ForwardingCollection<E> {
        private final Collection<E> a;
        private final hy<? super E> b;

        public a(Collection<E> collection, hy<? super E> hyVar) {
            this.a = (Collection) Preconditions.checkNotNull(collection);
            this.b = (hy) Preconditions.checkNotNull(hyVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public Collection<E> delegate() {
            return this.a;
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Queue
        public boolean add(E e) {
            this.b.a(e);
            return this.a.add(e);
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public boolean addAll(Collection<? extends E> collection) {
            return this.a.addAll(hz.d(collection, this.b));
        }
    }

    public static <E> Set<E> a(Set<E> set, hy<? super E> hyVar) {
        return new e(set, hyVar);
    }

    static class e<E> extends ForwardingSet<E> {
        private final Set<E> a;
        private final hy<? super E> b;

        public e(Set<E> set, hy<? super E> hyVar) {
            this.a = (Set) Preconditions.checkNotNull(set);
            this.b = (hy) Preconditions.checkNotNull(hyVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public Set<E> delegate() {
            return this.a;
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Queue
        public boolean add(E e) {
            this.b.a(e);
            return this.a.add(e);
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public boolean addAll(Collection<? extends E> collection) {
            return this.a.addAll(hz.d(collection, this.b));
        }
    }

    public static <E> SortedSet<E> a(SortedSet<E> sortedSet, hy<? super E> hyVar) {
        return new f(sortedSet, hyVar);
    }

    static class f<E> extends ForwardingSortedSet<E> {
        final SortedSet<E> a;
        final hy<? super E> b;

        f(SortedSet<E> sortedSet, hy<? super E> hyVar) {
            this.a = (SortedSet) Preconditions.checkNotNull(sortedSet);
            this.b = (hy) Preconditions.checkNotNull(hyVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.ForwardingSortedSet, com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public SortedSet<E> delegate() {
            return this.a;
        }

        @Override // com.google.common.collect.ForwardingSortedSet, java.util.SortedSet
        public SortedSet<E> headSet(E e) {
            return hz.a((SortedSet) this.a.headSet(e), (hy) this.b);
        }

        @Override // com.google.common.collect.ForwardingSortedSet, java.util.SortedSet
        public SortedSet<E> subSet(E e, E e2) {
            return hz.a((SortedSet) this.a.subSet(e, e2), (hy) this.b);
        }

        @Override // com.google.common.collect.ForwardingSortedSet, java.util.SortedSet
        public SortedSet<E> tailSet(E e) {
            return hz.a((SortedSet) this.a.tailSet(e), (hy) this.b);
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Queue
        public boolean add(E e) {
            this.b.a(e);
            return this.a.add(e);
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public boolean addAll(Collection<? extends E> collection) {
            return this.a.addAll(hz.d(collection, this.b));
        }
    }

    public static <E> List<E> a(List<E> list, hy<? super E> hyVar) {
        return list instanceof RandomAccess ? new d(list, hyVar) : new b(list, hyVar);
    }

    @GwtCompatible
    static class b<E> extends ForwardingList<E> {
        final List<E> a;
        final hy<? super E> b;

        b(List<E> list, hy<? super E> hyVar) {
            this.a = (List) Preconditions.checkNotNull(list);
            this.b = (hy) Preconditions.checkNotNull(hyVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.ForwardingList, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public List<E> delegate() {
            return this.a;
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Queue
        public boolean add(E e) {
            this.b.a(e);
            return this.a.add(e);
        }

        @Override // com.google.common.collect.ForwardingList, java.util.List
        public void add(int i, E e) {
            this.b.a(e);
            this.a.add(i, e);
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public boolean addAll(Collection<? extends E> collection) {
            return this.a.addAll(hz.d(collection, this.b));
        }

        @Override // com.google.common.collect.ForwardingList, java.util.List
        public boolean addAll(int i, Collection<? extends E> collection) {
            return this.a.addAll(i, hz.d(collection, this.b));
        }

        @Override // com.google.common.collect.ForwardingList, java.util.List
        public ListIterator<E> listIterator() {
            return hz.b(this.a.listIterator(), this.b);
        }

        @Override // com.google.common.collect.ForwardingList, java.util.List
        public ListIterator<E> listIterator(int i) {
            return hz.b(this.a.listIterator(i), this.b);
        }

        @Override // com.google.common.collect.ForwardingList, java.util.List
        public E set(int i, E e) {
            this.b.a(e);
            return this.a.set(i, e);
        }

        @Override // com.google.common.collect.ForwardingList, java.util.List
        public List<E> subList(int i, int i2) {
            return hz.a((List) this.a.subList(i, i2), (hy) this.b);
        }
    }

    static class d<E> extends b<E> implements RandomAccess {
        d(List<E> list, hy<? super E> hyVar) {
            super(list, hyVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <E> ListIterator<E> b(ListIterator<E> listIterator, hy<? super E> hyVar) {
        return new c(listIterator, hyVar);
    }

    static class c<E> extends ForwardingListIterator<E> {
        private final ListIterator<E> a;
        private final hy<? super E> b;

        public c(ListIterator<E> listIterator, hy<? super E> hyVar) {
            this.a = listIterator;
            this.b = hyVar;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.ForwardingListIterator, com.google.common.collect.ForwardingIterator, com.google.common.collect.ForwardingObject
        public ListIterator<E> delegate() {
            return this.a;
        }

        @Override // com.google.common.collect.ForwardingListIterator, java.util.ListIterator
        public void add(E e) {
            this.b.a(e);
            this.a.add(e);
        }

        @Override // com.google.common.collect.ForwardingListIterator, java.util.ListIterator
        public void set(E e) {
            this.b.a(e);
            this.a.set(e);
        }
    }

    public static <E> Collection<E> b(Collection<E> collection, hy<E> hyVar) {
        if (collection instanceof SortedSet) {
            return a((SortedSet) collection, (hy) hyVar);
        }
        if (collection instanceof Set) {
            return a((Set) collection, (hy) hyVar);
        }
        if (collection instanceof List) {
            return a((List) collection, (hy) hyVar);
        }
        return a(collection, hyVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <E> Collection<E> d(Collection<E> collection, hy<? super E> hyVar) {
        ArrayList arrayListNewArrayList = Lists.newArrayList(collection);
        Iterator<E> it = arrayListNewArrayList.iterator();
        while (it.hasNext()) {
            hyVar.a(it.next());
        }
        return arrayListNewArrayList;
    }
}
