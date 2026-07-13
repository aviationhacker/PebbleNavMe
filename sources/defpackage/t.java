package defpackage;

import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public class t {
    private static Method a;
    private static boolean b;
    private static Method c;
    private static boolean d;

    public static IBinder a(Bundle bundle, String str) {
        if (!b) {
            try {
                a = Bundle.class.getMethod("getIBinder", String.class);
                a.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i("BundleCompatDonut", "Failed to retrieve getIBinder method", e);
            }
            b = true;
        }
        if (a != null) {
            try {
                return (IBinder) a.invoke(bundle, str);
            } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e2) {
                Log.i("BundleCompatDonut", "Failed to invoke getIBinder via reflection", e2);
                a = null;
            }
        }
        return null;
    }

    public static void a(Bundle bundle, String str, IBinder iBinder) {
        if (!d) {
            try {
                c = Bundle.class.getMethod("putIBinder", String.class, IBinder.class);
                c.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i("BundleCompatDonut", "Failed to retrieve putIBinder method", e);
            }
            d = true;
        }
        if (c != null) {
            try {
                c.invoke(bundle, str, iBinder);
            } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e2) {
                Log.i("BundleCompatDonut", "Failed to invoke putIBinder via reflection", e2);
                c = null;
            }
        }
    }
}
