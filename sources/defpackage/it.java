package defpackage;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.collect.BoundType;
import java.io.Serializable;
import java.util.Comparator;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible(serializable = true)
public final class it<T> implements Serializable {
    private final Comparator<? super T> a;
    private final boolean b;

    @Nullable
    private final T c;
    private final BoundType d;
    private final boolean e;

    @Nullable
    private final T f;
    private final BoundType g;

    public static <T> it<T> a(Comparator<? super T> comparator) {
        return new it<>(comparator, false, null, BoundType.OPEN, false, null, BoundType.OPEN);
    }

    public static <T> it<T> a(Comparator<? super T> comparator, @Nullable T t, BoundType boundType) {
        return new it<>(comparator, true, t, boundType, false, null, BoundType.OPEN);
    }

    public static <T> it<T> b(Comparator<? super T> comparator, @Nullable T t, BoundType boundType) {
        return new it<>(comparator, false, null, BoundType.OPEN, true, t, boundType);
    }

    private it(Comparator<? super T> comparator, boolean z, @Nullable T t, BoundType boundType, boolean z2, @Nullable T t2, BoundType boundType2) {
        this.a = (Comparator) Preconditions.checkNotNull(comparator);
        this.b = z;
        this.e = z2;
        this.c = t;
        this.d = (BoundType) Preconditions.checkNotNull(boundType);
        this.f = t2;
        this.g = (BoundType) Preconditions.checkNotNull(boundType2);
        if (z) {
            comparator.compare(t, t);
        }
        if (z2) {
            comparator.compare(t2, t2);
        }
        if (z && z2) {
            int iCompare = comparator.compare(t, t2);
            Preconditions.checkArgument(iCompare <= 0, "lowerEndpoint (%s) > upperEndpoint (%s)", t, t2);
            if (iCompare == 0) {
                Preconditions.checkArgument((boundType != BoundType.OPEN) | (boundType2 != BoundType.OPEN));
            }
        }
    }

    public Comparator<? super T> a() {
        return this.a;
    }

    public boolean b() {
        return this.b;
    }

    public boolean c() {
        return this.e;
    }

    public boolean a(@Nullable T t) {
        if (!b()) {
            return false;
        }
        int iCompare = this.a.compare(t, d());
        return (iCompare < 0) | ((iCompare == 0) & (e() == BoundType.OPEN));
    }

    public boolean b(@Nullable T t) {
        if (!c()) {
            return false;
        }
        int iCompare = this.a.compare(t, f());
        return (iCompare > 0) | ((iCompare == 0) & (g() == BoundType.OPEN));
    }

    public boolean c(@Nullable T t) {
        return (a(t) || b(t)) ? false : true;
    }

    public it<T> a(it<T> itVar) {
        int iCompare;
        int iCompare2;
        BoundType boundType;
        T t;
        int iCompare3;
        Preconditions.checkNotNull(itVar);
        Preconditions.checkArgument(this.a.equals(itVar.a));
        boolean z = this.b;
        T tD = d();
        BoundType boundTypeE = e();
        if (!b()) {
            z = itVar.b;
            tD = itVar.d();
            boundTypeE = itVar.e();
        } else if (itVar.b() && ((iCompare = this.a.compare(d(), itVar.d())) < 0 || (iCompare == 0 && itVar.e() == BoundType.OPEN))) {
            tD = itVar.d();
            boundTypeE = itVar.e();
        }
        boolean z2 = this.e;
        T tF = f();
        BoundType boundTypeG = g();
        if (!c()) {
            z2 = itVar.e;
            tF = itVar.f();
            boundTypeG = itVar.g();
        } else if (itVar.c() && ((iCompare2 = this.a.compare(f(), itVar.f())) > 0 || (iCompare2 == 0 && itVar.g() == BoundType.OPEN))) {
            tF = itVar.f();
            boundTypeG = itVar.g();
        }
        if (z && z2 && ((iCompare3 = this.a.compare(tD, tF)) > 0 || (iCompare3 == 0 && boundTypeE == BoundType.OPEN && boundTypeG == BoundType.OPEN))) {
            BoundType boundType2 = BoundType.OPEN;
            boundTypeG = BoundType.CLOSED;
            boundType = boundType2;
            t = tF;
        } else {
            boundType = boundTypeE;
            t = tD;
        }
        return new it<>(this.a, z, t, boundType, z2, tF, boundTypeG);
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof it)) {
            return false;
        }
        it itVar = (it) obj;
        return this.a.equals(itVar.a) && this.b == itVar.b && this.e == itVar.e && e().equals(itVar.e()) && g().equals(itVar.g()) && Objects.equal(d(), itVar.d()) && Objects.equal(f(), itVar.f());
    }

    public int hashCode() {
        return Objects.hashCode(this.a, d(), e(), f(), g());
    }

    public String toString() {
        return this.a + ":" + (this.d == BoundType.CLOSED ? '[' : '(') + (this.b ? this.c : "-∞") + ',' + (this.e ? this.f : "∞") + (this.g == BoundType.CLOSED ? ']' : ')');
    }

    public T d() {
        return this.c;
    }

    public BoundType e() {
        return this.d;
    }

    public T f() {
        return this.f;
    }

    public BoundType g() {
        return this.g;
    }
}
