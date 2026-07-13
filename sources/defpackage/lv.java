package defpackage;

import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.collect.Ordering;
import com.google.common.util.concurrent.ExecutionError;
import com.google.common.util.concurrent.UncheckedExecutionException;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class lv {
    private static final Ordering<Constructor<?>> a = Ordering.natural().onResultOf(new Function<Constructor<?>, Boolean>() { // from class: lv.1
        @Override // com.google.common.base.Function
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Boolean apply(Constructor<?> constructor) {
            return Boolean.valueOf(Arrays.asList(constructor.getParameterTypes()).contains(String.class));
        }
    }).reverse();

    @VisibleForTesting
    interface a {
        void a(Class<? extends Exception> cls);
    }

    public static <V, X extends Exception> V a(Future<V> future, Class<X> cls) {
        return (V) a(b(), future, cls);
    }

    @VisibleForTesting
    static <V, X extends Exception> V a(a aVar, Future<V> future, Class<X> cls) throws Exception {
        aVar.a(cls);
        try {
            return future.get();
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            throw a(cls, e);
        } catch (ExecutionException e2) {
            a(e2.getCause(), cls);
            throw new AssertionError();
        }
    }

    public static <V, X extends Exception> V a(Future<V> future, Class<X> cls, long j, TimeUnit timeUnit) throws Exception {
        b().a(cls);
        try {
            return future.get(j, timeUnit);
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            throw a(cls, e);
        } catch (ExecutionException e2) {
            a(e2.getCause(), cls);
            throw new AssertionError();
        } catch (TimeoutException e3) {
            throw a(cls, e3);
        }
    }

    private static a b() {
        return b.b;
    }

    @VisibleForTesting
    static a a() {
        return b.a.INSTANCE;
    }

    @VisibleForTesting
    static class b {
        static final String a = String.valueOf(b.class.getName()).concat("$ClassValueValidator");
        static final a b = a();

        b() {
        }

        enum a implements a {
            INSTANCE;

            private static final Set<WeakReference<Class<? extends Exception>>> b = new CopyOnWriteArraySet();

            @Override // lv.a
            public void a(Class<? extends Exception> cls) {
                Iterator<WeakReference<Class<? extends Exception>>> it = b.iterator();
                while (it.hasNext()) {
                    if (cls.equals(it.next().get())) {
                        return;
                    }
                }
                lv.b(cls);
                if (b.size() > 1000) {
                    b.clear();
                }
                b.add(new WeakReference<>(cls));
            }
        }

        static a a() {
            try {
                return (a) Class.forName(a).getEnumConstants()[0];
            } catch (Throwable th) {
                return lv.a();
            }
        }
    }

    private static <X extends Exception> void a(Throwable th, Class<X> cls) throws Exception {
        if (th instanceof Error) {
            throw new ExecutionError((Error) th);
        }
        if (th instanceof RuntimeException) {
            throw new UncheckedExecutionException(th);
        }
        throw a(cls, th);
    }

    private static boolean c(Class<? extends Exception> cls) {
        try {
            a(cls, new Exception());
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    private static <X extends Exception> X a(Class<X> cls, Throwable th) {
        Iterator it = a(Arrays.asList(cls.getConstructors())).iterator();
        while (it.hasNext()) {
            X x = (X) a((Constructor) it.next(), th);
            if (x != null) {
                if (x.getCause() == null) {
                    x.initCause(th);
                }
                return x;
            }
        }
        String strValueOf = String.valueOf(cls);
        throw new IllegalArgumentException(new StringBuilder(String.valueOf(strValueOf).length() + 82).append("No appropriate constructor for exception of type ").append(strValueOf).append(" in response to chained exception").toString(), th);
    }

    private static <X extends Exception> List<Constructor<X>> a(List<Constructor<X>> list) {
        return (List<Constructor<X>>) a.sortedCopy(list);
    }

    @Nullable
    private static <X> X a(Constructor<X> constructor, Throwable th) {
        Class<?>[] parameterTypes = constructor.getParameterTypes();
        Object[] objArr = new Object[parameterTypes.length];
        for (int i = 0; i < parameterTypes.length; i++) {
            Class<?> cls = parameterTypes[i];
            if (cls.equals(String.class)) {
                objArr[i] = th.toString();
            } else {
                if (!cls.equals(Throwable.class)) {
                    return null;
                }
                objArr[i] = th;
            }
        }
        try {
            return constructor.newInstance(objArr);
        } catch (IllegalAccessException e) {
            return null;
        } catch (IllegalArgumentException e2) {
            return null;
        } catch (InstantiationException e3) {
            return null;
        } catch (InvocationTargetException e4) {
            return null;
        }
    }

    @VisibleForTesting
    static boolean a(Class<? extends Exception> cls) {
        return !RuntimeException.class.isAssignableFrom(cls);
    }

    @VisibleForTesting
    static void b(Class<? extends Exception> cls) {
        Preconditions.checkArgument(a(cls), "Futures.getChecked exception type (%s) must not be a RuntimeException", cls);
        Preconditions.checkArgument(c(cls), "Futures.getChecked exception type (%s) must be an accessible class with an accessible constructor whose parameters (if any) must be of type String and/or Throwable", cls);
    }
}
