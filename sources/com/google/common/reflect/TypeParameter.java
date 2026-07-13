package com.google.common.reflect;

import com.google.common.annotations.Beta;
import com.google.common.base.Preconditions;
import defpackage.lp;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Beta
public abstract class TypeParameter<T> extends lp<T> {
    final TypeVariable<?> a;

    protected TypeParameter() {
        Type typeA = a();
        Preconditions.checkArgument(typeA instanceof TypeVariable, "%s should be a type variable.", typeA);
        this.a = (TypeVariable) typeA;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj instanceof TypeParameter) {
            return this.a.equals(((TypeParameter) obj).a);
        }
        return false;
    }

    public String toString() {
        return this.a.toString();
    }
}
