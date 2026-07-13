package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.collect.Maps;
import com.google.common.collect.Table;
import com.google.common.collect.Tables;
import defpackage.hd;
import defpackage.hh;
import defpackage.hq;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Beta
@GwtCompatible(emulated = true)
public final class ArrayTable<R, C, V> extends hq<R, C, V> implements Serializable {
    private static final long serialVersionUID = 0;
    private final ImmutableList<R> a;
    private final ImmutableList<C> b;
    private final ImmutableMap<R, Integer> c;
    private final ImmutableMap<C, Integer> d;
    private final V[][] e;
    private transient ArrayTable<R, C, V>.c f;
    private transient ArrayTable<R, C, V>.e g;

    @Override // defpackage.hq, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ boolean equals(@Nullable Object obj) {
        return super.equals(obj);
    }

    @Override // defpackage.hq, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // defpackage.hq
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    public static <R, C, V> ArrayTable<R, C, V> create(Iterable<? extends R> iterable, Iterable<? extends C> iterable2) {
        return new ArrayTable<>(iterable, iterable2);
    }

    public static <R, C, V> ArrayTable<R, C, V> create(Table<R, C, V> table) {
        return table instanceof ArrayTable ? new ArrayTable<>((ArrayTable) table) : new ArrayTable<>(table);
    }

    private ArrayTable(Iterable<? extends R> iterable, Iterable<? extends C> iterable2) {
        this.a = ImmutableList.copyOf(iterable);
        this.b = ImmutableList.copyOf(iterable2);
        Preconditions.checkArgument(!this.a.isEmpty());
        Preconditions.checkArgument(this.b.isEmpty() ? false : true);
        this.c = Maps.a(this.a);
        this.d = Maps.a(this.b);
        this.e = (V[][]) ((Object[][]) Array.newInstance((Class<?>) Object.class, this.a.size(), this.b.size()));
        eraseAll();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private ArrayTable(Table<R, C, V> table) {
        this(table.rowKeySet(), table.columnKeySet());
        putAll(table);
    }

    private ArrayTable(ArrayTable<R, C, V> arrayTable) {
        this.a = arrayTable.a;
        this.b = arrayTable.b;
        this.c = arrayTable.c;
        this.d = arrayTable.d;
        V[][] vArr = (V[][]) ((Object[][]) Array.newInstance((Class<?>) Object.class, this.a.size(), this.b.size()));
        this.e = vArr;
        eraseAll();
        for (int i = 0; i < this.a.size(); i++) {
            System.arraycopy(arrayTable.e[i], 0, vArr[i], 0, arrayTable.e[i].length);
        }
    }

    static abstract class a<K, V> extends Maps.m<K, V> {
        private final ImmutableMap<K, Integer> a;

        @Nullable
        abstract V a(int i, V v);

        abstract String a();

        @Nullable
        abstract V b(int i);

        private a(ImmutableMap<K, Integer> immutableMap) {
            this.a = immutableMap;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<K> keySet() {
            return this.a.keySet();
        }

        K a(int i) {
            return this.a.keySet().asList().get(i);
        }

        @Override // com.google.common.collect.Maps.m, java.util.AbstractMap, java.util.Map
        public int size() {
            return this.a.size();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean isEmpty() {
            return this.a.isEmpty();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.Maps.m
        public Iterator<Map.Entry<K, V>> b() {
            return new hd<Map.Entry<K, V>>(size()) { // from class: com.google.common.collect.ArrayTable.a.1
                /* JADX INFO: Access modifiers changed from: protected */
                @Override // defpackage.hd
                /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
                public Map.Entry<K, V> a(final int i) {
                    return new hh<K, V>() { // from class: com.google.common.collect.ArrayTable.a.1.1
                        @Override // defpackage.hh, java.util.Map.Entry
                        public K getKey() {
                            return (K) a.this.a(i);
                        }

                        @Override // defpackage.hh, java.util.Map.Entry
                        public V getValue() {
                            return (V) a.this.b(i);
                        }

                        @Override // defpackage.hh, java.util.Map.Entry
                        public V setValue(V v) {
                            return (V) a.this.a(i, v);
                        }
                    };
                }
            };
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(@Nullable Object obj) {
            return this.a.containsKey(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V get(@Nullable Object obj) {
            Integer num = this.a.get(obj);
            if (num == null) {
                return null;
            }
            return b(num.intValue());
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V put(K k, V v) {
            Integer num = this.a.get(k);
            if (num == null) {
                String strA = a();
                String strValueOf = String.valueOf(k);
                String strValueOf2 = String.valueOf(this.a.keySet());
                throw new IllegalArgumentException(new StringBuilder(String.valueOf(strA).length() + 9 + String.valueOf(strValueOf).length() + String.valueOf(strValueOf2).length()).append(strA).append(" ").append(strValueOf).append(" not in ").append(strValueOf2).toString());
            }
            return a(num.intValue(), v);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V remove(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.Maps.m, java.util.AbstractMap, java.util.Map
        public void clear() {
            throw new UnsupportedOperationException();
        }
    }

    public ImmutableList<R> rowKeyList() {
        return this.a;
    }

    public ImmutableList<C> columnKeyList() {
        return this.b;
    }

    public V at(int i, int i2) {
        Preconditions.checkElementIndex(i, this.a.size());
        Preconditions.checkElementIndex(i2, this.b.size());
        return this.e[i][i2];
    }

    public V set(int i, int i2, @Nullable V v) {
        Preconditions.checkElementIndex(i, this.a.size());
        Preconditions.checkElementIndex(i2, this.b.size());
        V v2 = this.e[i][i2];
        this.e[i][i2] = v;
        return v2;
    }

    @GwtIncompatible("reflection")
    public V[][] toArray(Class<V> cls) {
        V[][] vArr = (V[][]) ((Object[][]) Array.newInstance((Class<?>) cls, this.a.size(), this.b.size()));
        for (int i = 0; i < this.a.size(); i++) {
            System.arraycopy(this.e[i], 0, vArr[i], 0, this.e[i].length);
        }
        return vArr;
    }

    @Override // defpackage.hq, com.google.common.collect.Table
    @Deprecated
    public void clear() {
        throw new UnsupportedOperationException();
    }

    public void eraseAll() {
        for (V[] vArr : this.e) {
            Arrays.fill(vArr, (Object) null);
        }
    }

    @Override // defpackage.hq, com.google.common.collect.Table
    public boolean contains(@Nullable Object obj, @Nullable Object obj2) {
        return containsRow(obj) && containsColumn(obj2);
    }

    @Override // defpackage.hq, com.google.common.collect.Table
    public boolean containsColumn(@Nullable Object obj) {
        return this.d.containsKey(obj);
    }

    @Override // defpackage.hq, com.google.common.collect.Table
    public boolean containsRow(@Nullable Object obj) {
        return this.c.containsKey(obj);
    }

    @Override // defpackage.hq, com.google.common.collect.Table
    public boolean containsValue(@Nullable Object obj) {
        for (V[] vArr : this.e) {
            for (V v : vArr) {
                if (Objects.equal(obj, v)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // defpackage.hq, com.google.common.collect.Table
    public V get(@Nullable Object obj, @Nullable Object obj2) {
        Integer num = this.c.get(obj);
        Integer num2 = this.d.get(obj2);
        if (num == null || num2 == null) {
            return null;
        }
        return at(num.intValue(), num2.intValue());
    }

    @Override // defpackage.hq, com.google.common.collect.Table
    public boolean isEmpty() {
        return false;
    }

    @Override // defpackage.hq, com.google.common.collect.Table
    public V put(R r, C c2, @Nullable V v) {
        Preconditions.checkNotNull(r);
        Preconditions.checkNotNull(c2);
        Integer num = this.c.get(r);
        Preconditions.checkArgument(num != null, "Row %s not in %s", r, this.a);
        Integer num2 = this.d.get(c2);
        Preconditions.checkArgument(num2 != null, "Column %s not in %s", c2, this.b);
        return set(num.intValue(), num2.intValue(), v);
    }

    @Override // defpackage.hq, com.google.common.collect.Table
    public void putAll(Table<? extends R, ? extends C, ? extends V> table) {
        super.putAll(table);
    }

    @Override // defpackage.hq, com.google.common.collect.Table
    @Deprecated
    public V remove(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    public V erase(@Nullable Object obj, @Nullable Object obj2) {
        Integer num = this.c.get(obj);
        Integer num2 = this.d.get(obj2);
        if (num == null || num2 == null) {
            return null;
        }
        return set(num.intValue(), num2.intValue(), null);
    }

    @Override // com.google.common.collect.Table
    public int size() {
        return this.a.size() * this.b.size();
    }

    @Override // defpackage.hq, com.google.common.collect.Table
    public Set<Table.Cell<R, C, V>> cellSet() {
        return super.cellSet();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // defpackage.hq
    public Iterator<Table.Cell<R, C, V>> b() {
        return new hd<Table.Cell<R, C, V>>(size()) { // from class: com.google.common.collect.ArrayTable.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // defpackage.hd
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public Table.Cell<R, C, V> a(final int i) {
                return new Tables.a<R, C, V>() { // from class: com.google.common.collect.ArrayTable.1.1
                    final int a;
                    final int b;

                    {
                        this.a = i / ArrayTable.this.b.size();
                        this.b = i % ArrayTable.this.b.size();
                    }

                    @Override // com.google.common.collect.Table.Cell
                    public R getRowKey() {
                        return (R) ArrayTable.this.a.get(this.a);
                    }

                    @Override // com.google.common.collect.Table.Cell
                    public C getColumnKey() {
                        return (C) ArrayTable.this.b.get(this.b);
                    }

                    @Override // com.google.common.collect.Table.Cell
                    public V getValue() {
                        return (V) ArrayTable.this.at(this.a, this.b);
                    }
                };
            }
        };
    }

    @Override // com.google.common.collect.Table
    public Map<R, V> column(C c2) {
        Preconditions.checkNotNull(c2);
        Integer num = this.d.get(c2);
        return num == null ? ImmutableMap.of() : new b(num.intValue());
    }

    class b extends a<R, V> {
        final int a;

        b(int i) {
            super(ArrayTable.this.c);
            this.a = i;
        }

        @Override // com.google.common.collect.ArrayTable.a
        String a() {
            return "Row";
        }

        @Override // com.google.common.collect.ArrayTable.a
        V b(int i) {
            return (V) ArrayTable.this.at(i, this.a);
        }

        @Override // com.google.common.collect.ArrayTable.a
        V a(int i, V v) {
            return (V) ArrayTable.this.set(i, this.a, v);
        }
    }

    @Override // defpackage.hq, com.google.common.collect.Table
    public ImmutableSet<C> columnKeySet() {
        return this.d.keySet();
    }

    @Override // com.google.common.collect.Table
    public Map<C, Map<R, V>> columnMap() {
        ArrayTable<R, C, V>.c cVar = this.f;
        if (cVar != null) {
            return cVar;
        }
        ArrayTable<R, C, V>.c cVar2 = new c();
        this.f = cVar2;
        return cVar2;
    }

    class c extends a<C, Map<R, V>> {
        private c() {
            super(ArrayTable.this.d);
        }

        @Override // com.google.common.collect.ArrayTable.a
        String a() {
            return "Column";
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ArrayTable.a
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public Map<R, V> b(int i) {
            return new b(i);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ArrayTable.a
        public Map<R, V> a(int i, Map<R, V> map) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ArrayTable.a, java.util.AbstractMap, java.util.Map
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Map<R, V> put(C c, Map<R, V> map) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // com.google.common.collect.Table
    public Map<C, V> row(R r) {
        Preconditions.checkNotNull(r);
        Integer num = this.c.get(r);
        return num == null ? ImmutableMap.of() : new d(num.intValue());
    }

    class d extends a<C, V> {
        final int a;

        d(int i) {
            super(ArrayTable.this.d);
            this.a = i;
        }

        @Override // com.google.common.collect.ArrayTable.a
        String a() {
            return "Column";
        }

        @Override // com.google.common.collect.ArrayTable.a
        V b(int i) {
            return (V) ArrayTable.this.at(this.a, i);
        }

        @Override // com.google.common.collect.ArrayTable.a
        V a(int i, V v) {
            return (V) ArrayTable.this.set(this.a, i, v);
        }
    }

    @Override // defpackage.hq, com.google.common.collect.Table
    public ImmutableSet<R> rowKeySet() {
        return this.c.keySet();
    }

    @Override // com.google.common.collect.Table
    public Map<R, Map<C, V>> rowMap() {
        ArrayTable<R, C, V>.e eVar = this.g;
        if (eVar != null) {
            return eVar;
        }
        ArrayTable<R, C, V>.e eVar2 = new e();
        this.g = eVar2;
        return eVar2;
    }

    class e extends a<R, Map<C, V>> {
        private e() {
            super(ArrayTable.this.c);
        }

        @Override // com.google.common.collect.ArrayTable.a
        String a() {
            return "Row";
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ArrayTable.a
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public Map<C, V> b(int i) {
            return new d(i);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ArrayTable.a
        public Map<C, V> a(int i, Map<C, V> map) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ArrayTable.a, java.util.AbstractMap, java.util.Map
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Map<C, V> put(R r, Map<C, V> map) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // defpackage.hq, com.google.common.collect.Table
    public Collection<V> values() {
        return super.values();
    }
}
