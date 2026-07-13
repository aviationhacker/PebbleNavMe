package com.google.common.base;

import com.google.common.annotations.Beta;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import javax.annotation.CheckReturnValue;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class Throwables {

    @Nullable
    private static final Object a = d();

    @Nullable
    private static final Method b;

    @Nullable
    private static final Method c;

    private Throwables() {
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: X extends java.lang.Throwable */
    public static <X extends Throwable> void propagateIfInstanceOf(@Nullable Throwable th, Class<X> cls) throws X {
        if (th != null && cls.isInstance(th)) {
            throw cls.cast(th);
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: X */
    public static void propagateIfPossible(@Nullable Throwable th) throws X {
        propagateIfInstanceOf(th, Error.class);
        propagateIfInstanceOf(th, RuntimeException.class);
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: X */
    public static <X extends Throwable> void propagateIfPossible(@Nullable Throwable th, Class<X> cls) throws X {
        propagateIfInstanceOf(th, cls);
        propagateIfPossible(th);
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: X */
    public static <X1 extends Throwable, X2 extends Throwable> void propagateIfPossible(@Nullable Throwable th, Class<X1> cls, Class<X2> cls2) throws X {
        Preconditions.checkNotNull(cls2);
        propagateIfInstanceOf(th, cls);
        propagateIfPossible(th, cls2);
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: X */
    public static RuntimeException propagate(Throwable th) throws X {
        propagateIfPossible((Throwable) Preconditions.checkNotNull(th));
        throw new RuntimeException(th);
    }

    @CheckReturnValue
    public static Throwable getRootCause(Throwable th) {
        while (true) {
            Throwable cause = th.getCause();
            if (cause == null) {
                return th;
            }
            th = cause;
        }
    }

    @Beta
    @CheckReturnValue
    public static List<Throwable> getCausalChain(Throwable th) {
        Preconditions.checkNotNull(th);
        ArrayList arrayList = new ArrayList(4);
        while (th != null) {
            arrayList.add(th);
            th = th.getCause();
        }
        return Collections.unmodifiableList(arrayList);
    }

    @CheckReturnValue
    public static String getStackTraceAsString(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    @Beta
    @CheckReturnValue
    public static List<StackTraceElement> lazyStackTrace(Throwable th) {
        return lazyStackTraceIsLazy() ? a(th) : Collections.unmodifiableList(Arrays.asList(th.getStackTrace()));
    }

    @Beta
    @CheckReturnValue
    public static boolean lazyStackTraceIsLazy() {
        return (b != null) & (c != null);
    }

    private static List<StackTraceElement> a(final Throwable th) {
        Preconditions.checkNotNull(th);
        return new AbstractList<StackTraceElement>() { // from class: com.google.common.base.Throwables.1
            @Override // java.util.AbstractList, java.util.List
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public StackTraceElement get(int i) {
                return (StackTraceElement) Throwables.b(Throwables.b, Throwables.a, th, Integer.valueOf(i));
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public int size() {
                return ((Integer) Throwables.b(Throwables.c, Throwables.a, th)).intValue();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Object b(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (InvocationTargetException e2) {
            throw propagate(e2.getCause());
        }
    }

    static {
        b = a == null ? null : e();
        c = a != null ? f() : null;
    }

    @Nullable
    private static Object d() {
        try {
            return Class.forName("sun.misc.SharedSecrets", false, null).getMethod("getJavaLangAccess", new Class[0]).invoke(null, new Object[0]);
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
            return null;
        }
    }

    @Nullable
    private static Method e() {
        return a("getStackTraceElement", Throwable.class, Integer.TYPE);
    }

    @Nullable
    private static Method f() {
        return a("getStackTraceDepth", Throwable.class);
    }

    @Nullable
    private static Method a(String str, Class<?>... clsArr) {
        try {
            return Class.forName("sun.misc.JavaLangAccess", false, null).getMethod(str, clsArr);
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
            return null;
        }
    }
}
