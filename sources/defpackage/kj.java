package defpackage;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Maps;
import com.google.common.collect.Table;
import com.google.common.collect.UnmodifiableIterator;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;
import javax.annotation.concurrent.Immutable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible
@Immutable
public final class kj<R, C, V> extends jx<R, C, V> {
    private final ImmutableMap<R, Map<C, V>> a;
    private final ImmutableMap<C, Map<R, V>> b;
    private final int[] c;
    private final int[] d;

    public kj(ImmutableList<Table.Cell<R, C, V>> immutableList, ImmutableSet<R> immutableSet, ImmutableSet<C> immutableSet2) {
        ImmutableMap immutableMapA = Maps.a((Collection) immutableSet);
        LinkedHashMap linkedHashMapNewLinkedHashMap = Maps.newLinkedHashMap();
        UnmodifiableIterator<R> it = immutableSet.iterator();
        while (it.hasNext()) {
            linkedHashMapNewLinkedHashMap.put(it.next(), new LinkedHashMap());
        }
        LinkedHashMap linkedHashMapNewLinkedHashMap2 = Maps.newLinkedHashMap();
        UnmodifiableIterator<C> it2 = immutableSet2.iterator();
        while (it2.hasNext()) {
            linkedHashMapNewLinkedHashMap2.put(it2.next(), new LinkedHashMap());
        }
        int[] iArr = new int[immutableList.size()];
        int[] iArr2 = new int[immutableList.size()];
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < immutableList.size()) {
                Table.Cell<R, C, V> cell = immutableList.get(i2);
                R rowKey = cell.getRowKey();
                C columnKey = cell.getColumnKey();
                V value = cell.getValue();
                iArr[i2] = ((Integer) immutableMapA.get(rowKey)).intValue();
                Map map = (Map) linkedHashMapNewLinkedHashMap.get(rowKey);
                iArr2[i2] = map.size();
                Object objPut = map.put(columnKey, value);
                if (objPut != null) {
                    String strValueOf = String.valueOf(rowKey);
                    String strValueOf2 = String.valueOf(columnKey);
                    String strValueOf3 = String.valueOf(value);
                    String strValueOf4 = String.valueOf(objPut);
                    throw new IllegalArgumentException(new StringBuilder(String.valueOf(strValueOf).length() + 37 + String.valueOf(strValueOf2).length() + String.valueOf(strValueOf3).length() + String.valueOf(strValueOf4).length()).append("Duplicate value for row=").append(strValueOf).append(", column=").append(strValueOf2).append(": ").append(strValueOf3).append(", ").append(strValueOf4).toString());
                }
                ((Map) linkedHashMapNewLinkedHashMap2.get(columnKey)).put(rowKey, value);
                i = i2 + 1;
            } else {
                this.c = iArr;
                this.d = iArr2;
                ImmutableMap.Builder builder = new ImmutableMap.Builder(linkedHashMapNewLinkedHashMap.size());
                for (Map.Entry entry : linkedHashMapNewLinkedHashMap.entrySet()) {
                    builder.put(entry.getKey(), ImmutableMap.copyOf((Map) entry.getValue()));
                }
                this.a = builder.build();
                ImmutableMap.Builder builder2 = new ImmutableMap.Builder(linkedHashMapNewLinkedHashMap2.size());
                for (Map.Entry entry2 : linkedHashMapNewLinkedHashMap2.entrySet()) {
                    builder2.put(entry2.getKey(), ImmutableMap.copyOf((Map) entry2.getValue()));
                }
                this.b = builder2.build();
                return;
            }
        }
    }

    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.Table
    public ImmutableMap<C, Map<R, V>> columnMap() {
        return this.b;
    }

    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.Table
    public ImmutableMap<R, Map<C, V>> rowMap() {
        return this.a;
    }

    @Override // com.google.common.collect.Table
    public int size() {
        return this.c.length;
    }

    @Override // defpackage.jx
    Table.Cell<R, C, V> a(int i) {
        Map.Entry<R, Map<C, V>> entry = this.a.entrySet().asList().get(this.c[i]);
        ImmutableMap immutableMap = (ImmutableMap) entry.getValue();
        Map.Entry entry2 = (Map.Entry) immutableMap.entrySet().asList().get(this.d[i]);
        return a(entry.getKey(), entry2.getKey(), entry2.getValue());
    }

    @Override // defpackage.jx
    V b(int i) {
        ImmutableMap immutableMap = (ImmutableMap) this.a.values().asList().get(this.c[i]);
        return immutableMap.values().asList().get(this.d[i]);
    }
}
