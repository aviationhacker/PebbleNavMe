package defpackage;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableCollection;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.ImmutableTable;
import com.google.common.collect.Table;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible
public class ke<R, C, V> extends ImmutableTable<R, C, V> {
    final R a;
    final C b;
    final V c;

    public ke(R r, C c, V v) {
        this.a = (R) Preconditions.checkNotNull(r);
        this.b = (C) Preconditions.checkNotNull(c);
        this.c = (V) Preconditions.checkNotNull(v);
    }

    public ke(Table.Cell<R, C, V> cell) {
        this(cell.getRowKey(), cell.getColumnKey(), cell.getValue());
    }

    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.Table
    public ImmutableMap<R, V> column(C c) {
        Preconditions.checkNotNull(c);
        return containsColumn(c) ? ImmutableMap.of(this.a, (Object) this.c) : ImmutableMap.of();
    }

    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.Table
    public ImmutableMap<C, Map<R, V>> columnMap() {
        return ImmutableMap.of(this.b, ImmutableMap.of(this.a, (Object) this.c));
    }

    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.Table
    public ImmutableMap<R, Map<C, V>> rowMap() {
        return ImmutableMap.of(this.a, ImmutableMap.of(this.b, (Object) this.c));
    }

    @Override // com.google.common.collect.Table
    public int size() {
        return 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.ImmutableTable, defpackage.hq
    /* JADX INFO: renamed from: e */
    public ImmutableSet<Table.Cell<R, C, V>> a() {
        return ImmutableSet.of(a(this.a, this.b, this.c));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.ImmutableTable, defpackage.hq
    /* JADX INFO: renamed from: g */
    public ImmutableCollection<V> c() {
        return ImmutableSet.of(this.c);
    }
}
