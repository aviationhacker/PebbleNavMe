package defpackage;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.UnmodifiableIterator;
import com.google.j2objc.annotations.Weak;
import java.io.Serializable;
import java.util.Map;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(emulated = true)
public abstract class jb<K, V> extends ImmutableSet<Map.Entry<K, V>> {
    protected abstract ImmutableMap<K, V> b();

    static final class b<K, V> extends jb<K, V> {

        @Weak
        private final transient ImmutableMap<K, V> a;
        private final transient Map.Entry<K, V>[] b;

        b(ImmutableMap<K, V> immutableMap, Map.Entry<K, V>[] entryArr) {
            this.a = immutableMap;
            this.b = entryArr;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // defpackage.jb
        protected ImmutableMap<K, V> b() {
            return this.a;
        }

        @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public UnmodifiableIterator<Map.Entry<K, V>> iterator() {
            return asList().iterator();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableCollection
        public ImmutableList<Map.Entry<K, V>> f() {
            return new jp(this, this.b);
        }
    }

    protected jb() {
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return b().size();
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
    public boolean contains(@Nullable Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        V v = b().get(entry.getKey());
        return v != null && v.equals(entry.getValue());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public boolean a() {
        return b().b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableSet
    @GwtIncompatible("not used in GWT")
    public boolean e() {
        return b().f();
    }

    @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
    public int hashCode() {
        return b().hashCode();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection
    @GwtIncompatible("serialization")
    public Object writeReplace() {
        return new a(b());
    }

    @GwtIncompatible("serialization")
    static class a<K, V> implements Serializable {
        private static final long serialVersionUID = 0;
        final ImmutableMap<K, V> a;

        a(ImmutableMap<K, V> immutableMap) {
            this.a = immutableMap;
        }

        Object readResolve() {
            return this.a.entrySet();
        }
    }
}
