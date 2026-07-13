package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import com.google.common.collect.Maps;
import defpackage.kk;
import defpackage.kl;
import java.io.Serializable;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Beta
@GwtCompatible(serializable = true)
public class TreeBasedTable<R, C, V> extends kk<R, C, V> {
    private static final long serialVersionUID = 0;
    private final Comparator<? super C> c;

    @Override // defpackage.kl, defpackage.hq, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ Set cellSet() {
        return super.cellSet();
    }

    @Override // defpackage.kl, defpackage.hq, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ void clear() {
        super.clear();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.kl, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ Map column(Object obj) {
        return super.column(obj);
    }

    @Override // defpackage.kl, defpackage.hq, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ Set columnKeySet() {
        return super.columnKeySet();
    }

    @Override // defpackage.kl, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ Map columnMap() {
        return super.columnMap();
    }

    @Override // defpackage.kl, defpackage.hq, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ boolean contains(@Nullable Object obj, @Nullable Object obj2) {
        return super.contains(obj, obj2);
    }

    @Override // defpackage.kl, defpackage.hq, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ boolean containsColumn(@Nullable Object obj) {
        return super.containsColumn(obj);
    }

    @Override // defpackage.kl, defpackage.hq, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ boolean containsRow(@Nullable Object obj) {
        return super.containsRow(obj);
    }

    @Override // defpackage.kl, defpackage.hq, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ boolean containsValue(@Nullable Object obj) {
        return super.containsValue(obj);
    }

    @Override // defpackage.hq, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ boolean equals(@Nullable Object obj) {
        return super.equals(obj);
    }

    @Override // defpackage.kl, defpackage.hq, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ Object get(@Nullable Object obj, @Nullable Object obj2) {
        return super.get(obj, obj2);
    }

    @Override // defpackage.hq, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // defpackage.kl, defpackage.hq, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.kl, defpackage.hq, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ Object put(Object obj, Object obj2, Object obj3) {
        return super.put(obj, obj2, obj3);
    }

    @Override // defpackage.hq, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ void putAll(Table table) {
        super.putAll(table);
    }

    @Override // defpackage.kl, defpackage.hq, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ Object remove(@Nullable Object obj, @Nullable Object obj2) {
        return super.remove(obj, obj2);
    }

    @Override // defpackage.kl, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ int size() {
        return super.size();
    }

    @Override // defpackage.hq
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    @Override // defpackage.kl, defpackage.hq, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ Collection values() {
        return super.values();
    }

    static class a<C, V> implements Supplier<TreeMap<C, V>>, Serializable {
        private static final long serialVersionUID = 0;
        final Comparator<? super C> a;

        a(Comparator<? super C> comparator) {
            this.a = comparator;
        }

        @Override // com.google.common.base.Supplier
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public TreeMap<C, V> get() {
            return new TreeMap<>(this.a);
        }
    }

    public static <R extends Comparable, C extends Comparable, V> TreeBasedTable<R, C, V> create() {
        return new TreeBasedTable<>(Ordering.natural(), Ordering.natural());
    }

    public static <R, C, V> TreeBasedTable<R, C, V> create(Comparator<? super R> comparator, Comparator<? super C> comparator2) {
        Preconditions.checkNotNull(comparator);
        Preconditions.checkNotNull(comparator2);
        return new TreeBasedTable<>(comparator, comparator2);
    }

    public static <R, C, V> TreeBasedTable<R, C, V> create(TreeBasedTable<R, C, ? extends V> treeBasedTable) {
        TreeBasedTable<R, C, V> treeBasedTable2 = new TreeBasedTable<>(treeBasedTable.rowComparator(), treeBasedTable.columnComparator());
        treeBasedTable2.putAll(treeBasedTable);
        return treeBasedTable2;
    }

    TreeBasedTable(Comparator<? super R> comparator, Comparator<? super C> comparator2) {
        super(new TreeMap(comparator), new a(comparator2));
        this.c = comparator2;
    }

    public Comparator<? super R> rowComparator() {
        return rowKeySet().comparator();
    }

    public Comparator<? super C> columnComparator() {
        return this.c;
    }

    @Override // defpackage.kl, com.google.common.collect.Table
    public SortedMap<C, V> row(R r) {
        return new b(this, r);
    }

    class b extends kl<R, C, V>.f implements SortedMap<C, V> {

        @Nullable
        final C d;

        @Nullable
        final C e;
        transient SortedMap<C, V> f;

        b(TreeBasedTable treeBasedTable, R r) {
            this(r, null, null);
        }

        b(R r, C c, @Nullable C c2) {
            super(r);
            this.d = c;
            this.e = c2;
            Preconditions.checkArgument(c == null || c2 == null || a(c, c2) <= 0);
        }

        @Override // java.util.AbstractMap, java.util.Map, java.util.SortedMap
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public SortedSet<C> keySet() {
            return new Maps.s(this);
        }

        @Override // java.util.SortedMap
        public Comparator<? super C> comparator() {
            return TreeBasedTable.this.columnComparator();
        }

        int a(Object obj, Object obj2) {
            return comparator().compare(obj, obj2);
        }

        boolean a(@Nullable Object obj) {
            return obj != null && (this.d == null || a(this.d, obj) <= 0) && (this.e == null || a(this.e, obj) > 0);
        }

        @Override // java.util.SortedMap
        public SortedMap<C, V> subMap(C c, C c2) {
            Preconditions.checkArgument(a(Preconditions.checkNotNull(c)) && a(Preconditions.checkNotNull(c2)));
            return new b(this.a, c, c2);
        }

        @Override // java.util.SortedMap
        public SortedMap<C, V> headMap(C c) {
            Preconditions.checkArgument(a(Preconditions.checkNotNull(c)));
            return new b(this.a, this.d, c);
        }

        @Override // java.util.SortedMap
        public SortedMap<C, V> tailMap(C c) {
            Preconditions.checkArgument(a(Preconditions.checkNotNull(c)));
            return new b(this.a, c, this.e);
        }

        @Override // java.util.SortedMap
        public C firstKey() {
            if (a() == null) {
                throw new NoSuchElementException();
            }
            return a().firstKey();
        }

        @Override // java.util.SortedMap
        public C lastKey() {
            if (a() == null) {
                throw new NoSuchElementException();
            }
            return a().lastKey();
        }

        SortedMap<C, V> f() {
            if (this.f == null || (this.f.isEmpty() && TreeBasedTable.this.a.containsKey(this.a))) {
                this.f = (SortedMap) TreeBasedTable.this.a.get(this.a);
            }
            return this.f;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // kl.f
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public SortedMap<C, V> a() {
            return (SortedMap) super.a();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // kl.f
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public SortedMap<C, V> c() {
            SortedMap<C, V> sortedMapF = f();
            if (sortedMapF == null) {
                return null;
            }
            if (this.d != null) {
                sortedMapF = sortedMapF.tailMap(this.d);
            }
            if (this.e != null) {
                return sortedMapF.headMap(this.e);
            }
            return sortedMapF;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // kl.f
        protected void d() {
            if (f() != null && this.f.isEmpty()) {
                TreeBasedTable.this.a.remove(this.a);
                this.f = null;
                this.b = null;
            }
        }

        @Override // kl.f, java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return a(obj) && super.containsKey(obj);
        }

        @Override // kl.f, java.util.AbstractMap, java.util.Map
        public V put(C c, V v) {
            Preconditions.checkArgument(a(Preconditions.checkNotNull(c)));
            return (V) super.put(c, v);
        }
    }

    @Override // defpackage.kk, defpackage.kl, defpackage.hq, com.google.common.collect.Table
    public SortedSet<R> rowKeySet() {
        return super.rowKeySet();
    }

    @Override // defpackage.kk, defpackage.kl, com.google.common.collect.Table
    public SortedMap<R, Map<C, V>> rowMap() {
        return super.rowMap();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // defpackage.kl
    protected Iterator<C> g() {
        final Comparator<? super C> comparatorColumnComparator = columnComparator();
        final UnmodifiableIterator unmodifiableIteratorMergeSorted = Iterators.mergeSorted(Iterables.transform(this.a.values(), new Function<Map<C, V>, Iterator<C>>() { // from class: com.google.common.collect.TreeBasedTable.1
            @Override // com.google.common.base.Function
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Iterator<C> apply(Map<C, V> map) {
                return map.keySet().iterator();
            }
        }), comparatorColumnComparator);
        return new AbstractIterator<C>() { // from class: com.google.common.collect.TreeBasedTable.2
            C a;

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.collect.AbstractIterator
            public C computeNext() {
                while (unmodifiableIteratorMergeSorted.hasNext()) {
                    C c = (C) unmodifiableIteratorMergeSorted.next();
                    if (!(this.a != null && comparatorColumnComparator.compare(c, this.a) == 0)) {
                        this.a = c;
                        return this.a;
                    }
                }
                this.a = null;
                return endOfData();
            }
        };
    }
}
