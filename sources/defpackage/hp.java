package defpackage;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.ImmutableSortedSet;
import com.google.common.collect.SortedSetMultimap;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Map;
import java.util.SortedSet;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible
public abstract class hp<K, V> extends hm<K, V> implements SortedSetMultimap<K, V> {
    private static final long serialVersionUID = 430848587173315748L;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // defpackage.hm, defpackage.hf
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public abstract SortedSet<V> c();

    protected hp(Map<K, Collection<V>> map) {
        super(map);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // defpackage.hm, defpackage.hf
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public SortedSet<V> d() {
        return valueComparator() == null ? Collections.unmodifiableSortedSet(c()) : ImmutableSortedSet.a((Comparator) valueComparator());
    }

    @Override // defpackage.hm, defpackage.hf, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public SortedSet<V> get(@Nullable K k) {
        return (SortedSet) super.get((Object) k);
    }

    @Override // defpackage.hm, defpackage.hf, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public SortedSet<V> removeAll(@Nullable Object obj) {
        return (SortedSet) super.removeAll(obj);
    }

    @Override // defpackage.hm, defpackage.hf, defpackage.hi, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public SortedSet<V> replaceValues(@Nullable K k, Iterable<? extends V> iterable) {
        return (SortedSet) super.replaceValues((Object) k, (Iterable) iterable);
    }

    @Override // defpackage.hm, defpackage.hi, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public Map<K, Collection<V>> asMap() {
        return super.asMap();
    }

    @Override // defpackage.hf, defpackage.hi, com.google.common.collect.Multimap
    public Collection<V> values() {
        return super.values();
    }
}
