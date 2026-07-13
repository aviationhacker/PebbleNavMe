package defpackage;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ListMultimap;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible
public abstract class he<K, V> extends hf<K, V> implements ListMultimap<K, V> {
    private static final long serialVersionUID = 6588350623831699109L;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // defpackage.hf
    /* JADX INFO: renamed from: a */
    public abstract List<V> c();

    protected he(Map<K, Collection<V>> map) {
        super(map);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // defpackage.hf
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public List<V> d() {
        return ImmutableList.of();
    }

    @Override // defpackage.hf, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public List<V> get(@Nullable K k) {
        return (List) super.get((Object) k);
    }

    @Override // defpackage.hf, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public List<V> removeAll(@Nullable Object obj) {
        return (List) super.removeAll(obj);
    }

    @Override // defpackage.hf, defpackage.hi, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public List<V> replaceValues(@Nullable K k, Iterable<? extends V> iterable) {
        return (List) super.replaceValues((Object) k, (Iterable) iterable);
    }

    @Override // defpackage.hf, defpackage.hi, com.google.common.collect.Multimap
    public boolean put(@Nullable K k, @Nullable V v) {
        return super.put(k, v);
    }

    @Override // defpackage.hi, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public Map<K, Collection<V>> asMap() {
        return super.asMap();
    }

    @Override // defpackage.hi, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public boolean equals(@Nullable Object obj) {
        return super.equals(obj);
    }
}
