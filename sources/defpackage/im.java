package defpackage;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Predicate;
import com.google.common.collect.SetMultimap;
import com.google.common.collect.Sets;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible
public final class im<K, V> extends il<K, V> implements is<K, V> {
    public im(SetMultimap<K, V> setMultimap, Predicate<? super Map.Entry<K, V>> predicate) {
        super(setMultimap, predicate);
    }

    @Override // defpackage.il, defpackage.iq
    /* JADX INFO: renamed from: d */
    public SetMultimap<K, V> a() {
        return (SetMultimap) this.a;
    }

    @Override // defpackage.il, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public Set<V> get(K k) {
        return (Set) super.get((Object) k);
    }

    @Override // defpackage.il, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public Set<V> removeAll(Object obj) {
        return (Set) super.removeAll(obj);
    }

    @Override // defpackage.hi, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public Set<V> replaceValues(K k, Iterable<? extends V> iterable) {
        return (Set) super.replaceValues((Object) k, (Iterable) iterable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // defpackage.il, defpackage.hi
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public Set<Map.Entry<K, V>> j() {
        return Sets.filter(a().entries(), b());
    }

    @Override // defpackage.hi, com.google.common.collect.Multimap
    public Set<Map.Entry<K, V>> entries() {
        return (Set) super.entries();
    }
}
