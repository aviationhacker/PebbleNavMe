package defpackage;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Predicate;
import com.google.common.collect.ListMultimap;
import java.util.List;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible
public final class in<K, V> extends io<K, V> implements ListMultimap<K, V> {
    public in(ListMultimap<K, V> listMultimap, Predicate<? super K> predicate) {
        super(listMultimap, predicate);
    }

    @Override // defpackage.io, defpackage.iq
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public ListMultimap<K, V> a() {
        return (ListMultimap) super.a();
    }

    @Override // defpackage.io, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public List<V> get(K k) {
        return (List) super.get((Object) k);
    }

    @Override // defpackage.io, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public List<V> removeAll(@Nullable Object obj) {
        return (List) super.removeAll(obj);
    }

    @Override // defpackage.hi, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public List<V> replaceValues(K k, Iterable<? extends V> iterable) {
        return (List) super.replaceValues((Object) k, (Iterable) iterable);
    }
}
