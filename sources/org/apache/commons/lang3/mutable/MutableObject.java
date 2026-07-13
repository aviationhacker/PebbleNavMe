package org.apache.commons.lang3.mutable;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class MutableObject<T> implements Serializable, Mutable<T> {
    private static final long serialVersionUID = 86241875189L;
    private T a;

    public MutableObject() {
    }

    public MutableObject(T t) {
        this.a = t;
    }

    @Override // org.apache.commons.lang3.mutable.Mutable
    /* JADX INFO: renamed from: getValue */
    public T getValue2() {
        return this.a;
    }

    @Override // org.apache.commons.lang3.mutable.Mutable
    public void setValue(T t) {
        this.a = t;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (getClass() == obj.getClass()) {
            return this.a.equals(((MutableObject) obj).a);
        }
        return false;
    }

    public int hashCode() {
        if (this.a == null) {
            return 0;
        }
        return this.a.hashCode();
    }

    public String toString() {
        return this.a == null ? "null" : this.a.toString();
    }
}
