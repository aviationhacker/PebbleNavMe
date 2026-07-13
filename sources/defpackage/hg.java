package defpackage;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.Maps;
import com.google.common.collect.Multiset;
import com.google.common.collect.Multisets;
import com.google.common.primitives.Ints;
import java.io.Serializable;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(emulated = true)
public abstract class hg<E> extends hj<E> implements Serializable {

    @GwtIncompatible("not needed in emulated source.")
    private static final long serialVersionUID = -2250766705698539974L;
    private transient Map<E, ib> a;
    private transient long b = super.size();

    static /* synthetic */ long c(hg hgVar) {
        long j = hgVar.b;
        hgVar.b = j - 1;
        return j;
    }

    protected hg(Map<E, ib> map) {
        this.a = (Map) Preconditions.checkNotNull(map);
    }

    protected void a(Map<E, ib> map) {
        this.a = map;
    }

    @Override // defpackage.hj, com.google.common.collect.Multiset
    public Set<Multiset.Entry<E>> entrySet() {
        return super.entrySet();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // defpackage.hj
    public Iterator<Multiset.Entry<E>> a() {
        final Iterator<Map.Entry<E, ib>> it = this.a.entrySet().iterator();
        return new Iterator<Multiset.Entry<E>>() { // from class: hg.1
            Map.Entry<E, ib> a;

            @Override // java.util.Iterator
            public boolean hasNext() {
                return it.hasNext();
            }

            @Override // java.util.Iterator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Multiset.Entry<E> next() {
                final Map.Entry<E, ib> entry = (Map.Entry) it.next();
                this.a = entry;
                return new Multisets.a<E>() { // from class: hg.1.1
                    @Override // com.google.common.collect.Multiset.Entry
                    public E getElement() {
                        return (E) entry.getKey();
                    }

                    @Override // com.google.common.collect.Multiset.Entry
                    public int getCount() {
                        ib ibVar;
                        ib ibVar2 = (ib) entry.getValue();
                        if ((ibVar2 == null || ibVar2.a() == 0) && (ibVar = (ib) hg.this.a.get(getElement())) != null) {
                            return ibVar.a();
                        }
                        if (ibVar2 == null) {
                            return 0;
                        }
                        return ibVar2.a();
                    }
                };
            }

            @Override // java.util.Iterator
            public void remove() {
                hu.a(this.a != null);
                hg.this.b -= (long) this.a.getValue().d(0);
                it.remove();
                this.a = null;
            }
        };
    }

    @Override // defpackage.hj, java.util.AbstractCollection, java.util.Collection
    public void clear() {
        Iterator<ib> it = this.a.values().iterator();
        while (it.hasNext()) {
            it.next().c(0);
        }
        this.a.clear();
        this.b = 0L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // defpackage.hj
    public int b() {
        return this.a.size();
    }

    @Override // defpackage.hj, java.util.AbstractCollection, java.util.Collection
    public int size() {
        return Ints.saturatedCast(this.b);
    }

    @Override // defpackage.hj, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, com.google.common.collect.Multiset
    public Iterator<E> iterator() {
        return new a();
    }

    class a implements Iterator<E> {
        final Iterator<Map.Entry<E, ib>> a;
        Map.Entry<E, ib> b;
        int c;
        boolean d;

        a() {
            this.a = hg.this.a.entrySet().iterator();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.c > 0 || this.a.hasNext();
        }

        @Override // java.util.Iterator
        public E next() {
            if (this.c == 0) {
                this.b = this.a.next();
                this.c = this.b.getValue().a();
            }
            this.c--;
            this.d = true;
            return this.b.getKey();
        }

        @Override // java.util.Iterator
        public void remove() {
            hu.a(this.d);
            if (this.b.getValue().a() <= 0) {
                throw new ConcurrentModificationException();
            }
            if (this.b.getValue().b(-1) == 0) {
                this.a.remove();
            }
            hg.c(hg.this);
            this.d = false;
        }
    }

    @Override // defpackage.hj, com.google.common.collect.Multiset
    public int count(@Nullable Object obj) {
        ib ibVar = (ib) Maps.a(this.a, obj);
        if (ibVar == null) {
            return 0;
        }
        return ibVar.a();
    }

    @Override // defpackage.hj, com.google.common.collect.Multiset
    public int add(@Nullable E e, int i) {
        int i2 = 0;
        if (i == 0) {
            return count(e);
        }
        Preconditions.checkArgument(i > 0, "occurrences cannot be negative: %s", Integer.valueOf(i));
        ib ibVar = this.a.get(e);
        if (ibVar == null) {
            this.a.put(e, new ib(i));
        } else {
            int iA = ibVar.a();
            long j = ((long) iA) + ((long) i);
            Preconditions.checkArgument(j <= 2147483647L, "too many occurrences: %s", Long.valueOf(j));
            ibVar.a(i);
            i2 = iA;
        }
        this.b += (long) i;
        return i2;
    }

    @Override // defpackage.hj, com.google.common.collect.Multiset
    public int remove(@Nullable Object obj, int i) {
        if (i == 0) {
            return count(obj);
        }
        Preconditions.checkArgument(i > 0, "occurrences cannot be negative: %s", Integer.valueOf(i));
        ib ibVar = this.a.get(obj);
        if (ibVar == null) {
            return 0;
        }
        int iA = ibVar.a();
        if (iA <= i) {
            this.a.remove(obj);
            i = iA;
        }
        ibVar.b(-i);
        this.b -= (long) i;
        return iA;
    }

    @Override // defpackage.hj, com.google.common.collect.Multiset
    public int setCount(@Nullable E e, int i) {
        int iA;
        hu.a(i, "count");
        if (i == 0) {
            iA = a(this.a.remove(e), i);
        } else {
            ib ibVar = this.a.get(e);
            int iA2 = a(ibVar, i);
            if (ibVar == null) {
                this.a.put(e, new ib(i));
            }
            iA = iA2;
        }
        this.b += (long) (i - iA);
        return iA;
    }

    private static int a(ib ibVar, int i) {
        if (ibVar == null) {
            return 0;
        }
        return ibVar.d(i);
    }
}
