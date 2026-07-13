package defpackage;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.collect.ImmutableCollection;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Iterators;
import com.google.common.collect.UnmodifiableIterator;
import com.google.j2objc.annotations.Weak;
import java.io.Serializable;
import java.util.Map;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(emulated = true)
public final class jd<K, V> extends ImmutableCollection<V> {

    @Weak
    private final ImmutableMap<K, V> a;

    public jd(ImmutableMap<K, V> immutableMap) {
        this.a = immutableMap;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public int size() {
        return this.a.size();
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public UnmodifiableIterator<V> iterator() {
        return new UnmodifiableIterator<V>() { // from class: jd.1
            final UnmodifiableIterator<Map.Entry<K, V>> a;

            {
                this.a = jd.this.a.entrySet().iterator();
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.a.hasNext();
            }

            @Override // java.util.Iterator
            public V next() {
                return this.a.next().getValue();
            }
        };
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
    public boolean contains(@Nullable Object obj) {
        return obj != null && Iterators.contains(iterator(), obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public boolean a() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public ImmutableList<V> f() {
        final ImmutableList<Map.Entry<K, V>> immutableListAsList = this.a.entrySet().asList();
        return new iw<V>() { // from class: jd.2
            @Override // java.util.List
            public V get(int i) {
                return (V) ((Map.Entry) immutableListAsList.get(i)).getValue();
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // defpackage.iw
            protected ImmutableCollection<V> b() {
                return jd.this;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    @GwtIncompatible("serialization")
    public Object writeReplace() {
        return new a(this.a);
    }

    @GwtIncompatible("serialization")
    static class a<V> implements Serializable {
        private static final long serialVersionUID = 0;
        final ImmutableMap<?, V> a;

        a(ImmutableMap<?, V> immutableMap) {
            this.a = immutableMap;
        }

        Object readResolve() {
            return this.a.values();
        }
    }
}
