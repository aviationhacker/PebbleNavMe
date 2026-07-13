package com.google.common.base.internal;

import java.lang.ref.PhantomReference;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes.dex */
public class Finalizer implements Runnable {
    private static final Logger a = Logger.getLogger(Finalizer.class.getName());
    private static final Field e = getInheritableThreadLocalsField();
    private final WeakReference<Class<?>> b;
    private final PhantomReference<Object> c;
    private final ReferenceQueue<Object> d;

    public static void startFinalizer(Class<?> cls, ReferenceQueue<Object> referenceQueue, PhantomReference<Object> phantomReference) {
        if (!cls.getName().equals("com.google.common.base.FinalizableReference")) {
            throw new IllegalArgumentException("Expected com.google.common.base.FinalizableReference.");
        }
        Thread thread = new Thread(new Finalizer(cls, referenceQueue, phantomReference));
        thread.setName(Finalizer.class.getName());
        thread.setDaemon(true);
        try {
            if (e != null) {
                e.set(thread, null);
            }
        } catch (Throwable th) {
            a.log(Level.INFO, "Failed to clear thread local values inherited by reference finalizer thread.", th);
        }
        thread.start();
    }

    private Finalizer(Class<?> cls, ReferenceQueue<Object> referenceQueue, PhantomReference<Object> phantomReference) {
        this.d = referenceQueue;
        this.b = new WeakReference<>(cls);
        this.c = phantomReference;
    }

    @Override // java.lang.Runnable
    public void run() {
        while (a(this.d.remove())) {
        }
    }

    private boolean a(Reference<?> reference) {
        Method methodA = a();
        if (methodA == null) {
            return false;
        }
        do {
            reference.clear();
            if (reference == this.c) {
                return false;
            }
            try {
                methodA.invoke(reference, new Object[0]);
            } catch (Throwable th) {
                a.log(Level.SEVERE, "Error cleaning up after reference.", th);
            }
            reference = this.d.poll();
        } while (reference != null);
        return true;
    }

    private Method a() {
        Class<?> cls = this.b.get();
        if (cls == null) {
            return null;
        }
        try {
            return cls.getMethod("finalizeReferent", new Class[0]);
        } catch (NoSuchMethodException e2) {
            throw new AssertionError(e2);
        }
    }

    public static Field getInheritableThreadLocalsField() {
        try {
            Field declaredField = Thread.class.getDeclaredField("inheritableThreadLocals");
            declaredField.setAccessible(true);
            return declaredField;
        } catch (Throwable th) {
            a.log(Level.INFO, "Couldn't access Thread.inheritableThreadLocals. Reference finalizer threads will inherit thread local values.");
            return null;
        }
    }
}
