package defpackage;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import com.google.common.collect.Maps;
import com.google.common.collect.RowSortedTable;
import java.util.Comparator;
import java.util.Map;
import java.util.SortedMap;
import java.util.SortedSet;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible
public class kk<R, C, V> extends kl<R, C, V> implements RowSortedTable<R, C, V> {
    private static final long serialVersionUID = 0;

    protected kk(SortedMap<R, Map<C, V>> sortedMap, Supplier<? extends Map<C, V>> supplier) {
        super(sortedMap, supplier);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SortedMap<R, Map<C, V>> h() {
        return (SortedMap) this.a;
    }

    @Override // defpackage.kl, defpackage.hq, com.google.common.collect.Table
    public SortedSet<R> rowKeySet() {
        return (SortedSet) rowMap().keySet();
    }

    @Override // defpackage.kl, com.google.common.collect.Table
    public SortedMap<R, Map<C, V>> rowMap() {
        return (SortedMap) super.rowMap();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // defpackage.kl
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public SortedMap<R, Map<C, V>> f() {
        return new a();
    }

    class a extends kl<R, C, V>.g implements SortedMap<R, Map<C, V>> {
        private a() {
            super();
        }

        @Override // com.google.common.collect.Maps.ad, java.util.AbstractMap, java.util.Map
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public SortedSet<R> keySet() {
            return (SortedSet) super.keySet();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.Maps.ad
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public SortedSet<R> h() {
            return new Maps.s(this);
        }

        @Override // java.util.SortedMap
        public Comparator<? super R> comparator() {
            return kk.this.h().comparator();
        }

        @Override // java.util.SortedMap
        public R firstKey() {
            return (R) kk.this.h().firstKey();
        }

        @Override // java.util.SortedMap
        public R lastKey() {
            return (R) kk.this.h().lastKey();
        }

        @Override // java.util.SortedMap
        public SortedMap<R, Map<C, V>> headMap(R r) {
            Preconditions.checkNotNull(r);
            return new kk(kk.this.h().headMap(r), kk.this.b).rowMap();
        }

        @Override // java.util.SortedMap
        public SortedMap<R, Map<C, V>> subMap(R r, R r2) {
            Preconditions.checkNotNull(r);
            Preconditions.checkNotNull(r2);
            return new kk(kk.this.h().subMap(r, r2), kk.this.b).rowMap();
        }

        @Override // java.util.SortedMap
        public SortedMap<R, Map<C, V>> tailMap(R r) {
            Preconditions.checkNotNull(r);
            return new kk(kk.this.h().tailMap(r), kk.this.b).rowMap();
        }
    }
}
