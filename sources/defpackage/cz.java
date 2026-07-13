package defpackage;

import android.view.VelocityTracker;

/* JADX INFO: loaded from: classes.dex */
public class cz {
    public static float a(VelocityTracker velocityTracker, int i) {
        return velocityTracker.getXVelocity(i);
    }

    public static float b(VelocityTracker velocityTracker, int i) {
        return velocityTracker.getYVelocity(i);
    }
}
