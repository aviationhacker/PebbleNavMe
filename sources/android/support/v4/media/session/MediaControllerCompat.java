package android.support.v4.media.session;

import android.app.PendingIntent;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.RatingCompat;
import android.support.v4.media.session.IMediaControllerCallback;
import android.support.v4.media.session.IMediaSession;
import android.support.v4.media.session.MediaControllerCompatApi21;
import android.support.v4.media.session.MediaControllerCompatApi23;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class MediaControllerCompat {
    private final a a;
    private final MediaSessionCompat.Token b;

    interface a {
        TransportControls a();

        void a(int i, int i2);

        void a(Callback callback);

        void a(Callback callback, Handler handler);

        void a(String str, Bundle bundle, ResultReceiver resultReceiver);

        boolean a(KeyEvent keyEvent);

        PlaybackStateCompat b();

        void b(int i, int i2);

        MediaMetadataCompat c();

        List<MediaSessionCompat.QueueItem> d();

        CharSequence e();

        Bundle f();

        int g();

        long h();

        PlaybackInfo i();

        PendingIntent j();

        String k();

        Object l();
    }

    public MediaControllerCompat(Context context, MediaSessionCompat mediaSessionCompat) {
        if (mediaSessionCompat == null) {
            throw new IllegalArgumentException("session must not be null");
        }
        this.b = mediaSessionCompat.getSessionToken();
        if (Build.VERSION.SDK_INT >= 23) {
            this.a = new c(context, mediaSessionCompat);
        } else if (Build.VERSION.SDK_INT >= 21) {
            this.a = new b(context, mediaSessionCompat);
        } else {
            this.a = new d(this.b);
        }
    }

    public MediaControllerCompat(Context context, MediaSessionCompat.Token token) {
        if (token == null) {
            throw new IllegalArgumentException("sessionToken must not be null");
        }
        this.b = token;
        if (Build.VERSION.SDK_INT >= 21) {
            this.a = new b(context, token);
        } else {
            this.a = new d(this.b);
        }
    }

    public TransportControls getTransportControls() {
        return this.a.a();
    }

    public boolean dispatchMediaButtonEvent(KeyEvent keyEvent) {
        if (keyEvent == null) {
            throw new IllegalArgumentException("KeyEvent may not be null");
        }
        return this.a.a(keyEvent);
    }

    public PlaybackStateCompat getPlaybackState() {
        return this.a.b();
    }

    public MediaMetadataCompat getMetadata() {
        return this.a.c();
    }

    public List<MediaSessionCompat.QueueItem> getQueue() {
        return this.a.d();
    }

    public CharSequence getQueueTitle() {
        return this.a.e();
    }

    public Bundle getExtras() {
        return this.a.f();
    }

    public int getRatingType() {
        return this.a.g();
    }

    public long getFlags() {
        return this.a.h();
    }

    public PlaybackInfo getPlaybackInfo() {
        return this.a.i();
    }

    public PendingIntent getSessionActivity() {
        return this.a.j();
    }

    public MediaSessionCompat.Token getSessionToken() {
        return this.b;
    }

    public void setVolumeTo(int i, int i2) {
        this.a.a(i, i2);
    }

    public void adjustVolume(int i, int i2) {
        this.a.b(i, i2);
    }

    public void registerCallback(Callback callback) {
        registerCallback(callback, null);
    }

    public void registerCallback(Callback callback, Handler handler) {
        if (callback == null) {
            throw new IllegalArgumentException("callback cannot be null");
        }
        if (handler == null) {
            handler = new Handler();
        }
        this.a.a(callback, handler);
    }

    public void unregisterCallback(Callback callback) {
        if (callback == null) {
            throw new IllegalArgumentException("callback cannot be null");
        }
        this.a.a(callback);
    }

    public void sendCommand(String str, Bundle bundle, ResultReceiver resultReceiver) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("command cannot be null or empty");
        }
        this.a.a(str, bundle, resultReceiver);
    }

    public String getPackageName() {
        return this.a.k();
    }

    public Object getMediaController() {
        return this.a.l();
    }

    public static abstract class Callback implements IBinder.DeathRecipient {
        private final Object a;
        private a b;
        private boolean c = false;

        public Callback() {
            if (Build.VERSION.SDK_INT >= 21) {
                this.a = MediaControllerCompatApi21.a((MediaControllerCompatApi21.Callback) new b());
            } else {
                this.a = new c();
            }
        }

        public void onSessionDestroyed() {
        }

        public void onSessionEvent(String str, Bundle bundle) {
        }

        public void onPlaybackStateChanged(PlaybackStateCompat playbackStateCompat) {
        }

        public void onMetadataChanged(MediaMetadataCompat mediaMetadataCompat) {
        }

        public void onQueueChanged(List<MediaSessionCompat.QueueItem> list) {
        }

        public void onQueueTitleChanged(CharSequence charSequence) {
        }

        public void onExtrasChanged(Bundle bundle) {
        }

        public void onAudioInfoChanged(PlaybackInfo playbackInfo) {
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            onSessionDestroyed();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(Handler handler) {
            this.b = new a(handler.getLooper());
        }

        class b implements MediaControllerCompatApi21.Callback {
            private b() {
            }

            @Override // android.support.v4.media.session.MediaControllerCompatApi21.Callback
            public void onSessionDestroyed() {
                Callback.this.onSessionDestroyed();
            }

            @Override // android.support.v4.media.session.MediaControllerCompatApi21.Callback
            public void onSessionEvent(String str, Bundle bundle) {
                Callback.this.onSessionEvent(str, bundle);
            }

            @Override // android.support.v4.media.session.MediaControllerCompatApi21.Callback
            public void onPlaybackStateChanged(Object obj) {
                Callback.this.onPlaybackStateChanged(PlaybackStateCompat.fromPlaybackState(obj));
            }

            @Override // android.support.v4.media.session.MediaControllerCompatApi21.Callback
            public void onMetadataChanged(Object obj) {
                Callback.this.onMetadataChanged(MediaMetadataCompat.fromMediaMetadata(obj));
            }
        }

        class c extends IMediaControllerCallback.Stub {
            private c() {
            }

            @Override // android.support.v4.media.session.IMediaControllerCallback
            public void onEvent(String str, Bundle bundle) {
                Callback.this.b.a(1, str, bundle);
            }

            @Override // android.support.v4.media.session.IMediaControllerCallback
            public void onSessionDestroyed() {
                Callback.this.b.a(8, null, null);
            }

            @Override // android.support.v4.media.session.IMediaControllerCallback
            public void onPlaybackStateChanged(PlaybackStateCompat playbackStateCompat) {
                Callback.this.b.a(2, playbackStateCompat, null);
            }

            @Override // android.support.v4.media.session.IMediaControllerCallback
            public void onMetadataChanged(MediaMetadataCompat mediaMetadataCompat) {
                Callback.this.b.a(3, mediaMetadataCompat, null);
            }

            @Override // android.support.v4.media.session.IMediaControllerCallback
            public void onQueueChanged(List<MediaSessionCompat.QueueItem> list) {
                Callback.this.b.a(5, list, null);
            }

            @Override // android.support.v4.media.session.IMediaControllerCallback
            public void onQueueTitleChanged(CharSequence charSequence) {
                Callback.this.b.a(6, charSequence, null);
            }

            @Override // android.support.v4.media.session.IMediaControllerCallback
            public void onExtrasChanged(Bundle bundle) {
                Callback.this.b.a(7, bundle, null);
            }

            @Override // android.support.v4.media.session.IMediaControllerCallback
            public void onVolumeInfoChanged(ParcelableVolumeInfo parcelableVolumeInfo) {
                Callback.this.b.a(4, parcelableVolumeInfo != null ? new PlaybackInfo(parcelableVolumeInfo.volumeType, parcelableVolumeInfo.audioStream, parcelableVolumeInfo.controlType, parcelableVolumeInfo.maxVolume, parcelableVolumeInfo.currentVolume) : null, null);
            }
        }

        class a extends Handler {
            public a(Looper looper) {
                super(looper);
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (Callback.this.c) {
                    switch (message.what) {
                        case 1:
                            Callback.this.onSessionEvent((String) message.obj, message.getData());
                            break;
                        case 2:
                            Callback.this.onPlaybackStateChanged((PlaybackStateCompat) message.obj);
                            break;
                        case 3:
                            Callback.this.onMetadataChanged((MediaMetadataCompat) message.obj);
                            break;
                        case 4:
                            Callback.this.onAudioInfoChanged((PlaybackInfo) message.obj);
                            break;
                        case 5:
                            Callback.this.onQueueChanged((List) message.obj);
                            break;
                        case 6:
                            Callback.this.onQueueTitleChanged((CharSequence) message.obj);
                            break;
                        case 7:
                            Callback.this.onExtrasChanged((Bundle) message.obj);
                            break;
                        case 8:
                            Callback.this.onSessionDestroyed();
                            break;
                    }
                }
            }

            public void a(int i, Object obj, Bundle bundle) {
                obtainMessage(i, obj).sendToTarget();
            }
        }
    }

    public static abstract class TransportControls {
        public abstract void fastForward();

        public abstract void pause();

        public abstract void play();

        public abstract void playFromMediaId(String str, Bundle bundle);

        public abstract void playFromSearch(String str, Bundle bundle);

        public abstract void playFromUri(Uri uri, Bundle bundle);

        public abstract void rewind();

        public abstract void seekTo(long j);

        public abstract void sendCustomAction(PlaybackStateCompat.CustomAction customAction, Bundle bundle);

        public abstract void sendCustomAction(String str, Bundle bundle);

        public abstract void setRating(RatingCompat ratingCompat);

        public abstract void skipToNext();

        public abstract void skipToPrevious();

        public abstract void skipToQueueItem(long j);

        public abstract void stop();

        TransportControls() {
        }
    }

    public static final class PlaybackInfo {
        public static final int PLAYBACK_TYPE_LOCAL = 1;
        public static final int PLAYBACK_TYPE_REMOTE = 2;
        private final int a;
        private final int b;
        private final int c;
        private final int d;
        private final int e;

        PlaybackInfo(int i, int i2, int i3, int i4, int i5) {
            this.a = i;
            this.b = i2;
            this.c = i3;
            this.d = i4;
            this.e = i5;
        }

        public int getPlaybackType() {
            return this.a;
        }

        public int getAudioStream() {
            return this.b;
        }

        public int getVolumeControl() {
            return this.c;
        }

        public int getMaxVolume() {
            return this.d;
        }

        public int getCurrentVolume() {
            return this.e;
        }
    }

    static class d implements a {
        private MediaSessionCompat.Token a;
        private IMediaSession b;
        private TransportControls c;

        public d(MediaSessionCompat.Token token) {
            this.a = token;
            this.b = IMediaSession.Stub.asInterface((IBinder) token.getToken());
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.a
        public void a(Callback callback, Handler handler) {
            if (callback == null) {
                throw new IllegalArgumentException("callback may not be null.");
            }
            try {
                this.b.asBinder().linkToDeath(callback, 0);
                this.b.registerCallbackListener((IMediaControllerCallback) callback.a);
                callback.a(handler);
                callback.c = true;
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in registerCallback. " + e);
                callback.onSessionDestroyed();
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.a
        public void a(Callback callback) {
            if (callback != null) {
                try {
                    this.b.unregisterCallbackListener((IMediaControllerCallback) callback.a);
                    this.b.asBinder().unlinkToDeath(callback, 0);
                    callback.c = false;
                    return;
                } catch (RemoteException e) {
                    Log.e("MediaControllerCompat", "Dead object in unregisterCallback. " + e);
                    return;
                }
            }
            throw new IllegalArgumentException("callback may not be null.");
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.a
        public boolean a(KeyEvent keyEvent) {
            if (keyEvent == null) {
                throw new IllegalArgumentException("event may not be null.");
            }
            try {
                this.b.sendMediaButton(keyEvent);
                return false;
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in dispatchMediaButtonEvent. " + e);
                return false;
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.a
        public TransportControls a() {
            if (this.c == null) {
                this.c = new g(this.b);
            }
            return this.c;
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.a
        public PlaybackStateCompat b() {
            try {
                return this.b.getPlaybackState();
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in getPlaybackState. " + e);
                return null;
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.a
        public MediaMetadataCompat c() {
            try {
                return this.b.getMetadata();
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in getMetadata. " + e);
                return null;
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.a
        public List<MediaSessionCompat.QueueItem> d() {
            try {
                return this.b.getQueue();
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in getQueue. " + e);
                return null;
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.a
        public CharSequence e() {
            try {
                return this.b.getQueueTitle();
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in getQueueTitle. " + e);
                return null;
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.a
        public Bundle f() {
            try {
                return this.b.getExtras();
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in getExtras. " + e);
                return null;
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.a
        public int g() {
            try {
                return this.b.getRatingType();
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in getRatingType. " + e);
                return 0;
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.a
        public long h() {
            try {
                return this.b.getFlags();
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in getFlags. " + e);
                return 0L;
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.a
        public PlaybackInfo i() {
            try {
                ParcelableVolumeInfo volumeAttributes = this.b.getVolumeAttributes();
                return new PlaybackInfo(volumeAttributes.volumeType, volumeAttributes.audioStream, volumeAttributes.controlType, volumeAttributes.maxVolume, volumeAttributes.currentVolume);
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in getPlaybackInfo. " + e);
                return null;
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.a
        public PendingIntent j() {
            try {
                return this.b.getLaunchPendingIntent();
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in getSessionActivity. " + e);
                return null;
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.a
        public void a(int i, int i2) {
            try {
                this.b.setVolumeTo(i, i2, null);
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in setVolumeTo. " + e);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.a
        public void b(int i, int i2) {
            try {
                this.b.adjustVolume(i, i2, null);
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in adjustVolume. " + e);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.a
        public void a(String str, Bundle bundle, ResultReceiver resultReceiver) {
            try {
                this.b.sendCommand(str, bundle, new MediaSessionCompat.ResultReceiverWrapper(resultReceiver));
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in sendCommand. " + e);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.a
        public String k() {
            try {
                return this.b.getPackageName();
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in getPackageName. " + e);
                return null;
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.a
        public Object l() {
            return null;
        }
    }

    static class g extends TransportControls {
        private IMediaSession a;

        public g(IMediaSession iMediaSession) {
            this.a = iMediaSession;
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void play() {
            try {
                this.a.play();
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in play. " + e);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void playFromMediaId(String str, Bundle bundle) {
            try {
                this.a.playFromMediaId(str, bundle);
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in playFromMediaId. " + e);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void playFromSearch(String str, Bundle bundle) {
            try {
                this.a.playFromSearch(str, bundle);
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in playFromSearch. " + e);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void playFromUri(Uri uri, Bundle bundle) {
            try {
                this.a.playFromUri(uri, bundle);
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in playFromUri. " + e);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void skipToQueueItem(long j) {
            try {
                this.a.skipToQueueItem(j);
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in skipToQueueItem. " + e);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void pause() {
            try {
                this.a.pause();
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in pause. " + e);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void stop() {
            try {
                this.a.stop();
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in stop. " + e);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void seekTo(long j) {
            try {
                this.a.seekTo(j);
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in seekTo. " + e);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void fastForward() {
            try {
                this.a.fastForward();
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in fastForward. " + e);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void skipToNext() {
            try {
                this.a.next();
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in skipToNext. " + e);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void rewind() {
            try {
                this.a.rewind();
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in rewind. " + e);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void skipToPrevious() {
            try {
                this.a.previous();
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in skipToPrevious. " + e);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void setRating(RatingCompat ratingCompat) {
            try {
                this.a.rate(ratingCompat);
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in setRating. " + e);
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void sendCustomAction(PlaybackStateCompat.CustomAction customAction, Bundle bundle) {
            sendCustomAction(customAction.getAction(), bundle);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void sendCustomAction(String str, Bundle bundle) {
            try {
                this.a.sendCustomAction(str, bundle);
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in sendCustomAction. " + e);
            }
        }
    }

    static class b implements a {
        protected final Object a;

        public b(Context context, MediaSessionCompat mediaSessionCompat) {
            this.a = MediaControllerCompatApi21.a(context, mediaSessionCompat.getSessionToken().getToken());
        }

        public b(Context context, MediaSessionCompat.Token token) throws RemoteException {
            this.a = MediaControllerCompatApi21.a(context, token.getToken());
            if (this.a == null) {
                throw new RemoteException();
            }
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.a
        public void a(Callback callback, Handler handler) {
            MediaControllerCompatApi21.a(this.a, callback.a, handler);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.a
        public void a(Callback callback) {
            MediaControllerCompatApi21.a(this.a, callback.a);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.a
        public boolean a(KeyEvent keyEvent) {
            return MediaControllerCompatApi21.a(this.a, keyEvent);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.a
        public TransportControls a() {
            Object objA = MediaControllerCompatApi21.a(this.a);
            if (objA != null) {
                return new e(objA);
            }
            return null;
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.a
        public PlaybackStateCompat b() {
            Object objB = MediaControllerCompatApi21.b(this.a);
            if (objB != null) {
                return PlaybackStateCompat.fromPlaybackState(objB);
            }
            return null;
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.a
        public MediaMetadataCompat c() {
            Object objC = MediaControllerCompatApi21.c(this.a);
            if (objC != null) {
                return MediaMetadataCompat.fromMediaMetadata(objC);
            }
            return null;
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.a
        public List<MediaSessionCompat.QueueItem> d() {
            List<Object> listD = MediaControllerCompatApi21.d(this.a);
            if (listD == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            Iterator<Object> it = listD.iterator();
            while (it.hasNext()) {
                arrayList.add(MediaSessionCompat.QueueItem.obtain(it.next()));
            }
            return arrayList;
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.a
        public CharSequence e() {
            return MediaControllerCompatApi21.e(this.a);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.a
        public Bundle f() {
            return MediaControllerCompatApi21.f(this.a);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.a
        public int g() {
            return MediaControllerCompatApi21.g(this.a);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.a
        public long h() {
            return MediaControllerCompatApi21.h(this.a);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.a
        public PlaybackInfo i() {
            Object objI = MediaControllerCompatApi21.i(this.a);
            if (objI != null) {
                return new PlaybackInfo(MediaControllerCompatApi21.PlaybackInfo.getPlaybackType(objI), MediaControllerCompatApi21.PlaybackInfo.getLegacyAudioStream(objI), MediaControllerCompatApi21.PlaybackInfo.getVolumeControl(objI), MediaControllerCompatApi21.PlaybackInfo.getMaxVolume(objI), MediaControllerCompatApi21.PlaybackInfo.getCurrentVolume(objI));
            }
            return null;
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.a
        public PendingIntent j() {
            return MediaControllerCompatApi21.j(this.a);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.a
        public void a(int i, int i2) {
            MediaControllerCompatApi21.a(this.a, i, i2);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.a
        public void b(int i, int i2) {
            MediaControllerCompatApi21.b(this.a, i, i2);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.a
        public void a(String str, Bundle bundle, ResultReceiver resultReceiver) {
            MediaControllerCompatApi21.a(this.a, str, bundle, resultReceiver);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.a
        public String k() {
            return MediaControllerCompatApi21.k(this.a);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.a
        public Object l() {
            return this.a;
        }
    }

    static class e extends TransportControls {
        protected final Object a;

        public e(Object obj) {
            this.a = obj;
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void play() {
            MediaControllerCompatApi21.TransportControls.play(this.a);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void pause() {
            MediaControllerCompatApi21.TransportControls.pause(this.a);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void stop() {
            MediaControllerCompatApi21.TransportControls.stop(this.a);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void seekTo(long j) {
            MediaControllerCompatApi21.TransportControls.seekTo(this.a, j);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void fastForward() {
            MediaControllerCompatApi21.TransportControls.fastForward(this.a);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void rewind() {
            MediaControllerCompatApi21.TransportControls.rewind(this.a);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void skipToNext() {
            MediaControllerCompatApi21.TransportControls.skipToNext(this.a);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void skipToPrevious() {
            MediaControllerCompatApi21.TransportControls.skipToPrevious(this.a);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void setRating(RatingCompat ratingCompat) {
            MediaControllerCompatApi21.TransportControls.setRating(this.a, ratingCompat != null ? ratingCompat.getRating() : null);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void playFromMediaId(String str, Bundle bundle) {
            MediaControllerCompatApi21.TransportControls.playFromMediaId(this.a, str, bundle);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void playFromSearch(String str, Bundle bundle) {
            MediaControllerCompatApi21.TransportControls.playFromSearch(this.a, str, bundle);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void playFromUri(Uri uri, Bundle bundle) {
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void skipToQueueItem(long j) {
            MediaControllerCompatApi21.TransportControls.skipToQueueItem(this.a, j);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void sendCustomAction(PlaybackStateCompat.CustomAction customAction, Bundle bundle) {
            MediaControllerCompatApi21.TransportControls.sendCustomAction(this.a, customAction.getAction(), bundle);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void sendCustomAction(String str, Bundle bundle) {
            MediaControllerCompatApi21.TransportControls.sendCustomAction(this.a, str, bundle);
        }
    }

    static class c extends b {
        public c(Context context, MediaSessionCompat mediaSessionCompat) {
            super(context, mediaSessionCompat);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.b, android.support.v4.media.session.MediaControllerCompat.a
        public TransportControls a() {
            Object objA = MediaControllerCompatApi21.a(this.a);
            if (objA != null) {
                return new f(objA);
            }
            return null;
        }
    }

    static class f extends e {
        public f(Object obj) {
            super(obj);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.e, android.support.v4.media.session.MediaControllerCompat.TransportControls
        public void playFromUri(Uri uri, Bundle bundle) {
            MediaControllerCompatApi23.TransportControls.playFromUri(this.a, uri, bundle);
        }
    }
}
