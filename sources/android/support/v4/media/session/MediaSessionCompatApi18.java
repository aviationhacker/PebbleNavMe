package android.support.v4.media.session;

import android.app.PendingIntent;
import android.content.Context;
import android.media.AudioManager;
import android.media.RemoteControlClient;
import android.os.SystemClock;
import android.support.v4.media.session.MediaSessionCompatApi14;

/* JADX INFO: loaded from: classes.dex */
public class MediaSessionCompatApi18 {
    public static Object createPlaybackPositionUpdateListener(MediaSessionCompatApi14.Callback callback) {
        return new a(callback);
    }

    public static void registerMediaButtonEventReceiver(Context context, PendingIntent pendingIntent) {
        ((AudioManager) context.getSystemService("audio")).registerMediaButtonEventReceiver(pendingIntent);
    }

    public static void unregisterMediaButtonEventReceiver(Context context, PendingIntent pendingIntent) {
        ((AudioManager) context.getSystemService("audio")).unregisterMediaButtonEventReceiver(pendingIntent);
    }

    public static void setState(Object obj, int i, long j, float f, long j2) {
        long j3 = 0;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (i == 3 && j > 0) {
            if (j2 > 0) {
                j3 = jElapsedRealtime - j2;
                if (f > 0.0f && f != 1.0f) {
                    j3 = (long) (j3 * f);
                }
            }
            j += j3;
        }
        ((RemoteControlClient) obj).setPlaybackState(MediaSessionCompatApi14.a(i), j, f);
    }

    public static void setTransportControlFlags(Object obj, long j) {
        ((RemoteControlClient) obj).setTransportControlFlags(a(j));
    }

    public static void setOnPlaybackPositionUpdateListener(Object obj, Object obj2) {
        ((RemoteControlClient) obj).setPlaybackPositionUpdateListener((RemoteControlClient.OnPlaybackPositionUpdateListener) obj2);
    }

    static int a(long j) {
        int iA = MediaSessionCompatApi14.a(j);
        if ((256 & j) != 0) {
            return iA | 256;
        }
        return iA;
    }

    static class a<T extends MediaSessionCompatApi14.Callback> implements RemoteControlClient.OnPlaybackPositionUpdateListener {
        protected final T a;

        public a(T t) {
            this.a = t;
        }

        @Override // android.media.RemoteControlClient.OnPlaybackPositionUpdateListener
        public void onPlaybackPositionUpdate(long j) {
            this.a.onSeekTo(j);
        }
    }
}
