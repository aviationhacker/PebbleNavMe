package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Supplier;
import defpackage.hu;
import defpackage.kl;
import java.io.Serializable;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(serializable = true)
public class HashBasedTable<R, C, V> extends kl<R, C, V> {
    private static final long serialVersionUID = 0;

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

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.kl, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ Map row(Object obj) {
        return super.row(obj);
    }

    @Override // defpackage.kl, defpackage.hq, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ Set rowKeySet() {
        return super.rowKeySet();
    }

    @Override // defpackage.kl, com.google.common.collect.Table
    public /* bridge */ /* synthetic */ Map rowMap() {
        return super.rowMap();
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

    static class a<C, V> implements Supplier<Map<C, V>>, Serializable {
        private static final long serialVersionUID = 0;
        final int a;

        a(int i) {
            this.a = i;
        }

        @Override // com.google.common.base.Supplier
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Map<C, V> get() {
            return Maps.newHashMapWithExpectedSize(this.a);
        }
    }

    public static <R, C, V> HashBasedTable<R, C, V> create() {
        return new HashBasedTable<>(new HashMap(), new a(0));
    }

    public static <R, C, V> HashBasedTable<R, C, V> create(int i, int i2) {
        hu.a(i2, "expectedCellsPerRow");
        return new HashBasedTable<>(Maps.newHashMapWithExpectedSize(i), new a(i2));
    }

    public static <R, C, V> HashBasedTable<R, C, V> create(Table<? extends R, ? extends C, ? extends V> table) {
        HashBasedTable<R, C, V> hashBasedTableCreate = create();
        hashBasedTableCreate.putAll(table);
        return hashBasedTableCreate;
    }

    HashBasedTable(Map<R, Map<C, V>> map, a<C, V> aVar) {
        super(map, aVar);
    }

    @Override // defpackage.kl, defpackage.hq, com.google.common.collect.Table
    public boolean contains(@Nullable Object obj, @Nullable Object obj2) {
        return super.contains(obj, obj2);
    }

    @Override // defpackage.kl, defpackage.hq, com.google.common.collect.Table
    public boolean containsColumn(@Nullable Object obj) {
        return super.containsColumn(obj);
    }

    @Override // defpackage.kl, defpackage.hq, com.google.common.collect.Table
    public boolean containsRow(@Nullable Object obj) {
        return super.containsRow(obj);
    }

    @Override // defpackage.kl, defpackage.hq, com.google.common.collect.Table
    public boolean containsValue(@Nullable Object obj) {
        return super.containsValue(obj);
    }

    @Override // defpackage.kl, defpackage.hq, com.google.common.collect.Table
    public V get(@Nullable Object obj, @Nullable Object obj2) {
        return (V) super.get(obj, obj2);
    }

    @Override // defpackage.hq, com.google.common.collect.Table
    public boolean equals(@Nullable Object obj) {
        return super.equals(obj);
    }

    @Override // defpackage.kl, defpackage.hq, com.google.common.collect.Table
    public V remove(@Nullable Object obj, @Nullable Object obj2) {
        return (V) super.remove(obj, obj2);
    }
}
