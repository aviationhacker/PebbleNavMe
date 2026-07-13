package defpackage;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.AbstractIterator;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Maps;
import com.google.common.collect.Table;
import com.google.common.collect.UnmodifiableIterator;
import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Map;
import javax.annotation.Nullable;
import javax.annotation.concurrent.Immutable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible
@Immutable
final class id<R, C, V> extends jx<R, C, V> {
    private final ImmutableMap<R, Integer> a;
    private final ImmutableMap<C, Integer> b;
    private final ImmutableMap<R, Map<C, V>> c;
    private final ImmutableMap<C, Map<R, V>> d;
    private final int[] e;
    private final int[] f;
    private final V[][] g;
    private final int[] h;
    private final int[] i;

    id(ImmutableList<Table.Cell<R, C, V>> immutableList, ImmutableSet<R> immutableSet, ImmutableSet<C> immutableSet2) {
        this.g = (V[][]) ((Object[][]) Array.newInstance((Class<?>) Object.class, immutableSet.size(), immutableSet2.size()));
        this.a = Maps.a((Collection) immutableSet);
        this.b = Maps.a((Collection) immutableSet2);
        this.e = new int[this.a.size()];
        this.f = new int[this.b.size()];
        int[] iArr = new int[immutableList.size()];
        int[] iArr2 = new int[immutableList.size()];
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < immutableList.size()) {
                Table.Cell<R, C, V> cell = immutableList.get(i2);
                R rowKey = cell.getRowKey();
                C columnKey = cell.getColumnKey();
                int iIntValue = this.a.get(rowKey).intValue();
                int iIntValue2 = this.b.get(columnKey).intValue();
                Preconditions.checkArgument(this.g[iIntValue][iIntValue2] == null, "duplicate key: (%s, %s)", rowKey, columnKey);
                this.g[iIntValue][iIntValue2] = cell.getValue();
                int[] iArr3 = this.e;
                iArr3[iIntValue] = iArr3[iIntValue] + 1;
                int[] iArr4 = this.f;
                iArr4[iIntValue2] = iArr4[iIntValue2] + 1;
                iArr[i2] = iIntValue;
                iArr2[i2] = iIntValue2;
                i = i2 + 1;
            } else {
                this.h = iArr;
                this.i = iArr2;
                this.c = new e();
                this.d = new b();
                return;
            }
        }
    }

    static abstract class c<K, V> extends ImmutableMap.a<K, V> {
        private final int a;

        @Nullable
        abstract V a(int i);

        abstract ImmutableMap<K, Integer> b_();

        c(int i) {
            this.a = i;
        }

        private boolean g() {
            return this.a == b_().size();
        }

        K c(int i) {
            return b_().keySet().asList().get(i);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableMap
        public ImmutableSet<K> c() {
            return g() ? b_().keySet() : super.c();
        }

        @Override // java.util.Map
        public int size() {
            return this.a;
        }

        @Override // com.google.common.collect.ImmutableMap, java.util.Map
        public V get(@Nullable Object obj) {
            Integer num = b_().get(obj);
            if (num == null) {
                return null;
            }
            return a(num.intValue());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableMap.a
        public UnmodifiableIterator<Map.Entry<K, V>> d() {
            return new AbstractIterator<Map.Entry<K, V>>() { // from class: id.c.1
                private int b = -1;
                private final int c;

                {
                    this.c = c.this.b_().size();
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.google.common.collect.AbstractIterator
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public Map.Entry<K, V> computeNext() {
                    this.b++;
                    while (this.b < this.c) {
                        Object objA = c.this.a(this.b);
                        if (objA == null) {
                            this.b++;
                        } else {
                            return Maps.immutableEntry(c.this.c(this.b), objA);
                        }
                    }
                    return endOfData();
                }
            };
        }
    }

    final class d extends c<C, V> {
        private final int c;

        d(int i) {
            super(id.this.e[i]);
            this.c = i;
        }

        @Override // id.c
        ImmutableMap<C, Integer> b_() {
            return id.this.b;
        }

        @Override // id.c
        V a(int i) {
            return (V) id.this.g[this.c][i];
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableMap
        public boolean b() {
            return true;
        }
    }

    final class a extends c<R, V> {
        private final int c;

        a(int i) {
            super(id.this.f[i]);
            this.c = i;
        }

        @Override // id.c
        ImmutableMap<R, Integer> b_() {
            return id.this.a;
        }

        @Override // id.c
        V a(int i) {
            return (V) id.this.g[i][this.c];
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableMap
        public boolean b() {
            return true;
        }
    }

    final class e extends c<R, Map<C, V>> {
        private e() {
            super(id.this.e.length);
        }

        @Override // id.c
        ImmutableMap<R, Integer> b_() {
            return id.this.a;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // id.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Map<C, V> a(int i) {
            return new d(i);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableMap
        public boolean b() {
            return false;
        }
    }

    final class b extends c<C, Map<R, V>> {
        private b() {
            super(id.this.f.length);
        }

        @Override // id.c
        ImmutableMap<C, Integer> b_() {
            return id.this.b;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // id.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Map<R, V> a(int i) {
            return new a(i);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableMap
        public boolean b() {
            return false;
        }
    }

    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.Table
    public ImmutableMap<C, Map<R, V>> columnMap() {
        return this.d;
    }

    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.Table
    public ImmutableMap<R, Map<C, V>> rowMap() {
        return this.c;
    }

    @Override // com.google.common.collect.ImmutableTable, defpackage.hq, com.google.common.collect.Table
    public V get(@Nullable Object obj, @Nullable Object obj2) {
        Integer num = this.a.get(obj);
        Integer num2 = this.b.get(obj2);
        if (num == null || num2 == null) {
            return null;
        }
        return this.g[num.intValue()][num2.intValue()];
    }

    @Override // com.google.common.collect.Table
    public int size() {
        return this.h.length;
    }

    @Override // defpackage.jx
    Table.Cell<R, C, V> a(int i) {
        int i2 = this.h[i];
        int i3 = this.i[i];
        return a(rowKeySet().asList().get(i2), columnKeySet().asList().get(i3), this.g[i2][i3]);
    }

    @Override // defpackage.jx
    V b(int i) {
        return this.g[this.h[i]][this.i[i]];
    }
}
