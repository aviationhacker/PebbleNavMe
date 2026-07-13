package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class ml {
    private final Object a;
    private final int b;

    public ml(Object obj) {
        this.b = System.identityHashCode(obj);
        this.a = obj;
    }

    public int hashCode() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ml)) {
            return false;
        }
        ml mlVar = (ml) obj;
        return this.b == mlVar.b && this.a == mlVar.a;
    }
}
