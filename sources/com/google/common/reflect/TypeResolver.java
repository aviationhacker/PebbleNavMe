package com.google.common.reflect;

import com.google.common.annotations.Beta;
import com.google.common.base.Joiner;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Maps;
import defpackage.lq;
import defpackage.lr;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Beta
public final class TypeResolver {
    private final b a;

    public TypeResolver() {
        this.a = new b();
    }

    private TypeResolver(b bVar) {
        this.a = bVar;
    }

    static TypeResolver a(Type type) {
        return new TypeResolver().a(a.a(type));
    }

    public TypeResolver where(Type type, Type type2) {
        HashMap mapNewHashMap = Maps.newHashMap();
        b(mapNewHashMap, (Type) Preconditions.checkNotNull(type), (Type) Preconditions.checkNotNull(type2));
        return a(mapNewHashMap);
    }

    TypeResolver a(Map<c, ? extends Type> map) {
        return new TypeResolver(this.a.a(map));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(final Map<c, Type> map, Type type, final Type type2) {
        if (!type.equals(type2) && (type2 instanceof WildcardType) == (type instanceof WildcardType)) {
            new lq() { // from class: com.google.common.reflect.TypeResolver.1
                /* JADX INFO: Access modifiers changed from: package-private */
                @Override // defpackage.lq
                public void a(TypeVariable<?> typeVariable) {
                    map.put(new c(typeVariable), type2);
                }

                /* JADX INFO: Access modifiers changed from: package-private */
                @Override // defpackage.lq
                public void a(WildcardType wildcardType) {
                    WildcardType wildcardType2 = (WildcardType) TypeResolver.b(WildcardType.class, type2);
                    Type[] upperBounds = wildcardType.getUpperBounds();
                    Type[] upperBounds2 = wildcardType2.getUpperBounds();
                    Type[] lowerBounds = wildcardType.getLowerBounds();
                    Type[] lowerBounds2 = wildcardType2.getLowerBounds();
                    Preconditions.checkArgument(upperBounds.length == upperBounds2.length && lowerBounds.length == lowerBounds2.length, "Incompatible type: %s vs. %s", wildcardType, type2);
                    for (int i = 0; i < upperBounds.length; i++) {
                        TypeResolver.b(map, upperBounds[i], upperBounds2[i]);
                    }
                    for (int i2 = 0; i2 < lowerBounds.length; i2++) {
                        TypeResolver.b(map, lowerBounds[i2], lowerBounds2[i2]);
                    }
                }

                /* JADX INFO: Access modifiers changed from: package-private */
                @Override // defpackage.lq
                public void a(ParameterizedType parameterizedType) {
                    ParameterizedType parameterizedType2 = (ParameterizedType) TypeResolver.b(ParameterizedType.class, type2);
                    Preconditions.checkArgument(parameterizedType.getRawType().equals(parameterizedType2.getRawType()), "Inconsistent raw type: %s vs. %s", parameterizedType, type2);
                    Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
                    Type[] actualTypeArguments2 = parameterizedType2.getActualTypeArguments();
                    Preconditions.checkArgument(actualTypeArguments.length == actualTypeArguments2.length, "%s not compatible with %s", parameterizedType, parameterizedType2);
                    for (int i = 0; i < actualTypeArguments.length; i++) {
                        TypeResolver.b(map, actualTypeArguments[i], actualTypeArguments2[i]);
                    }
                }

                /* JADX INFO: Access modifiers changed from: package-private */
                @Override // defpackage.lq
                public void a(GenericArrayType genericArrayType) {
                    Type typeE = lr.e(type2);
                    Preconditions.checkArgument(typeE != null, "%s is not an array type.", type2);
                    TypeResolver.b(map, genericArrayType.getGenericComponentType(), typeE);
                }

                /* JADX INFO: Access modifiers changed from: package-private */
                @Override // defpackage.lq
                public void a(Class<?> cls) {
                    String strValueOf = String.valueOf(cls);
                    throw new IllegalArgumentException(new StringBuilder(String.valueOf(strValueOf).length() + 21).append("No type mapping from ").append(strValueOf).toString());
                }
            }.a(type);
        }
    }

    public Type resolveType(Type type) {
        Preconditions.checkNotNull(type);
        if (type instanceof TypeVariable) {
            return this.a.a((TypeVariable<?>) type);
        }
        if (type instanceof ParameterizedType) {
            return a((ParameterizedType) type);
        }
        if (type instanceof GenericArrayType) {
            return a((GenericArrayType) type);
        }
        if (type instanceof WildcardType) {
            return a((WildcardType) type);
        }
        return type;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Type[] a(Type[] typeArr) {
        Type[] typeArr2 = new Type[typeArr.length];
        for (int i = 0; i < typeArr.length; i++) {
            typeArr2[i] = resolveType(typeArr[i]);
        }
        return typeArr2;
    }

    private WildcardType a(WildcardType wildcardType) {
        return new lr.h(a(wildcardType.getLowerBounds()), a(wildcardType.getUpperBounds()));
    }

    private Type a(GenericArrayType genericArrayType) {
        return lr.a(resolveType(genericArrayType.getGenericComponentType()));
    }

    private ParameterizedType a(ParameterizedType parameterizedType) {
        Type ownerType = parameterizedType.getOwnerType();
        return lr.a(ownerType == null ? null : resolveType(ownerType), (Class<?>) resolveType(parameterizedType.getRawType()), a(parameterizedType.getActualTypeArguments()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T> T b(Class<T> cls, Object obj) {
        try {
            return cls.cast(obj);
        } catch (ClassCastException e) {
            String strValueOf = String.valueOf(obj);
            String strValueOf2 = String.valueOf(cls.getSimpleName());
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(strValueOf).length() + 10 + String.valueOf(strValueOf2).length()).append(strValueOf).append(" is not a ").append(strValueOf2).toString());
        }
    }

    static class b {
        private final ImmutableMap<c, Type> a;

        b() {
            this.a = ImmutableMap.of();
        }

        private b(ImmutableMap<c, Type> immutableMap) {
            this.a = immutableMap;
        }

        final b a(Map<c, ? extends Type> map) {
            ImmutableMap.Builder builder = ImmutableMap.builder();
            builder.putAll(this.a);
            for (Map.Entry<c, ? extends Type> entry : map.entrySet()) {
                c key = entry.getKey();
                Type value = entry.getValue();
                Preconditions.checkArgument(!key.b(value), "Type variable %s bound to itself", key);
                builder.put(key, value);
            }
            return new b(builder.build());
        }

        final Type a(final TypeVariable<?> typeVariable) {
            return a(typeVariable, new b() { // from class: com.google.common.reflect.TypeResolver.b.1
                @Override // com.google.common.reflect.TypeResolver.b
                public Type a(TypeVariable<?> typeVariable2, b bVar) {
                    return typeVariable2.getGenericDeclaration().equals(typeVariable.getGenericDeclaration()) ? typeVariable2 : this.a(typeVariable2, bVar);
                }
            });
        }

        Type a(TypeVariable<?> typeVariable, b bVar) {
            Type type = this.a.get(new c(typeVariable));
            if (type == null) {
                Type[] bounds = typeVariable.getBounds();
                if (bounds.length != 0) {
                    Type[] typeArrA = new TypeResolver(bVar).a(bounds);
                    if (!lr.d.a || !Arrays.equals(bounds, typeArrA)) {
                        return lr.a(typeVariable.getGenericDeclaration(), typeVariable.getName(), typeArrA);
                    }
                    return typeVariable;
                }
                return typeVariable;
            }
            return new TypeResolver(bVar).resolveType(type);
        }
    }

    static final class a extends lq {
        private static final d a = new d();
        private final Map<c, Type> b = Maps.newHashMap();

        private a() {
        }

        static ImmutableMap<c, Type> a(Type type) {
            a aVar = new a();
            aVar.a(a.a(type));
            return ImmutableMap.copyOf((Map) aVar.b);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // defpackage.lq
        public void a(Class<?> cls) {
            a(cls.getGenericSuperclass());
            a(cls.getGenericInterfaces());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // defpackage.lq
        public void a(ParameterizedType parameterizedType) {
            Class cls = (Class) parameterizedType.getRawType();
            TypeVariable[] typeParameters = cls.getTypeParameters();
            Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
            Preconditions.checkState(typeParameters.length == actualTypeArguments.length);
            for (int i = 0; i < typeParameters.length; i++) {
                a(new c(typeParameters[i]), actualTypeArguments[i]);
            }
            a(cls);
            a(parameterizedType.getOwnerType());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // defpackage.lq
        public void a(TypeVariable<?> typeVariable) {
            a(typeVariable.getBounds());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // defpackage.lq
        public void a(WildcardType wildcardType) {
            a(wildcardType.getUpperBounds());
        }

        private void a(c cVar, Type type) {
            if (!this.b.containsKey(cVar)) {
                Type type2 = type;
                while (type2 != null) {
                    if (!cVar.b(type2)) {
                        type2 = this.b.get(c.a(type2));
                    } else {
                        while (type != null) {
                            type = this.b.remove(c.a(type));
                        }
                        return;
                    }
                }
                this.b.put(cVar, type);
            }
        }
    }

    static final class d {
        private final AtomicInteger a;

        private d() {
            this.a = new AtomicInteger();
        }

        Type a(Type type) {
            Preconditions.checkNotNull(type);
            if (!(type instanceof Class) && !(type instanceof TypeVariable)) {
                if (type instanceof GenericArrayType) {
                    return lr.a(a(((GenericArrayType) type).getGenericComponentType()));
                }
                if (type instanceof ParameterizedType) {
                    ParameterizedType parameterizedType = (ParameterizedType) type;
                    return lr.a(b(parameterizedType.getOwnerType()), (Class<?>) parameterizedType.getRawType(), a(parameterizedType.getActualTypeArguments()));
                }
                if (type instanceof WildcardType) {
                    WildcardType wildcardType = (WildcardType) type;
                    if (wildcardType.getLowerBounds().length == 0) {
                        Type[] upperBounds = wildcardType.getUpperBounds();
                        int iIncrementAndGet = this.a.incrementAndGet();
                        String strJoin = Joiner.on('&').join(upperBounds);
                        return lr.a(d.class, new StringBuilder(String.valueOf(strJoin).length() + 33).append("capture#").append(iIncrementAndGet).append("-of ? extends ").append(strJoin).toString(), wildcardType.getUpperBounds());
                    }
                    return type;
                }
                throw new AssertionError("must have been one of the known types");
            }
            return type;
        }

        private Type b(@Nullable Type type) {
            if (type == null) {
                return null;
            }
            return a(type);
        }

        private Type[] a(Type[] typeArr) {
            Type[] typeArr2 = new Type[typeArr.length];
            for (int i = 0; i < typeArr.length; i++) {
                typeArr2[i] = a(typeArr[i]);
            }
            return typeArr2;
        }
    }

    static final class c {
        private final TypeVariable<?> a;

        c(TypeVariable<?> typeVariable) {
            this.a = (TypeVariable) Preconditions.checkNotNull(typeVariable);
        }

        public int hashCode() {
            return Objects.hashCode(this.a.getGenericDeclaration(), this.a.getName());
        }

        public boolean equals(Object obj) {
            if (obj instanceof c) {
                return a(((c) obj).a);
            }
            return false;
        }

        public String toString() {
            return this.a.toString();
        }

        static Object a(Type type) {
            if (type instanceof TypeVariable) {
                return new c((TypeVariable) type);
            }
            return null;
        }

        boolean b(Type type) {
            if (type instanceof TypeVariable) {
                return a((TypeVariable<?>) type);
            }
            return false;
        }

        private boolean a(TypeVariable<?> typeVariable) {
            return this.a.getGenericDeclaration().equals(typeVariable.getGenericDeclaration()) && this.a.getName().equals(typeVariable.getName());
        }
    }
}
