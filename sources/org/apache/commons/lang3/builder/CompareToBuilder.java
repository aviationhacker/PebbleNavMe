package org.apache.commons.lang3.builder;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.Collection;
import java.util.Comparator;
import org.apache.commons.lang3.ArrayUtils;

/* JADX INFO: loaded from: classes.dex */
public class CompareToBuilder implements Builder<Integer> {
    private int a = 0;

    public static int reflectionCompare(Object obj, Object obj2) {
        return reflectionCompare(obj, obj2, false, null, new String[0]);
    }

    public static int reflectionCompare(Object obj, Object obj2, boolean z) {
        return reflectionCompare(obj, obj2, z, null, new String[0]);
    }

    public static int reflectionCompare(Object obj, Object obj2, Collection<String> collection) {
        return reflectionCompare(obj, obj2, ReflectionToStringBuilder.a(collection));
    }

    public static int reflectionCompare(Object obj, Object obj2, String... strArr) {
        return reflectionCompare(obj, obj2, false, null, strArr);
    }

    public static int reflectionCompare(Object obj, Object obj2, boolean z, Class<?> cls, String... strArr) {
        if (obj == obj2) {
            return 0;
        }
        if (obj == null || obj2 == null) {
            throw new NullPointerException();
        }
        Class<?> superclass = obj.getClass();
        if (!superclass.isInstance(obj2)) {
            throw new ClassCastException();
        }
        CompareToBuilder compareToBuilder = new CompareToBuilder();
        a(obj, obj2, superclass, compareToBuilder, z, strArr);
        while (superclass.getSuperclass() != null && superclass != cls) {
            superclass = superclass.getSuperclass();
            a(obj, obj2, superclass, compareToBuilder, z, strArr);
        }
        return compareToBuilder.toComparison();
    }

    private static void a(Object obj, Object obj2, Class<?> cls, CompareToBuilder compareToBuilder, boolean z, String[] strArr) {
        Field[] declaredFields = cls.getDeclaredFields();
        AccessibleObject.setAccessible(declaredFields, true);
        for (int i = 0; i < declaredFields.length && compareToBuilder.a == 0; i++) {
            Field field = declaredFields[i];
            if (!ArrayUtils.contains(strArr, field.getName()) && field.getName().indexOf(36) == -1 && ((z || !Modifier.isTransient(field.getModifiers())) && !Modifier.isStatic(field.getModifiers()))) {
                try {
                    compareToBuilder.append(field.get(obj), field.get(obj2));
                } catch (IllegalAccessException e) {
                    throw new InternalError("Unexpected IllegalAccessException");
                }
            }
        }
    }

    public CompareToBuilder appendSuper(int i) {
        if (this.a == 0) {
            this.a = i;
        }
        return this;
    }

    public CompareToBuilder append(Object obj, Object obj2) {
        return append(obj, obj2, (Comparator<?>) null);
    }

    public CompareToBuilder append(Object obj, Object obj2, Comparator<?> comparator) {
        if (this.a == 0 && obj != obj2) {
            if (obj == null) {
                this.a = -1;
            } else if (obj2 == null) {
                this.a = 1;
            } else if (obj.getClass().isArray()) {
                if (obj instanceof long[]) {
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
                    append((Object[]) obj, (Object[]) obj2, comparator);
                }
            } else if (comparator == null) {
                this.a = ((Comparable) obj).compareTo(obj2);
            } else {
                this.a = comparator.compare(obj, obj2);
            }
        }
        return this;
    }

    public CompareToBuilder append(long j, long j2) {
        if (this.a == 0) {
            this.a = j < j2 ? -1 : j > j2 ? 1 : 0;
        }
        return this;
    }

    public CompareToBuilder append(int i, int i2) {
        if (this.a == 0) {
            this.a = i < i2 ? -1 : i > i2 ? 1 : 0;
        }
        return this;
    }

    public CompareToBuilder append(short s, short s2) {
        if (this.a == 0) {
            this.a = s < s2 ? -1 : s > s2 ? 1 : 0;
        }
        return this;
    }

    public CompareToBuilder append(char c, char c2) {
        if (this.a == 0) {
            this.a = c < c2 ? -1 : c > c2 ? 1 : 0;
        }
        return this;
    }

    public CompareToBuilder append(byte b, byte b2) {
        if (this.a == 0) {
            this.a = b < b2 ? -1 : b > b2 ? 1 : 0;
        }
        return this;
    }

    public CompareToBuilder append(double d, double d2) {
        if (this.a == 0) {
            this.a = Double.compare(d, d2);
        }
        return this;
    }

    public CompareToBuilder append(float f, float f2) {
        if (this.a == 0) {
            this.a = Float.compare(f, f2);
        }
        return this;
    }

    public CompareToBuilder append(boolean z, boolean z2) {
        if (this.a == 0 && z != z2) {
            if (!z) {
                this.a = -1;
            } else {
                this.a = 1;
            }
        }
        return this;
    }

    public CompareToBuilder append(Object[] objArr, Object[] objArr2) {
        return append(objArr, objArr2, (Comparator<?>) null);
    }

    public CompareToBuilder append(Object[] objArr, Object[] objArr2, Comparator<?> comparator) {
        if (this.a == 0 && objArr != objArr2) {
            if (objArr == null) {
                this.a = -1;
            } else if (objArr2 == null) {
                this.a = 1;
            } else if (objArr.length != objArr2.length) {
                this.a = objArr.length >= objArr2.length ? 1 : -1;
            } else {
                for (int i = 0; i < objArr.length && this.a == 0; i++) {
                    append(objArr[i], objArr2[i], comparator);
                }
            }
        }
        return this;
    }

    public CompareToBuilder append(long[] jArr, long[] jArr2) {
        if (this.a == 0 && jArr != jArr2) {
            if (jArr == null) {
                this.a = -1;
            } else if (jArr2 == null) {
                this.a = 1;
            } else if (jArr.length != jArr2.length) {
                this.a = jArr.length >= jArr2.length ? 1 : -1;
            } else {
                for (int i = 0; i < jArr.length && this.a == 0; i++) {
                    append(jArr[i], jArr2[i]);
                }
            }
        }
        return this;
    }

    public CompareToBuilder append(int[] iArr, int[] iArr2) {
        if (this.a == 0 && iArr != iArr2) {
            if (iArr == null) {
                this.a = -1;
            } else if (iArr2 == null) {
                this.a = 1;
            } else if (iArr.length != iArr2.length) {
                this.a = iArr.length >= iArr2.length ? 1 : -1;
            } else {
                for (int i = 0; i < iArr.length && this.a == 0; i++) {
                    append(iArr[i], iArr2[i]);
                }
            }
        }
        return this;
    }

    public CompareToBuilder append(short[] sArr, short[] sArr2) {
        if (this.a == 0 && sArr != sArr2) {
            if (sArr == null) {
                this.a = -1;
            } else if (sArr2 == null) {
                this.a = 1;
            } else if (sArr.length != sArr2.length) {
                this.a = sArr.length >= sArr2.length ? 1 : -1;
            } else {
                for (int i = 0; i < sArr.length && this.a == 0; i++) {
                    append(sArr[i], sArr2[i]);
                }
            }
        }
        return this;
    }

    public CompareToBuilder append(char[] cArr, char[] cArr2) {
        if (this.a == 0 && cArr != cArr2) {
            if (cArr == null) {
                this.a = -1;
            } else if (cArr2 == null) {
                this.a = 1;
            } else if (cArr.length != cArr2.length) {
                this.a = cArr.length >= cArr2.length ? 1 : -1;
            } else {
                for (int i = 0; i < cArr.length && this.a == 0; i++) {
                    append(cArr[i], cArr2[i]);
                }
            }
        }
        return this;
    }

    public CompareToBuilder append(byte[] bArr, byte[] bArr2) {
        if (this.a == 0 && bArr != bArr2) {
            if (bArr == null) {
                this.a = -1;
            } else if (bArr2 == null) {
                this.a = 1;
            } else if (bArr.length != bArr2.length) {
                this.a = bArr.length >= bArr2.length ? 1 : -1;
            } else {
                for (int i = 0; i < bArr.length && this.a == 0; i++) {
                    append(bArr[i], bArr2[i]);
                }
            }
        }
        return this;
    }

    public CompareToBuilder append(double[] dArr, double[] dArr2) {
        if (this.a == 0 && dArr != dArr2) {
            if (dArr == null) {
                this.a = -1;
            } else if (dArr2 == null) {
                this.a = 1;
            } else if (dArr.length != dArr2.length) {
                this.a = dArr.length >= dArr2.length ? 1 : -1;
            } else {
                for (int i = 0; i < dArr.length && this.a == 0; i++) {
                    append(dArr[i], dArr2[i]);
                }
            }
        }
        return this;
    }

    public CompareToBuilder append(float[] fArr, float[] fArr2) {
        if (this.a == 0 && fArr != fArr2) {
            if (fArr == null) {
                this.a = -1;
            } else if (fArr2 == null) {
                this.a = 1;
            } else if (fArr.length != fArr2.length) {
                this.a = fArr.length >= fArr2.length ? 1 : -1;
            } else {
                for (int i = 0; i < fArr.length && this.a == 0; i++) {
                    append(fArr[i], fArr2[i]);
                }
            }
        }
        return this;
    }

    public CompareToBuilder append(boolean[] zArr, boolean[] zArr2) {
        if (this.a == 0 && zArr != zArr2) {
            if (zArr == null) {
                this.a = -1;
            } else if (zArr2 == null) {
                this.a = 1;
            } else if (zArr.length != zArr2.length) {
                this.a = zArr.length >= zArr2.length ? 1 : -1;
            } else {
                for (int i = 0; i < zArr.length && this.a == 0; i++) {
                    append(zArr[i], zArr2[i]);
                }
            }
        }
        return this;
    }

    public int toComparison() {
        return this.a;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // org.apache.commons.lang3.builder.Builder
    public Integer build() {
        return Integer.valueOf(toComparison());
    }
}
