package defpackage;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;

/* JADX INFO: loaded from: classes.dex */
@GwtCompatible
public final class hu {
    public static void a(Object obj, Object obj2) {
        if (obj == null) {
            String strValueOf = String.valueOf(obj2);
            throw new NullPointerException(new StringBuilder(String.valueOf(strValueOf).length() + 24).append("null key in entry: null=").append(strValueOf).toString());
        }
        if (obj2 == null) {
            String strValueOf2 = String.valueOf(obj);
            throw new NullPointerException(new StringBuilder(String.valueOf(strValueOf2).length() + 26).append("null value in entry: ").append(strValueOf2).append("=null").toString());
        }
    }

    public static int a(int i, String str) {
        if (i < 0) {
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(str).length() + 40).append(str).append(" cannot be negative but was: ").append(i).toString());
        }
        return i;
    }

    public static void b(int i, String str) {
        if (i <= 0) {
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(str).length() + 38).append(str).append(" must be positive but was: ").append(i).toString());
        }
    }

    public static void a(boolean z) {
        Preconditions.checkState(z, "no calls to next() since the last call to remove()");
    }
}
