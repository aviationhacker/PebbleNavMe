package com.google.common.base;

import com.google.common.annotations.VisibleForTesting;
import java.io.Closeable;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.lang.ref.PhantomReference;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.reflect.Method;
import java.net.URL;
import java.net.URLClassLoader;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Nullable;
import org.apache.commons.lang3.ClassUtils;

/* JADX INFO: loaded from: classes.dex */
public class FinalizableReferenceQueue implements Closeable {
    private static final Logger d = Logger.getLogger(FinalizableReferenceQueue.class.getName());
    private static final Method e = a(a(new d(), new a(), new b()));
    final ReferenceQueue<Object> a = new ReferenceQueue<>();
    final PhantomReference<Object> b = new PhantomReference<>(this, this.a);
    final boolean c;

    interface c {
        @Nullable
        Class<?> a();
    }

    public FinalizableReferenceQueue() {
        boolean z = true;
        try {
            e.invoke(null, FinalizableReference.class, this.a, this.b);
        } catch (IllegalAccessException e2) {
            throw new AssertionError(e2);
        } catch (Throwable th) {
            d.log(Level.INFO, "Failed to start reference finalizer thread. Reference cleanup will only occur when new references are created.", th);
            z = false;
        }
        this.c = z;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.b.enqueue();
        a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    void a() {
        if (this.c) {
            return;
        }
        while (true) {
            Reference<? extends Object> referencePoll = this.a.poll();
            if (referencePoll != 0) {
                referencePoll.clear();
                try {
                    ((FinalizableReference) referencePoll).finalizeReferent();
                } catch (Throwable th) {
                    d.log(Level.SEVERE, "Error cleaning up after reference.", th);
                }
            } else {
                return;
            }
        }
    }

    private static Class<?> a(c... cVarArr) {
        for (c cVar : cVarArr) {
            Class<?> clsA = cVar.a();
            if (clsA != null) {
                return clsA;
            }
        }
        throw new AssertionError();
    }

    static class d implements c {

        @VisibleForTesting
        static boolean a;

        d() {
        }

        @Override // com.google.common.base.FinalizableReferenceQueue.c
        public Class<?> a() {
            if (a) {
                return null;
            }
            try {
                ClassLoader systemClassLoader = ClassLoader.getSystemClassLoader();
                if (systemClassLoader == null) {
                    return null;
                }
                try {
                    return systemClassLoader.loadClass("com.google.common.base.internal.Finalizer");
                } catch (ClassNotFoundException e) {
                    return null;
                }
            } catch (SecurityException e2) {
                FinalizableReferenceQueue.d.info("Not allowed to access system class loader.");
                return null;
            }
        }
    }

    static class a implements c {
        a() {
        }

        @Override // com.google.common.base.FinalizableReferenceQueue.c
        public Class<?> a() {
            try {
                return a(b()).loadClass("com.google.common.base.internal.Finalizer");
            } catch (Exception e) {
                FinalizableReferenceQueue.d.log(Level.WARNING, "Could not load Finalizer in its own class loader. Loading Finalizer in the current class loader instead. As a result, you will not be able to garbage collect this class loader. To support reclaiming this class loader, either resolve the underlying issue, or move Guava to your system class path.", (Throwable) e);
                return null;
            }
        }

        URL b() throws IOException {
            String strConcat = String.valueOf("com.google.common.base.internal.Finalizer".replace(ClassUtils.PACKAGE_SEPARATOR_CHAR, '/')).concat(".class");
            URL resource = getClass().getClassLoader().getResource(strConcat);
            if (resource == null) {
                throw new FileNotFoundException(strConcat);
            }
            String string = resource.toString();
            if (!string.endsWith(strConcat)) {
                String strValueOf = String.valueOf(string);
                throw new IOException(strValueOf.length() != 0 ? "Unsupported path style: ".concat(strValueOf) : new String("Unsupported path style: "));
            }
            return new URL(resource, string.substring(0, string.length() - strConcat.length()));
        }

        URLClassLoader a(URL url) {
            return new URLClassLoader(new URL[]{url}, null);
        }
    }

    static class b implements c {
        b() {
        }

        @Override // com.google.common.base.FinalizableReferenceQueue.c
        public Class<?> a() {
            try {
                return Class.forName("com.google.common.base.internal.Finalizer");
            } catch (ClassNotFoundException e) {
                throw new AssertionError(e);
            }
        }
    }

    static Method a(Class<?> cls) {
        try {
            return cls.getMethod("startFinalizer", Class.class, ReferenceQueue.class, PhantomReference.class);
        } catch (NoSuchMethodException e2) {
            throw new AssertionError(e2);
        }
    }
}
