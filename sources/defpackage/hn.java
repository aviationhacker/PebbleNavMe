package defpackage;

import com.google.common.annotations.GwtCompatible;
import java.util.Collection;
import java.util.SortedMap;
import java.util.SortedSet;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible
public abstract class hn<K, V> extends hp<K, V> {
    protected hn(SortedMap<K, Collection<V>> sortedMap) {
        super(sortedMap);
    }

    @Override // defpackage.hp, defpackage.hm, defpackage.hi, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public SortedMap<K, Collection<V>> asMap() {
        return (SortedMap) super.asMap();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // defpackage.hf
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public SortedMap<K, Collection<V>> e() {
        return (SortedMap) super.e();
    }

    @Override // defpackage.hi, com.google.common.collect.Multimap
    public SortedSet<K> keySet() {
        return (SortedSet) super.keySet();
    }
}
