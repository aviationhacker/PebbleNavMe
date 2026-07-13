package defpackage;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Member;
import java.lang.reflect.Modifier;
import org.apache.commons.lang3.ClassUtils;

/* JADX INFO: loaded from: classes.dex */
public abstract class mm {
    private static final Class<?>[] a = {Byte.TYPE, Short.TYPE, Character.TYPE, Integer.TYPE, Long.TYPE, Float.TYPE, Double.TYPE};

    /* JADX WARN: Multi-variable type inference failed */
    public static void a(AccessibleObject accessibleObject) {
        if (accessibleObject != 0 && !accessibleObject.isAccessible()) {
            Member member = (Member) accessibleObject;
            if (Modifier.isPublic(member.getModifiers()) && a(member.getDeclaringClass().getModifiers())) {
                try {
                    accessibleObject.setAccessible(true);
                } catch (SecurityException e) {
                }
            }
        }
    }

    static boolean a(int i) {
        return (i & 7) == 0;
    }

    public static boolean a(Member member) {
        return (member == null || !Modifier.isPublic(member.getModifiers()) || member.isSynthetic()) ? false : true;
    }

    public static int a(Class<?>[] clsArr, Class<?>[] clsArr2, Class<?>[] clsArr3) {
        float fA = a(clsArr3, clsArr);
        float fA2 = a(clsArr3, clsArr2);
        if (fA < fA2) {
            return -1;
        }
        return fA2 < fA ? 1 : 0;
    }

    private static float a(Class<?>[] clsArr, Class<?>[] clsArr2) {
        float fA = 0.0f;
        for (int i = 0; i < clsArr.length; i++) {
            fA += a(clsArr[i], clsArr2[i]);
        }
        return fA;
    }

    private static float a(Class<?> cls, Class<?> cls2) {
        if (cls2.isPrimitive()) {
            return b(cls, cls2);
        }
        float f = 0.0f;
        while (true) {
            if (cls != null && !cls2.equals(cls)) {
                if (cls2.isInterface() && ClassUtils.isAssignable(cls, cls2)) {
                    f += 0.25f;
                    break;
                }
                f += 1.0f;
                cls = cls.getSuperclass();
            } else {
                break;
            }
        }
        if (cls == null) {
            return f + 1.5f;
        }
        return f;
    }

    private static float b(Class<?> cls, Class<?> cls2) {
        float f = 0.0f;
        if (!cls.isPrimitive()) {
            f = 0.0f + 0.1f;
            cls = ClassUtils.wrapperToPrimitive(cls);
        }
        float f2 = f;
        Class<?> cls3 = cls;
        for (int i = 0; cls3 != cls2 && i < a.length; i++) {
            if (cls3 == a[i]) {
                f2 += 0.1f;
                if (i < a.length - 1) {
                    cls3 = a[i + 1];
                }
            }
        }
        return f2;
    }
}
