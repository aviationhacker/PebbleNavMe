package defpackage;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.SetMultimap;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible
public abstract class hm<K, V> extends hf<K, V> implements SetMultimap<K, V> {
    private static final long serialVersionUID = 7431625294878419160L;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // defpackage.hf
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public abstract Set<V> c();

    protected hm(Map<K, Collection<V>> map) {
        super(map);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // defpackage.hf
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public Set<V> d() {
        return ImmutableSet.of();
    }

    @Override // defpackage.hf, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public Set<V> get(@Nullable K k) {
        return (Set) super.get((Object) k);
    }

    @Override // defpackage.hf, defpackage.hi, com.google.common.collect.Multimap
    public Set<Map.Entry<K, V>> entries() {
        return (Set) super.entries();
    }

    @Override // defpackage.hf, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public Set<V> removeAll(@Nullable Object obj) {
        return (Set) super.removeAll(obj);
    }

    @Override // defpackage.hf, defpackage.hi, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public Set<V> replaceValues(@Nullable K k, Iterable<? extends V> iterable) {
        return (Set) super.replaceValues((Object) k, (Iterable) iterable);
    }

    @Override // defpackage.hi, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public Map<K, Collection<V>> asMap() {
        return super.asMap();
    }

    @Override // defpackage.hf, defpackage.hi, com.google.common.collect.Multimap
    public boolean put(@Nullable K k, @Nullable V v) {
        return super.put(k, v);
    }

    @Override // defpackage.hi, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public boolean equals(@Nullable Object obj) {
        return super.equals(obj);
    }
}
