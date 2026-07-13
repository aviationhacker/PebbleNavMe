package defpackage;

import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Function;
import com.google.common.base.Joiner;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicates;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Iterables;
import com.google.common.collect.UnmodifiableIterator;
import com.google.common.reflect.Reflection;
import java.io.Serializable;
import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Proxy;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.security.AccessControlException;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReference;
import javax.annotation.Nullable;
import org.apache.commons.lang3.ClassUtils;

/* JADX INFO: loaded from: classes.dex */
public final class lr {
    private static final Function<Type, String> a = new Function<Type, String>() { // from class: lr.1
        @Override // com.google.common.base.Function
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public String apply(Type type) {
            return c.d.c(type);
        }
    };
    private static final Joiner b = Joiner.on(", ").useForNull("null");

    public static Type a(Type type) {
        if (type instanceof WildcardType) {
            WildcardType wildcardType = (WildcardType) type;
            Type[] lowerBounds = wildcardType.getLowerBounds();
            Preconditions.checkArgument(lowerBounds.length <= 1, "Wildcard cannot have more than one lower bounds.");
            if (lowerBounds.length == 1) {
                return c(a(lowerBounds[0]));
            }
            Type[] upperBounds = wildcardType.getUpperBounds();
            Preconditions.checkArgument(upperBounds.length == 1, "Wildcard should have only one upper bound.");
            return b(a(upperBounds[0]));
        }
        return c.d.a(type);
    }

    public static ParameterizedType a(@Nullable Type type, Class<?> cls, Type... typeArr) {
        if (type == null) {
            return a(cls, typeArr);
        }
        Preconditions.checkNotNull(typeArr);
        Preconditions.checkArgument(cls.getEnclosingClass() != null, "Owner type for unenclosed %s", cls);
        return new e(type, cls, typeArr);
    }

    public static ParameterizedType a(Class<?> cls, Type... typeArr) {
        return new e(a.c.a(cls), cls, typeArr);
    }

    enum a {
        OWNED_BY_ENCLOSING_CLASS { // from class: lr.a.1
            @Override // lr.a
            @Nullable
            Class<?> a(Class<?> cls) {
                return cls.getEnclosingClass();
            }
        },
        LOCAL_CLASS_HAS_NO_OWNER { // from class: lr.a.2
            @Override // lr.a
            @Nullable
            Class<?> a(Class<?> cls) {
                if (cls.isLocalClass()) {
                    return null;
                }
                return cls.getEnclosingClass();
            }
        };

        static final a c = a();

        @Nullable
        abstract Class<?> a(Class<?> cls);

        /* JADX INFO: renamed from: lr$a$a, reason: collision with other inner class name */
        class C0044a<T> {
            C0044a() {
            }
        }

        private static a a() {
            ParameterizedType parameterizedType = (ParameterizedType) new C0044a<String>() { // from class: lr.a.3
            }.getClass().getGenericSuperclass();
            for (a aVar : values()) {
                if (aVar.a(C0044a.class) == parameterizedType.getOwnerType()) {
                    return aVar;
                }
            }
            throw new AssertionError();
        }
    }

    public static <D extends GenericDeclaration> TypeVariable<D> a(D d2, String str, Type... typeArr) {
        if (typeArr.length == 0) {
            typeArr = new Type[]{Object.class};
        }
        return b(d2, str, typeArr);
    }

    @VisibleForTesting
    public static WildcardType b(Type type) {
        return new h(new Type[0], new Type[]{type});
    }

    @VisibleForTesting
    static WildcardType c(Type type) {
        return new h(new Type[]{type}, new Type[]{Object.class});
    }

    public static String d(Type type) {
        return type instanceof Class ? ((Class) type).getName() : type.toString();
    }

    @Nullable
    public static Type e(Type type) {
        Preconditions.checkNotNull(type);
        final AtomicReference atomicReference = new AtomicReference();
        new lq() { // from class: lr.2
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // defpackage.lq
            public void a(TypeVariable<?> typeVariable) {
                atomicReference.set(lr.b(typeVariable.getBounds()));
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // defpackage.lq
            public void a(WildcardType wildcardType) {
                atomicReference.set(lr.b(wildcardType.getUpperBounds()));
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // defpackage.lq
            public void a(GenericArrayType genericArrayType) {
                atomicReference.set(genericArrayType.getGenericComponentType());
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // defpackage.lq
            public void a(Class<?> cls) {
                atomicReference.set(cls.getComponentType());
            }
        }.a(type);
        return (Type) atomicReference.get();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public static Type b(Type[] typeArr) {
        for (Type type : typeArr) {
            Type typeE = e(type);
            if (typeE != null) {
                if (typeE instanceof Class) {
                    Class cls = (Class) typeE;
                    if (cls.isPrimitive()) {
                        return cls;
                    }
                }
                return b(typeE);
            }
        }
        return null;
    }

    static final class b implements Serializable, GenericArrayType {
        private static final long serialVersionUID = 0;
        private final Type a;

        b(Type type) {
            this.a = c.d.b(type);
        }

        @Override // java.lang.reflect.GenericArrayType
        public Type getGenericComponentType() {
            return this.a;
        }

        public String toString() {
            return String.valueOf(lr.d(this.a)).concat("[]");
        }

        public int hashCode() {
            return this.a.hashCode();
        }

        public boolean equals(Object obj) {
            if (obj instanceof GenericArrayType) {
                return Objects.equal(getGenericComponentType(), ((GenericArrayType) obj).getGenericComponentType());
            }
            return false;
        }
    }

    static final class e implements Serializable, ParameterizedType {
        private static final long serialVersionUID = 0;
        private final Type a;
        private final ImmutableList<Type> b;
        private final Class<?> c;

        e(@Nullable Type type, Class<?> cls, Type[] typeArr) {
            Preconditions.checkNotNull(cls);
            Preconditions.checkArgument(typeArr.length == cls.getTypeParameters().length);
            lr.b(typeArr, "type parameter");
            this.a = type;
            this.c = cls;
            this.b = c.d.a(typeArr);
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type[] getActualTypeArguments() {
            return lr.b((Collection<Type>) this.b);
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type getRawType() {
            return this.c;
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type getOwnerType() {
            return this.a;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            if (this.a != null) {
                sb.append(c.d.c(this.a)).append(ClassUtils.PACKAGE_SEPARATOR_CHAR);
            }
            sb.append(this.c.getName()).append('<').append(lr.b.join(Iterables.transform(this.b, lr.a))).append('>');
            return sb.toString();
        }

        public int hashCode() {
            return ((this.a == null ? 0 : this.a.hashCode()) ^ this.b.hashCode()) ^ this.c.hashCode();
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof ParameterizedType)) {
                return false;
            }
            ParameterizedType parameterizedType = (ParameterizedType) obj;
            return getRawType().equals(parameterizedType.getRawType()) && Objects.equal(getOwnerType(), parameterizedType.getOwnerType()) && Arrays.equals(getActualTypeArguments(), parameterizedType.getActualTypeArguments());
        }
    }

    private static <D extends GenericDeclaration> TypeVariable<D> b(D d2, String str, Type[] typeArr) {
        return (TypeVariable) Reflection.newProxy(TypeVariable.class, new g(new f(d2, str, typeArr)));
    }

    static final class g implements InvocationHandler {
        private static final ImmutableMap<String, Method> a;
        private final f<?> b;

        static {
            ImmutableMap.Builder builder = ImmutableMap.builder();
            for (Method method : f.class.getMethods()) {
                if (method.getDeclaringClass().equals(f.class)) {
                    try {
                        method.setAccessible(true);
                    } catch (AccessControlException e) {
                    }
                    builder.put(method.getName(), method);
                }
            }
            a = builder.build();
        }

        g(f<?> fVar) {
            this.b = fVar;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            String name = method.getName();
            Method method2 = a.get(name);
            if (method2 == null) {
                throw new UnsupportedOperationException(name);
            }
            try {
                return method2.invoke(this.b, objArr);
            } catch (InvocationTargetException e) {
                throw e.getCause();
            }
        }
    }

    static final class f<D extends GenericDeclaration> {
        private final D a;
        private final String b;
        private final ImmutableList<Type> c;

        f(D d, String str, Type[] typeArr) {
            lr.b(typeArr, "bound for type variable");
            this.a = (D) Preconditions.checkNotNull(d);
            this.b = (String) Preconditions.checkNotNull(str);
            this.c = ImmutableList.copyOf(typeArr);
        }

        public D a() {
            return this.a;
        }

        public String b() {
            return this.b;
        }

        public String toString() {
            return this.b;
        }

        public int hashCode() {
            return this.a.hashCode() ^ this.b.hashCode();
        }

        public boolean equals(Object obj) {
            if (d.a) {
                if (obj == null || !Proxy.isProxyClass(obj.getClass()) || !(Proxy.getInvocationHandler(obj) instanceof g)) {
                    return false;
                }
                f fVar = ((g) Proxy.getInvocationHandler(obj)).b;
                return this.b.equals(fVar.b()) && this.a.equals(fVar.a()) && this.c.equals(fVar.c);
            }
            if (!(obj instanceof TypeVariable)) {
                return false;
            }
            TypeVariable typeVariable = (TypeVariable) obj;
            return this.b.equals(typeVariable.getName()) && this.a.equals(typeVariable.getGenericDeclaration());
        }
    }

    public static final class h implements Serializable, WildcardType {
        private static final long serialVersionUID = 0;
        private final ImmutableList<Type> a;
        private final ImmutableList<Type> b;

        public h(Type[] typeArr, Type[] typeArr2) {
            lr.b(typeArr, "lower bound for wildcard");
            lr.b(typeArr2, "upper bound for wildcard");
            this.a = c.d.a(typeArr);
            this.b = c.d.a(typeArr2);
        }

        @Override // java.lang.reflect.WildcardType
        public Type[] getLowerBounds() {
            return lr.b((Collection<Type>) this.a);
        }

        @Override // java.lang.reflect.WildcardType
        public Type[] getUpperBounds() {
            return lr.b((Collection<Type>) this.b);
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof WildcardType)) {
                return false;
            }
            WildcardType wildcardType = (WildcardType) obj;
            return this.a.equals(Arrays.asList(wildcardType.getLowerBounds())) && this.b.equals(Arrays.asList(wildcardType.getUpperBounds()));
        }

        public int hashCode() {
            return this.a.hashCode() ^ this.b.hashCode();
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("?");
            UnmodifiableIterator<Type> it = this.a.iterator();
            while (it.hasNext()) {
                sb.append(" super ").append(c.d.c(it.next()));
            }
            Iterator it2 = lr.b((Iterable<Type>) this.b).iterator();
            while (it2.hasNext()) {
                sb.append(" extends ").append(c.d.c((Type) it2.next()));
            }
            return sb.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Type[] b(Collection<Type> collection) {
        return (Type[]) collection.toArray(new Type[collection.size()]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Iterable<Type> b(Iterable<Type> iterable) {
        return Iterables.filter(iterable, Predicates.not(Predicates.equalTo(Object.class)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Type[] typeArr, String str) {
        for (Type type : typeArr) {
            if (type instanceof Class) {
                Class cls = (Class) type;
                Preconditions.checkArgument(!cls.isPrimitive(), "Primitive type '%s' used as %s", cls, str);
            }
        }
    }

    public static Class<?> a(Class<?> cls) {
        return Array.newInstance(cls, 0).getClass();
    }

    public enum c {
        JAVA6 { // from class: lr.c.1
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // lr.c
            /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
            public GenericArrayType a(Type type) {
                return new b(type);
            }

            @Override // lr.c
            Type b(Type type) {
                Preconditions.checkNotNull(type);
                if (type instanceof Class) {
                    Class cls = (Class) type;
                    if (cls.isArray()) {
                        return new b(cls.getComponentType());
                    }
                    return type;
                }
                return type;
            }
        },
        JAVA7 { // from class: lr.c.2
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // lr.c
            public Type a(Type type) {
                return type instanceof Class ? lr.a((Class<?>) type) : new b(type);
            }

            @Override // lr.c
            Type b(Type type) {
                return (Type) Preconditions.checkNotNull(type);
            }
        },
        JAVA8 { // from class: lr.c.3
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // lr.c
            public Type a(Type type) {
                return JAVA7.a(type);
            }

            @Override // lr.c
            Type b(Type type) {
                return JAVA7.b(type);
            }

            @Override // lr.c
            String c(Type type) {
                try {
                    return (String) Type.class.getMethod("getTypeName", new Class[0]).invoke(type, new Object[0]);
                } catch (IllegalAccessException e) {
                    throw new RuntimeException(e);
                } catch (NoSuchMethodException e2) {
                    throw new AssertionError("Type.getTypeName should be available in Java 8");
                } catch (InvocationTargetException e3) {
                    throw new RuntimeException(e3);
                }
            }
        };

        static final c d;

        public abstract Type a(Type type);

        abstract Type b(Type type);

        static {
            if (AnnotatedElement.class.isAssignableFrom(TypeVariable.class)) {
                d = JAVA8;
            } else if (new lp<int[]>() { // from class: lr.c.4
            }.a() instanceof Class) {
                d = JAVA7;
            } else {
                d = JAVA6;
            }
        }

        String c(Type type) {
            return lr.d(type);
        }

        final ImmutableList<Type> a(Type[] typeArr) {
            ImmutableList.Builder builder = ImmutableList.builder();
            for (Type type : typeArr) {
                builder.add(b(type));
            }
            return builder.build();
        }
    }

    public static final class d<X> {
        public static final boolean a;

        d() {
        }

        static {
            a = d.class.getTypeParameters()[0].equals(lr.a(d.class, "X", new Type[0])) ? false : true;
        }
    }
}
