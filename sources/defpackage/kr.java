package defpackage;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.ForwardingMap;
import com.google.common.collect.Maps;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible
public final class kr<K, V> extends ForwardingMap<K, V> {
    private final Map<K, V> a;
    private Set<Map.Entry<K, V>> b;

    private kr(Map<K, V> map) {
        this.a = map;
    }

    public static <K, V> kr<K, V> a(Map<K, V> map) {
        return new kr<>(map);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.ForwardingMap, com.google.common.collect.ForwardingObject
    public Map<K, V> delegate() {
        return this.a;
    }

    @Override // com.google.common.collect.ForwardingMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.b;
        if (set != null) {
            return set;
        }
        a aVar = new a();
        this.b = aVar;
        return aVar;
    }

    final class a extends Maps.f<K, V> {
        private a() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.Maps.f
        public Map<K, V> a() {
            return kr.this;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new kn<K, Map.Entry<K, V>>(kr.this.keySet().iterator()) { // from class: kr.a.1
                /* JADX INFO: Access modifiers changed from: package-private */
                @Override // defpackage.kn
                /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
                public Map.Entry<K, V> a(final K k) {
                    return new hh<K, V>() { // from class: kr.a.1.1
                        @Override // defpackage.hh, java.util.Map.Entry
                        public K getKey() {
                            return (K) k;
                        }

                        @Override // defpackage.hh, java.util.Map.Entry
                        public V getValue() {
                            return kr.this.get(k);
                        }

                        /* JADX WARN: Multi-variable type inference failed */
                        @Override // defpackage.hh, java.util.Map.Entry
                        public V setValue(V v) {
                            return (V) kr.this.put(k, v);
                        }
                    };
                }
            };
        }
    }
}
