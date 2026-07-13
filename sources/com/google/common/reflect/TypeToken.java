package com.google.common.reflect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Joiner;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.collect.FluentIterable;
import com.google.common.collect.ForwardingSet;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Maps;
import com.google.common.collect.Ordering;
import com.google.common.collect.UnmodifiableIterator;
import com.google.common.primitives.Primitives;
import com.google.common.reflect.Invokable;
import com.google.common.reflect.TypeResolver;
import defpackage.lp;
import defpackage.lq;
import defpackage.lr;
import java.io.Serializable;
import java.lang.reflect.Constructor;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Beta
public abstract class TypeToken<T> extends lp<T> implements Serializable {
    private final Type a;
    private transient TypeResolver b;

    enum f implements Predicate<TypeToken<?>> {
        IGNORE_TYPE_VARIABLE_OR_WILDCARD { // from class: com.google.common.reflect.TypeToken.f.1
            @Override // com.google.common.base.Predicate
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public boolean apply(TypeToken<?> typeToken) {
                return ((((TypeToken) typeToken).a instanceof TypeVariable) || (((TypeToken) typeToken).a instanceof WildcardType)) ? false : true;
            }
        },
        INTERFACE_ONLY { // from class: com.google.common.reflect.TypeToken.f.2
            @Override // com.google.common.base.Predicate
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public boolean apply(TypeToken<?> typeToken) {
                return typeToken.getRawType().isInterface();
            }
        }
    }

    protected TypeToken() {
        this.a = a();
        Preconditions.checkState(!(this.a instanceof TypeVariable), "Cannot construct a TypeToken for a type variable.\nYou probably meant to call new TypeToken<%s>(getClass()) that can resolve the type variable for you.\nIf you do need to create a TypeToken of a type variable, please use TypeToken.of() instead.", this.a);
    }

    protected TypeToken(Class<?> cls) {
        Type typeA = super.a();
        if (typeA instanceof Class) {
            this.a = typeA;
        } else {
            this.a = of((Class) cls).resolveType(typeA).a;
        }
    }

    private TypeToken(Type type) {
        this.a = (Type) Preconditions.checkNotNull(type);
    }

    public static <T> TypeToken<T> of(Class<T> cls) {
        return new d(cls);
    }

    public static TypeToken<?> of(Type type) {
        return new d(type);
    }

    public final Class<? super T> getRawType() {
        return f().iterator().next();
    }

    public final Type getType() {
        return this.a;
    }

    public final <X> TypeToken<T> where(TypeParameter<X> typeParameter, TypeToken<X> typeToken) {
        return new d(new TypeResolver().a(ImmutableMap.of(new TypeResolver.c(typeParameter.a), typeToken.a)).resolveType(this.a));
    }

    public final <X> TypeToken<T> where(TypeParameter<X> typeParameter, Class<X> cls) {
        return where(typeParameter, of((Class) cls));
    }

    public final TypeToken<?> resolveType(Type type) {
        Preconditions.checkNotNull(type);
        TypeResolver typeResolverA = this.b;
        if (typeResolverA == null) {
            typeResolverA = TypeResolver.a(this.a);
            this.b = typeResolverA;
        }
        return of(typeResolverA.resolveType(type));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Type[] a(Type[] typeArr) {
        for (int i = 0; i < typeArr.length; i++) {
            typeArr[i] = resolveType(typeArr[i]).getType();
        }
        return typeArr;
    }

    private TypeToken<?> a(Type type) {
        TypeToken<?> typeTokenResolveType = resolveType(type);
        typeTokenResolveType.b = this.b;
        return typeTokenResolveType;
    }

    @Nullable
    final TypeToken<? super T> b() {
        if (this.a instanceof TypeVariable) {
            return b(((TypeVariable) this.a).getBounds()[0]);
        }
        if (this.a instanceof WildcardType) {
            return b(((WildcardType) this.a).getUpperBounds()[0]);
        }
        Type genericSuperclass = getRawType().getGenericSuperclass();
        if (genericSuperclass == null) {
            return null;
        }
        return (TypeToken<? super T>) a(genericSuperclass);
    }

    @Nullable
    private TypeToken<? super T> b(Type type) {
        TypeToken<? super T> typeToken = (TypeToken<? super T>) of(type);
        if (typeToken.getRawType().isInterface()) {
            return null;
        }
        return typeToken;
    }

    final ImmutableList<TypeToken<? super T>> c() {
        if (this.a instanceof TypeVariable) {
            return b(((TypeVariable) this.a).getBounds());
        }
        if (this.a instanceof WildcardType) {
            return b(((WildcardType) this.a).getUpperBounds());
        }
        ImmutableList.Builder builder = ImmutableList.builder();
        for (Type type : getRawType().getGenericInterfaces()) {
            builder.add(a(type));
        }
        return builder.build();
    }

    private ImmutableList<TypeToken<? super T>> b(Type[] typeArr) {
        ImmutableList.Builder builder = ImmutableList.builder();
        for (Type type : typeArr) {
            TypeToken<?> typeTokenOf = of(type);
            if (typeTokenOf.getRawType().isInterface()) {
                builder.add(typeTokenOf);
            }
        }
        return builder.build();
    }

    public final TypeToken<T>.TypeSet getTypes() {
        return new TypeSet();
    }

    public final TypeToken<? super T> getSupertype(Class<? super T> cls) {
        Preconditions.checkArgument(b((Class<?>) cls), "%s is not a super class of %s", cls, this);
        if (this.a instanceof TypeVariable) {
            return a(cls, ((TypeVariable) this.a).getBounds());
        }
        if (this.a instanceof WildcardType) {
            return a(cls, ((WildcardType) this.a).getUpperBounds());
        }
        if (cls.isArray()) {
            return c((Class) cls);
        }
        return (TypeToken<? super T>) a(a((Class) cls).a);
    }

    public final TypeToken<? extends T> getSubtype(Class<?> cls) {
        Preconditions.checkArgument(!(this.a instanceof TypeVariable), "Cannot get subtype of type variable <%s>", this);
        if (this.a instanceof WildcardType) {
            return b(cls, ((WildcardType) this.a).getLowerBounds());
        }
        if (isArray()) {
            return d(cls);
        }
        Preconditions.checkArgument(getRawType().isAssignableFrom(cls), "%s isn't a subclass of %s", cls, this);
        return (TypeToken<? extends T>) of(b(e(cls), cls));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Type b(Type type, final Class<?> cls) {
        Preconditions.checkNotNull(cls);
        final AtomicReference atomicReference = new AtomicReference();
        atomicReference.set(type);
        new lq() { // from class: com.google.common.reflect.TypeToken.1
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // defpackage.lq
            public void a(TypeVariable<?> typeVariable) {
                if (typeVariable.getGenericDeclaration() == cls) {
                    atomicReference.set(lr.b(Object.class));
                }
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // defpackage.lq
            public void a(ParameterizedType parameterizedType) {
                Type typeB;
                AtomicReference atomicReference2 = atomicReference;
                if (cls.getEnclosingClass() != null) {
                    typeB = TypeToken.b(parameterizedType.getOwnerType(), cls.getEnclosingClass());
                } else {
                    typeB = parameterizedType.getOwnerType();
                }
                atomicReference2.set(lr.a(typeB, (Class<?>) parameterizedType.getRawType(), TypeToken.b(parameterizedType.getActualTypeArguments(), (Class<?>) cls)));
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // defpackage.lq
            public void a(WildcardType wildcardType) {
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // defpackage.lq
            public void a(GenericArrayType genericArrayType) {
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // defpackage.lq
            public void a(Class<?> cls2) {
            }
        }.a(type);
        return (Type) atomicReference.get();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Type[] b(Type[] typeArr, Class<?> cls) {
        Type[] typeArr2 = new Type[typeArr.length];
        for (int i = 0; i < typeArr.length; i++) {
            typeArr2[i] = b(typeArr[i], cls);
        }
        return typeArr2;
    }

    @Deprecated
    public final boolean isAssignableFrom(TypeToken<?> typeToken) {
        return isSupertypeOf(typeToken);
    }

    @Deprecated
    public final boolean isAssignableFrom(Type type) {
        return isSupertypeOf(type);
    }

    public final boolean isSupertypeOf(TypeToken<?> typeToken) {
        return typeToken.isSubtypeOf(getType());
    }

    public final boolean isSupertypeOf(Type type) {
        return of(type).isSubtypeOf(getType());
    }

    public final boolean isSubtypeOf(TypeToken<?> typeToken) {
        return isSubtypeOf(typeToken.getType());
    }

    public final boolean isSubtypeOf(Type type) {
        Preconditions.checkNotNull(type);
        if (type instanceof WildcardType) {
            return d(((WildcardType) type).getLowerBounds()).b(this.a);
        }
        if (this.a instanceof WildcardType) {
            return d(((WildcardType) this.a).getUpperBounds()).a(type);
        }
        if (this.a instanceof TypeVariable) {
            return this.a.equals(type) || d(((TypeVariable) this.a).getBounds()).a(type);
        }
        if (this.a instanceof GenericArrayType) {
            return of(type).b((GenericArrayType) this.a);
        }
        if (type instanceof Class) {
            return b((Class<?>) type);
        }
        if (type instanceof ParameterizedType) {
            return a((ParameterizedType) type);
        }
        if (type instanceof GenericArrayType) {
            return a((GenericArrayType) type);
        }
        return false;
    }

    public final boolean isArray() {
        return getComponentType() != null;
    }

    public final boolean isPrimitive() {
        return (this.a instanceof Class) && ((Class) this.a).isPrimitive();
    }

    public final TypeToken<T> wrap() {
        if (isPrimitive()) {
            return of(Primitives.wrap((Class) this.a));
        }
        return this;
    }

    private boolean e() {
        return Primitives.allWrapperTypes().contains(this.a);
    }

    public final TypeToken<T> unwrap() {
        if (e()) {
            return of(Primitives.unwrap((Class) this.a));
        }
        return this;
    }

    @Nullable
    public final TypeToken<?> getComponentType() {
        Type typeE = lr.e(this.a);
        if (typeE == null) {
            return null;
        }
        return of(typeE);
    }

    public final Invokable<T, Object> method(Method method) {
        Preconditions.checkArgument(b(method.getDeclaringClass()), "%s not declared by %s", method, this);
        return new Invokable.b<T>(method) { // from class: com.google.common.reflect.TypeToken.2
            @Override // com.google.common.reflect.Invokable.b, com.google.common.reflect.Invokable
            Type d() {
                return TypeToken.this.resolveType(super.d()).getType();
            }

            @Override // com.google.common.reflect.Invokable.b, com.google.common.reflect.Invokable
            Type[] a() {
                return TypeToken.this.a(super.a());
            }

            @Override // com.google.common.reflect.Invokable.b, com.google.common.reflect.Invokable
            Type[] b() {
                return TypeToken.this.a(super.b());
            }

            @Override // com.google.common.reflect.Invokable, defpackage.lo
            public TypeToken<T> getOwnerType() {
                return TypeToken.this;
            }

            @Override // com.google.common.reflect.Invokable, defpackage.lo
            public String toString() {
                String strValueOf = String.valueOf(getOwnerType());
                String string = super.toString();
                return new StringBuilder(String.valueOf(strValueOf).length() + 1 + String.valueOf(string).length()).append(strValueOf).append(".").append(string).toString();
            }
        };
    }

    public final Invokable<T, T> constructor(Constructor<?> constructor) {
        Preconditions.checkArgument(constructor.getDeclaringClass() == getRawType(), "%s not declared by %s", constructor, getRawType());
        return new Invokable.a<T>(constructor) { // from class: com.google.common.reflect.TypeToken.3
            @Override // com.google.common.reflect.Invokable.a, com.google.common.reflect.Invokable
            Type d() {
                return TypeToken.this.resolveType(super.d()).getType();
            }

            @Override // com.google.common.reflect.Invokable.a, com.google.common.reflect.Invokable
            Type[] a() {
                return TypeToken.this.a(super.a());
            }

            @Override // com.google.common.reflect.Invokable.a, com.google.common.reflect.Invokable
            Type[] b() {
                return TypeToken.this.a(super.b());
            }

            @Override // com.google.common.reflect.Invokable, defpackage.lo
            public TypeToken<T> getOwnerType() {
                return TypeToken.this;
            }

            @Override // com.google.common.reflect.Invokable, defpackage.lo
            public String toString() {
                String strValueOf = String.valueOf(getOwnerType());
                String strJoin = Joiner.on(", ").join(a());
                return new StringBuilder(String.valueOf(strValueOf).length() + 2 + String.valueOf(strJoin).length()).append(strValueOf).append("(").append(strJoin).append(")").toString();
            }
        };
    }

    public class TypeSet extends ForwardingSet<TypeToken<? super T>> implements Serializable {
        private static final long serialVersionUID = 0;
        private transient ImmutableSet<TypeToken<? super T>> a;

        TypeSet() {
        }

        public TypeToken<T>.TypeSet interfaces() {
            return new c(this);
        }

        public TypeToken<T>.TypeSet classes() {
            return new b();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public Set<TypeToken<? super T>> delegate() {
            ImmutableSet<TypeToken<? super T>> immutableSet = this.a;
            if (immutableSet == null) {
                ImmutableSet<TypeToken<? super T>> set = FluentIterable.from(e.a.a(TypeToken.this)).filter(f.IGNORE_TYPE_VARIABLE_OR_WILDCARD).toSet();
                this.a = set;
                return set;
            }
            return immutableSet;
        }

        public Set<Class<? super T>> rawTypes() {
            return ImmutableSet.copyOf((Collection) e.b.a(TypeToken.this.f()));
        }
    }

    final class c extends TypeToken<T>.TypeSet {
        private static final long serialVersionUID = 0;
        private final transient TypeToken<T>.TypeSet c;
        private transient ImmutableSet<TypeToken<? super T>> d;

        c(TypeToken<T>.TypeSet typeSet) {
            super();
            this.c = typeSet;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.reflect.TypeToken.TypeSet, com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public Set<TypeToken<? super T>> delegate() {
            ImmutableSet<TypeToken<? super T>> immutableSet = this.d;
            if (immutableSet == null) {
                ImmutableSet<TypeToken<? super T>> set = FluentIterable.from(this.c).filter(f.INTERFACE_ONLY).toSet();
                this.d = set;
                return set;
            }
            return immutableSet;
        }

        @Override // com.google.common.reflect.TypeToken.TypeSet
        public TypeToken<T>.TypeSet interfaces() {
            return this;
        }

        @Override // com.google.common.reflect.TypeToken.TypeSet
        public Set<Class<? super T>> rawTypes() {
            return FluentIterable.from(e.b.a(TypeToken.this.f())).filter(new Predicate<Class<?>>() { // from class: com.google.common.reflect.TypeToken.c.1
                @Override // com.google.common.base.Predicate
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public boolean apply(Class<?> cls) {
                    return cls.isInterface();
                }
            }).toSet();
        }

        @Override // com.google.common.reflect.TypeToken.TypeSet
        public TypeToken<T>.TypeSet classes() {
            throw new UnsupportedOperationException("interfaces().classes() not supported.");
        }

        private Object readResolve() {
            return TypeToken.this.getTypes().interfaces();
        }
    }

    final class b extends TypeToken<T>.TypeSet {
        private static final long serialVersionUID = 0;
        private transient ImmutableSet<TypeToken<? super T>> c;

        private b() {
            super();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.reflect.TypeToken.TypeSet, com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public Set<TypeToken<? super T>> delegate() {
            ImmutableSet<TypeToken<? super T>> immutableSet = this.c;
            if (immutableSet == null) {
                ImmutableSet<TypeToken<? super T>> set = FluentIterable.from(e.a.a().a(TypeToken.this)).filter(f.IGNORE_TYPE_VARIABLE_OR_WILDCARD).toSet();
                this.c = set;
                return set;
            }
            return immutableSet;
        }

        @Override // com.google.common.reflect.TypeToken.TypeSet
        public TypeToken<T>.TypeSet classes() {
            return this;
        }

        @Override // com.google.common.reflect.TypeToken.TypeSet
        public Set<Class<? super T>> rawTypes() {
            return ImmutableSet.copyOf((Collection) e.b.a().a(TypeToken.this.f()));
        }

        @Override // com.google.common.reflect.TypeToken.TypeSet
        public TypeToken<T>.TypeSet interfaces() {
            throw new UnsupportedOperationException("classes().interfaces() not supported.");
        }

        private Object readResolve() {
            return TypeToken.this.getTypes().classes();
        }
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof TypeToken) {
            return this.a.equals(((TypeToken) obj).a);
        }
        return false;
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public String toString() {
        return lr.d(this.a);
    }

    protected Object writeReplace() {
        return of(new TypeResolver().resolveType(this.a));
    }

    final TypeToken<T> d() {
        new lq() { // from class: com.google.common.reflect.TypeToken.4
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // defpackage.lq
            public void a(TypeVariable<?> typeVariable) {
                String strValueOf = String.valueOf(TypeToken.this.a);
                throw new IllegalArgumentException(new StringBuilder(String.valueOf(strValueOf).length() + 58).append(strValueOf).append("contains a type variable and is not safe for the operation").toString());
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // defpackage.lq
            public void a(WildcardType wildcardType) {
                a(wildcardType.getLowerBounds());
                a(wildcardType.getUpperBounds());
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // defpackage.lq
            public void a(ParameterizedType parameterizedType) {
                a(parameterizedType.getActualTypeArguments());
                a(parameterizedType.getOwnerType());
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // defpackage.lq
            public void a(GenericArrayType genericArrayType) {
                a(genericArrayType.getGenericComponentType());
            }
        }.a(this.a);
        return this;
    }

    private boolean b(Class<?> cls) {
        UnmodifiableIterator<Class<? super T>> it = f().iterator();
        while (it.hasNext()) {
            if (cls.isAssignableFrom(it.next())) {
                return true;
            }
        }
        return false;
    }

    private boolean a(ParameterizedType parameterizedType) {
        Class<? super Object> rawType = of(parameterizedType).getRawType();
        if (!b((Class<?>) rawType)) {
            return false;
        }
        TypeVariable<Class<? super Object>>[] typeParameters = rawType.getTypeParameters();
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        for (int i = 0; i < typeParameters.length; i++) {
            if (!resolveType(typeParameters[i]).c(actualTypeArguments[i])) {
                return false;
            }
        }
        return true;
    }

    private boolean a(GenericArrayType genericArrayType) {
        if (this.a instanceof Class) {
            Class cls = (Class) this.a;
            if (cls.isArray()) {
                return of((Class) cls.getComponentType()).isSubtypeOf(genericArrayType.getGenericComponentType());
            }
            return false;
        }
        if (this.a instanceof GenericArrayType) {
            return of(((GenericArrayType) this.a).getGenericComponentType()).isSubtypeOf(genericArrayType.getGenericComponentType());
        }
        return false;
    }

    private boolean b(GenericArrayType genericArrayType) {
        if (this.a instanceof Class) {
            Class cls = (Class) this.a;
            if (!cls.isArray()) {
                return cls.isAssignableFrom(Object[].class);
            }
            return of(genericArrayType.getGenericComponentType()).isSubtypeOf(cls.getComponentType());
        }
        if (this.a instanceof GenericArrayType) {
            return of(genericArrayType.getGenericComponentType()).isSubtypeOf(((GenericArrayType) this.a).getGenericComponentType());
        }
        return false;
    }

    private boolean c(Type type) {
        if (this.a.equals(type)) {
            return true;
        }
        if (type instanceof WildcardType) {
            return c(((WildcardType) type).getUpperBounds()).b(this.a) && c(((WildcardType) type).getLowerBounds()).a(this.a);
        }
        return false;
    }

    private static a c(Type[] typeArr) {
        return new a(typeArr, false);
    }

    private static a d(Type[] typeArr) {
        return new a(typeArr, true);
    }

    static class a {
        private final Type[] a;
        private final boolean b;

        a(Type[] typeArr, boolean z) {
            this.a = typeArr;
            this.b = z;
        }

        boolean a(Type type) {
            for (Type type2 : this.a) {
                if (TypeToken.of(type2).isSubtypeOf(type) == this.b) {
                    return this.b;
                }
            }
            return !this.b;
        }

        boolean b(Type type) {
            TypeToken<?> typeTokenOf = TypeToken.of(type);
            for (Type type2 : this.a) {
                if (typeTokenOf.isSubtypeOf(type2) == this.b) {
                    return this.b;
                }
            }
            return !this.b;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ImmutableSet<Class<? super T>> f() {
        final ImmutableSet.Builder builder = ImmutableSet.builder();
        new lq() { // from class: com.google.common.reflect.TypeToken.5
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

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // defpackage.lq
            public void a(ParameterizedType parameterizedType) {
                builder.add((Class) parameterizedType.getRawType());
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // defpackage.lq
            public void a(Class<?> cls) {
                builder.add(cls);
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // defpackage.lq
            public void a(GenericArrayType genericArrayType) {
                builder.add(lr.a((Class<?>) TypeToken.of(genericArrayType.getGenericComponentType()).getRawType()));
            }
        }.a(this.a);
        return builder.build();
    }

    @VisibleForTesting
    static <T> TypeToken<? extends T> a(Class<T> cls) {
        if (cls.isArray()) {
            return (TypeToken<? extends T>) of(lr.a(a((Class) cls.getComponentType()).a));
        }
        TypeVariable<Class<T>>[] typeParameters = cls.getTypeParameters();
        Type type = cls.isMemberClass() ? a((Class) cls.getEnclosingClass()).a : null;
        if (typeParameters.length > 0 || type != cls.getEnclosingClass()) {
            return (TypeToken<? extends T>) of(lr.a(type, (Class<?>) cls, (Type[]) typeParameters));
        }
        return of((Class) cls);
    }

    private TypeToken<? super T> a(Class<? super T> cls, Type[] typeArr) {
        for (Type type : typeArr) {
            TypeToken<?> typeTokenOf = of(type);
            if (typeTokenOf.isSubtypeOf(cls)) {
                return (TypeToken<? super T>) typeTokenOf.getSupertype(cls);
            }
        }
        String strValueOf = String.valueOf(cls);
        String strValueOf2 = String.valueOf(this);
        throw new IllegalArgumentException(new StringBuilder(String.valueOf(strValueOf).length() + 23 + String.valueOf(strValueOf2).length()).append(strValueOf).append(" isn't a super type of ").append(strValueOf2).toString());
    }

    private TypeToken<? extends T> b(Class<?> cls, Type[] typeArr) {
        if (0 < typeArr.length) {
            return (TypeToken<? extends T>) of(typeArr[0]).getSubtype(cls);
        }
        String strValueOf = String.valueOf(cls);
        String strValueOf2 = String.valueOf(this);
        throw new IllegalArgumentException(new StringBuilder(String.valueOf(strValueOf).length() + 21 + String.valueOf(strValueOf2).length()).append(strValueOf).append(" isn't a subclass of ").append(strValueOf2).toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    private TypeToken<? super T> c(Class<? super T> cls) {
        return (TypeToken<? super T>) of(d(((TypeToken) Preconditions.checkNotNull(getComponentType(), "%s isn't a super type of %s", cls, this)).getSupertype(cls.getComponentType()).a));
    }

    private TypeToken<? extends T> d(Class<?> cls) {
        return (TypeToken<? extends T>) of(d(getComponentType().getSubtype(cls.getComponentType()).a));
    }

    private Type e(Class<?> cls) {
        if (!(this.a instanceof Class)) {
            TypeToken typeTokenA = a((Class) cls);
            return new TypeResolver().where(typeTokenA.getSupertype(getRawType()).a, this.a).resolveType(typeTokenA.a);
        }
        return cls;
    }

    private static Type d(Type type) {
        return lr.c.JAVA7.a(type);
    }

    static final class d<T> extends TypeToken<T> {
        private static final long serialVersionUID = 0;

        d(Type type) {
            super(type);
        }
    }

    static abstract class e<K> {
        static final e<TypeToken<?>> a = new e<TypeToken<?>>() { // from class: com.google.common.reflect.TypeToken.e.1
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.reflect.TypeToken.e
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Class<?> b(TypeToken<?> typeToken) {
                return typeToken.getRawType();
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.reflect.TypeToken.e
            /* JADX INFO: renamed from: b, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
            public Iterable<? extends TypeToken<?>> c(TypeToken<?> typeToken) {
                return typeToken.c();
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.reflect.TypeToken.e
            @Nullable
            /* JADX INFO: renamed from: c, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
            public TypeToken<?> d(TypeToken<?> typeToken) {
                return typeToken.b();
            }
        };
        static final e<Class<?>> b = new e<Class<?>>() { // from class: com.google.common.reflect.TypeToken.e.2
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.reflect.TypeToken.e
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Class<?> b(Class<?> cls) {
                return cls;
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.reflect.TypeToken.e
            /* JADX INFO: renamed from: b, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
            public Iterable<? extends Class<?>> c(Class<?> cls) {
                return Arrays.asList(cls.getInterfaces());
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.reflect.TypeToken.e
            @Nullable
            /* JADX INFO: renamed from: c, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
            public Class<?> d(Class<?> cls) {
                return cls.getSuperclass();
            }
        };

        abstract Class<?> b(K k);

        abstract Iterable<? extends K> c(K k);

        @Nullable
        abstract K d(K k);

        private e() {
        }

        final e<K> a() {
            return new a<K>(this) { // from class: com.google.common.reflect.TypeToken.e.3
                @Override // com.google.common.reflect.TypeToken.e.a, com.google.common.reflect.TypeToken.e
                Iterable<? extends K> c(K k) {
                    return ImmutableSet.of();
                }

                @Override // com.google.common.reflect.TypeToken.e
                ImmutableList<K> a(Iterable<? extends K> iterable) {
                    ImmutableList.Builder builder = ImmutableList.builder();
                    for (K k : iterable) {
                        if (!b(k).isInterface()) {
                            builder.add(k);
                        }
                    }
                    return super.a((Iterable) builder.build());
                }
            };
        }

        final ImmutableList<K> a(K k) {
            return a((Iterable) ImmutableList.of(k));
        }

        ImmutableList<K> a(Iterable<? extends K> iterable) {
            HashMap mapNewHashMap = Maps.newHashMap();
            Iterator<? extends K> it = iterable.iterator();
            while (it.hasNext()) {
                a(it.next(), mapNewHashMap);
            }
            return a(mapNewHashMap, Ordering.natural().reverse());
        }

        private int a(K k, Map<? super K, Integer> map) {
            Integer num = map.get(this);
            if (num != null) {
                return num.intValue();
            }
            int iMax = b(k).isInterface() ? 1 : 0;
            Iterator<? extends K> it = c(k).iterator();
            while (it.hasNext()) {
                iMax = Math.max(iMax, a(it.next(), map));
            }
            K kD = d(k);
            if (kD != null) {
                iMax = Math.max(iMax, a(kD, map));
            }
            map.put(k, Integer.valueOf(iMax + 1));
            return iMax + 1;
        }

        private static <K, V> ImmutableList<K> a(final Map<K, V> map, final Comparator<? super V> comparator) {
            return (ImmutableList<K>) new Ordering<K>() { // from class: com.google.common.reflect.TypeToken.e.4
                /* JADX WARN: Multi-variable type inference failed */
                @Override // com.google.common.collect.Ordering, java.util.Comparator
                public int compare(K k, K k2) {
                    return comparator.compare(map.get(k), map.get(k2));
                }
            }.immutableSortedCopy(map.keySet());
        }

        static class a<K> extends e<K> {
            private final e<K> c;

            a(e<K> eVar) {
                super();
                this.c = eVar;
            }

            @Override // com.google.common.reflect.TypeToken.e
            Class<?> b(K k) {
                return this.c.b(k);
            }

            @Override // com.google.common.reflect.TypeToken.e
            Iterable<? extends K> c(K k) {
                return this.c.c(k);
            }

            @Override // com.google.common.reflect.TypeToken.e
            K d(K k) {
                return this.c.d(k);
            }
        }
    }
}
