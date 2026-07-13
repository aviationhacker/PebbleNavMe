package defpackage;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableCollection;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.ImmutableTable;
import com.google.common.collect.Ordering;
import com.google.common.collect.Table;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedHashSet;
import java.util.List;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible
public abstract class jx<R, C, V> extends ImmutableTable<R, C, V> {
    abstract Table.Cell<R, C, V> a(int i);

    abstract V b(int i);

    jx() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.ImmutableTable, defpackage.hq
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public final ImmutableSet<Table.Cell<R, C, V>> a() {
        return isEmpty() ? ImmutableSet.of() : new a();
    }

    final class a extends ImmutableSet.a<Table.Cell<R, C, V>> {
        private a() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return jx.this.size();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableSet.a
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Table.Cell<R, C, V> a(int i) {
            return jx.this.a(i);
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
        public boolean contains(@Nullable Object obj) {
            if (!(obj instanceof Table.Cell)) {
                return false;
            }
            Table.Cell cell = (Table.Cell) obj;
            Object obj2 = jx.this.get(cell.getRowKey(), cell.getColumnKey());
            return obj2 != null && obj2.equals(cell.getValue());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableCollection
        public boolean a() {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.ImmutableTable, defpackage.hq
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public final ImmutableCollection<V> c() {
        return isEmpty() ? ImmutableList.of() : new b();
    }

    final class b extends ImmutableList<V> {
        private b() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return jx.this.size();
        }

        @Override // java.util.List
        public V get(int i) {
            return (V) jx.this.b(i);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableCollection
        public boolean a() {
            return true;
        }
    }

    public static <R, C, V> jx<R, C, V> a(List<Table.Cell<R, C, V>> list, @Nullable final Comparator<? super R> comparator, @Nullable final Comparator<? super C> comparator2) {
        Preconditions.checkNotNull(list);
        if (comparator != null || comparator2 != null) {
            Collections.sort(list, new Comparator<Table.Cell<R, C, V>>() { // from class: jx.1
                @Override // java.util.Comparator
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public int compare(Table.Cell<R, C, V> cell, Table.Cell<R, C, V> cell2) {
                    int iCompare = comparator == null ? 0 : comparator.compare(cell.getRowKey(), cell2.getRowKey());
                    if (iCompare != 0) {
                        return iCompare;
                    }
                    if (comparator2 != null) {
                        return comparator2.compare(cell.getColumnKey(), cell2.getColumnKey());
                    }
                    return 0;
                }
            });
        }
        return a((Iterable) list, (Comparator) comparator, (Comparator) comparator2);
    }

    public static <R, C, V> jx<R, C, V> a(Iterable<Table.Cell<R, C, V>> iterable) {
        return a((Iterable) iterable, (Comparator) null, (Comparator) null);
    }

    private static final <R, C, V> jx<R, C, V> a(Iterable<Table.Cell<R, C, V>> iterable, @Nullable Comparator<? super R> comparator, @Nullable Comparator<? super C> comparator2) {
        ImmutableSet immutableSetCopyOf;
        ImmutableSet immutableSetCopyOf2;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        LinkedHashSet linkedHashSet2 = new LinkedHashSet();
        ImmutableList immutableListCopyOf = ImmutableList.copyOf(iterable);
        for (Table.Cell<R, C, V> cell : iterable) {
            linkedHashSet.add(cell.getRowKey());
            linkedHashSet2.add(cell.getColumnKey());
        }
        if (comparator == null) {
            immutableSetCopyOf = ImmutableSet.copyOf((Collection) linkedHashSet);
        } else {
            immutableSetCopyOf = ImmutableSet.copyOf((Collection) Ordering.from(comparator).immutableSortedCopy(linkedHashSet));
        }
        if (comparator2 == null) {
            immutableSetCopyOf2 = ImmutableSet.copyOf((Collection) linkedHashSet2);
        } else {
            immutableSetCopyOf2 = ImmutableSet.copyOf((Collection) Ordering.from(comparator2).immutableSortedCopy(linkedHashSet2));
        }
        return ((long) immutableListCopyOf.size()) > (((long) immutableSetCopyOf.size()) * ((long) immutableSetCopyOf2.size())) / 2 ? new id(immutableListCopyOf, immutableSetCopyOf, immutableSetCopyOf2) : new kj(immutableListCopyOf, immutableSetCopyOf, immutableSetCopyOf2);
    }
}
