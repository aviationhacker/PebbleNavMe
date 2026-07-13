package defpackage;

import com.google.common.collect.Sets;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Set;
import javax.annotation.concurrent.NotThreadSafe;

/* JADX INFO: loaded from: classes.dex */
@NotThreadSafe
public abstract class lq {
    private final Set<Type> a = Sets.newHashSet();

    protected lq() {
    }

    public final void a(Type... typeArr) {
        for (Type type : typeArr) {
            if (type != null && this.a.add(type)) {
                try {
                    if (type instanceof TypeVariable) {
                        a((TypeVariable<?>) type);
                    } else if (type instanceof WildcardType) {
                        a((WildcardType) type);
                    } else if (type instanceof ParameterizedType) {
                        a((ParameterizedType) type);
                    } else if (type instanceof Class) {
                        a((Class<?>) type);
                    } else if (type instanceof GenericArrayType) {
                        a((GenericArrayType) type);
                    } else {
                        String strValueOf = String.valueOf(type);
                        throw new AssertionError(new StringBuilder(String.valueOf(strValueOf).length() + 14).append("Unknown type: ").append(strValueOf).toString());
                    }
                } catch (Throwable th) {
                    this.a.remove(type);
                    throw th;
                }
            }
        }
    }

    public void a(Class<?> cls) {
    }

    public void a(GenericArrayType genericArrayType) {
    }

    public void a(ParameterizedType parameterizedType) {
    }

    public void a(TypeVariable<?> typeVariable) {
    }

    public void a(WildcardType wildcardType) {
    }
}
