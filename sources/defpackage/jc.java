package defpackage;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.UnmodifiableIterator;
import com.google.j2objc.annotations.Weak;
import java.io.Serializable;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(emulated = true)
public final class jc<K, V> extends ImmutableSet.a<K> {

    @Weak
    private final ImmutableMap<K, V> a;

    public jc(ImmutableMap<K, V> immutableMap) {
        this.a = immutableMap;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.a.size();
    }

    @Override // com.google.common.collect.ImmutableSet.a, com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public UnmodifiableIterator<K> iterator() {
        return this.a.a();
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
    public boolean contains(@Nullable Object obj) {
        return this.a.containsKey(obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableSet.a
    public K a(int i) {
        return this.a.entrySet().asList().get(i).getKey();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public boolean a() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection
    @GwtIncompatible("serialization")
    public Object writeReplace() {
        return new a(this.a);
    }

    @GwtIncompatible("serialization")
    static class a<K> implements Serializable {
        private static final long serialVersionUID = 0;
        final ImmutableMap<K, ?> a;

        a(ImmutableMap<K, ?> immutableMap) {
            this.a = immutableMap;
        }

        Object readResolve() {
            return this.a.keySet();
        }
    }
}
