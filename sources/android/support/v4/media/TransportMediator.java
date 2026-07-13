package android.support.v4.media;

import android.app.Activity;
import android.content.Context;
import android.media.AudioManager;
import android.os.Build;
import android.support.v4.view.KeyEventCompat;
import android.view.KeyEvent;
import android.view.View;
import defpackage.bo;
import defpackage.bp;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class TransportMediator extends TransportController {
    public static final int FLAG_KEY_MEDIA_FAST_FORWARD = 64;
    public static final int FLAG_KEY_MEDIA_NEXT = 128;
    public static final int FLAG_KEY_MEDIA_PAUSE = 16;
    public static final int FLAG_KEY_MEDIA_PLAY = 4;
    public static final int FLAG_KEY_MEDIA_PLAY_PAUSE = 8;
    public static final int FLAG_KEY_MEDIA_PREVIOUS = 1;
    public static final int FLAG_KEY_MEDIA_REWIND = 2;
    public static final int FLAG_KEY_MEDIA_STOP = 32;
    public static final int KEYCODE_MEDIA_PAUSE = 127;
    public static final int KEYCODE_MEDIA_PLAY = 126;
    public static final int KEYCODE_MEDIA_RECORD = 130;
    final Context a;
    final TransportPerformer b;
    final AudioManager c;
    final View d;
    final Object e;
    final bp f;
    final ArrayList<TransportStateListener> g;
    final bo h;
    final KeyEvent.Callback i;

    static boolean a(int i) {
        switch (i) {
            case 79:
            case 85:
            case 86:
            case 87:
            case 88:
            case 89:
            case 90:
            case 91:
            case KEYCODE_MEDIA_PLAY /* 126 */:
            case KEYCODE_MEDIA_PAUSE /* 127 */:
            case KEYCODE_MEDIA_RECORD /* 130 */:
                return true;
            default:
                return false;
        }
    }

    public TransportMediator(Activity activity, TransportPerformer transportPerformer) {
        this(activity, null, transportPerformer);
    }

    public TransportMediator(View view, TransportPerformer transportPerformer) {
        this(null, view, transportPerformer);
    }

    private TransportMediator(Activity activity, View view, TransportPerformer transportPerformer) {
        this.g = new ArrayList<>();
        this.h = new bo() { // from class: android.support.v4.media.TransportMediator.1
            @Override // defpackage.bo
            public void a(KeyEvent keyEvent) {
                keyEvent.dispatch(TransportMediator.this.i);
            }

            @Override // defpackage.bo
            public void a(int i) {
                TransportMediator.this.b.onAudioFocusChange(i);
            }

            @Override // defpackage.bo
            public long a() {
                return TransportMediator.this.b.onGetCurrentPosition();
            }

            @Override // defpackage.bo
            public void a(long j) {
                TransportMediator.this.b.onSeekTo(j);
            }
        };
        this.i = new KeyEvent.Callback() { // from class: android.support.v4.media.TransportMediator.2
            @Override // android.view.KeyEvent.Callback
            public boolean onKeyDown(int i, KeyEvent keyEvent) {
                if (TransportMediator.a(i)) {
                    return TransportMediator.this.b.onMediaButtonDown(i, keyEvent);
                }
                return false;
            }

            @Override // android.view.KeyEvent.Callback
            public boolean onKeyLongPress(int i, KeyEvent keyEvent) {
                return false;
            }

            @Override // android.view.KeyEvent.Callback
            public boolean onKeyUp(int i, KeyEvent keyEvent) {
                if (TransportMediator.a(i)) {
                    return TransportMediator.this.b.onMediaButtonUp(i, keyEvent);
                }
                return false;
            }

            @Override // android.view.KeyEvent.Callback
            public boolean onKeyMultiple(int i, int i2, KeyEvent keyEvent) {
                return false;
            }
        };
        this.a = activity != null ? activity : view.getContext();
        this.b = transportPerformer;
        this.c = (AudioManager) this.a.getSystemService("audio");
        this.d = activity != null ? activity.getWindow().getDecorView() : view;
        this.e = KeyEventCompat.getKeyDispatcherState(this.d);
        if (Build.VERSION.SDK_INT >= 18) {
            this.f = new bp(this.a, this.c, this.d, this.h);
        } else {
            this.f = null;
        }
    }

    public Object getRemoteControlClient() {
        if (this.f != null) {
            return this.f.a();
        }
        return null;
    }

    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return KeyEventCompat.dispatch(keyEvent, this.i, this.e, this);
    }

    @Override // android.support.v4.media.TransportController
    public void registerStateListener(TransportStateListener transportStateListener) {
        this.g.add(transportStateListener);
    }

    @Override // android.support.v4.media.TransportController
    public void unregisterStateListener(TransportStateListener transportStateListener) {
        this.g.remove(transportStateListener);
    }

    private TransportStateListener[] a() {
        if (this.g.size() <= 0) {
            return null;
        }
        TransportStateListener[] transportStateListenerArr = new TransportStateListener[this.g.size()];
        this.g.toArray(transportStateListenerArr);
        return transportStateListenerArr;
    }

    private void b() {
        TransportStateListener[] transportStateListenerArrA = a();
        if (transportStateListenerArrA != null) {
            for (TransportStateListener transportStateListener : transportStateListenerArrA) {
                transportStateListener.onPlayingChanged(this);
            }
        }
    }

    private void c() {
        TransportStateListener[] transportStateListenerArrA = a();
        if (transportStateListenerArrA != null) {
            for (TransportStateListener transportStateListener : transportStateListenerArrA) {
                transportStateListener.onTransportControlsChanged(this);
            }
        }
    }

    private void d() {
        if (this.f != null) {
            this.f.a(this.b.onIsPlaying(), this.b.onGetCurrentPosition(), this.b.onGetTransportControlFlags());
        }
    }

    public void refreshState() {
        d();
        b();
        c();
    }

    @Override // android.support.v4.media.TransportController
    public void startPlaying() {
        if (this.f != null) {
            this.f.f();
        }
        this.b.onStart();
        d();
        b();
    }

    @Override // android.support.v4.media.TransportController
    public void pausePlaying() {
        if (this.f != null) {
            this.f.g();
        }
        this.b.onPause();
        d();
        b();
    }

    @Override // android.support.v4.media.TransportController
    public void stopPlaying() {
        if (this.f != null) {
            this.f.h();
        }
        this.b.onStop();
        d();
        b();
    }

    @Override // android.support.v4.media.TransportController
    public long getDuration() {
        return this.b.onGetDuration();
    }

    @Override // android.support.v4.media.TransportController
    public long getCurrentPosition() {
        return this.b.onGetCurrentPosition();
    }

    @Override // android.support.v4.media.TransportController
    public void seekTo(long j) {
        this.b.onSeekTo(j);
    }

    @Override // android.support.v4.media.TransportController
    public boolean isPlaying() {
        return this.b.onIsPlaying();
    }

    @Override // android.support.v4.media.TransportController
    public int getBufferPercentage() {
        return this.b.onGetBufferPercentage();
    }

    @Override // android.support.v4.media.TransportController
    public int getTransportControlFlags() {
        return this.b.onGetTransportControlFlags();
    }

    public void destroy() {
        this.f.b();
    }
}
