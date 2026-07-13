package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class ft<T> {
    protected final T b;

    protected ft(T t) {
        if (t == null) {
            throw new IllegalArgumentException("Wrapped Object can not be null.");
        }
        this.b = t;
    }

    public T getWrappedObject() {
        return this.b;
    }
}
