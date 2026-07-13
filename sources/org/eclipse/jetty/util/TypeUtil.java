package org.eclipse.jetty.util;

import com.google.common.base.Ascii;
import com.google.common.primitives.UnsignedBytes;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.net.URL;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import org.apache.commons.lang3.ClassUtils;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes.dex */
public class TypeUtil {
    private static final HashMap<Class<?>, String> c;
    private static final HashMap<Class<?>, Method> d;
    private static final Logger a = Log.getLogger((Class<?>) TypeUtil.class);
    public static int CR = 13;
    public static int LF = 10;
    private static final HashMap<String, Class<?>> b = new HashMap<>();

    static {
        b.put("boolean", Boolean.TYPE);
        b.put("byte", Byte.TYPE);
        b.put("char", Character.TYPE);
        b.put("double", Double.TYPE);
        b.put("float", Float.TYPE);
        b.put("int", Integer.TYPE);
        b.put("long", Long.TYPE);
        b.put("short", Short.TYPE);
        b.put("void", Void.TYPE);
        b.put("java.lang.Boolean.TYPE", Boolean.TYPE);
        b.put("java.lang.Byte.TYPE", Byte.TYPE);
        b.put("java.lang.Character.TYPE", Character.TYPE);
        b.put("java.lang.Double.TYPE", Double.TYPE);
        b.put("java.lang.Float.TYPE", Float.TYPE);
        b.put("java.lang.Integer.TYPE", Integer.TYPE);
        b.put("java.lang.Long.TYPE", Long.TYPE);
        b.put("java.lang.Short.TYPE", Short.TYPE);
        b.put("java.lang.Void.TYPE", Void.TYPE);
        b.put("java.lang.Boolean", Boolean.class);
        b.put("java.lang.Byte", Byte.class);
        b.put("java.lang.Character", Character.class);
        b.put("java.lang.Double", Double.class);
        b.put("java.lang.Float", Float.class);
        b.put("java.lang.Integer", Integer.class);
        b.put("java.lang.Long", Long.class);
        b.put("java.lang.Short", Short.class);
        b.put("Boolean", Boolean.class);
        b.put("Byte", Byte.class);
        b.put("Character", Character.class);
        b.put("Double", Double.class);
        b.put("Float", Float.class);
        b.put("Integer", Integer.class);
        b.put("Long", Long.class);
        b.put("Short", Short.class);
        b.put(null, Void.TYPE);
        b.put("string", String.class);
        b.put("String", String.class);
        b.put("java.lang.String", String.class);
        c = new HashMap<>();
        c.put(Boolean.TYPE, "boolean");
        c.put(Byte.TYPE, "byte");
        c.put(Character.TYPE, "char");
        c.put(Double.TYPE, "double");
        c.put(Float.TYPE, "float");
        c.put(Integer.TYPE, "int");
        c.put(Long.TYPE, "long");
        c.put(Short.TYPE, "short");
        c.put(Void.TYPE, "void");
        c.put(Boolean.class, "java.lang.Boolean");
        c.put(Byte.class, "java.lang.Byte");
        c.put(Character.class, "java.lang.Character");
        c.put(Double.class, "java.lang.Double");
        c.put(Float.class, "java.lang.Float");
        c.put(Integer.class, "java.lang.Integer");
        c.put(Long.class, "java.lang.Long");
        c.put(Short.class, "java.lang.Short");
        c.put(null, "void");
        c.put(String.class, "java.lang.String");
        d = new HashMap<>();
        try {
            Class[] clsArr = {String.class};
            d.put(Boolean.TYPE, Boolean.class.getMethod("valueOf", clsArr));
            d.put(Byte.TYPE, Byte.class.getMethod("valueOf", clsArr));
            d.put(Double.TYPE, Double.class.getMethod("valueOf", clsArr));
            d.put(Float.TYPE, Float.class.getMethod("valueOf", clsArr));
            d.put(Integer.TYPE, Integer.class.getMethod("valueOf", clsArr));
            d.put(Long.TYPE, Long.class.getMethod("valueOf", clsArr));
            d.put(Short.TYPE, Short.class.getMethod("valueOf", clsArr));
            d.put(Boolean.class, Boolean.class.getMethod("valueOf", clsArr));
            d.put(Byte.class, Byte.class.getMethod("valueOf", clsArr));
            d.put(Double.class, Double.class.getMethod("valueOf", clsArr));
            d.put(Float.class, Float.class.getMethod("valueOf", clsArr));
            d.put(Integer.class, Integer.class.getMethod("valueOf", clsArr));
            d.put(Long.class, Long.class.getMethod("valueOf", clsArr));
            d.put(Short.class, Short.class.getMethod("valueOf", clsArr));
        } catch (Exception e) {
            throw new Error(e);
        }
    }

    public static <T> List<T> asList(T[] tArr) {
        return tArr == null ? Collections.emptyList() : Arrays.asList(tArr);
    }

    public static Class<?> fromName(String str) {
        return b.get(str);
    }

    public static String toName(Class<?> cls) {
        return c.get(cls);
    }

    public static Object valueOf(Class<?> cls, String str) {
        try {
            Object ch = str;
            if (!cls.equals(String.class)) {
                Method method = d.get(cls);
                if (method != null) {
                    ch = method.invoke(null, str);
                } else if (cls.equals(Character.TYPE) || cls.equals(Character.class)) {
                    ch = new Character(str.charAt(0));
                } else {
                    ch = cls.getConstructor(String.class).newInstance(str);
                }
            }
            return ch;
        } catch (IllegalAccessException e) {
            return null;
        } catch (InstantiationException e2) {
            return null;
        } catch (NoSuchMethodException e3) {
            return null;
        } catch (InvocationTargetException e4) {
            if (e4.getTargetException() instanceof Error) {
                throw ((Error) e4.getTargetException());
            }
            return null;
        }
    }

    public static Object valueOf(String str, String str2) {
        return valueOf(fromName(str), str2);
    }

    public static int parseInt(String str, int i, int i2, int i3) {
        if (i2 < 0) {
            i2 = str.length() - i;
        }
        int i4 = 0;
        for (int i5 = 0; i5 < i2; i5++) {
            int iConvertHexDigit = convertHexDigit(str.charAt(i + i5));
            if (iConvertHexDigit < 0 || iConvertHexDigit >= i3) {
                throw new NumberFormatException(str.substring(i, i + i2));
            }
            i4 = (i4 * i3) + iConvertHexDigit;
        }
        return i4;
    }

    public static int parseInt(byte[] bArr, int i, int i2, int i3) {
        if (i2 < 0) {
            i2 = bArr.length - i;
        }
        int i4 = 0;
        for (int i5 = 0; i5 < i2; i5++) {
            char c2 = (char) (bArr[i + i5] & UnsignedBytes.MAX_VALUE);
            int i6 = c2 - '0';
            if ((i6 < 0 || i6 >= i3 || i6 >= 10) && ((c2 + '\n') - 65 < 10 || i6 >= i3)) {
                i6 = (c2 + '\n') - 97;
            }
            if (i6 < 0 || i6 >= i3) {
                throw new NumberFormatException(new String(bArr, i, i2));
            }
            i4 = (i4 * i3) + i6;
        }
        return i4;
    }

    public static byte[] parseBytes(String str, int i) {
        byte[] bArr = new byte[str.length() / 2];
        for (int i2 = 0; i2 < str.length(); i2 += 2) {
            bArr[i2 / 2] = (byte) parseInt(str, i2, 2, i);
        }
        return bArr;
    }

    public static String toString(byte[] bArr, int i) {
        StringBuilder sb = new StringBuilder();
        for (int i2 : bArr) {
            int i3 = i2 & 255;
            int i4 = ((i3 / i) % i) + 48;
            if (i4 > 57) {
                i4 = ((i4 - 48) - 10) + 97;
            }
            sb.append((char) i4);
            int i5 = (i3 % i) + 48;
            if (i5 > 57) {
                i5 = ((i5 - 48) - 10) + 97;
            }
            sb.append((char) i5);
        }
        return sb.toString();
    }

    public static byte convertHexDigit(byte b2) {
        byte b3 = (byte) (((b2 & Ascii.US) + ((b2 >> 6) * 25)) - 16);
        if (b3 < 0 || b3 > 15) {
            throw new IllegalArgumentException("!hex " + ((int) b2));
        }
        return b3;
    }

    public static int convertHexDigit(int i) {
        int i2 = ((i & 31) + ((i >> 6) * 25)) - 16;
        if (i2 < 0 || i2 > 15) {
            throw new NumberFormatException("!hex " + i);
        }
        return i2;
    }

    public static void toHex(byte b2, Appendable appendable) {
        int i = ((b2 & 240) >> 4) & 15;
        try {
            appendable.append((char) ((i > 9 ? 55 : 48) + i));
            int i2 = b2 & Ascii.SI;
            appendable.append((char) ((i2 <= 9 ? 48 : 55) + i2));
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public static void toHex(int i, Appendable appendable) throws IOException {
        int i2 = (((-268435456) & i) >> 28) & 15;
        appendable.append((char) ((i2 > 9 ? 55 : 48) + i2));
        int i3 = ((251658240 & i) >> 24) & 15;
        appendable.append((char) ((i3 > 9 ? 55 : 48) + i3));
        int i4 = ((15728640 & i) >> 20) & 15;
        appendable.append((char) ((i4 > 9 ? 55 : 48) + i4));
        int i5 = ((983040 & i) >> 16) & 15;
        appendable.append((char) ((i5 > 9 ? 55 : 48) + i5));
        int i6 = ((61440 & i) >> 12) & 15;
        appendable.append((char) ((i6 > 9 ? 55 : 48) + i6));
        int i7 = ((i & 3840) >> 8) & 15;
        appendable.append((char) ((i7 > 9 ? 55 : 48) + i7));
        int i8 = ((i & 240) >> 4) & 15;
        appendable.append((char) ((i8 > 9 ? 55 : 48) + i8));
        int i9 = i & 15;
        appendable.append((char) (i9 + (i9 <= 9 ? 48 : 55)));
        Integer.toString(0, 36);
    }

    public static void toHex(long j, Appendable appendable) throws IOException {
        toHex((int) (j >> 32), appendable);
        toHex((int) j, appendable);
    }

    public static String toHexString(byte b2) {
        return toHexString(new byte[]{b2}, 0, 1);
    }

    public static String toHexString(byte[] bArr) {
        return toHexString(bArr, 0, bArr.length);
    }

    public static String toHexString(byte[] bArr, int i, int i2) {
        StringBuilder sb = new StringBuilder();
        for (int i3 = i; i3 < i + i2; i3++) {
            int i4 = bArr[i3] & UnsignedBytes.MAX_VALUE;
            int i5 = ((i4 / 16) % 16) + 48;
            if (i5 > 57) {
                i5 = ((i5 - 48) - 10) + 65;
            }
            sb.append((char) i5);
            int i6 = (i4 % 16) + 48;
            if (i6 > 57) {
                i6 = ((i6 - 48) - 10) + 97;
            }
            sb.append((char) i6);
        }
        return sb.toString();
    }

    public static byte[] fromHexString(String str) {
        if (str.length() % 2 != 0) {
            throw new IllegalArgumentException(str);
        }
        byte[] bArr = new byte[str.length() / 2];
        for (int i = 0; i < bArr.length; i++) {
            bArr[i] = (byte) (Integer.parseInt(str.substring(i * 2, (i * 2) + 2), 16) & 255);
        }
        return bArr;
    }

    public static void dump(Class<?> cls) {
        System.err.println("Dump: " + cls);
        dump(cls.getClassLoader());
    }

    public static void dump(ClassLoader classLoader) {
        System.err.println("Dump Loaders:");
        while (classLoader != null) {
            System.err.println("  loader " + classLoader);
            classLoader = classLoader.getParent();
        }
    }

    public static byte[] readLine(InputStream inputStream) throws IOException {
        int i;
        byte[] bArr;
        int i2 = 0;
        byte[] bArr2 = new byte[256];
        int i3 = 0;
        while (true) {
            i = inputStream.read();
            if (i < 0) {
                break;
            }
            i3++;
            if (i3 != 1 || i != LF) {
                if (i == CR || i == LF) {
                    break;
                }
                if (i2 >= bArr2.length) {
                    bArr = new byte[bArr2.length + 256];
                    System.arraycopy(bArr2, 0, bArr, 0, bArr2.length);
                } else {
                    bArr = bArr2;
                }
                bArr[i2] = (byte) i;
                i2++;
                bArr2 = bArr;
            }
        }
        if (i == -1 && i2 == 0) {
            return null;
        }
        if (i == CR && inputStream.available() >= 1 && inputStream.markSupported()) {
            inputStream.mark(1);
            if (inputStream.read() != LF) {
                inputStream.reset();
            }
        }
        byte[] bArr3 = new byte[i2];
        System.arraycopy(bArr2, 0, bArr3, 0, i2);
        return bArr3;
    }

    public static URL jarFor(String str) {
        try {
            String string = Loader.getResource(null, str.replace(ClassUtils.PACKAGE_SEPARATOR_CHAR, '/') + ".class", false).toString();
            if (string.startsWith("jar:file:")) {
                return new URL(string.substring(4, string.indexOf("!/")));
            }
        } catch (Exception e) {
            a.ignore(e);
        }
        return null;
    }

    public static Object call(Class<?> cls, String str, Object obj, Object[] objArr) throws NoSuchMethodException {
        Method[] methods = cls.getMethods();
        for (int i = 0; methods != null && i < methods.length; i++) {
            if (methods[i].getName().equals(str) && methods[i].getParameterTypes().length == objArr.length) {
                if (Modifier.isStatic(methods[i].getModifiers()) == (obj == null) && (obj != null || methods[i].getDeclaringClass() == cls)) {
                    try {
                        return methods[i].invoke(obj, objArr);
                    } catch (IllegalAccessException e) {
                        a.ignore(e);
                    } catch (IllegalArgumentException e2) {
                        a.ignore(e2);
                    }
                }
            }
        }
        throw new NoSuchMethodException(str);
    }
}
