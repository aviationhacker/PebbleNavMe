package defpackage;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.base.Predicates;
import com.google.common.base.Supplier;
import com.google.common.collect.AbstractIterator;
import com.google.common.collect.Collections2;
import com.google.common.collect.ForwardingMapEntry;
import com.google.common.collect.Iterators;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.google.common.collect.Sets;
import com.google.common.collect.Table;
import com.google.common.collect.Tables;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible
public class kl<R, C, V> extends hq<R, C, V> implements Serializable {
    private static final long serialVersionUID = 0;
    public final Map<R, Map<C, V>> a;
    final Supplier<? extends Map<C, V>> b;
    private transient Set<C> c;
    private transient Map<R, Map<C, V>> d;
    private transient kl<R, C, V>.e e;

    public kl(Map<R, Map<C, V>> map, Supplier<? extends Map<C, V>> supplier) {
        this.a = map;
        this.b = supplier;
    }

    @Override // defpackage.hq, com.google.common.collect.Table
    public boolean contains(@Nullable Object obj, @Nullable Object obj2) {
        return (obj == null || obj2 == null || !super.contains(obj, obj2)) ? false : true;
    }

    @Override // defpackage.hq, com.google.common.collect.Table
    public boolean containsColumn(@Nullable Object obj) {
        if (obj == null) {
            return false;
        }
        Iterator<Map<C, V>> it = this.a.values().iterator();
        while (it.hasNext()) {
            if (Maps.b((Map<?, ?>) it.next(), obj)) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.hq, com.google.common.collect.Table
    public boolean containsRow(@Nullable Object obj) {
        return obj != null && Maps.b((Map<?, ?>) this.a, obj);
    }

    @Override // defpackage.hq, com.google.common.collect.Table
    public boolean containsValue(@Nullable Object obj) {
        return obj != null && super.containsValue(obj);
    }

    @Override // defpackage.hq, com.google.common.collect.Table
    public V get(@Nullable Object obj, @Nullable Object obj2) {
        if (obj == null || obj2 == null) {
            return null;
        }
        return (V) super.get(obj, obj2);
    }

    @Override // defpackage.hq, com.google.common.collect.Table
    public boolean isEmpty() {
        return this.a.isEmpty();
    }

    @Override // com.google.common.collect.Table
    public int size() {
        int size = 0;
        Iterator<Map<C, V>> it = this.a.values().iterator();
        while (true) {
            int i = size;
            if (it.hasNext()) {
                size = it.next().size() + i;
            } else {
                return i;
            }
        }
    }

    @Override // defpackage.hq, com.google.common.collect.Table
    public void clear() {
        this.a.clear();
    }

    private Map<C, V> a(R r) {
        Map<C, V> map = this.a.get(r);
        if (map == null) {
            Map<C, V> map2 = this.b.get();
            this.a.put(r, map2);
            return map2;
        }
        return map;
    }

    @Override // defpackage.hq, com.google.common.collect.Table
    public V put(R r, C c2, V v) {
        Preconditions.checkNotNull(r);
        Preconditions.checkNotNull(c2);
        Preconditions.checkNotNull(v);
        return a(r).put(c2, v);
    }

    @Override // defpackage.hq, com.google.common.collect.Table
    public V remove(@Nullable Object obj, @Nullable Object obj2) {
        if (obj == null || obj2 == null) {
            return null;
        }
        Map map = (Map) Maps.a(this.a, obj);
        if (map == null) {
            return null;
        }
        V v = (V) map.remove(obj2);
        if (map.isEmpty()) {
            this.a.remove(obj);
        }
        return v;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<R, V> b(Object obj) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<Map.Entry<R, Map<C, V>>> it = this.a.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<R, Map<C, V>> next = it.next();
            V vRemove = next.getValue().remove(obj);
            if (vRemove != null) {
                linkedHashMap.put(next.getKey(), vRemove);
                if (next.getValue().isEmpty()) {
                    it.remove();
                }
            }
        }
        return linkedHashMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(Object obj, Object obj2, Object obj3) {
        return obj3 != null && obj3.equals(get(obj, obj2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean b(Object obj, Object obj2, Object obj3) {
        if (!a(obj, obj2, obj3)) {
            return false;
        }
        remove(obj, obj2);
        return true;
    }

    abstract class h<T> extends Sets.f<T> {
        private h() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return kl.this.a.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            kl.this.a.clear();
        }
    }

    @Override // defpackage.hq, com.google.common.collect.Table
    public Set<Table.Cell<R, C, V>> cellSet() {
        return super.cellSet();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // defpackage.hq
    public Iterator<Table.Cell<R, C, V>> b() {
        return new a();
    }

    class a implements Iterator<Table.Cell<R, C, V>> {
        final Iterator<Map.Entry<R, Map<C, V>>> a;
        Map.Entry<R, Map<C, V>> b;
        Iterator<Map.Entry<C, V>> c;

        private a() {
            this.a = kl.this.a.entrySet().iterator();
            this.c = Iterators.b();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.a.hasNext() || this.c.hasNext();
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Table.Cell<R, C, V> next() {
            if (!this.c.hasNext()) {
                this.b = this.a.next();
                this.c = this.b.getValue().entrySet().iterator();
            }
            Map.Entry<C, V> next = this.c.next();
            return Tables.immutableCell(this.b.getKey(), next.getKey(), next.getValue());
        }

        @Override // java.util.Iterator
        public void remove() {
            this.c.remove();
            if (this.b.getValue().isEmpty()) {
                this.a.remove();
            }
        }
    }

    @Override // com.google.common.collect.Table
    public Map<C, V> row(R r) {
        return new f(r);
    }

    public class f extends Maps.m<C, V> {
        protected final R a;
        protected Map<C, V> b;

        protected f(R r) {
            this.a = (R) Preconditions.checkNotNull(r);
        }

        protected Map<C, V> a() {
            if (this.b != null && (!this.b.isEmpty() || !kl.this.a.containsKey(this.a))) {
                return this.b;
            }
            Map<C, V> mapC = c();
            this.b = mapC;
            return mapC;
        }

        protected Map<C, V> c() {
            return kl.this.a.get(this.a);
        }

        protected void d() {
            if (a() != null && this.b.isEmpty()) {
                kl.this.a.remove(this.a);
                this.b = null;
            }
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            Map<C, V> mapA = a();
            return (obj == null || mapA == null || !Maps.b((Map<?, ?>) mapA, obj)) ? false : true;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V get(Object obj) {
            Map<C, V> mapA = a();
            if (obj == null || mapA == null) {
                return null;
            }
            return (V) Maps.a(mapA, obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V put(C c, V v) {
            Preconditions.checkNotNull(c);
            Preconditions.checkNotNull(v);
            return (this.b == null || this.b.isEmpty()) ? (V) kl.this.put(this.a, c, v) : this.b.put(c, v);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V remove(Object obj) {
            Map<C, V> mapA = a();
            if (mapA == null) {
                return null;
            }
            V v = (V) Maps.c(mapA, obj);
            d();
            return v;
        }

        @Override // com.google.common.collect.Maps.m, java.util.AbstractMap, java.util.Map
        public void clear() {
            Map<C, V> mapA = a();
            if (mapA != null) {
                mapA.clear();
            }
            d();
        }

        @Override // com.google.common.collect.Maps.m, java.util.AbstractMap, java.util.Map
        public int size() {
            Map<C, V> mapA = a();
            if (mapA == null) {
                return 0;
            }
            return mapA.size();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.Maps.m
        public Iterator<Map.Entry<C, V>> b() {
            Map<C, V> mapA = a();
            if (mapA == null) {
                return Iterators.b();
            }
            final Iterator<Map.Entry<C, V>> it = mapA.entrySet().iterator();
            return new Iterator<Map.Entry<C, V>>() { // from class: kl.f.1
                @Override // java.util.Iterator
                public boolean hasNext() {
                    return it.hasNext();
                }

                @Override // java.util.Iterator
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public Map.Entry<C, V> next() {
                    final Map.Entry entry = (Map.Entry) it.next();
                    return new ForwardingMapEntry<C, V>() { // from class: kl.f.1.1
                        /* JADX INFO: Access modifiers changed from: protected */
                        @Override // com.google.common.collect.ForwardingMapEntry, com.google.common.collect.ForwardingObject
                        public Map.Entry<C, V> delegate() {
                            return entry;
                        }

                        /* JADX WARN: Multi-variable type inference failed */
                        @Override // com.google.common.collect.ForwardingMapEntry, java.util.Map.Entry
                        public V setValue(V v) {
                            return (V) super.setValue(Preconditions.checkNotNull(v));
                        }

                        @Override // com.google.common.collect.ForwardingMapEntry, java.util.Map.Entry
                        public boolean equals(Object obj) {
                            return standardEquals(obj);
                        }
                    };
                }

                @Override // java.util.Iterator
                public void remove() {
                    it.remove();
                    f.this.d();
                }
            };
        }
    }

    @Override // com.google.common.collect.Table
    public Map<R, V> column(C c2) {
        return new b(c2);
    }

    class b extends Maps.ad<R, V> {
        final C a;

        b(C c2) {
            this.a = (C) Preconditions.checkNotNull(c2);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V put(R r, V v) {
            return (V) kl.this.put(r, this.a, v);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V get(Object obj) {
            return (V) kl.this.get(obj, this.a);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return kl.this.contains(obj, this.a);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V remove(Object obj) {
            return (V) kl.this.remove(obj, this.a);
        }

        boolean a(Predicate<? super Map.Entry<R, V>> predicate) {
            boolean z = false;
            Iterator<Map.Entry<R, Map<C, V>>> it = kl.this.a.entrySet().iterator();
            while (true) {
                boolean z2 = z;
                if (it.hasNext()) {
                    Map.Entry<R, Map<C, V>> next = it.next();
                    Map<C, V> value = next.getValue();
                    V v = value.get(this.a);
                    if (v != null && predicate.apply(Maps.immutableEntry(next.getKey(), v))) {
                        value.remove(this.a);
                        z2 = true;
                        if (value.isEmpty()) {
                            it.remove();
                        }
                    }
                    z = z2;
                } else {
                    return z2;
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.Maps.ad
        public Set<Map.Entry<R, V>> a() {
            return new a();
        }

        class a extends Sets.f<Map.Entry<R, V>> {
            private a() {
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<R, V>> iterator() {
                return new C0039b();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                int i = 0;
                Iterator<Map<C, V>> it = kl.this.a.values().iterator();
                while (true) {
                    int i2 = i;
                    if (it.hasNext()) {
                        i = it.next().containsKey(b.this.a) ? i2 + 1 : i2;
                    } else {
                        return i2;
                    }
                }
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean isEmpty() {
                return !kl.this.containsColumn(b.this.a);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public void clear() {
                b.this.a(Predicates.alwaysTrue());
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(Object obj) {
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                return kl.this.a(entry.getKey(), b.this.a, entry.getValue());
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(Object obj) {
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                return kl.this.b(entry.getKey(), b.this.a, entry.getValue());
            }

            @Override // com.google.common.collect.Sets.f, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean retainAll(Collection<?> collection) {
                return b.this.a(Predicates.not(Predicates.in(collection)));
            }
        }

        /* JADX INFO: renamed from: kl$b$b, reason: collision with other inner class name */
        class C0039b extends AbstractIterator<Map.Entry<R, V>> {
            final Iterator<Map.Entry<R, Map<C, V>>> a;

            private C0039b() {
                this.a = kl.this.a.entrySet().iterator();
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.collect.AbstractIterator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Map.Entry<R, V> computeNext() {
                while (this.a.hasNext()) {
                    Map.Entry<R, Map<C, V>> next = this.a.next();
                    if (next.getValue().containsKey(b.this.a)) {
                        return new a(next);
                    }
                }
                return endOfData();
            }

            /* JADX INFO: renamed from: kl$b$b$a */
            class a extends hh<R, V> {
                final /* synthetic */ Map.Entry a;

                a(Map.Entry entry) {
                    this.a = entry;
                }

                @Override // defpackage.hh, java.util.Map.Entry
                public R getKey() {
                    return (R) this.a.getKey();
                }

                @Override // defpackage.hh, java.util.Map.Entry
                public V getValue() {
                    return (V) ((Map) this.a.getValue()).get(b.this.a);
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override // defpackage.hh, java.util.Map.Entry
                public V setValue(V v) {
                    return (V) ((Map) this.a.getValue()).put(b.this.a, Preconditions.checkNotNull(v));
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.Maps.ad
        public Set<R> h() {
            return new c();
        }

        class c extends Maps.n<R, V> {
            c() {
                super(b.this);
            }

            @Override // com.google.common.collect.Maps.n, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(Object obj) {
                return kl.this.contains(obj, b.this.a);
            }

            @Override // com.google.common.collect.Maps.n, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(Object obj) {
                return kl.this.remove(obj, b.this.a) != null;
            }

            @Override // com.google.common.collect.Sets.f, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean retainAll(Collection<?> collection) {
                return b.this.a(Maps.a(Predicates.not(Predicates.in(collection))));
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.Maps.ad
        public Collection<V> b() {
            return new d();
        }

        class d extends Maps.ac<R, V> {
            d() {
                super(b.this);
            }

            @Override // com.google.common.collect.Maps.ac, java.util.AbstractCollection, java.util.Collection
            public boolean remove(Object obj) {
                return obj != null && b.this.a(Maps.b(Predicates.equalTo(obj)));
            }

            @Override // com.google.common.collect.Maps.ac, java.util.AbstractCollection, java.util.Collection
            public boolean removeAll(Collection<?> collection) {
                return b.this.a(Maps.b(Predicates.in(collection)));
            }

            @Override // com.google.common.collect.Maps.ac, java.util.AbstractCollection, java.util.Collection
            public boolean retainAll(Collection<?> collection) {
                return b.this.a(Maps.b(Predicates.not(Predicates.in(collection))));
            }
        }
    }

    @Override // defpackage.hq, com.google.common.collect.Table
    public Set<R> rowKeySet() {
        return rowMap().keySet();
    }

    @Override // defpackage.hq, com.google.common.collect.Table
    public Set<C> columnKeySet() {
        Set<C> set = this.c;
        if (set != null) {
            return set;
        }
        d dVar = new d();
        this.c = dVar;
        return dVar;
    }

    class d extends kl<R, C, V>.h<C> {
        private d() {
            super();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<C> iterator() {
            return kl.this.g();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return Iterators.size(iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            boolean z = false;
            if (obj == null) {
                return false;
            }
            Iterator<Map<C, V>> it = kl.this.a.values().iterator();
            while (true) {
                boolean z2 = z;
                if (!it.hasNext()) {
                    return z2;
                }
                Map<C, V> next = it.next();
                if (next.keySet().remove(obj)) {
                    z2 = true;
                    if (next.isEmpty()) {
                        it.remove();
                    }
                }
                z = z2;
            }
        }

        @Override // com.google.common.collect.Sets.f, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean removeAll(Collection<?> collection) {
            Preconditions.checkNotNull(collection);
            boolean z = false;
            Iterator<Map<C, V>> it = kl.this.a.values().iterator();
            while (true) {
                boolean z2 = z;
                if (it.hasNext()) {
                    Map<C, V> next = it.next();
                    if (Iterators.removeAll(next.keySet().iterator(), collection)) {
                        z2 = true;
                        if (next.isEmpty()) {
                            it.remove();
                        }
                    }
                    z = z2;
                } else {
                    return z2;
                }
            }
        }

        @Override // com.google.common.collect.Sets.f, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean retainAll(Collection<?> collection) {
            Preconditions.checkNotNull(collection);
            boolean z = false;
            Iterator<Map<C, V>> it = kl.this.a.values().iterator();
            while (true) {
                boolean z2 = z;
                if (it.hasNext()) {
                    Map<C, V> next = it.next();
                    if (next.keySet().retainAll(collection)) {
                        z2 = true;
                        if (next.isEmpty()) {
                            it.remove();
                        }
                    }
                    z = z2;
                } else {
                    return z2;
                }
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return kl.this.containsColumn(obj);
        }
    }

    protected Iterator<C> g() {
        return new c();
    }

    class c extends AbstractIterator<C> {
        final Map<C, V> a;
        final Iterator<Map<C, V>> b;
        Iterator<Map.Entry<C, V>> c;

        private c() {
            this.a = kl.this.b.get();
            this.b = kl.this.a.values().iterator();
            this.c = Iterators.emptyIterator();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.AbstractIterator
        public C computeNext() {
            while (true) {
                if (this.c.hasNext()) {
                    Map.Entry<C, V> next = this.c.next();
                    if (!this.a.containsKey(next.getKey())) {
                        this.a.put(next.getKey(), next.getValue());
                        return next.getKey();
                    }
                } else if (this.b.hasNext()) {
                    this.c = this.b.next().entrySet().iterator();
                } else {
                    return endOfData();
                }
            }
        }
    }

    @Override // defpackage.hq, com.google.common.collect.Table
    public Collection<V> values() {
        return super.values();
    }

    @Override // com.google.common.collect.Table
    public Map<R, Map<C, V>> rowMap() {
        Map<R, Map<C, V>> map = this.d;
        if (map != null) {
            return map;
        }
        Map<R, Map<C, V>> mapF = f();
        this.d = mapF;
        return mapF;
    }

    Map<R, Map<C, V>> f() {
        return new g();
    }

    class g extends Maps.ad<R, Map<C, V>> {
        g() {
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return kl.this.containsRow(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Map<C, V> get(Object obj) {
            if (kl.this.containsRow(obj)) {
                return kl.this.row(obj);
            }
            return null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Map<C, V> remove(Object obj) {
            if (obj == null) {
                return null;
            }
            return kl.this.a.remove(obj);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.Maps.ad
        public Set<Map.Entry<R, Map<C, V>>> a() {
            return new a();
        }

        class a extends kl<R, C, V>.h<Map.Entry<R, Map<C, V>>> {
            a() {
                super();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<R, Map<C, V>>> iterator() {
                return Maps.a((Set) kl.this.a.keySet(), (Function) new Function<R, Map<C, V>>() { // from class: kl.g.a.1
                    @Override // com.google.common.base.Function
                    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                    public Map<C, V> apply(R r) {
                        return kl.this.row(r);
                    }
                });
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                return kl.this.a.size();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(Object obj) {
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                return entry.getKey() != null && (entry.getValue() instanceof Map) && Collections2.a(kl.this.a.entrySet(), entry);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(Object obj) {
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                return entry.getKey() != null && (entry.getValue() instanceof Map) && kl.this.a.entrySet().remove(entry);
            }
        }
    }

    @Override // com.google.common.collect.Table
    public Map<C, Map<R, V>> columnMap() {
        kl<R, C, V>.e eVar = this.e;
        if (eVar != null) {
            return eVar;
        }
        kl<R, C, V>.e eVar2 = new e();
        this.e = eVar2;
        return eVar2;
    }

    class e extends Maps.ad<C, Map<R, V>> {
        private e() {
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Map<R, V> get(Object obj) {
            if (kl.this.containsColumn(obj)) {
                return kl.this.column(obj);
            }
            return null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return kl.this.containsColumn(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Map<R, V> remove(Object obj) {
            if (kl.this.containsColumn(obj)) {
                return kl.this.b(obj);
            }
            return null;
        }

        @Override // com.google.common.collect.Maps.ad
        public Set<Map.Entry<C, Map<R, V>>> a() {
            return new a();
        }

        @Override // com.google.common.collect.Maps.ad, java.util.AbstractMap, java.util.Map
        public Set<C> keySet() {
            return kl.this.columnKeySet();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.Maps.ad
        public Collection<Map<R, V>> b() {
            return new b();
        }

        class a extends kl<R, C, V>.h<Map.Entry<C, Map<R, V>>> {
            a() {
                super();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<C, Map<R, V>>> iterator() {
                return Maps.a((Set) kl.this.columnKeySet(), (Function) new Function<C, Map<R, V>>() { // from class: kl.e.a.1
                    @Override // com.google.common.base.Function
                    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                    public Map<R, V> apply(C c) {
                        return kl.this.column(c);
                    }
                });
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                return kl.this.columnKeySet().size();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(Object obj) {
                if (obj instanceof Map.Entry) {
                    Map.Entry entry = (Map.Entry) obj;
                    if (kl.this.containsColumn(entry.getKey())) {
                        return e.this.get(entry.getKey()).equals(entry.getValue());
                    }
                }
                return false;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(Object obj) {
                if (!contains(obj)) {
                    return false;
                }
                kl.this.b(((Map.Entry) obj).getKey());
                return true;
            }

            @Override // com.google.common.collect.Sets.f, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean removeAll(Collection<?> collection) {
                Preconditions.checkNotNull(collection);
                return Sets.a((Set<?>) this, collection.iterator());
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.Sets.f, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean retainAll(Collection<?> collection) {
                Preconditions.checkNotNull(collection);
                boolean z = false;
                for (Object obj : Lists.newArrayList(kl.this.columnKeySet().iterator())) {
                    if (!collection.contains(Maps.immutableEntry(obj, kl.this.column(obj)))) {
                        kl.this.b(obj);
                        z = true;
                    }
                }
                return z;
            }
        }

        class b extends Maps.ac<C, Map<R, V>> {
            b() {
                super(e.this);
            }

            @Override // com.google.common.collect.Maps.ac, java.util.AbstractCollection, java.util.Collection
            public boolean remove(Object obj) {
                for (Map.Entry<C, Map<R, V>> entry : e.this.entrySet()) {
                    if (entry.getValue().equals(obj)) {
                        kl.this.b(entry.getKey());
                        return true;
                    }
                }
                return false;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.Maps.ac, java.util.AbstractCollection, java.util.Collection
            public boolean removeAll(Collection<?> collection) {
                Preconditions.checkNotNull(collection);
                boolean z = false;
                for (Object obj : Lists.newArrayList(kl.this.columnKeySet().iterator())) {
                    if (collection.contains(kl.this.column(obj))) {
                        kl.this.b(obj);
                        z = true;
                    }
                }
                return z;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.Maps.ac, java.util.AbstractCollection, java.util.Collection
            public boolean retainAll(Collection<?> collection) {
                Preconditions.checkNotNull(collection);
                boolean z = false;
                for (Object obj : Lists.newArrayList(kl.this.columnKeySet().iterator())) {
                    if (!collection.contains(kl.this.column(obj))) {
                        kl.this.b(obj);
                        z = true;
                    }
                }
                return z;
            }
        }
    }
}
