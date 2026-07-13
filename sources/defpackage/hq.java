package defpackage;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.Collections2;
import com.google.common.collect.Iterators;
import com.google.common.collect.Maps;
import com.google.common.collect.Table;
import com.google.common.collect.Tables;
import java.util.AbstractCollection;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible
public abstract class hq<R, C, V> implements Table<R, C, V> {
    private transient Set<Table.Cell<R, C, V>> a;
    private transient Collection<V> b;

    public abstract Iterator<Table.Cell<R, C, V>> b();

    protected hq() {
    }

    @Override // com.google.common.collect.Table
    public boolean containsRow(@Nullable Object obj) {
        return Maps.b((Map<?, ?>) rowMap(), obj);
    }

    @Override // com.google.common.collect.Table
    public boolean containsColumn(@Nullable Object obj) {
        return Maps.b((Map<?, ?>) columnMap(), obj);
    }

    @Override // com.google.common.collect.Table
    public Set<R> rowKeySet() {
        return rowMap().keySet();
    }

    @Override // com.google.common.collect.Table
    public Set<C> columnKeySet() {
        return columnMap().keySet();
    }

    @Override // com.google.common.collect.Table
    public boolean containsValue(@Nullable Object obj) {
        Iterator<Map<C, V>> it = rowMap().values().iterator();
        while (it.hasNext()) {
            if (it.next().containsValue(obj)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.common.collect.Table
    public boolean contains(@Nullable Object obj, @Nullable Object obj2) {
        Map map = (Map) Maps.a(rowMap(), obj);
        return map != null && Maps.b((Map<?, ?>) map, obj2);
    }

    @Override // com.google.common.collect.Table
    public V get(@Nullable Object obj, @Nullable Object obj2) {
        Map map = (Map) Maps.a(rowMap(), obj);
        if (map == null) {
            return null;
        }
        return (V) Maps.a(map, obj2);
    }

    @Override // com.google.common.collect.Table
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // com.google.common.collect.Table
    public void clear() {
        Iterators.b(cellSet().iterator());
    }

    @Override // com.google.common.collect.Table
    public V remove(@Nullable Object obj, @Nullable Object obj2) {
        Map map = (Map) Maps.a(rowMap(), obj);
        if (map == null) {
            return null;
        }
        return (V) Maps.c(map, obj2);
    }

    @Override // com.google.common.collect.Table
    public V put(R r, C c, V v) {
        return row(r).put(c, v);
    }

    @Override // com.google.common.collect.Table
    public void putAll(Table<? extends R, ? extends C, ? extends V> table) {
        for (Table.Cell<? extends R, ? extends C, ? extends V> cell : table.cellSet()) {
            put(cell.getRowKey(), cell.getColumnKey(), cell.getValue());
        }
    }

    @Override // com.google.common.collect.Table
    public Set<Table.Cell<R, C, V>> cellSet() {
        Set<Table.Cell<R, C, V>> set = this.a;
        if (set != null) {
            return set;
        }
        Set<Table.Cell<R, C, V>> setA = a();
        this.a = setA;
        return setA;
    }

    public Set<Table.Cell<R, C, V>> a() {
        return new a();
    }

    class a extends AbstractSet<Table.Cell<R, C, V>> {
        a() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            if (!(obj instanceof Table.Cell)) {
                return false;
            }
            Table.Cell cell = (Table.Cell) obj;
            Map map = (Map) Maps.a(hq.this.rowMap(), cell.getRowKey());
            return map != null && Collections2.a(map.entrySet(), Maps.immutableEntry(cell.getColumnKey(), cell.getValue()));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(@Nullable Object obj) {
            if (!(obj instanceof Table.Cell)) {
                return false;
            }
            Table.Cell cell = (Table.Cell) obj;
            Map map = (Map) Maps.a(hq.this.rowMap(), cell.getRowKey());
            return map != null && Collections2.b(map.entrySet(), Maps.immutableEntry(cell.getColumnKey(), cell.getValue()));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            hq.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Table.Cell<R, C, V>> iterator() {
            return hq.this.b();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return hq.this.size();
        }
    }

    @Override // com.google.common.collect.Table
    public Collection<V> values() {
        Collection<V> collection = this.b;
        if (collection != null) {
            return collection;
        }
        Collection<V> collectionC = c();
        this.b = collectionC;
        return collectionC;
    }

    public Collection<V> c() {
        return new b();
    }

    public Iterator<V> d() {
        return new kn<Table.Cell<R, C, V>, V>(cellSet().iterator()) { // from class: hq.1
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // defpackage.kn
            public V a(Table.Cell<R, C, V> cell) {
                return cell.getValue();
            }
        };
    }

    class b extends AbstractCollection<V> {
        b() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return hq.this.d();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return hq.this.containsValue(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            hq.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return hq.this.size();
        }
    }

    @Override // com.google.common.collect.Table
    public boolean equals(@Nullable Object obj) {
        return Tables.a(this, obj);
    }

    @Override // com.google.common.collect.Table
    public int hashCode() {
        return cellSet().hashCode();
    }

    public String toString() {
        return rowMap().toString();
    }
}
