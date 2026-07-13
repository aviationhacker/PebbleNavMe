package org.apache.commons.lang3;

import java.io.Serializable;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import org.apache.commons.lang3.exception.CloneFailedException;

/* JADX INFO: loaded from: classes.dex */
public class ObjectUtils {
    public static final Null NULL = new Null();

    public static <T> T defaultIfNull(T t, T t2) {
        return t != null ? t : t2;
    }

    public static <T> T firstNonNull(T... tArr) {
        if (tArr != null) {
            for (T t : tArr) {
                if (t != null) {
                    return t;
                }
            }
        }
        return null;
    }

    public static boolean equals(Object obj, Object obj2) {
        if (obj == obj2) {
            return true;
        }
        if (obj == null || obj2 == null) {
            return false;
        }
        return obj.equals(obj2);
    }

    public static boolean notEqual(Object obj, Object obj2) {
        return !equals(obj, obj2);
    }

    public static int hashCode(Object obj) {
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public static int hashCodeMulti(Object... objArr) {
        int i = 1;
        if (objArr != null) {
            int length = objArr.length;
            int i2 = 0;
            while (i2 < length) {
                int iHashCode = hashCode(objArr[i2]) + (i * 31);
                i2++;
                i = iHashCode;
            }
        }
        return i;
    }

    public static String identityToString(Object obj) {
        if (obj == null) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer();
        identityToString(stringBuffer, obj);
        return stringBuffer.toString();
    }

    public static void identityToString(StringBuffer stringBuffer, Object obj) {
        if (obj == null) {
            throw new NullPointerException("Cannot get the toString of a null identity");
        }
        stringBuffer.append(obj.getClass().getName()).append('@').append(Integer.toHexString(System.identityHashCode(obj)));
    }

    public static String toString(Object obj) {
        return obj == null ? "" : obj.toString();
    }

    public static String toString(Object obj, String str) {
        return obj == null ? str : obj.toString();
    }

    public static <T extends Comparable<? super T>> T min(T... tArr) {
        T t = null;
        if (tArr != null) {
            int length = tArr.length;
            int i = 0;
            while (i < length) {
                T t2 = tArr[i];
                if (compare(t2, t, true) >= 0) {
                    t2 = t;
                }
                i++;
                t = t2;
            }
        }
        return t;
    }

    public static <T extends Comparable<? super T>> T max(T... tArr) {
        T t = null;
        if (tArr != null) {
            int length = tArr.length;
            int i = 0;
            while (i < length) {
                T t2 = tArr[i];
                if (compare(t2, t, false) <= 0) {
                    t2 = t;
                }
                i++;
                t = t2;
            }
        }
        return t;
    }

    public static <T extends Comparable<? super T>> int compare(T t, T t2) {
        return compare(t, t2, false);
    }

    public static <T extends Comparable<? super T>> int compare(T t, T t2, boolean z) {
        if (t == t2) {
            return 0;
        }
        if (t == null) {
            return !z ? -1 : 1;
        }
        if (t2 == null) {
            return z ? -1 : 1;
        }
        return t.compareTo(t2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> T clone(T t) {
        if (t instanceof Cloneable) {
            if (t.getClass().isArray()) {
                Class<?> componentType = t.getClass().getComponentType();
                if (!componentType.isPrimitive()) {
                    return (T) ((Object[]) t).clone();
                }
                int length = Array.getLength(t);
                T t2 = (T) Array.newInstance(componentType, length);
                while (true) {
                    int i = length - 1;
                    if (length > 0) {
                        Array.set(t2, i, Array.get(t, i));
                        length = i;
                    } else {
                        return t2;
                    }
                }
            } else {
                try {
                    return (T) t.getClass().getMethod("clone", new Class[0]).invoke(t, new Object[0]);
                } catch (IllegalAccessException e) {
                    throw new CloneFailedException("Cannot clone Cloneable type " + t.getClass().getName(), e);
                } catch (NoSuchMethodException e2) {
                    throw new CloneFailedException("Cloneable type " + t.getClass().getName() + " has no clone method", e2);
                } catch (InvocationTargetException e3) {
                    throw new CloneFailedException("Exception cloning Cloneable type " + t.getClass().getName(), e3.getCause());
                }
            }
        } else {
            return null;
        }
    }

    public static <T> T cloneIfPossible(T t) {
        T t2 = (T) clone(t);
        return t2 == null ? t : t2;
    }

    public static class Null implements Serializable {
        private static final long serialVersionUID = 7092611880189329093L;

        Null() {
        }

        private Object readResolve() {
            return ObjectUtils.NULL;
        }
    }
}
