package defpackage;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.BoundType;
import com.google.common.collect.DiscreteDomain;
import com.google.common.collect.Range;
import com.google.common.primitives.Booleans;
import java.io.Serializable;
import java.lang.Comparable;
import java.util.NoSuchElementException;
import javax.annotation.Nullable;
import org.eclipse.jetty.util.URIUtil;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible
public abstract class ic<C extends Comparable> implements Serializable, Comparable<ic<C>> {
    private static final long serialVersionUID = 0;
    final C a;

    public abstract BoundType a();

    abstract ic<C> a(BoundType boundType, DiscreteDomain<C> discreteDomain);

    public abstract C a(DiscreteDomain<C> discreteDomain);

    public abstract void a(StringBuilder sb);

    public abstract boolean a(C c2);

    public abstract BoundType b();

    abstract ic<C> b(BoundType boundType, DiscreteDomain<C> discreteDomain);

    public abstract C b(DiscreteDomain<C> discreteDomain);

    public abstract void b(StringBuilder sb);

    ic(@Nullable C c2) {
        this.a = c2;
    }

    public ic<C> c(DiscreteDomain<C> discreteDomain) {
        return this;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a */
    public int compareTo(ic<C> icVar) {
        if (icVar == d()) {
            return 1;
        }
        if (icVar == e()) {
            return -1;
        }
        int iA = Range.a(this.a, icVar.a);
        return iA == 0 ? Booleans.compare(this instanceof b, icVar instanceof b) : iA;
    }

    public C c() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ic)) {
            return false;
        }
        try {
            return compareTo((ic) obj) == 0;
        } catch (ClassCastException e) {
            return false;
        }
    }

    public static <C extends Comparable> ic<C> d() {
        return c.b;
    }

    static final class c extends ic<Comparable<?>> {
        private static final c b = new c();
        private static final long serialVersionUID = 0;

        private c() {
            super(null);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // defpackage.ic
        public Comparable<?> c() {
            throw new IllegalStateException("range unbounded on this side");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // defpackage.ic
        public boolean a(Comparable<?> comparable) {
            return true;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // defpackage.ic
        public BoundType a() {
            throw new IllegalStateException();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // defpackage.ic
        public BoundType b() {
            throw new AssertionError("this statement should be unreachable");
        }

        @Override // defpackage.ic
        ic<Comparable<?>> a(BoundType boundType, DiscreteDomain<Comparable<?>> discreteDomain) {
            throw new IllegalStateException();
        }

        @Override // defpackage.ic
        ic<Comparable<?>> b(BoundType boundType, DiscreteDomain<Comparable<?>> discreteDomain) {
            throw new AssertionError("this statement should be unreachable");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // defpackage.ic
        public void a(StringBuilder sb) {
            sb.append("(-∞");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // defpackage.ic
        public void b(StringBuilder sb) {
            throw new AssertionError();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // defpackage.ic
        public Comparable<?> a(DiscreteDomain<Comparable<?>> discreteDomain) {
            return discreteDomain.minValue();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // defpackage.ic
        public Comparable<?> b(DiscreteDomain<Comparable<?>> discreteDomain) {
            throw new AssertionError();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // defpackage.ic
        public ic<Comparable<?>> c(DiscreteDomain<Comparable<?>> discreteDomain) {
            try {
                return ic.b(discreteDomain.minValue());
            } catch (NoSuchElementException e) {
                return this;
            }
        }

        @Override // defpackage.ic, java.lang.Comparable
        /* JADX INFO: renamed from: a */
        public int compareTo(ic<Comparable<?>> icVar) {
            return icVar == this ? 0 : -1;
        }

        public String toString() {
            return "-∞";
        }

        private Object readResolve() {
            return b;
        }
    }

    public static <C extends Comparable> ic<C> e() {
        return a.b;
    }

    static final class a extends ic<Comparable<?>> {
        private static final a b = new a();
        private static final long serialVersionUID = 0;

        private a() {
            super(null);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // defpackage.ic
        public Comparable<?> c() {
            throw new IllegalStateException("range unbounded on this side");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // defpackage.ic
        public boolean a(Comparable<?> comparable) {
            return false;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // defpackage.ic
        public BoundType a() {
            throw new AssertionError("this statement should be unreachable");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // defpackage.ic
        public BoundType b() {
            throw new IllegalStateException();
        }

        @Override // defpackage.ic
        ic<Comparable<?>> a(BoundType boundType, DiscreteDomain<Comparable<?>> discreteDomain) {
            throw new AssertionError("this statement should be unreachable");
        }

        @Override // defpackage.ic
        ic<Comparable<?>> b(BoundType boundType, DiscreteDomain<Comparable<?>> discreteDomain) {
            throw new IllegalStateException();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // defpackage.ic
        public void a(StringBuilder sb) {
            throw new AssertionError();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // defpackage.ic
        public void b(StringBuilder sb) {
            sb.append("+∞)");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // defpackage.ic
        public Comparable<?> a(DiscreteDomain<Comparable<?>> discreteDomain) {
            throw new AssertionError();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // defpackage.ic
        public Comparable<?> b(DiscreteDomain<Comparable<?>> discreteDomain) {
            return discreteDomain.maxValue();
        }

        @Override // defpackage.ic, java.lang.Comparable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(ic<Comparable<?>> icVar) {
            return icVar == this ? 0 : 1;
        }

        public String toString() {
            return "+∞";
        }

        private Object readResolve() {
            return b;
        }
    }

    public static <C extends Comparable> ic<C> b(C c2) {
        return new d(c2);
    }

    static final class d<C extends Comparable> extends ic<C> {
        private static final long serialVersionUID = 0;

        @Override // defpackage.ic, java.lang.Comparable
        public /* synthetic */ int compareTo(Object obj) {
            return super.compareTo((ic) obj);
        }

        d(C c) {
            super((Comparable) Preconditions.checkNotNull(c));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // defpackage.ic
        public boolean a(C c) {
            return Range.a(this.a, c) <= 0;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // defpackage.ic
        public BoundType a() {
            return BoundType.CLOSED;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // defpackage.ic
        public BoundType b() {
            return BoundType.OPEN;
        }

        @Override // defpackage.ic
        ic<C> a(BoundType boundType, DiscreteDomain<C> discreteDomain) {
            switch (boundType) {
                case CLOSED:
                    return this;
                case OPEN:
                    Comparable comparablePrevious = discreteDomain.previous(this.a);
                    return comparablePrevious == null ? ic.d() : new b<>(comparablePrevious);
                default:
                    throw new AssertionError();
            }
        }

        @Override // defpackage.ic
        ic<C> b(BoundType boundType, DiscreteDomain<C> discreteDomain) {
            switch (boundType) {
                case CLOSED:
                    Comparable comparablePrevious = discreteDomain.previous(this.a);
                    return comparablePrevious == null ? ic.e() : new b(comparablePrevious);
                case OPEN:
                    return this;
                default:
                    throw new AssertionError();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // defpackage.ic
        public void a(StringBuilder sb) {
            sb.append('[').append(this.a);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // defpackage.ic
        public void b(StringBuilder sb) {
            sb.append(this.a).append(')');
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // defpackage.ic
        public C a(DiscreteDomain<C> discreteDomain) {
            return this.a;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // defpackage.ic
        public C b(DiscreteDomain<C> discreteDomain) {
            return (C) discreteDomain.previous(this.a);
        }

        public int hashCode() {
            return this.a.hashCode();
        }

        public String toString() {
            String strValueOf = String.valueOf(this.a);
            return new StringBuilder(String.valueOf(strValueOf).length() + 2).append("\\").append(strValueOf).append(URIUtil.SLASH).toString();
        }
    }

    public static <C extends Comparable> ic<C> c(C c2) {
        return new b(c2);
    }

    static final class b<C extends Comparable> extends ic<C> {
        private static final long serialVersionUID = 0;

        @Override // defpackage.ic, java.lang.Comparable
        public /* synthetic */ int compareTo(Object obj) {
            return super.compareTo((ic) obj);
        }

        b(C c) {
            super((Comparable) Preconditions.checkNotNull(c));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // defpackage.ic
        public boolean a(C c) {
            return Range.a(this.a, c) < 0;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // defpackage.ic
        public BoundType a() {
            return BoundType.OPEN;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // defpackage.ic
        public BoundType b() {
            return BoundType.CLOSED;
        }

        @Override // defpackage.ic
        ic<C> a(BoundType boundType, DiscreteDomain<C> discreteDomain) {
            switch (boundType) {
                case CLOSED:
                    Comparable next = discreteDomain.next(this.a);
                    return next == null ? ic.d() : b(next);
                case OPEN:
                    return this;
                default:
                    throw new AssertionError();
            }
        }

        @Override // defpackage.ic
        ic<C> b(BoundType boundType, DiscreteDomain<C> discreteDomain) {
            switch (boundType) {
                case CLOSED:
                    return this;
                case OPEN:
                    Comparable next = discreteDomain.next(this.a);
                    return next == null ? ic.e() : b(next);
                default:
                    throw new AssertionError();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // defpackage.ic
        public void a(StringBuilder sb) {
            sb.append('(').append(this.a);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // defpackage.ic
        public void b(StringBuilder sb) {
            sb.append(this.a).append(']');
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // defpackage.ic
        public C a(DiscreteDomain<C> discreteDomain) {
            return (C) discreteDomain.next(this.a);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // defpackage.ic
        public C b(DiscreteDomain<C> discreteDomain) {
            return this.a;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // defpackage.ic
        public ic<C> c(DiscreteDomain<C> discreteDomain) {
            Comparable comparableA = a(discreteDomain);
            return comparableA != null ? b(comparableA) : ic.e();
        }

        public int hashCode() {
            return this.a.hashCode() ^ (-1);
        }

        public String toString() {
            String strValueOf = String.valueOf(this.a);
            return new StringBuilder(String.valueOf(strValueOf).length() + 2).append(URIUtil.SLASH).append(strValueOf).append("\\").toString();
        }
    }
}
