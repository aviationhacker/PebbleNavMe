package org.apache.commons.lang3.builder;

import defpackage.ml;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;
import org.apache.commons.lang3.ArrayUtils;
import org.apache.commons.lang3.tuple.Pair;

/* JADX INFO: loaded from: classes.dex */
public class EqualsBuilder implements Builder<Boolean> {
    private static final ThreadLocal<Set<Pair<ml, ml>>> a = new ThreadLocal<>();
    private boolean b = true;

    static Set<Pair<ml, ml>> a() {
        return a.get();
    }

    static Pair<ml, ml> a(Object obj, Object obj2) {
        return Pair.of(new ml(obj), new ml(obj2));
    }

    static boolean b(Object obj, Object obj2) {
        Set<Pair<ml, ml>> setA = a();
        Pair<ml, ml> pairA = a(obj, obj2);
        return setA != null && (setA.contains(pairA) || setA.contains(Pair.of(pairA.getLeft(), pairA.getRight())));
    }

    static void c(Object obj, Object obj2) {
        synchronized (EqualsBuilder.class) {
            if (a() == null) {
                a.set(new HashSet());
            }
        }
        a().add(a(obj, obj2));
    }

    static void d(Object obj, Object obj2) {
        Set<Pair<ml, ml>> setA = a();
        if (setA != null) {
            setA.remove(a(obj, obj2));
            synchronized (EqualsBuilder.class) {
                Set<Pair<ml, ml>> setA2 = a();
                if (setA2 != null && setA2.isEmpty()) {
                    a.remove();
                }
            }
        }
    }

    public static boolean reflectionEquals(Object obj, Object obj2, Collection<String> collection) {
        return reflectionEquals(obj, obj2, ReflectionToStringBuilder.a(collection));
    }

    public static boolean reflectionEquals(Object obj, Object obj2, String... strArr) {
        return reflectionEquals(obj, obj2, false, null, strArr);
    }

    public static boolean reflectionEquals(Object obj, Object obj2, boolean z) {
        return reflectionEquals(obj, obj2, z, null, new String[0]);
    }

    public static boolean reflectionEquals(Object obj, Object obj2, boolean z, Class<?> cls, String... strArr) {
        if (obj == obj2) {
            return true;
        }
        if (obj == null || obj2 == null) {
            return false;
        }
        Class<?> cls2 = obj.getClass();
        Class<?> superclass = obj2.getClass();
        if (cls2.isInstance(obj2)) {
            if (superclass.isInstance(obj)) {
                superclass = cls2;
            }
        } else {
            if (!superclass.isInstance(obj)) {
                return false;
            }
            if (!cls2.isInstance(obj2)) {
                superclass = cls2;
            }
        }
        EqualsBuilder equalsBuilder = new EqualsBuilder();
        try {
            a(obj, obj2, superclass, equalsBuilder, z, strArr);
            while (superclass.getSuperclass() != null && superclass != cls) {
                superclass = superclass.getSuperclass();
                a(obj, obj2, superclass, equalsBuilder, z, strArr);
            }
            return equalsBuilder.isEquals();
        } catch (IllegalArgumentException e) {
            return false;
        }
    }

    private static void a(Object obj, Object obj2, Class<?> cls, EqualsBuilder equalsBuilder, boolean z, String[] strArr) {
        if (!b(obj, obj2)) {
            try {
                c(obj, obj2);
                Field[] declaredFields = cls.getDeclaredFields();
                AccessibleObject.setAccessible(declaredFields, true);
                for (int i = 0; i < declaredFields.length && equalsBuilder.b; i++) {
                    Field field = declaredFields[i];
                    if (!ArrayUtils.contains(strArr, field.getName()) && field.getName().indexOf(36) == -1 && ((z || !Modifier.isTransient(field.getModifiers())) && !Modifier.isStatic(field.getModifiers()))) {
                        try {
                            equalsBuilder.append(field.get(obj), field.get(obj2));
                        } catch (IllegalAccessException e) {
                            throw new InternalError("Unexpected IllegalAccessException");
                        }
                    }
                }
            } finally {
                d(obj, obj2);
            }
        }
    }

    public EqualsBuilder appendSuper(boolean z) {
        if (this.b) {
            this.b = z;
        }
        return this;
    }

    public EqualsBuilder append(Object obj, Object obj2) {
        if (this.b && obj != obj2) {
            if (obj == null || obj2 == null) {
                setEquals(false);
            } else if (!obj.getClass().isArray()) {
                this.b = obj.equals(obj2);
            } else if (obj.getClass() != obj2.getClass()) {
                setEquals(false);
            } else if (obj instanceof long[]) {
                append((long[]) obj, (long[]) obj2);
            } else if (obj instanceof int[]) {
                append((int[]) obj, (int[]) obj2);
            } else if (obj instanceof short[]) {
                append((short[]) obj, (short[]) obj2);
            } else if (obj instanceof char[]) {
                append((char[]) obj, (char[]) obj2);
            } else if (obj instanceof byte[]) {
                append((byte[]) obj, (byte[]) obj2);
            } else if (obj instanceof double[]) {
                append((double[]) obj, (double[]) obj2);
            } else if (obj instanceof float[]) {
                append((float[]) obj, (float[]) obj2);
            } else if (obj instanceof boolean[]) {
                append((boolean[]) obj, (boolean[]) obj2);
            } else {
                append((Object[]) obj, (Object[]) obj2);
            }
        }
        return this;
    }

    public EqualsBuilder append(long j, long j2) {
        if (this.b) {
            this.b = j == j2;
        }
        return this;
    }

    public EqualsBuilder append(int i, int i2) {
        if (this.b) {
            this.b = i == i2;
        }
        return this;
    }

    public EqualsBuilder append(short s, short s2) {
        if (this.b) {
            this.b = s == s2;
        }
        return this;
    }

    public EqualsBuilder append(char c, char c2) {
        if (this.b) {
            this.b = c == c2;
        }
        return this;
    }

    public EqualsBuilder append(byte b, byte b2) {
        if (this.b) {
            this.b = b == b2;
        }
        return this;
    }

    public EqualsBuilder append(double d, double d2) {
        return !this.b ? this : append(Double.doubleToLongBits(d), Double.doubleToLongBits(d2));
    }

    public EqualsBuilder append(float f, float f2) {
        return !this.b ? this : append(Float.floatToIntBits(f), Float.floatToIntBits(f2));
    }

    public EqualsBuilder append(boolean z, boolean z2) {
        if (this.b) {
            this.b = z == z2;
        }
        return this;
    }

    public EqualsBuilder append(Object[] objArr, Object[] objArr2) {
        if (this.b && objArr != objArr2) {
            if (objArr == null || objArr2 == null || objArr.length != objArr2.length) {
                setEquals(false);
            } else {
                for (int i = 0; i < objArr.length && this.b; i++) {
                    append(objArr[i], objArr2[i]);
                }
            }
        }
        return this;
    }

    public EqualsBuilder append(long[] jArr, long[] jArr2) {
        if (this.b && jArr != jArr2) {
            if (jArr == null || jArr2 == null || jArr.length != jArr2.length) {
                setEquals(false);
            } else {
                for (int i = 0; i < jArr.length && this.b; i++) {
                    append(jArr[i], jArr2[i]);
                }
            }
        }
        return this;
    }

    public EqualsBuilder append(int[] iArr, int[] iArr2) {
        if (this.b && iArr != iArr2) {
            if (iArr == null || iArr2 == null || iArr.length != iArr2.length) {
                setEquals(false);
            } else {
                for (int i = 0; i < iArr.length && this.b; i++) {
                    append(iArr[i], iArr2[i]);
                }
            }
        }
        return this;
    }

    public EqualsBuilder append(short[] sArr, short[] sArr2) {
        if (this.b && sArr != sArr2) {
            if (sArr == null || sArr2 == null || sArr.length != sArr2.length) {
                setEquals(false);
            } else {
                for (int i = 0; i < sArr.length && this.b; i++) {
                    append(sArr[i], sArr2[i]);
                }
            }
        }
        return this;
    }

    public EqualsBuilder append(char[] cArr, char[] cArr2) {
        if (this.b && cArr != cArr2) {
            if (cArr == null || cArr2 == null || cArr.length != cArr2.length) {
                setEquals(false);
            } else {
                for (int i = 0; i < cArr.length && this.b; i++) {
                    append(cArr[i], cArr2[i]);
                }
            }
        }
        return this;
    }

    public EqualsBuilder append(byte[] bArr, byte[] bArr2) {
        if (this.b && bArr != bArr2) {
            if (bArr == null || bArr2 == null || bArr.length != bArr2.length) {
                setEquals(false);
            } else {
                for (int i = 0; i < bArr.length && this.b; i++) {
                    append(bArr[i], bArr2[i]);
                }
            }
        }
        return this;
    }

    public EqualsBuilder append(double[] dArr, double[] dArr2) {
        if (this.b && dArr != dArr2) {
            if (dArr == null || dArr2 == null || dArr.length != dArr2.length) {
                setEquals(false);
            } else {
                for (int i = 0; i < dArr.length && this.b; i++) {
                    append(dArr[i], dArr2[i]);
                }
            }
        }
        return this;
    }

    public EqualsBuilder append(float[] fArr, float[] fArr2) {
        if (this.b && fArr != fArr2) {
            if (fArr == null || fArr2 == null || fArr.length != fArr2.length) {
                setEquals(false);
            } else {
                for (int i = 0; i < fArr.length && this.b; i++) {
                    append(fArr[i], fArr2[i]);
                }
            }
        }
        return this;
    }

    public EqualsBuilder append(boolean[] zArr, boolean[] zArr2) {
        if (this.b && zArr != zArr2) {
            if (zArr == null || zArr2 == null || zArr.length != zArr2.length) {
                setEquals(false);
            } else {
                for (int i = 0; i < zArr.length && this.b; i++) {
                    append(zArr[i], zArr2[i]);
                }
            }
        }
        return this;
    }

    public boolean isEquals() {
        return this.b;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // org.apache.commons.lang3.builder.Builder
    public Boolean build() {
        return Boolean.valueOf(isEquals());
    }

    protected void setEquals(boolean z) {
        this.b = z;
    }

    public void reset() {
        this.b = true;
    }
}
