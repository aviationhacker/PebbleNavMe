package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Function;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import com.google.common.collect.Table;
import defpackage.hq;
import defpackage.kl;
import java.io.Serializable;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible
public final class Tables {
    private static final Function<? extends Map<?, ?>, ? extends Map<?, ?>> a = new Function<Map<Object, Object>, Map<Object, Object>>() { // from class: com.google.common.collect.Tables.1
        @Override // com.google.common.base.Function
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Map<Object, Object> apply(Map<Object, Object> map) {
            return Collections.unmodifiableMap(map);
        }
    };

    private Tables() {
    }

    public static <R, C, V> Table.Cell<R, C, V> immutableCell(@Nullable R r, @Nullable C c2, @Nullable V v) {
        return new b(r, c2, v);
    }

    static final class b<R, C, V> extends a<R, C, V> implements Serializable {
        private static final long serialVersionUID = 0;
        private final R a;
        private final C b;
        private final V c;

        b(@Nullable R r, @Nullable C c, @Nullable V v) {
            this.a = r;
            this.b = c;
            this.c = v;
        }

        @Override // com.google.common.collect.Table.Cell
        public R getRowKey() {
            return this.a;
        }

        @Override // com.google.common.collect.Table.Cell
        public C getColumnKey() {
            return this.b;
        }

        @Override // com.google.common.collect.Table.Cell
        public V getValue() {
            return this.c;
        }
    }

    static abstract class a<R, C, V> implements Table.Cell<R, C, V> {
        a() {
        }

        @Override // com.google.common.collect.Table.Cell
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Table.Cell)) {
                return false;
            }
            Table.Cell cell = (Table.Cell) obj;
            return Objects.equal(getRowKey(), cell.getRowKey()) && Objects.equal(getColumnKey(), cell.getColumnKey()) && Objects.equal(getValue(), cell.getValue());
        }

        @Override // com.google.common.collect.Table.Cell
        public int hashCode() {
            return Objects.hashCode(getRowKey(), getColumnKey(), getValue());
        }

        public String toString() {
            String strValueOf = String.valueOf(getRowKey());
            String strValueOf2 = String.valueOf(getColumnKey());
            String strValueOf3 = String.valueOf(getValue());
            return new StringBuilder(String.valueOf(strValueOf).length() + 4 + String.valueOf(strValueOf2).length() + String.valueOf(strValueOf3).length()).append("(").append(strValueOf).append(",").append(strValueOf2).append(")=").append(strValueOf3).toString();
        }
    }

    public static <R, C, V> Table<C, R, V> transpose(Table<R, C, V> table) {
        return table instanceof d ? ((d) table).a : new d(table);
    }

    static class d<C, R, V> extends hq<C, R, V> {
        private static final Function<Table.Cell<?, ?, ?>, Table.Cell<?, ?, ?>> b = new Function<Table.Cell<?, ?, ?>, Table.Cell<?, ?, ?>>() { // from class: com.google.common.collect.Tables.d.1
            @Override // com.google.common.base.Function
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Table.Cell<?, ?, ?> apply(Table.Cell<?, ?, ?> cell) {
                return Tables.immutableCell(cell.getColumnKey(), cell.getRowKey(), cell.getValue());
            }
        };
        final Table<R, C, V> a;

        d(Table<R, C, V> table) {
            this.a = (Table) Preconditions.checkNotNull(table);
        }

        @Override // defpackage.hq, com.google.common.collect.Table
        public void clear() {
            this.a.clear();
        }

        @Override // com.google.common.collect.Table
        public Map<C, V> column(R r) {
            return this.a.row(r);
        }

        @Override // defpackage.hq, com.google.common.collect.Table
        public Set<R> columnKeySet() {
            return this.a.rowKeySet();
        }

        @Override // com.google.common.collect.Table
        public Map<R, Map<C, V>> columnMap() {
            return this.a.rowMap();
        }

        @Override // defpackage.hq, com.google.common.collect.Table
        public boolean contains(@Nullable Object obj, @Nullable Object obj2) {
            return this.a.contains(obj2, obj);
        }

        @Override // defpackage.hq, com.google.common.collect.Table
        public boolean containsColumn(@Nullable Object obj) {
            return this.a.containsRow(obj);
        }

        @Override // defpackage.hq, com.google.common.collect.Table
        public boolean containsRow(@Nullable Object obj) {
            return this.a.containsColumn(obj);
        }

        @Override // defpackage.hq, com.google.common.collect.Table
        public boolean containsValue(@Nullable Object obj) {
            return this.a.containsValue(obj);
        }

        @Override // defpackage.hq, com.google.common.collect.Table
        public V get(@Nullable Object obj, @Nullable Object obj2) {
            return this.a.get(obj2, obj);
        }

        @Override // defpackage.hq, com.google.common.collect.Table
        public V put(C c, R r, V v) {
            return this.a.put(r, c, v);
        }

        @Override // defpackage.hq, com.google.common.collect.Table
        public void putAll(Table<? extends C, ? extends R, ? extends V> table) {
            this.a.putAll(Tables.transpose(table));
        }

        @Override // defpackage.hq, com.google.common.collect.Table
        public V remove(@Nullable Object obj, @Nullable Object obj2) {
            return this.a.remove(obj2, obj);
        }

        @Override // com.google.common.collect.Table
        public Map<R, V> row(C c) {
            return this.a.column(c);
        }

        @Override // defpackage.hq, com.google.common.collect.Table
        public Set<C> rowKeySet() {
            return this.a.columnKeySet();
        }

        @Override // com.google.common.collect.Table
        public Map<C, Map<R, V>> rowMap() {
            return this.a.columnMap();
        }

        @Override // com.google.common.collect.Table
        public int size() {
            return this.a.size();
        }

        @Override // defpackage.hq, com.google.common.collect.Table
        public Collection<V> values() {
            return this.a.values();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // defpackage.hq
        public Iterator<Table.Cell<C, R, V>> b() {
            return Iterators.transform(this.a.cellSet().iterator(), b);
        }
    }

    @Beta
    public static <R, C, V> Table<R, C, V> newCustomTable(Map<R, Map<C, V>> map, Supplier<? extends Map<C, V>> supplier) {
        Preconditions.checkArgument(map.isEmpty());
        Preconditions.checkNotNull(supplier);
        return new kl(map, supplier);
    }

    @Beta
    public static <R, C, V1, V2> Table<R, C, V2> transformValues(Table<R, C, V1> table, Function<? super V1, V2> function) {
        return new c(table, function);
    }

    static class c<R, C, V1, V2> extends hq<R, C, V2> {
        final Table<R, C, V1> a;
        final Function<? super V1, V2> b;

        c(Table<R, C, V1> table, Function<? super V1, V2> function) {
            this.a = (Table) Preconditions.checkNotNull(table);
            this.b = (Function) Preconditions.checkNotNull(function);
        }

        @Override // defpackage.hq, com.google.common.collect.Table
        public boolean contains(Object obj, Object obj2) {
            return this.a.contains(obj, obj2);
        }

        @Override // defpackage.hq, com.google.common.collect.Table
        public V2 get(Object obj, Object obj2) {
            if (contains(obj, obj2)) {
                return this.b.apply(this.a.get(obj, obj2));
            }
            return null;
        }

        @Override // com.google.common.collect.Table
        public int size() {
            return this.a.size();
        }

        @Override // defpackage.hq, com.google.common.collect.Table
        public void clear() {
            this.a.clear();
        }

        @Override // defpackage.hq, com.google.common.collect.Table
        public V2 put(R r, C c, V2 v2) {
            throw new UnsupportedOperationException();
        }

        @Override // defpackage.hq, com.google.common.collect.Table
        public void putAll(Table<? extends R, ? extends C, ? extends V2> table) {
            throw new UnsupportedOperationException();
        }

        @Override // defpackage.hq, com.google.common.collect.Table
        public V2 remove(Object obj, Object obj2) {
            if (contains(obj, obj2)) {
                return this.b.apply(this.a.remove(obj, obj2));
            }
            return null;
        }

        @Override // com.google.common.collect.Table
        public Map<C, V2> row(R r) {
            return Maps.transformValues(this.a.row(r), this.b);
        }

        @Override // com.google.common.collect.Table
        public Map<R, V2> column(C c) {
            return Maps.transformValues(this.a.column(c), this.b);
        }

        Function<Table.Cell<R, C, V1>, Table.Cell<R, C, V2>> e() {
            return new Function<Table.Cell<R, C, V1>, Table.Cell<R, C, V2>>() { // from class: com.google.common.collect.Tables.c.1
                @Override // com.google.common.base.Function
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public Table.Cell<R, C, V2> apply(Table.Cell<R, C, V1> cell) {
                    return Tables.immutableCell(cell.getRowKey(), cell.getColumnKey(), c.this.b.apply(cell.getValue()));
                }
            };
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // defpackage.hq
        public Iterator<Table.Cell<R, C, V2>> b() {
            return Iterators.transform(this.a.cellSet().iterator(), e());
        }

        @Override // defpackage.hq, com.google.common.collect.Table
        public Set<R> rowKeySet() {
            return this.a.rowKeySet();
        }

        @Override // defpackage.hq, com.google.common.collect.Table
        public Set<C> columnKeySet() {
            return this.a.columnKeySet();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // defpackage.hq
        public Collection<V2> c() {
            return Collections2.transform(this.a.values(), this.b);
        }

        @Override // com.google.common.collect.Table
        public Map<R, Map<C, V2>> rowMap() {
            return Maps.transformValues(this.a.rowMap(), new Function<Map<C, V1>, Map<C, V2>>() { // from class: com.google.common.collect.Tables.c.2
                @Override // com.google.common.base.Function
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public Map<C, V2> apply(Map<C, V1> map) {
                    return Maps.transformValues(map, c.this.b);
                }
            });
        }

        @Override // com.google.common.collect.Table
        public Map<C, Map<R, V2>> columnMap() {
            return Maps.transformValues(this.a.columnMap(), new Function<Map<R, V1>, Map<R, V2>>() { // from class: com.google.common.collect.Tables.c.3
                @Override // com.google.common.base.Function
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public Map<R, V2> apply(Map<R, V1> map) {
                    return Maps.transformValues(map, c.this.b);
                }
            });
        }
    }

    public static <R, C, V> Table<R, C, V> unmodifiableTable(Table<? extends R, ? extends C, ? extends V> table) {
        return new f(table);
    }

    static class f<R, C, V> extends ForwardingTable<R, C, V> implements Serializable {
        private static final long serialVersionUID = 0;
        final Table<? extends R, ? extends C, ? extends V> a;

        f(Table<? extends R, ? extends C, ? extends V> table) {
            this.a = (Table) Preconditions.checkNotNull(table);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.ForwardingTable, com.google.common.collect.ForwardingObject
        public Table<R, C, V> delegate() {
            return this.a;
        }

        @Override // com.google.common.collect.ForwardingTable, com.google.common.collect.Table
        public Set<Table.Cell<R, C, V>> cellSet() {
            return Collections.unmodifiableSet(super.cellSet());
        }

        @Override // com.google.common.collect.ForwardingTable, com.google.common.collect.Table
        public void clear() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingTable, com.google.common.collect.Table
        public Map<R, V> column(@Nullable C c) {
            return Collections.unmodifiableMap(super.column(c));
        }

        @Override // com.google.common.collect.ForwardingTable, com.google.common.collect.Table
        public Set<C> columnKeySet() {
            return Collections.unmodifiableSet(super.columnKeySet());
        }

        @Override // com.google.common.collect.ForwardingTable, com.google.common.collect.Table
        public Map<C, Map<R, V>> columnMap() {
            return Collections.unmodifiableMap(Maps.transformValues(super.columnMap(), Tables.b()));
        }

        @Override // com.google.common.collect.ForwardingTable, com.google.common.collect.Table
        public V put(@Nullable R r, @Nullable C c, @Nullable V v) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingTable, com.google.common.collect.Table
        public void putAll(Table<? extends R, ? extends C, ? extends V> table) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingTable, com.google.common.collect.Table
        public V remove(@Nullable Object obj, @Nullable Object obj2) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingTable, com.google.common.collect.Table
        public Map<C, V> row(@Nullable R r) {
            return Collections.unmodifiableMap(super.row(r));
        }

        @Override // com.google.common.collect.ForwardingTable, com.google.common.collect.Table
        public Set<R> rowKeySet() {
            return Collections.unmodifiableSet(super.rowKeySet());
        }

        @Override // com.google.common.collect.ForwardingTable, com.google.common.collect.Table
        public Map<R, Map<C, V>> rowMap() {
            return Collections.unmodifiableMap(Maps.transformValues(super.rowMap(), Tables.b()));
        }

        @Override // com.google.common.collect.ForwardingTable, com.google.common.collect.Table
        public Collection<V> values() {
            return Collections.unmodifiableCollection(super.values());
        }
    }

    @Beta
    public static <R, C, V> RowSortedTable<R, C, V> unmodifiableRowSortedTable(RowSortedTable<R, ? extends C, ? extends V> rowSortedTable) {
        return new e(rowSortedTable);
    }

    static final class e<R, C, V> extends f<R, C, V> implements RowSortedTable<R, C, V> {
        private static final long serialVersionUID = 0;

        public e(RowSortedTable<R, ? extends C, ? extends V> rowSortedTable) {
            super(rowSortedTable);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.Tables.f, com.google.common.collect.ForwardingTable, com.google.common.collect.ForwardingObject
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public RowSortedTable<R, C, V> delegate() {
            return (RowSortedTable) super.delegate();
        }

        @Override // com.google.common.collect.Tables.f, com.google.common.collect.ForwardingTable, com.google.common.collect.Table
        public SortedMap<R, Map<C, V>> rowMap() {
            return Collections.unmodifiableSortedMap(Maps.transformValues((SortedMap) delegate().rowMap(), Tables.b()));
        }

        @Override // com.google.common.collect.Tables.f, com.google.common.collect.ForwardingTable, com.google.common.collect.Table
        public SortedSet<R> rowKeySet() {
            return Collections.unmodifiableSortedSet(delegate().rowKeySet());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <K, V> Function<Map<K, V>, Map<K, V>> b() {
        return (Function<Map<K, V>, Map<K, V>>) a;
    }

    public static boolean a(Table<?, ?, ?> table, @Nullable Object obj) {
        if (obj == table) {
            return true;
        }
        if (obj instanceof Table) {
            return table.cellSet().equals(((Table) obj).cellSet());
        }
        return false;
    }
}
