package android.support.v4.media;

import android.os.Build;
import android.support.v4.media.VolumeProviderCompatApi21;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
public abstract class VolumeProviderCompat {
    public static final int VOLUME_CONTROL_ABSOLUTE = 2;
    public static final int VOLUME_CONTROL_FIXED = 0;
    public static final int VOLUME_CONTROL_RELATIVE = 1;
    private final int a;
    private final int b;
    private int c;
    private Callback d;
    private Object e;

    public static abstract class Callback {
        public abstract void onVolumeChanged(VolumeProviderCompat volumeProviderCompat);
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ControlType {
    }

    public VolumeProviderCompat(int i, int i2, int i3) {
        this.a = i;
        this.b = i2;
        this.c = i3;
    }

    public final int getCurrentVolume() {
        return this.c;
    }

    public final int getVolumeControl() {
        return this.a;
    }

    public final int getMaxVolume() {
        return this.b;
    }

    public final void setCurrentVolume(int i) {
        this.c = i;
        Object volumeProvider = getVolumeProvider();
        if (volumeProvider != null) {
            VolumeProviderCompatApi21.a(volumeProvider, i);
        }
        if (this.d != null) {
            this.d.onVolumeChanged(this);
        }
    }

    public void onSetVolumeTo(int i) {
    }

    public void onAdjustVolume(int i) {
    }

    public void setCallback(Callback callback) {
        this.d = callback;
    }

    public Object getVolumeProvider() {
        if (this.e != null || Build.VERSION.SDK_INT < 21) {
            return this.e;
        }
        this.e = VolumeProviderCompatApi21.a(this.a, this.b, this.c, new VolumeProviderCompatApi21.Delegate() { // from class: android.support.v4.media.VolumeProviderCompat.1
            @Override // android.support.v4.media.VolumeProviderCompatApi21.Delegate
            public void onSetVolumeTo(int i) {
                VolumeProviderCompat.this.onSetVolumeTo(i);
            }

            @Override // android.support.v4.media.VolumeProviderCompatApi21.Delegate
            public void onAdjustVolume(int i) {
                VolumeProviderCompat.this.onAdjustVolume(i);
            }
        });
        return this.e;
    }
}
