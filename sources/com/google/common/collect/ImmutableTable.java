package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Table;
import com.google.common.collect.Tables;
import defpackage.hq;
import defpackage.jx;
import defpackage.ke;
import defpackage.kj;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible
public abstract class ImmutableTable<R, C, V> extends hq<R, C, V> {
    private static final ImmutableTable<Object, Object, Object> a = new kj(ImmutableList.of(), ImmutableSet.of(), ImmutableSet.of());

    @Override // com.google.common.collect.Table
    public abstract ImmutableMap<C, Map<R, V>> columnMap();

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // defpackage.hq
    /* JADX INFO: renamed from: e */
    public abstract ImmutableSet<Table.Cell<R, C, V>> a();

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // defpackage.hq
    /* JADX INFO: renamed from: g */
    public abstract ImmutableCollection<V> c();

    @Override // com.google.common.collect.Table
    public abstract ImmutableMap<R, Map<C, V>> rowMap();

    @Override // defpackage.hq, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ boolean containsColumn(@Nullable Object obj) {
        return super.containsColumn(obj);
    }

    @Override // defpackage.hq, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ boolean containsRow(@Nullable Object obj) {
        return super.containsRow(obj);
    }

    @Override // defpackage.hq, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ boolean equals(@Nullable Object obj) {
        return super.equals(obj);
    }

    @Override // defpackage.hq, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ Object get(@Nullable Object obj, @Nullable Object obj2) {
        return super.get(obj, obj2);
    }

    @Override // defpackage.hq, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // defpackage.hq, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    @Override // defpackage.hq
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    public static <R, C, V> ImmutableTable<R, C, V> of() {
        return (ImmutableTable<R, C, V>) a;
    }

    public static <R, C, V> ImmutableTable<R, C, V> of(R r, C c, V v) {
        return new ke(r, c, v);
    }

    public static <R, C, V> ImmutableTable<R, C, V> copyOf(Table<? extends R, ? extends C, ? extends V> table) {
        if (table instanceof ImmutableTable) {
            return (ImmutableTable) table;
        }
        int size = table.size();
        switch (size) {
            case 0:
                return of();
            case 1:
                Table.Cell cell = (Table.Cell) Iterables.getOnlyElement(table.cellSet());
                return of(cell.getRowKey(), cell.getColumnKey(), cell.getValue());
            default:
                ImmutableSet.Builder builder = new ImmutableSet.Builder(size);
                for (Table.Cell<? extends R, ? extends C, ? extends V> cell2 : table.cellSet()) {
                    builder.add(a(cell2.getRowKey(), cell2.getColumnKey(), cell2.getValue()));
                }
                return jx.a(builder.build());
        }
    }

    public static <R, C, V> Builder<R, C, V> builder() {
        return new Builder<>();
    }

    protected static <R, C, V> Table.Cell<R, C, V> a(R r, C c, V v) {
        return Tables.immutableCell(Preconditions.checkNotNull(r), Preconditions.checkNotNull(c), Preconditions.checkNotNull(v));
    }

    public static final class Builder<R, C, V> {
        private final List<Table.Cell<R, C, V>> a = Lists.newArrayList();
        private Comparator<? super R> b;
        private Comparator<? super C> c;

        public Builder<R, C, V> orderRowsBy(Comparator<? super R> comparator) {
            this.b = (Comparator) Preconditions.checkNotNull(comparator);
            return this;
        }

        public Builder<R, C, V> orderColumnsBy(Comparator<? super C> comparator) {
            this.c = (Comparator) Preconditions.checkNotNull(comparator);
            return this;
        }

        public Builder<R, C, V> put(R r, C c, V v) {
            this.a.add(ImmutableTable.a(r, c, v));
            return this;
        }

        public Builder<R, C, V> put(Table.Cell<? extends R, ? extends C, ? extends V> cell) {
            if (cell instanceof Tables.b) {
                Preconditions.checkNotNull(cell.getRowKey());
                Preconditions.checkNotNull(cell.getColumnKey());
                Preconditions.checkNotNull(cell.getValue());
                this.a.add(cell);
            } else {
                put(cell.getRowKey(), cell.getColumnKey(), cell.getValue());
            }
            return this;
        }

        public Builder<R, C, V> putAll(Table<? extends R, ? extends C, ? extends V> table) {
            Iterator<Table.Cell<? extends R, ? extends C, ? extends V>> it = table.cellSet().iterator();
            while (it.hasNext()) {
                put(it.next());
            }
            return this;
        }

        public ImmutableTable<R, C, V> build() {
            switch (this.a.size()) {
                case 0:
                    return ImmutableTable.of();
                case 1:
                    return new ke((Table.Cell) Iterables.getOnlyElement(this.a));
                default:
                    return jx.a((List) this.a, (Comparator) this.b, (Comparator) this.c);
            }
        }
    }

    protected ImmutableTable() {
    }

    @Override // defpackage.hq, com.google.common.collect.Table
    public ImmutableSet<Table.Cell<R, C, V>> cellSet() {
        return (ImmutableSet) super.cellSet();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // defpackage.hq
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final UnmodifiableIterator<Table.Cell<R, C, V>> b() {
        throw new AssertionError("should never be called");
    }

    @Override // defpackage.hq, com.google.common.collect.Table
    public ImmutableCollection<V> values() {
        return (ImmutableCollection) super.values();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // defpackage.hq
    public final Iterator<V> d() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.common.collect.Table
    public ImmutableMap<R, V> column(C c) {
        Preconditions.checkNotNull(c);
        return (ImmutableMap) MoreObjects.firstNonNull((ImmutableMap) columnMap().get(c), ImmutableMap.of());
    }

    @Override // defpackage.hq, com.google.common.collect.Table
    public ImmutableSet<C> columnKeySet() {
        return columnMap().keySet();
    }

    @Override // com.google.common.collect.Table
    public ImmutableMap<C, V> row(R r) {
        Preconditions.checkNotNull(r);
        return (ImmutableMap) MoreObjects.firstNonNull((ImmutableMap) rowMap().get(r), ImmutableMap.of());
    }

    @Override // defpackage.hq, com.google.common.collect.Table
    public ImmutableSet<R> rowKeySet() {
        return rowMap().keySet();
    }

    @Override // defpackage.hq, com.google.common.collect.Table
    public boolean contains(@Nullable Object obj, @Nullable Object obj2) {
        return get(obj, obj2) != null;
    }

    @Override // defpackage.hq, com.google.common.collect.Table
    public boolean containsValue(@Nullable Object obj) {
        return values().contains(obj);
    }

    @Override // defpackage.hq, com.google.common.collect.Table
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // defpackage.hq, com.google.common.collect.Table
    @Deprecated
    public final V put(R r, C c, V v) {
        throw new UnsupportedOperationException();
    }

    @Override // defpackage.hq, com.google.common.collect.Table
    @Deprecated
    public final void putAll(Table<? extends R, ? extends C, ? extends V> table) {
        throw new UnsupportedOperationException();
    }

    @Override // defpackage.hq, com.google.common.collect.Table
    @Deprecated
    public final V remove(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }
}
