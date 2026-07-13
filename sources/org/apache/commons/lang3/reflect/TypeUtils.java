package org.apache.commons.lang3.reflect;

import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import org.apache.commons.lang3.ClassUtils;

/* JADX INFO: loaded from: classes.dex */
public class TypeUtils {
    public static boolean isAssignable(Type type, Type type2) {
        return a(type, type2, (Map<TypeVariable<?>, Type>) null);
    }

    private static boolean a(Type type, Type type2, Map<TypeVariable<?>, Type> map) {
        if (type2 == null || (type2 instanceof Class)) {
            return a(type, (Class<?>) type2);
        }
        if (type2 instanceof ParameterizedType) {
            return a(type, (ParameterizedType) type2, map);
        }
        if (type2 instanceof GenericArrayType) {
            return a(type, (GenericArrayType) type2, map);
        }
        if (type2 instanceof WildcardType) {
            return a(type, (WildcardType) type2, map);
        }
        if (type2 instanceof TypeVariable) {
            return a(type, (TypeVariable<?>) type2, map);
        }
        throw new IllegalStateException("found an unhandled type: " + type2);
    }

    private static boolean a(Type type, Class<?> cls) {
        if (type == null) {
            return cls == null || !cls.isPrimitive();
        }
        if (cls == null) {
            return false;
        }
        if (cls.equals(type)) {
            return true;
        }
        if (type instanceof Class) {
            return ClassUtils.isAssignable((Class<?>) type, cls);
        }
        if (type instanceof ParameterizedType) {
            return a((Type) a((ParameterizedType) type), cls);
        }
        if (type instanceof TypeVariable) {
            for (Type type2 : ((TypeVariable) type).getBounds()) {
                if (a(type2, cls)) {
                    return true;
                }
            }
            return false;
        }
        if (type instanceof GenericArrayType) {
            return cls.equals(Object.class) || (cls.isArray() && a(((GenericArrayType) type).getGenericComponentType(), cls.getComponentType()));
        }
        if (type instanceof WildcardType) {
            return false;
        }
        throw new IllegalStateException("found an unhandled type: " + type);
    }

    private static boolean a(Type type, ParameterizedType parameterizedType, Map<TypeVariable<?>, Type> map) {
        if (type == null) {
            return true;
        }
        if (parameterizedType == null) {
            return false;
        }
        if (parameterizedType.equals(type)) {
            return true;
        }
        Class<?> clsA = a(parameterizedType);
        Map<TypeVariable<?>, Type> mapA = a(type, clsA, (Map<TypeVariable<?>, Type>) null);
        if (mapA == null) {
            return false;
        }
        if (mapA.isEmpty()) {
            return true;
        }
        for (Map.Entry<TypeVariable<?>, Type> entry : a(parameterizedType, clsA, map).entrySet()) {
            Type value = entry.getValue();
            Type type2 = mapA.get(entry.getKey());
            if (type2 != null && !value.equals(type2) && (!(value instanceof WildcardType) || !a(type2, value, map))) {
                return false;
            }
        }
        return true;
    }

    private static boolean a(Type type, GenericArrayType genericArrayType, Map<TypeVariable<?>, Type> map) {
        if (type == null) {
            return true;
        }
        if (genericArrayType == null) {
            return false;
        }
        if (genericArrayType.equals(type)) {
            return true;
        }
        Type genericComponentType = genericArrayType.getGenericComponentType();
        if (type instanceof Class) {
            Class cls = (Class) type;
            return cls.isArray() && a(cls.getComponentType(), genericComponentType, map);
        }
        if (type instanceof GenericArrayType) {
            return a(((GenericArrayType) type).getGenericComponentType(), genericComponentType, map);
        }
        if (type instanceof WildcardType) {
            for (Type type2 : getImplicitUpperBounds((WildcardType) type)) {
                if (isAssignable(type2, genericArrayType)) {
                    return true;
                }
            }
            return false;
        }
        if (type instanceof TypeVariable) {
            for (Type type3 : getImplicitBounds((TypeVariable) type)) {
                if (isAssignable(type3, genericArrayType)) {
                    return true;
                }
            }
            return false;
        }
        if (type instanceof ParameterizedType) {
            return false;
        }
        throw new IllegalStateException("found an unhandled type: " + type);
    }

    private static boolean a(Type type, WildcardType wildcardType, Map<TypeVariable<?>, Type> map) {
        if (type == null) {
            return true;
        }
        if (wildcardType == null) {
            return false;
        }
        if (wildcardType.equals(type)) {
            return true;
        }
        Type[] implicitUpperBounds = getImplicitUpperBounds(wildcardType);
        Type[] implicitLowerBounds = getImplicitLowerBounds(wildcardType);
        if (type instanceof WildcardType) {
            WildcardType wildcardType2 = (WildcardType) type;
            Type[] implicitUpperBounds2 = getImplicitUpperBounds(wildcardType2);
            Type[] implicitLowerBounds2 = getImplicitLowerBounds(wildcardType2);
            for (Type type2 : implicitUpperBounds) {
                Type typeA = a(type2, map);
                for (Type type3 : implicitUpperBounds2) {
                    if (!a(type3, typeA, map)) {
                        return false;
                    }
                }
            }
            for (Type type4 : implicitLowerBounds) {
                Type typeA2 = a(type4, map);
                for (Type type5 : implicitLowerBounds2) {
                    if (!a(typeA2, type5, map)) {
                        return false;
                    }
                }
            }
            return true;
        }
        for (Type type6 : implicitUpperBounds) {
            if (!a(type, a(type6, map), map)) {
                return false;
            }
        }
        for (Type type7 : implicitLowerBounds) {
            if (!a(a(type7, map), type, map)) {
                return false;
            }
        }
        return true;
    }

    private static boolean a(Type type, TypeVariable<?> typeVariable, Map<TypeVariable<?>, Type> map) {
        if (type == null) {
            return true;
        }
        if (typeVariable == null) {
            return false;
        }
        if (typeVariable.equals(type)) {
            return true;
        }
        if (type instanceof TypeVariable) {
            for (Type type2 : getImplicitBounds((TypeVariable) type)) {
                if (a(type2, typeVariable, map)) {
                    return true;
                }
            }
        }
        if ((type instanceof Class) || (type instanceof ParameterizedType) || (type instanceof GenericArrayType) || (type instanceof WildcardType)) {
            return false;
        }
        throw new IllegalStateException("found an unhandled type: " + type);
    }

    private static Type a(Type type, Map<TypeVariable<?>, Type> map) {
        if (!(type instanceof TypeVariable) || map == null) {
            return type;
        }
        Type type2 = map.get(type);
        if (type2 == null) {
            throw new IllegalArgumentException("missing assignment type for type variable " + type);
        }
        return type2;
    }

    public static Map<TypeVariable<?>, Type> getTypeArguments(ParameterizedType parameterizedType) {
        return a(parameterizedType, a(parameterizedType), (Map<TypeVariable<?>, Type>) null);
    }

    public static Map<TypeVariable<?>, Type> getTypeArguments(Type type, Class<?> cls) {
        return a(type, cls, (Map<TypeVariable<?>, Type>) null);
    }

    private static Map<TypeVariable<?>, Type> a(Type type, Class<?> cls, Map<TypeVariable<?>, Type> map) {
        int i = 0;
        if (type instanceof Class) {
            return a((Class<?>) type, cls, map);
        }
        if (type instanceof ParameterizedType) {
            return a((ParameterizedType) type, cls, map);
        }
        if (type instanceof GenericArrayType) {
            Type genericComponentType = ((GenericArrayType) type).getGenericComponentType();
            if (cls.isArray()) {
                cls = cls.getComponentType();
            }
            return a(genericComponentType, cls, map);
        }
        if (type instanceof WildcardType) {
            Type[] implicitUpperBounds = getImplicitUpperBounds((WildcardType) type);
            int length = implicitUpperBounds.length;
            while (i < length) {
                Type type2 = implicitUpperBounds[i];
                if (!a(type2, cls)) {
                    i++;
                } else {
                    return a(type2, cls, map);
                }
            }
            return null;
        }
        if (type instanceof TypeVariable) {
            Type[] implicitBounds = getImplicitBounds((TypeVariable) type);
            int length2 = implicitBounds.length;
            while (i < length2) {
                Type type3 = implicitBounds[i];
                if (!a(type3, cls)) {
                    i++;
                } else {
                    return a(type3, cls, map);
                }
            }
            return null;
        }
        throw new IllegalStateException("found an unhandled type: " + type);
    }

    private static Map<TypeVariable<?>, Type> a(ParameterizedType parameterizedType, Class<?> cls, Map<TypeVariable<?>, Type> map) {
        Map<TypeVariable<?>, Type> map2;
        Class<?> clsA = a(parameterizedType);
        if (!a((Type) clsA, cls)) {
            return null;
        }
        Type ownerType = parameterizedType.getOwnerType();
        if (ownerType instanceof ParameterizedType) {
            ParameterizedType parameterizedType2 = (ParameterizedType) ownerType;
            map2 = a(parameterizedType2, a(parameterizedType2), map);
        } else {
            map2 = map == null ? new HashMap() : new HashMap(map);
        }
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        TypeVariable<Class<?>>[] typeParameters = clsA.getTypeParameters();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= typeParameters.length) {
                break;
            }
            Type type = actualTypeArguments[i2];
            TypeVariable<Class<?>> typeVariable = typeParameters[i2];
            if (map2.containsKey(type)) {
                type = map2.get(type);
            }
            map2.put(typeVariable, type);
            i = i2 + 1;
        }
        return !cls.equals(clsA) ? a(a(clsA, cls), cls, map2) : map2;
    }

    private static Map<TypeVariable<?>, Type> a(Class<?> cls, Class<?> cls2, Map<TypeVariable<?>, Type> map) {
        if (!a((Type) cls, cls2)) {
            return null;
        }
        if (cls.isPrimitive()) {
            if (cls2.isPrimitive()) {
                return new HashMap();
            }
            cls = ClassUtils.primitiveToWrapper(cls);
        }
        HashMap map2 = map == null ? new HashMap() : new HashMap(map);
        return (cls.getTypeParameters().length > 0 || cls2.equals(cls)) ? map2 : a(a(cls, cls2), cls2, (Map<TypeVariable<?>, Type>) map2);
    }

    public static Map<TypeVariable<?>, Type> determineTypeArguments(Class<?> cls, ParameterizedType parameterizedType) {
        Class<?> clsA = a(parameterizedType);
        if (!a((Type) cls, clsA)) {
            return null;
        }
        if (cls.equals(clsA)) {
            return a(parameterizedType, clsA, (Map<TypeVariable<?>, Type>) null);
        }
        Type typeA = a(cls, clsA);
        if (typeA instanceof Class) {
            return determineTypeArguments((Class) typeA, parameterizedType);
        }
        ParameterizedType parameterizedType2 = (ParameterizedType) typeA;
        Map<TypeVariable<?>, Type> mapDetermineTypeArguments = determineTypeArguments(a(parameterizedType2), parameterizedType);
        a((Class) cls, parameterizedType2, mapDetermineTypeArguments);
        return mapDetermineTypeArguments;
    }

    private static <T> void a(Class<T> cls, ParameterizedType parameterizedType, Map<TypeVariable<?>, Type> map) {
        Type ownerType = parameterizedType.getOwnerType();
        if (ownerType instanceof ParameterizedType) {
            a((Class) cls, (ParameterizedType) ownerType, map);
        }
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        TypeVariable<Class<?>>[] typeParameters = a(parameterizedType).getTypeParameters();
        List listAsList = Arrays.asList(cls.getTypeParameters());
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < actualTypeArguments.length) {
                TypeVariable<Class<?>> typeVariable = typeParameters[i2];
                Type type = actualTypeArguments[i2];
                if (listAsList.contains(type) && map.containsKey(typeVariable)) {
                    map.put((TypeVariable) type, map.get(typeVariable));
                }
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    private static Type a(Class<?> cls, Class<?> cls2) {
        Class<?> clsA;
        if (cls2.isInterface()) {
            Type[] genericInterfaces = cls.getGenericInterfaces();
            Type type = null;
            int length = genericInterfaces.length;
            int i = 0;
            while (i < length) {
                Type type2 = genericInterfaces[i];
                if (type2 instanceof ParameterizedType) {
                    clsA = a((ParameterizedType) type2);
                } else if (type2 instanceof Class) {
                    clsA = (Class) type2;
                } else {
                    throw new IllegalStateException("Unexpected generic interface type found: " + type2);
                }
                if (!a((Type) clsA, cls2) || !isAssignable(type, clsA)) {
                    type2 = type;
                }
                i++;
                type = type2;
            }
            if (type != null) {
                return type;
            }
        }
        return cls.getGenericSuperclass();
    }

    public static boolean isInstance(Object obj, Type type) {
        if (type == null) {
            return false;
        }
        return obj == null ? ((type instanceof Class) && ((Class) type).isPrimitive()) ? false : true : a(obj.getClass(), type, (Map<TypeVariable<?>, Type>) null);
    }

    public static Type[] normalizeUpperBounds(Type[] typeArr) {
        boolean z;
        if (typeArr.length >= 2) {
            HashSet hashSet = new HashSet(typeArr.length);
            for (Type type : typeArr) {
                int length = typeArr.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        z = false;
                        break;
                    }
                    Type type2 = typeArr[i];
                    if (type == type2 || !a(type2, type, (Map<TypeVariable<?>, Type>) null)) {
                        i++;
                    } else {
                        z = true;
                        break;
                    }
                }
                if (!z) {
                    hashSet.add(type);
                }
            }
            return (Type[]) hashSet.toArray(new Type[hashSet.size()]);
        }
        return typeArr;
    }

    public static Type[] getImplicitBounds(TypeVariable<?> typeVariable) {
        Type[] bounds = typeVariable.getBounds();
        return bounds.length == 0 ? new Type[]{Object.class} : normalizeUpperBounds(bounds);
    }

    public static Type[] getImplicitUpperBounds(WildcardType wildcardType) {
        Type[] upperBounds = wildcardType.getUpperBounds();
        return upperBounds.length == 0 ? new Type[]{Object.class} : normalizeUpperBounds(upperBounds);
    }

    public static Type[] getImplicitLowerBounds(WildcardType wildcardType) {
        Type[] lowerBounds = wildcardType.getLowerBounds();
        return lowerBounds.length == 0 ? new Type[]{null} : lowerBounds;
    }

    public static boolean typesSatisfyVariables(Map<TypeVariable<?>, Type> map) {
        for (Map.Entry<TypeVariable<?>, Type> entry : map.entrySet()) {
            TypeVariable<?> key = entry.getKey();
            Type value = entry.getValue();
            Type[] implicitBounds = getImplicitBounds(key);
            for (Type type : implicitBounds) {
                if (!a(value, a(type, map), map)) {
                    return false;
                }
            }
        }
        return true;
    }

    private static Class<?> a(ParameterizedType parameterizedType) {
        Type rawType = parameterizedType.getRawType();
        if (!(rawType instanceof Class)) {
            throw new IllegalStateException("Wait... What!? Type of rawType: " + rawType);
        }
        return (Class) rawType;
    }

    public static Class<?> getRawType(Type type, Type type2) {
        Map<TypeVariable<?>, Type> typeArguments;
        Type type3;
        if (type instanceof Class) {
            return (Class) type;
        }
        if (type instanceof ParameterizedType) {
            return a((ParameterizedType) type);
        }
        if (type instanceof TypeVariable) {
            if (type2 == null) {
                return null;
            }
            GenericDeclaration genericDeclaration = ((TypeVariable) type).getGenericDeclaration();
            if ((genericDeclaration instanceof Class) && (typeArguments = getTypeArguments(type2, (Class) genericDeclaration)) != null && (type3 = typeArguments.get(type)) != null) {
                return getRawType(type3, type2);
            }
            return null;
        }
        if (type instanceof GenericArrayType) {
            return Array.newInstance(getRawType(((GenericArrayType) type).getGenericComponentType(), type2), 0).getClass();
        }
        if (type instanceof WildcardType) {
            return null;
        }
        throw new IllegalArgumentException("unknown type: " + type);
    }

    public static boolean isArrayType(Type type) {
        return (type instanceof GenericArrayType) || ((type instanceof Class) && ((Class) type).isArray());
    }

    public static Type getArrayComponentType(Type type) {
        if (type instanceof Class) {
            Class cls = (Class) type;
            if (cls.isArray()) {
                return cls.getComponentType();
            }
            return null;
        }
        if (type instanceof GenericArrayType) {
            return ((GenericArrayType) type).getGenericComponentType();
        }
        return null;
    }
}
