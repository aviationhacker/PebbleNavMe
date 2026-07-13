package android.support.v4.view;

import android.os.Build;
import android.view.KeyEvent;
import android.view.View;
import defpackage.cm;
import defpackage.cn;

/* JADX INFO: loaded from: classes.dex */
public class KeyEventCompat {
    static final d a;

    interface d {
        int a(int i);

        Object a(View view);

        void a(KeyEvent keyEvent);

        boolean a(int i, int i2);

        boolean a(KeyEvent keyEvent, KeyEvent.Callback callback, Object obj, Object obj2);

        boolean b(int i);

        boolean b(KeyEvent keyEvent);
    }

    static class a implements d {
        a() {
        }

        private static int a(int i, int i2, int i3, int i4, int i5) {
            boolean z = (i2 & i3) != 0;
            int i6 = i4 | i5;
            boolean z2 = (i2 & i6) != 0;
            if (z) {
                if (z2) {
                    throw new IllegalArgumentException("bad arguments");
                }
                return i & (i6 ^ (-1));
            }
            if (z2) {
                return i & (i3 ^ (-1));
            }
            return i;
        }

        @Override // android.support.v4.view.KeyEventCompat.d
        public int a(int i) {
            int i2 = (i & 192) != 0 ? i | 1 : i;
            if ((i2 & 48) != 0) {
                i2 |= 2;
            }
            return i2 & 247;
        }

        @Override // android.support.v4.view.KeyEventCompat.d
        public boolean a(int i, int i2) {
            return a(a(a(i) & 247, i2, 1, 64, 128), i2, 2, 16, 32) == i2;
        }

        @Override // android.support.v4.view.KeyEventCompat.d
        public boolean b(int i) {
            return (a(i) & 247) == 0;
        }

        @Override // android.support.v4.view.KeyEventCompat.d
        public void a(KeyEvent keyEvent) {
        }

        @Override // android.support.v4.view.KeyEventCompat.d
        public boolean b(KeyEvent keyEvent) {
            return false;
        }

        @Override // android.support.v4.view.KeyEventCompat.d
        public Object a(View view) {
            return null;
        }

        @Override // android.support.v4.view.KeyEventCompat.d
        public boolean a(KeyEvent keyEvent, KeyEvent.Callback callback, Object obj, Object obj2) {
            return keyEvent.dispatch(callback);
        }
    }

    static class b extends a {
        b() {
        }

        @Override // android.support.v4.view.KeyEventCompat.a, android.support.v4.view.KeyEventCompat.d
        public void a(KeyEvent keyEvent) {
            cm.a(keyEvent);
        }

        @Override // android.support.v4.view.KeyEventCompat.a, android.support.v4.view.KeyEventCompat.d
        public boolean b(KeyEvent keyEvent) {
            return cm.b(keyEvent);
        }

        @Override // android.support.v4.view.KeyEventCompat.a, android.support.v4.view.KeyEventCompat.d
        public Object a(View view) {
            return cm.a(view);
        }

        @Override // android.support.v4.view.KeyEventCompat.a, android.support.v4.view.KeyEventCompat.d
        public boolean a(KeyEvent keyEvent, KeyEvent.Callback callback, Object obj, Object obj2) {
            return cm.a(keyEvent, callback, obj, obj2);
        }
    }

    static class c extends b {
        c() {
        }

        @Override // android.support.v4.view.KeyEventCompat.a, android.support.v4.view.KeyEventCompat.d
        public int a(int i) {
            return cn.a(i);
        }

        @Override // android.support.v4.view.KeyEventCompat.a, android.support.v4.view.KeyEventCompat.d
        public boolean a(int i, int i2) {
            return cn.a(i, i2);
        }

        @Override // android.support.v4.view.KeyEventCompat.a, android.support.v4.view.KeyEventCompat.d
        public boolean b(int i) {
            return cn.b(i);
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 11) {
            a = new c();
        } else {
            a = new a();
        }
    }

    public static int normalizeMetaState(int i) {
        return a.a(i);
    }

    public static boolean metaStateHasModifiers(int i, int i2) {
        return a.a(i, i2);
    }

    public static boolean metaStateHasNoModifiers(int i) {
        return a.b(i);
    }

    public static boolean hasModifiers(KeyEvent keyEvent, int i) {
        return a.a(keyEvent.getMetaState(), i);
    }

    public static boolean hasNoModifiers(KeyEvent keyEvent) {
        return a.b(keyEvent.getMetaState());
    }

    public static void startTracking(KeyEvent keyEvent) {
        a.a(keyEvent);
    }

    public static boolean isTracking(KeyEvent keyEvent) {
        return a.b(keyEvent);
    }

    public static Object getKeyDispatcherState(View view) {
        return a.a(view);
    }

    public static boolean dispatch(KeyEvent keyEvent, KeyEvent.Callback callback, Object obj, Object obj2) {
        return a.a(keyEvent, callback, obj, obj2);
    }
}
