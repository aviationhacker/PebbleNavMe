package android.support.v4.view;

import android.os.Build;
import android.view.VelocityTracker;
import defpackage.cz;

/* JADX INFO: loaded from: classes.dex */
public class VelocityTrackerCompat {
    static final c a;

    interface c {
        float a(VelocityTracker velocityTracker, int i);

        float b(VelocityTracker velocityTracker, int i);
    }

    static class a implements c {
        a() {
        }

        @Override // android.support.v4.view.VelocityTrackerCompat.c
        public float a(VelocityTracker velocityTracker, int i) {
            return velocityTracker.getXVelocity();
        }

        @Override // android.support.v4.view.VelocityTrackerCompat.c
        public float b(VelocityTracker velocityTracker, int i) {
            return velocityTracker.getYVelocity();
        }
    }

    static class b implements c {
        b() {
        }

        @Override // android.support.v4.view.VelocityTrackerCompat.c
        public float a(VelocityTracker velocityTracker, int i) {
            return cz.a(velocityTracker, i);
        }

        @Override // android.support.v4.view.VelocityTrackerCompat.c
        public float b(VelocityTracker velocityTracker, int i) {
            return cz.b(velocityTracker, i);
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 11) {
            a = new b();
        } else {
            a = new a();
        }
    }

    public static float getXVelocity(VelocityTracker velocityTracker, int i) {
        return a.a(velocityTracker, i);
    }

    public static float getYVelocity(VelocityTracker velocityTracker, int i) {
        return a.b(velocityTracker, i);
    }
}
