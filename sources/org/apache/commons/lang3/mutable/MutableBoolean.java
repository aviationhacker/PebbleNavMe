package org.apache.commons.lang3.mutable;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class MutableBoolean implements Serializable, Comparable<MutableBoolean>, Mutable<Boolean> {
    private static final long serialVersionUID = -4830728138360036487L;
    private boolean a;

    public MutableBoolean() {
    }

    public MutableBoolean(boolean z) {
        this.a = z;
    }

    public MutableBoolean(Boolean bool) {
        this.a = bool.booleanValue();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // org.apache.commons.lang3.mutable.Mutable
    public Boolean getValue() {
        return Boolean.valueOf(this.a);
    }

    public void setValue(boolean z) {
        this.a = z;
    }

    @Override // org.apache.commons.lang3.mutable.Mutable
    public void setValue(Boolean bool) {
        this.a = bool.booleanValue();
    }

    public boolean isTrue() {
        return this.a;
    }

    public boolean isFalse() {
        return !this.a;
    }

    public boolean booleanValue() {
        return this.a;
    }

    public Boolean toBoolean() {
        return Boolean.valueOf(booleanValue());
    }

    public boolean equals(Object obj) {
        return (obj instanceof MutableBoolean) && this.a == ((MutableBoolean) obj).booleanValue();
    }

    public int hashCode() {
        return this.a ? Boolean.TRUE.hashCode() : Boolean.FALSE.hashCode();
    }

    @Override // java.lang.Comparable
    public int compareTo(MutableBoolean mutableBoolean) {
        if (this.a == mutableBoolean.a) {
            return 0;
        }
        return this.a ? 1 : -1;
    }

    public String toString() {
        return String.valueOf(this.a);
    }
}
