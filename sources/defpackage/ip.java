package defpackage;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Predicate;
import com.google.common.collect.SetMultimap;
import com.google.common.collect.Sets;
import java.util.Map;
import java.util.Set;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible
public final class ip<K, V> extends io<K, V> implements is<K, V> {
    public ip(SetMultimap<K, V> setMultimap, Predicate<? super K> predicate) {
        super(setMultimap, predicate);
    }

    @Override // defpackage.io, defpackage.iq
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public SetMultimap<K, V> a() {
        return (SetMultimap) this.a;
    }

    @Override // defpackage.io, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public Set<V> get(K k) {
        return (Set) super.get((Object) k);
    }

    @Override // defpackage.io, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public Set<V> removeAll(Object obj) {
        return (Set) super.removeAll(obj);
    }

    @Override // defpackage.hi, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public Set<V> replaceValues(K k, Iterable<? extends V> iterable) {
        return (Set) super.replaceValues((Object) k, (Iterable) iterable);
    }

    @Override // defpackage.hi, com.google.common.collect.Multimap
    public Set<Map.Entry<K, V>> entries() {
        return (Set) super.entries();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // defpackage.io, defpackage.hi
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public Set<Map.Entry<K, V>> j() {
        return new a();
    }

    class a extends io<K, V>.c implements Set<Map.Entry<K, V>> {
        a() {
            super();
        }

        @Override // java.util.Collection, java.util.Set
        public int hashCode() {
            return Sets.a(this);
        }

        @Override // java.util.Collection, java.util.Set
        public boolean equals(@Nullable Object obj) {
            return Sets.a(this, obj);
        }
    }
}
