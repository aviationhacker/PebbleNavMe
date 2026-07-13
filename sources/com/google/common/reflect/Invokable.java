package com.google.common.reflect;

import com.google.common.annotations.Beta;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import defpackage.lo;
import defpackage.lr;
import java.lang.annotation.Annotation;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Constructor;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.Arrays;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Beta
public abstract class Invokable<T, R> extends lo implements GenericDeclaration {
    abstract Object a(@Nullable Object obj, Object[] objArr);

    abstract Type[] a();

    abstract Type[] b();

    abstract Annotation[][] c();

    abstract Type d();

    public abstract boolean isOverridable();

    public abstract boolean isVarArgs();

    @Override // defpackage.lo
    public /* bridge */ /* synthetic */ boolean equals(@Nullable Object obj) {
        return super.equals(obj);
    }

    @Override // defpackage.lo
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // defpackage.lo
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    <M extends AccessibleObject & Member> Invokable(M m) {
        super(m);
    }

    public static Invokable<?, Object> from(Method method) {
        return new b(method);
    }

    public static <T> Invokable<T, T> from(Constructor<T> constructor) {
        return new a(constructor);
    }

    public final R invoke(@Nullable T t, Object... objArr) {
        return (R) a(t, (Object[]) Preconditions.checkNotNull(objArr));
    }

    public final TypeToken<? extends R> getReturnType() {
        return (TypeToken<? extends R>) TypeToken.of(d());
    }

    public final ImmutableList<Parameter> getParameters() {
        Type[] typeArrA = a();
        Annotation[][] annotationArrC = c();
        ImmutableList.Builder builder = ImmutableList.builder();
        for (int i = 0; i < typeArrA.length; i++) {
            builder.add(new Parameter(this, i, TypeToken.of(typeArrA[i]), annotationArrC[i]));
        }
        return builder.build();
    }

    public final ImmutableList<TypeToken<? extends Throwable>> getExceptionTypes() {
        ImmutableList.Builder builder = ImmutableList.builder();
        for (Type type : b()) {
            builder.add(TypeToken.of(type));
        }
        return builder.build();
    }

    public final <R1 extends R> Invokable<T, R1> returning(Class<R1> cls) {
        return returning(TypeToken.of((Class) cls));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <R1 extends R> Invokable<T, R1> returning(TypeToken<R1> typeToken) {
        if (!typeToken.isSupertypeOf(getReturnType())) {
            String strValueOf = String.valueOf(getReturnType());
            String strValueOf2 = String.valueOf(typeToken);
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(strValueOf).length() + 35 + String.valueOf(strValueOf2).length()).append("Invokable is known to return ").append(strValueOf).append(", not ").append(strValueOf2).toString());
        }
        return this;
    }

    @Override // defpackage.lo, java.lang.reflect.Member
    public final Class<? super T> getDeclaringClass() {
        return (Class<? super T>) super.getDeclaringClass();
    }

    @Override // defpackage.lo
    public TypeToken<T> getOwnerType() {
        return TypeToken.of((Class) getDeclaringClass());
    }

    static class b<T> extends Invokable<T, Object> {
        final Method a;

        b(Method method) {
            super(method);
            this.a = method;
        }

        @Override // com.google.common.reflect.Invokable
        final Object a(@Nullable Object obj, Object[] objArr) {
            return this.a.invoke(obj, objArr);
        }

        @Override // com.google.common.reflect.Invokable
        Type d() {
            return this.a.getGenericReturnType();
        }

        @Override // com.google.common.reflect.Invokable
        Type[] a() {
            return this.a.getGenericParameterTypes();
        }

        @Override // com.google.common.reflect.Invokable
        Type[] b() {
            return this.a.getGenericExceptionTypes();
        }

        @Override // com.google.common.reflect.Invokable
        final Annotation[][] c() {
            return this.a.getParameterAnnotations();
        }

        @Override // java.lang.reflect.GenericDeclaration
        public final TypeVariable<?>[] getTypeParameters() {
            return this.a.getTypeParameters();
        }

        @Override // com.google.common.reflect.Invokable
        public final boolean isOverridable() {
            return (isFinal() || isPrivate() || isStatic() || Modifier.isFinal(getDeclaringClass().getModifiers())) ? false : true;
        }

        @Override // com.google.common.reflect.Invokable
        public final boolean isVarArgs() {
            return this.a.isVarArgs();
        }
    }

    static class a<T> extends Invokable<T, T> {
        final Constructor<?> a;

        a(Constructor<?> constructor) {
            super(constructor);
            this.a = constructor;
        }

        @Override // com.google.common.reflect.Invokable
        final Object a(@Nullable Object obj, Object[] objArr) {
            try {
                return this.a.newInstance(objArr);
            } catch (InstantiationException e) {
                String strValueOf = String.valueOf(this.a);
                throw new RuntimeException(new StringBuilder(String.valueOf(strValueOf).length() + 8).append(strValueOf).append(" failed.").toString(), e);
            }
        }

        @Override // com.google.common.reflect.Invokable
        Type d() {
            Class<? super T> declaringClass = getDeclaringClass();
            TypeVariable<Class<? super T>>[] typeParameters = declaringClass.getTypeParameters();
            if (typeParameters.length > 0) {
                return lr.a(declaringClass, typeParameters);
            }
            return declaringClass;
        }

        @Override // com.google.common.reflect.Invokable
        Type[] a() {
            Type[] genericParameterTypes = this.a.getGenericParameterTypes();
            if (genericParameterTypes.length > 0 && e()) {
                Class<?>[] parameterTypes = this.a.getParameterTypes();
                if (genericParameterTypes.length == parameterTypes.length && parameterTypes[0] == getDeclaringClass().getEnclosingClass()) {
                    return (Type[]) Arrays.copyOfRange(genericParameterTypes, 1, genericParameterTypes.length);
                }
                return genericParameterTypes;
            }
            return genericParameterTypes;
        }

        @Override // com.google.common.reflect.Invokable
        Type[] b() {
            return this.a.getGenericExceptionTypes();
        }

        @Override // com.google.common.reflect.Invokable
        final Annotation[][] c() {
            return this.a.getParameterAnnotations();
        }

        @Override // java.lang.reflect.GenericDeclaration
        public final TypeVariable<?>[] getTypeParameters() {
            TypeVariable<Class<? super T>>[] typeParameters = getDeclaringClass().getTypeParameters();
            TypeVariable<Constructor<?>>[] typeParameters2 = this.a.getTypeParameters();
            TypeVariable<?>[] typeVariableArr = new TypeVariable[typeParameters.length + typeParameters2.length];
            System.arraycopy(typeParameters, 0, typeVariableArr, 0, typeParameters.length);
            System.arraycopy(typeParameters2, 0, typeVariableArr, typeParameters.length, typeParameters2.length);
            return typeVariableArr;
        }

        @Override // com.google.common.reflect.Invokable
        public final boolean isOverridable() {
            return false;
        }

        @Override // com.google.common.reflect.Invokable
        public final boolean isVarArgs() {
            return this.a.isVarArgs();
        }

        private boolean e() {
            Class<?> declaringClass = this.a.getDeclaringClass();
            if (declaringClass.getEnclosingConstructor() != null) {
                return true;
            }
            Method enclosingMethod = declaringClass.getEnclosingMethod();
            return enclosingMethod != null ? !Modifier.isStatic(enclosingMethod.getModifiers()) : (declaringClass.getEnclosingClass() == null || Modifier.isStatic(declaringClass.getModifiers())) ? false : true;
        }
    }
}
