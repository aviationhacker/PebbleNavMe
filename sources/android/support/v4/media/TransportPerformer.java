package android.support.v4.media;

import android.os.SystemClock;
import android.view.KeyEvent;

/* JADX INFO: loaded from: classes.dex */
public abstract class TransportPerformer {
    public abstract long onGetCurrentPosition();

    public abstract long onGetDuration();

    public abstract boolean onIsPlaying();

    public abstract void onPause();

    public abstract void onSeekTo(long j);

    public abstract void onStart();

    public abstract void onStop();

    public int onGetBufferPercentage() {
        return 100;
    }

    public int onGetTransportControlFlags() {
        return 60;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public boolean onMediaButtonDown(int i, KeyEvent keyEvent) {
        switch (i) {
            case 79:
            case 85:
                if (onIsPlaying()) {
                    onPause();
                } else {
                    onStart();
                }
                return true;
            case 86:
                onStop();
                return true;
            case TransportMediator.KEYCODE_MEDIA_PLAY /* 126 */:
                onStart();
                return true;
            case TransportMediator.KEYCODE_MEDIA_PAUSE /* 127 */:
                onPause();
                return true;
            default:
                return true;
        }
    }

    public boolean onMediaButtonUp(int i, KeyEvent keyEvent) {
        return true;
    }

    public void onAudioFocusChange(int i) {
        int i2 = 0;
        switch (i) {
            case -1:
                i2 = TransportMediator.KEYCODE_MEDIA_PAUSE;
                break;
        }
        if (i2 != 0) {
            long jUptimeMillis = SystemClock.uptimeMillis();
            onMediaButtonDown(i2, new KeyEvent(jUptimeMillis, jUptimeMillis, 0, i2, 0));
            onMediaButtonUp(i2, new KeyEvent(jUptimeMillis, jUptimeMillis, 1, i2, 0));
        }
    }
}
