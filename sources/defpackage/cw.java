package defpackage;

import android.view.MotionEvent;

/* JADX INFO: loaded from: classes.dex */
public class cw {
    public static float a(MotionEvent motionEvent, int i) {
        return motionEvent.getAxisValue(i);
    }

    public static float a(MotionEvent motionEvent, int i, int i2) {
        return motionEvent.getAxisValue(i, i2);
    }
}
