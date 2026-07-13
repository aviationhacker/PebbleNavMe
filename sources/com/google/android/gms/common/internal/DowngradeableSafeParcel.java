package com.google.android.gms.common.internal;

import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: loaded from: classes.dex */
public abstract class DowngradeableSafeParcel implements SafeParcelable {
    private static final Object a = new Object();
    private static ClassLoader b = null;
    private static Integer c = null;
    private boolean d = false;

    private static boolean a(Class<?> cls) {
        try {
            return SafeParcelable.NULL.equals(cls.getField("NULL").get(null));
        } catch (IllegalAccessException e) {
            return false;
        } catch (NoSuchFieldException e2) {
            return false;
        }
    }

    protected static boolean zzck(String str) {
        ClassLoader classLoaderZzoS = zzoS();
        if (classLoaderZzoS == null) {
            return true;
        }
        try {
            return a(classLoaderZzoS.loadClass(str));
        } catch (Exception e) {
            return false;
        }
    }

    protected static ClassLoader zzoS() {
        ClassLoader classLoader;
        synchronized (a) {
            classLoader = b;
        }
        return classLoader;
    }

    protected static Integer zzoT() {
        Integer num;
        synchronized (a) {
            num = c;
        }
        return num;
    }

    protected boolean zzoU() {
        return this.d;
    }
}
