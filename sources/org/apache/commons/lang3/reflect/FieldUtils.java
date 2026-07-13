package org.apache.commons.lang3.reflect;

import defpackage.mm;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Modifier;
import java.util.Iterator;
import org.apache.commons.lang3.ClassUtils;

/* JADX INFO: loaded from: classes.dex */
public class FieldUtils {
    public static Field getField(Class<?> cls, String str) {
        Field field = getField(cls, str, false);
        mm.a((AccessibleObject) field);
        return field;
    }

    public static Field getField(Class<?> cls, String str, boolean z) {
        Field declaredField;
        Field field;
        if (cls == null) {
            throw new IllegalArgumentException("The class must not be null");
        }
        if (str == null) {
            throw new IllegalArgumentException("The field name must not be null");
        }
        Class<?> superclass = cls;
        while (true) {
            if (superclass != null) {
                try {
                    declaredField = superclass.getDeclaredField(str);
                } catch (NoSuchFieldException e) {
                }
                if (Modifier.isPublic(declaredField.getModifiers())) {
                    break;
                }
                if (z) {
                    declaredField.setAccessible(true);
                    break;
                }
                continue;
                superclass = superclass.getSuperclass();
            } else {
                declaredField = null;
                Iterator<Class<?>> it = ClassUtils.getAllInterfaces(cls).iterator();
                while (it.hasNext()) {
                    try {
                        field = it.next().getField(str);
                        if (declaredField != null) {
                            throw new IllegalArgumentException("Reference to field " + str + " is ambiguous relative to " + cls + "; a matching field exists on two or more implemented interfaces.");
                        }
                        continue;
                    } catch (NoSuchFieldException e2) {
                        field = declaredField;
                    }
                    declaredField = field;
                }
            }
        }
        return declaredField;
    }

    public static Field getDeclaredField(Class<?> cls, String str) {
        return getDeclaredField(cls, str, false);
    }

    public static Field getDeclaredField(Class<?> cls, String str, boolean z) {
        if (cls == null) {
            throw new IllegalArgumentException("The class must not be null");
        }
        if (str == null) {
            throw new IllegalArgumentException("The field name must not be null");
        }
        try {
            Field declaredField = cls.getDeclaredField(str);
            if (!mm.a((Member) declaredField)) {
                if (!z) {
                    return null;
                }
                declaredField.setAccessible(true);
            }
            return declaredField;
        } catch (NoSuchFieldException e) {
            return null;
        }
    }

    public static Object readStaticField(Field field) {
        return readStaticField(field, false);
    }

    public static Object readStaticField(Field field, boolean z) {
        if (field == null) {
            throw new IllegalArgumentException("The field must not be null");
        }
        if (!Modifier.isStatic(field.getModifiers())) {
            throw new IllegalArgumentException("The field '" + field.getName() + "' is not static");
        }
        return readField(field, (Object) null, z);
    }

    public static Object readStaticField(Class<?> cls, String str) {
        return readStaticField(cls, str, false);
    }

    public static Object readStaticField(Class<?> cls, String str, boolean z) {
        Field field = getField(cls, str, z);
        if (field == null) {
            throw new IllegalArgumentException("Cannot locate field " + str + " on " + cls);
        }
        return readStaticField(field, false);
    }

    public static Object readDeclaredStaticField(Class<?> cls, String str) {
        return readDeclaredStaticField(cls, str, false);
    }

    public static Object readDeclaredStaticField(Class<?> cls, String str, boolean z) {
        Field declaredField = getDeclaredField(cls, str, z);
        if (declaredField == null) {
            throw new IllegalArgumentException("Cannot locate declared field " + cls.getName() + "." + str);
        }
        return readStaticField(declaredField, false);
    }

    public static Object readField(Field field, Object obj) {
        return readField(field, obj, false);
    }

    public static Object readField(Field field, Object obj, boolean z) {
        if (field == null) {
            throw new IllegalArgumentException("The field must not be null");
        }
        if (z && !field.isAccessible()) {
            field.setAccessible(true);
        } else {
            mm.a((AccessibleObject) field);
        }
        return field.get(obj);
    }

    public static Object readField(Object obj, String str) {
        return readField(obj, str, false);
    }

    public static Object readField(Object obj, String str, boolean z) {
        if (obj == null) {
            throw new IllegalArgumentException("target object must not be null");
        }
        Class<?> cls = obj.getClass();
        Field field = getField(cls, str, z);
        if (field == null) {
            throw new IllegalArgumentException("Cannot locate field " + str + " on " + cls);
        }
        return readField(field, obj);
    }

    public static Object readDeclaredField(Object obj, String str) {
        return readDeclaredField(obj, str, false);
    }

    public static Object readDeclaredField(Object obj, String str, boolean z) {
        if (obj == null) {
            throw new IllegalArgumentException("target object must not be null");
        }
        Class<?> cls = obj.getClass();
        Field declaredField = getDeclaredField(cls, str, z);
        if (declaredField == null) {
            throw new IllegalArgumentException("Cannot locate declared field " + cls.getName() + "." + str);
        }
        return readField(declaredField, obj);
    }

    public static void writeStaticField(Field field, Object obj) throws IllegalAccessException {
        writeStaticField(field, obj, false);
    }

    public static void writeStaticField(Field field, Object obj, boolean z) throws IllegalAccessException {
        if (field == null) {
            throw new IllegalArgumentException("The field must not be null");
        }
        if (!Modifier.isStatic(field.getModifiers())) {
            throw new IllegalArgumentException("The field '" + field.getName() + "' is not static");
        }
        writeField(field, (Object) null, obj, z);
    }

    public static void writeStaticField(Class<?> cls, String str, Object obj) throws IllegalAccessException {
        writeStaticField(cls, str, obj, false);
    }

    public static void writeStaticField(Class<?> cls, String str, Object obj, boolean z) throws IllegalAccessException {
        Field field = getField(cls, str, z);
        if (field == null) {
            throw new IllegalArgumentException("Cannot locate field " + str + " on " + cls);
        }
        writeStaticField(field, obj);
    }

    public static void writeDeclaredStaticField(Class<?> cls, String str, Object obj) throws IllegalAccessException {
        writeDeclaredStaticField(cls, str, obj, false);
    }

    public static void writeDeclaredStaticField(Class<?> cls, String str, Object obj, boolean z) throws IllegalAccessException {
        Field declaredField = getDeclaredField(cls, str, z);
        if (declaredField == null) {
            throw new IllegalArgumentException("Cannot locate declared field " + cls.getName() + "." + str);
        }
        writeField(declaredField, (Object) null, obj);
    }

    public static void writeField(Field field, Object obj, Object obj2) throws IllegalAccessException {
        writeField(field, obj, obj2, false);
    }

    public static void writeField(Field field, Object obj, Object obj2, boolean z) throws IllegalAccessException {
        if (field == null) {
            throw new IllegalArgumentException("The field must not be null");
        }
        if (z && !field.isAccessible()) {
            field.setAccessible(true);
        } else {
            mm.a((AccessibleObject) field);
        }
        field.set(obj, obj2);
    }

    public static void writeField(Object obj, String str, Object obj2) throws IllegalAccessException {
        writeField(obj, str, obj2, false);
    }

    public static void writeField(Object obj, String str, Object obj2, boolean z) throws IllegalAccessException {
        if (obj == null) {
            throw new IllegalArgumentException("target object must not be null");
        }
        Class<?> cls = obj.getClass();
        Field field = getField(cls, str, z);
        if (field == null) {
            throw new IllegalArgumentException("Cannot locate declared field " + cls.getName() + "." + str);
        }
        writeField(field, obj, obj2);
    }

    public static void writeDeclaredField(Object obj, String str, Object obj2) throws IllegalAccessException {
        writeDeclaredField(obj, str, obj2, false);
    }

    public static void writeDeclaredField(Object obj, String str, Object obj2, boolean z) throws IllegalAccessException {
        if (obj == null) {
            throw new IllegalArgumentException("target object must not be null");
        }
        Class<?> cls = obj.getClass();
        Field declaredField = getDeclaredField(cls, str, z);
        if (declaredField == null) {
            throw new IllegalArgumentException("Cannot locate declared field " + cls.getName() + "." + str);
        }
        writeField(declaredField, obj, obj2);
    }
}
