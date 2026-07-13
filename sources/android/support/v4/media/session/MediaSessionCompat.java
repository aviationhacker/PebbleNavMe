package android.support.v4.media.session;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.RatingCompat;
import android.support.v4.media.TransportMediator;
import android.support.v4.media.VolumeProviderCompat;
import android.support.v4.media.session.IMediaSession;
import android.support.v4.media.session.MediaSessionCompatApi14;
import android.support.v4.media.session.MediaSessionCompatApi21;
import android.support.v4.media.session.MediaSessionCompatApi23;
import android.text.TextUtils;
import android.view.KeyEvent;
import defpackage.bq;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class MediaSessionCompat {
    public static final int FLAG_HANDLES_MEDIA_BUTTONS = 1;
    public static final int FLAG_HANDLES_TRANSPORT_CONTROLS = 2;
    private final a a;
    private final MediaControllerCompat b;
    private final ArrayList<OnActiveChangeListener> c = new ArrayList<>();

    public interface OnActiveChangeListener {
        void onActiveChanged();
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface SessionFlags {
    }

    interface a {
        void a(int i);

        void a(PendingIntent pendingIntent);

        void a(Bundle bundle);

        void a(MediaMetadataCompat mediaMetadataCompat);

        void a(VolumeProviderCompat volumeProviderCompat);

        void a(Callback callback, Handler handler);

        void a(PlaybackStateCompat playbackStateCompat);

        void a(CharSequence charSequence);

        void a(String str, Bundle bundle);

        void a(List<QueueItem> list);

        void a(boolean z);

        boolean a();

        void b();

        void b(int i);

        void b(PendingIntent pendingIntent);

        Token c();

        void c(int i);

        Object d();

        Object e();
    }

    public MediaSessionCompat(Context context, String str, ComponentName componentName, PendingIntent pendingIntent) {
        if (context == null) {
            throw new IllegalArgumentException("context must not be null");
        }
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("tag must not be null or empty");
        }
        if (componentName != null && pendingIntent == null) {
            Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
            intent.setComponent(componentName);
            pendingIntent = PendingIntent.getBroadcast(context, 0, intent, 0);
        }
        if (Build.VERSION.SDK_INT >= 21) {
            this.a = new b(context, str);
            this.a.b(pendingIntent);
        } else {
            this.a = new c(context, str, componentName, pendingIntent);
        }
        this.b = new MediaControllerCompat(context, this);
    }

    private MediaSessionCompat(Context context, a aVar) {
        this.a = aVar;
        this.b = new MediaControllerCompat(context, this);
    }

    public void setCallback(Callback callback) {
        setCallback(callback, null);
    }

    public void setCallback(Callback callback, Handler handler) {
        a aVar = this.a;
        if (handler == null) {
            handler = new Handler();
        }
        aVar.a(callback, handler);
    }

    public void setSessionActivity(PendingIntent pendingIntent) {
        this.a.a(pendingIntent);
    }

    public void setMediaButtonReceiver(PendingIntent pendingIntent) {
        this.a.b(pendingIntent);
    }

    public void setFlags(int i) {
        this.a.a(i);
    }

    public void setPlaybackToLocal(int i) {
        this.a.b(i);
    }

    public void setPlaybackToRemote(VolumeProviderCompat volumeProviderCompat) {
        if (volumeProviderCompat == null) {
            throw new IllegalArgumentException("volumeProvider may not be null!");
        }
        this.a.a(volumeProviderCompat);
    }

    public void setActive(boolean z) {
        this.a.a(z);
        Iterator<OnActiveChangeListener> it = this.c.iterator();
        while (it.hasNext()) {
            it.next().onActiveChanged();
        }
    }

    public boolean isActive() {
        return this.a.a();
    }

    public void sendSessionEvent(String str, Bundle bundle) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("event cannot be null or empty");
        }
        this.a.a(str, bundle);
    }

    public void release() {
        this.a.b();
    }

    public Token getSessionToken() {
        return this.a.c();
    }

    public MediaControllerCompat getController() {
        return this.b;
    }

    public void setPlaybackState(PlaybackStateCompat playbackStateCompat) {
        this.a.a(playbackStateCompat);
    }

    public void setMetadata(MediaMetadataCompat mediaMetadataCompat) {
        this.a.a(mediaMetadataCompat);
    }

    public void setQueue(List<QueueItem> list) {
        this.a.a(list);
    }

    public void setQueueTitle(CharSequence charSequence) {
        this.a.a(charSequence);
    }

    public void setRatingType(int i) {
        this.a.c(i);
    }

    public void setExtras(Bundle bundle) {
        this.a.a(bundle);
    }

    public Object getMediaSession() {
        return this.a.d();
    }

    public Object getRemoteControlClient() {
        return this.a.e();
    }

    public void addOnActiveChangeListener(OnActiveChangeListener onActiveChangeListener) {
        if (onActiveChangeListener == null) {
            throw new IllegalArgumentException("Listener may not be null");
        }
        this.c.add(onActiveChangeListener);
    }

    public void removeOnActiveChangeListener(OnActiveChangeListener onActiveChangeListener) {
        if (onActiveChangeListener == null) {
            throw new IllegalArgumentException("Listener may not be null");
        }
        this.c.remove(onActiveChangeListener);
    }

    public static MediaSessionCompat obtain(Context context, Object obj) {
        return new MediaSessionCompat(context, new b(obj));
    }

    public static abstract class Callback {
        final Object a;

        public Callback() {
            if (Build.VERSION.SDK_INT >= 23) {
                this.a = MediaSessionCompatApi23.a(new b());
            } else if (Build.VERSION.SDK_INT >= 21) {
                this.a = MediaSessionCompatApi21.a((MediaSessionCompatApi21.Callback) new a());
            } else {
                this.a = null;
            }
        }

        public void onCommand(String str, Bundle bundle, ResultReceiver resultReceiver) {
        }

        public boolean onMediaButtonEvent(Intent intent) {
            return false;
        }

        public void onPlay() {
        }

        public void onPlayFromMediaId(String str, Bundle bundle) {
        }

        public void onPlayFromSearch(String str, Bundle bundle) {
        }

        public void onPlayFromUri(Uri uri, Bundle bundle) {
        }

        public void onSkipToQueueItem(long j) {
        }

        public void onPause() {
        }

        public void onSkipToNext() {
        }

        public void onSkipToPrevious() {
        }

        public void onFastForward() {
        }

        public void onRewind() {
        }

        public void onStop() {
        }

        public void onSeekTo(long j) {
        }

        public void onSetRating(RatingCompat ratingCompat) {
        }

        public void onCustomAction(String str, Bundle bundle) {
        }

        class a implements MediaSessionCompatApi21.Callback {
            private a() {
            }

            @Override // android.support.v4.media.session.MediaSessionCompatApi21.Callback
            public void onCommand(String str, Bundle bundle, ResultReceiver resultReceiver) {
                Callback.this.onCommand(str, bundle, resultReceiver);
            }

            @Override // android.support.v4.media.session.MediaSessionCompatApi21.Callback
            public boolean onMediaButtonEvent(Intent intent) {
                return Callback.this.onMediaButtonEvent(intent);
            }

            @Override // android.support.v4.media.session.MediaSessionCompatApi21.Callback
            public void onPlay() {
                Callback.this.onPlay();
            }

            @Override // android.support.v4.media.session.MediaSessionCompatApi21.Callback
            public void onPlayFromMediaId(String str, Bundle bundle) {
                Callback.this.onPlayFromMediaId(str, bundle);
            }

            @Override // android.support.v4.media.session.MediaSessionCompatApi21.Callback
            public void onPlayFromSearch(String str, Bundle bundle) {
                Callback.this.onPlayFromSearch(str, bundle);
            }

            @Override // android.support.v4.media.session.MediaSessionCompatApi21.Callback
            public void onSkipToQueueItem(long j) {
                Callback.this.onSkipToQueueItem(j);
            }

            @Override // android.support.v4.media.session.MediaSessionCompatApi21.Callback
            public void onPause() {
                Callback.this.onPause();
            }

            @Override // android.support.v4.media.session.MediaSessionCompatApi21.Callback
            public void onSkipToNext() {
                Callback.this.onSkipToNext();
            }

            @Override // android.support.v4.media.session.MediaSessionCompatApi21.Callback
            public void onSkipToPrevious() {
                Callback.this.onSkipToPrevious();
            }

            @Override // android.support.v4.media.session.MediaSessionCompatApi21.Callback
            public void onFastForward() {
                Callback.this.onFastForward();
            }

            @Override // android.support.v4.media.session.MediaSessionCompatApi21.Callback
            public void onRewind() {
                Callback.this.onRewind();
            }

            @Override // android.support.v4.media.session.MediaSessionCompatApi21.Callback
            public void onStop() {
                Callback.this.onStop();
            }

            @Override // android.support.v4.media.session.MediaSessionCompatApi21.Callback
            public void onSeekTo(long j) {
                Callback.this.onSeekTo(j);
            }

            @Override // android.support.v4.media.session.MediaSessionCompatApi21.Callback
            public void onSetRating(Object obj) {
                Callback.this.onSetRating(RatingCompat.fromRating(obj));
            }

            @Override // android.support.v4.media.session.MediaSessionCompatApi21.Callback
            public void onCustomAction(String str, Bundle bundle) {
                Callback.this.onCustomAction(str, bundle);
            }
        }

        class b extends a implements MediaSessionCompatApi23.Callback {
            private b() {
                super();
            }

            @Override // android.support.v4.media.session.MediaSessionCompatApi23.Callback
            public void onPlayFromUri(Uri uri, Bundle bundle) {
                Callback.this.onPlayFromUri(uri, bundle);
            }
        }
    }

    public static final class Token implements Parcelable {
        public static final Parcelable.Creator<Token> CREATOR = new Parcelable.Creator<Token>() { // from class: android.support.v4.media.session.MediaSessionCompat.Token.1
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Token createFromParcel(Parcel parcel) {
                Object strongBinder;
                if (Build.VERSION.SDK_INT >= 21) {
                    strongBinder = parcel.readParcelable(null);
                } else {
                    strongBinder = parcel.readStrongBinder();
                }
                return new Token(strongBinder);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Token[] newArray(int i) {
                return new Token[i];
            }
        };
        private final Object a;

        Token(Object obj) {
            this.a = obj;
        }

        public static Token fromToken(Object obj) {
            if (obj == null || Build.VERSION.SDK_INT < 21) {
                return null;
            }
            return new Token(MediaSessionCompatApi21.b(obj));
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            if (Build.VERSION.SDK_INT >= 21) {
                parcel.writeParcelable((Parcelable) this.a, i);
            } else {
                parcel.writeStrongBinder((IBinder) this.a);
            }
        }

        public Object getToken() {
            return this.a;
        }
    }

    public static final class QueueItem implements Parcelable {
        public static final Parcelable.Creator<QueueItem> CREATOR = new Parcelable.Creator<QueueItem>() { // from class: android.support.v4.media.session.MediaSessionCompat.QueueItem.1
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public QueueItem createFromParcel(Parcel parcel) {
                return new QueueItem(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public QueueItem[] newArray(int i) {
                return new QueueItem[i];
            }
        };
        public static final int UNKNOWN_ID = -1;
        private final MediaDescriptionCompat a;
        private final long b;
        private Object c;

        public QueueItem(MediaDescriptionCompat mediaDescriptionCompat, long j) {
            this(null, mediaDescriptionCompat, j);
        }

        private QueueItem(Object obj, MediaDescriptionCompat mediaDescriptionCompat, long j) {
            if (mediaDescriptionCompat == null) {
                throw new IllegalArgumentException("Description cannot be null.");
            }
            if (j == -1) {
                throw new IllegalArgumentException("Id cannot be QueueItem.UNKNOWN_ID");
            }
            this.a = mediaDescriptionCompat;
            this.b = j;
            this.c = obj;
        }

        private QueueItem(Parcel parcel) {
            this.a = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
            this.b = parcel.readLong();
        }

        public MediaDescriptionCompat getDescription() {
            return this.a;
        }

        public long getQueueId() {
            return this.b;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            this.a.writeToParcel(parcel, i);
            parcel.writeLong(this.b);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public Object getQueueItem() {
            if (this.c != null || Build.VERSION.SDK_INT < 21) {
                return this.c;
            }
            this.c = MediaSessionCompatApi21.b.a(this.a.getMediaDescription(), this.b);
            return this.c;
        }

        public static QueueItem obtain(Object obj) {
            return new QueueItem(obj, MediaDescriptionCompat.fromMediaDescription(MediaSessionCompatApi21.b.a(obj)), MediaSessionCompatApi21.b.b(obj));
        }

        public String toString() {
            return "MediaSession.QueueItem {Description=" + this.a + ", Id=" + this.b + " }";
        }
    }

    static final class ResultReceiverWrapper implements Parcelable {
        public static final Parcelable.Creator<ResultReceiverWrapper> CREATOR = new Parcelable.Creator<ResultReceiverWrapper>() { // from class: android.support.v4.media.session.MediaSessionCompat.ResultReceiverWrapper.1
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public ResultReceiverWrapper createFromParcel(Parcel parcel) {
                return new ResultReceiverWrapper(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public ResultReceiverWrapper[] newArray(int i) {
                return new ResultReceiverWrapper[i];
            }
        };
        private ResultReceiver a;

        public ResultReceiverWrapper(ResultReceiver resultReceiver) {
            this.a = resultReceiver;
        }

        ResultReceiverWrapper(Parcel parcel) {
            this.a = (ResultReceiver) ResultReceiver.CREATOR.createFromParcel(parcel);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            this.a.writeToParcel(parcel, i);
        }
    }

    static class c implements a {
        private int A;
        private VolumeProviderCompat B;
        private final Context a;
        private final ComponentName b;
        private final PendingIntent c;
        private final Object d;
        private final b e;
        private final Token f;
        private final HandlerC0000c g;
        private final String h;
        private final String i;
        private final AudioManager j;
        private Callback q;
        private int r;
        private MediaMetadataCompat s;
        private PlaybackStateCompat t;
        private PendingIntent u;
        private List<QueueItem> v;
        private CharSequence w;
        private int x;
        private Bundle y;
        private int z;
        private final Object k = new Object();
        private final RemoteCallbackList<IMediaControllerCallback> l = new RemoteCallbackList<>();
        private boolean m = false;
        private boolean n = false;
        private boolean o = false;
        private boolean p = false;
        private VolumeProviderCompat.Callback C = new VolumeProviderCompat.Callback() { // from class: android.support.v4.media.session.MediaSessionCompat.c.1
            @Override // android.support.v4.media.VolumeProviderCompat.Callback
            public void onVolumeChanged(VolumeProviderCompat volumeProviderCompat) {
                if (c.this.B == volumeProviderCompat) {
                    c.this.a(new ParcelableVolumeInfo(c.this.z, c.this.A, volumeProviderCompat.getVolumeControl(), volumeProviderCompat.getMaxVolume(), volumeProviderCompat.getCurrentVolume()));
                }
            }
        };

        public c(Context context, String str, ComponentName componentName, PendingIntent pendingIntent) {
            if (componentName == null) {
                throw new IllegalArgumentException("MediaButtonReceiver component may not be null.");
            }
            this.a = context;
            this.h = context.getPackageName();
            this.j = (AudioManager) context.getSystemService("audio");
            this.i = str;
            this.b = componentName;
            this.c = pendingIntent;
            this.e = new b();
            this.f = new Token(this.e);
            this.g = new HandlerC0000c(Looper.myLooper());
            this.x = 0;
            this.z = 1;
            this.A = 3;
            if (Build.VERSION.SDK_INT >= 14) {
                this.d = MediaSessionCompatApi14.createRemoteControlClient(pendingIntent);
            } else {
                this.d = null;
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.a
        public void a(final Callback callback, Handler handler) {
            if (callback != this.q) {
                if (callback == null || Build.VERSION.SDK_INT < 18) {
                    if (Build.VERSION.SDK_INT >= 18) {
                        MediaSessionCompatApi18.setOnPlaybackPositionUpdateListener(this.d, null);
                    }
                    if (Build.VERSION.SDK_INT >= 19) {
                        MediaSessionCompatApi19.setOnMetadataUpdateListener(this.d, null);
                    }
                } else {
                    if (handler == null) {
                        new Handler();
                    }
                    MediaSessionCompatApi14.Callback callback2 = new MediaSessionCompatApi14.Callback() { // from class: android.support.v4.media.session.MediaSessionCompat.c.2
                        @Override // android.support.v4.media.session.MediaSessionCompatApi14.Callback
                        public void onStop() {
                            callback.onStop();
                        }

                        @Override // android.support.v4.media.session.MediaSessionCompatApi14.Callback
                        public void onSkipToPrevious() {
                            callback.onSkipToPrevious();
                        }

                        @Override // android.support.v4.media.session.MediaSessionCompatApi14.Callback
                        public void onSkipToNext() {
                            callback.onSkipToNext();
                        }

                        @Override // android.support.v4.media.session.MediaSessionCompatApi14.Callback
                        public void onSetRating(Object obj) {
                            callback.onSetRating(RatingCompat.fromRating(obj));
                        }

                        @Override // android.support.v4.media.session.MediaSessionCompatApi14.Callback
                        public void onSeekTo(long j) {
                            callback.onSeekTo(j);
                        }

                        @Override // android.support.v4.media.session.MediaSessionCompatApi14.Callback
                        public void onRewind() {
                            callback.onRewind();
                        }

                        @Override // android.support.v4.media.session.MediaSessionCompatApi14.Callback
                        public void onPlay() {
                            callback.onPlay();
                        }

                        @Override // android.support.v4.media.session.MediaSessionCompatApi14.Callback
                        public void onPause() {
                            callback.onPause();
                        }

                        @Override // android.support.v4.media.session.MediaSessionCompatApi14.Callback
                        public boolean onMediaButtonEvent(Intent intent) {
                            return callback.onMediaButtonEvent(intent);
                        }

                        @Override // android.support.v4.media.session.MediaSessionCompatApi14.Callback
                        public void onFastForward() {
                            callback.onFastForward();
                        }

                        @Override // android.support.v4.media.session.MediaSessionCompatApi14.Callback
                        public void onCommand(String str, Bundle bundle, ResultReceiver resultReceiver) {
                            callback.onCommand(str, bundle, resultReceiver);
                        }
                    };
                    if (Build.VERSION.SDK_INT >= 18) {
                        MediaSessionCompatApi18.setOnPlaybackPositionUpdateListener(this.d, MediaSessionCompatApi18.createPlaybackPositionUpdateListener(callback2));
                    }
                    if (Build.VERSION.SDK_INT >= 19) {
                        MediaSessionCompatApi19.setOnMetadataUpdateListener(this.d, MediaSessionCompatApi19.createMetadataUpdateListener(callback2));
                    }
                }
                this.q = callback;
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.a
        public void a(int i) {
            synchronized (this.k) {
                this.r = i;
            }
            f();
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.a
        public void b(int i) {
            if (this.B != null) {
                this.B.setCallback(null);
            }
            this.z = 1;
            a(new ParcelableVolumeInfo(this.z, this.A, 2, this.j.getStreamMaxVolume(this.A), this.j.getStreamVolume(this.A)));
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.a
        public void a(VolumeProviderCompat volumeProviderCompat) {
            if (volumeProviderCompat == null) {
                throw new IllegalArgumentException("volumeProvider may not be null");
            }
            if (this.B != null) {
                this.B.setCallback(null);
            }
            this.z = 2;
            this.B = volumeProviderCompat;
            a(new ParcelableVolumeInfo(this.z, this.A, this.B.getVolumeControl(), this.B.getMaxVolume(), this.B.getCurrentVolume()));
            volumeProviderCompat.setCallback(this.C);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.a
        public void a(boolean z) {
            if (z != this.n) {
                this.n = z;
                if (f()) {
                    a(this.s);
                    a(this.t);
                }
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.a
        public boolean a() {
            return this.n;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.a
        public void a(String str, Bundle bundle) {
            b(str, bundle);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.a
        public void b() {
            this.n = false;
            this.m = true;
            f();
            h();
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.a
        public Token c() {
            return this.f;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.a
        public void a(PlaybackStateCompat playbackStateCompat) {
            synchronized (this.k) {
                this.t = playbackStateCompat;
            }
            b(playbackStateCompat);
            if (this.n) {
                if (playbackStateCompat == null) {
                    if (Build.VERSION.SDK_INT >= 14) {
                        MediaSessionCompatApi14.setState(this.d, 0);
                        MediaSessionCompatApi14.setTransportControlFlags(this.d, 0L);
                        return;
                    }
                    return;
                }
                if (Build.VERSION.SDK_INT >= 18) {
                    MediaSessionCompatApi18.setState(this.d, playbackStateCompat.getState(), playbackStateCompat.getPosition(), playbackStateCompat.getPlaybackSpeed(), playbackStateCompat.getLastPositionUpdateTime());
                } else if (Build.VERSION.SDK_INT >= 14) {
                    MediaSessionCompatApi14.setState(this.d, playbackStateCompat.getState());
                }
                if (Build.VERSION.SDK_INT >= 19) {
                    MediaSessionCompatApi19.setTransportControlFlags(this.d, playbackStateCompat.getActions());
                } else if (Build.VERSION.SDK_INT >= 18) {
                    MediaSessionCompatApi18.setTransportControlFlags(this.d, playbackStateCompat.getActions());
                } else if (Build.VERSION.SDK_INT >= 14) {
                    MediaSessionCompatApi14.setTransportControlFlags(this.d, playbackStateCompat.getActions());
                }
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.a
        public void a(MediaMetadataCompat mediaMetadataCompat) {
            synchronized (this.k) {
                this.s = mediaMetadataCompat;
            }
            b(mediaMetadataCompat);
            if (this.n) {
                if (Build.VERSION.SDK_INT >= 19) {
                    MediaSessionCompatApi19.setMetadata(this.d, mediaMetadataCompat != null ? mediaMetadataCompat.getBundle() : null, this.t == null ? 0L : this.t.getActions());
                } else if (Build.VERSION.SDK_INT >= 14) {
                    MediaSessionCompatApi14.setMetadata(this.d, mediaMetadataCompat != null ? mediaMetadataCompat.getBundle() : null);
                }
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.a
        public void a(PendingIntent pendingIntent) {
            synchronized (this.k) {
                this.u = pendingIntent;
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.a
        public void b(PendingIntent pendingIntent) {
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.a
        public void a(List<QueueItem> list) {
            this.v = list;
            b(list);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.a
        public void a(CharSequence charSequence) {
            this.w = charSequence;
            b(charSequence);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.a
        public Object d() {
            return null;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.a
        public Object e() {
            return this.d;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.a
        public void c(int i) {
            this.x = i;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.a
        public void a(Bundle bundle) {
            this.y = bundle;
        }

        private boolean f() {
            if (this.n) {
                if (Build.VERSION.SDK_INT >= 8) {
                    if (!this.p && (this.r & 1) != 0) {
                        if (Build.VERSION.SDK_INT >= 18) {
                            MediaSessionCompatApi18.registerMediaButtonEventReceiver(this.a, this.c);
                        } else {
                            MediaSessionCompatApi8.registerMediaButtonEventReceiver(this.a, this.b);
                        }
                        this.p = true;
                    } else if (this.p && (this.r & 1) == 0) {
                        if (Build.VERSION.SDK_INT >= 18) {
                            MediaSessionCompatApi18.unregisterMediaButtonEventReceiver(this.a, this.c);
                        } else {
                            MediaSessionCompatApi8.unregisterMediaButtonEventReceiver(this.a, this.b);
                        }
                        this.p = false;
                    }
                }
                if (Build.VERSION.SDK_INT >= 14) {
                    if (!this.o && (this.r & 2) != 0) {
                        MediaSessionCompatApi14.registerRemoteControlClient(this.a, this.d);
                        this.o = true;
                        return true;
                    }
                    if (this.o && (this.r & 2) == 0) {
                        MediaSessionCompatApi14.setState(this.d, 0);
                        MediaSessionCompatApi14.unregisterRemoteControlClient(this.a, this.d);
                        this.o = false;
                        return false;
                    }
                }
            } else {
                if (this.p) {
                    if (Build.VERSION.SDK_INT >= 18) {
                        MediaSessionCompatApi18.unregisterMediaButtonEventReceiver(this.a, this.c);
                    } else {
                        MediaSessionCompatApi8.unregisterMediaButtonEventReceiver(this.a, this.b);
                    }
                    this.p = false;
                }
                if (this.o) {
                    MediaSessionCompatApi14.setState(this.d, 0);
                    MediaSessionCompatApi14.unregisterRemoteControlClient(this.a, this.d);
                    this.o = false;
                }
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(int i, int i2) {
            if (this.z == 2) {
                if (this.B != null) {
                    this.B.onAdjustVolume(i);
                    return;
                }
                return;
            }
            this.j.adjustStreamVolume(i, this.A, i2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b(int i, int i2) {
            if (this.z == 2) {
                if (this.B != null) {
                    this.B.onSetVolumeTo(i);
                    return;
                }
                return;
            }
            this.j.setStreamVolume(this.A, i, i2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Removed duplicated region for block: B:35:0x007d  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public android.support.v4.media.session.PlaybackStateCompat g() {
            /*
                r12 = this;
                r0 = 0
                r2 = -1
                java.lang.Object r4 = r12.k
                monitor-enter(r4)
                android.support.v4.media.session.PlaybackStateCompat r7 = r12.t     // Catch: java.lang.Throwable -> L72
                android.support.v4.media.MediaMetadataCompat r5 = r12.s     // Catch: java.lang.Throwable -> L72
                if (r5 == 0) goto L1f
                android.support.v4.media.MediaMetadataCompat r5 = r12.s     // Catch: java.lang.Throwable -> L72
                java.lang.String r6 = "android.media.metadata.DURATION"
                boolean r5 = r5.containsKey(r6)     // Catch: java.lang.Throwable -> L72
                if (r5 == 0) goto L1f
                android.support.v4.media.MediaMetadataCompat r2 = r12.s     // Catch: java.lang.Throwable -> L72
                java.lang.String r3 = "android.media.metadata.DURATION"
                long r2 = r2.getLong(r3)     // Catch: java.lang.Throwable -> L72
            L1f:
                monitor-exit(r4)     // Catch: java.lang.Throwable -> L72
                r4 = 0
                if (r7 == 0) goto L7d
                int r5 = r7.getState()
                r6 = 3
                if (r5 == r6) goto L38
                int r5 = r7.getState()
                r6 = 4
                if (r5 == r6) goto L38
                int r5 = r7.getState()
                r6 = 5
                if (r5 != r6) goto L7d
            L38:
                long r8 = r7.getLastPositionUpdateTime()
                long r5 = android.os.SystemClock.elapsedRealtime()
                int r10 = (r8 > r0 ? 1 : (r8 == r0 ? 0 : -1))
                if (r10 <= 0) goto L7d
                float r4 = r7.getPlaybackSpeed()
                long r8 = r5 - r8
                float r8 = (float) r8
                float r4 = r4 * r8
                long r8 = (long) r4
                long r10 = r7.getPosition()
                long r8 = r8 + r10
                int r4 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1))
                if (r4 < 0) goto L75
                int r4 = (r8 > r2 ? 1 : (r8 == r2 ? 0 : -1))
                if (r4 <= 0) goto L75
            L5a:
                android.support.v4.media.session.PlaybackStateCompat$Builder r0 = new android.support.v4.media.session.PlaybackStateCompat$Builder
                r0.<init>(r7)
                int r1 = r7.getState()
                float r4 = r7.getPlaybackSpeed()
                r0.setState(r1, r2, r4, r5)
                android.support.v4.media.session.PlaybackStateCompat r0 = r0.build()
            L6e:
                if (r0 != 0) goto L71
                r0 = r7
            L71:
                return r0
            L72:
                r0 = move-exception
                monitor-exit(r4)     // Catch: java.lang.Throwable -> L72
                throw r0
            L75:
                int r2 = (r8 > r0 ? 1 : (r8 == r0 ? 0 : -1))
                if (r2 >= 0) goto L7b
                r2 = r0
                goto L5a
            L7b:
                r2 = r8
                goto L5a
            L7d:
                r0 = r4
                goto L6e
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.v4.media.session.MediaSessionCompat.c.g():android.support.v4.media.session.PlaybackStateCompat");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(ParcelableVolumeInfo parcelableVolumeInfo) {
            for (int iBeginBroadcast = this.l.beginBroadcast() - 1; iBeginBroadcast >= 0; iBeginBroadcast--) {
                try {
                    ((IMediaControllerCallback) this.l.getBroadcastItem(iBeginBroadcast)).onVolumeInfoChanged(parcelableVolumeInfo);
                } catch (RemoteException e) {
                }
            }
            this.l.finishBroadcast();
        }

        private void h() {
            for (int iBeginBroadcast = this.l.beginBroadcast() - 1; iBeginBroadcast >= 0; iBeginBroadcast--) {
                try {
                    ((IMediaControllerCallback) this.l.getBroadcastItem(iBeginBroadcast)).onSessionDestroyed();
                } catch (RemoteException e) {
                }
            }
            this.l.finishBroadcast();
            this.l.kill();
        }

        private void b(String str, Bundle bundle) {
            for (int iBeginBroadcast = this.l.beginBroadcast() - 1; iBeginBroadcast >= 0; iBeginBroadcast--) {
                try {
                    ((IMediaControllerCallback) this.l.getBroadcastItem(iBeginBroadcast)).onEvent(str, bundle);
                } catch (RemoteException e) {
                }
            }
            this.l.finishBroadcast();
        }

        private void b(PlaybackStateCompat playbackStateCompat) {
            for (int iBeginBroadcast = this.l.beginBroadcast() - 1; iBeginBroadcast >= 0; iBeginBroadcast--) {
                try {
                    ((IMediaControllerCallback) this.l.getBroadcastItem(iBeginBroadcast)).onPlaybackStateChanged(playbackStateCompat);
                } catch (RemoteException e) {
                }
            }
            this.l.finishBroadcast();
        }

        private void b(MediaMetadataCompat mediaMetadataCompat) {
            for (int iBeginBroadcast = this.l.beginBroadcast() - 1; iBeginBroadcast >= 0; iBeginBroadcast--) {
                try {
                    ((IMediaControllerCallback) this.l.getBroadcastItem(iBeginBroadcast)).onMetadataChanged(mediaMetadataCompat);
                } catch (RemoteException e) {
                }
            }
            this.l.finishBroadcast();
        }

        private void b(List<QueueItem> list) {
            for (int iBeginBroadcast = this.l.beginBroadcast() - 1; iBeginBroadcast >= 0; iBeginBroadcast--) {
                try {
                    ((IMediaControllerCallback) this.l.getBroadcastItem(iBeginBroadcast)).onQueueChanged(list);
                } catch (RemoteException e) {
                }
            }
            this.l.finishBroadcast();
        }

        private void b(CharSequence charSequence) {
            for (int iBeginBroadcast = this.l.beginBroadcast() - 1; iBeginBroadcast >= 0; iBeginBroadcast--) {
                try {
                    ((IMediaControllerCallback) this.l.getBroadcastItem(iBeginBroadcast)).onQueueTitleChanged(charSequence);
                } catch (RemoteException e) {
                }
            }
            this.l.finishBroadcast();
        }

        class b extends IMediaSession.Stub {
            b() {
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void sendCommand(String str, Bundle bundle, ResultReceiverWrapper resultReceiverWrapper) {
                c.this.g.a(15, new a(str, bundle, resultReceiverWrapper.a));
            }

            @Override // android.support.v4.media.session.IMediaSession
            public boolean sendMediaButton(KeyEvent keyEvent) {
                boolean z = (c.this.r & 1) != 0;
                if (z) {
                    c.this.g.a(14, keyEvent);
                }
                return z;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void registerCallbackListener(IMediaControllerCallback iMediaControllerCallback) {
                if (!c.this.m) {
                    c.this.l.register(iMediaControllerCallback);
                } else {
                    try {
                        iMediaControllerCallback.onSessionDestroyed();
                    } catch (Exception e) {
                    }
                }
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void unregisterCallbackListener(IMediaControllerCallback iMediaControllerCallback) {
                c.this.l.unregister(iMediaControllerCallback);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public String getPackageName() {
                return c.this.h;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public String getTag() {
                return c.this.i;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public PendingIntent getLaunchPendingIntent() {
                PendingIntent pendingIntent;
                synchronized (c.this.k) {
                    pendingIntent = c.this.u;
                }
                return pendingIntent;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public long getFlags() {
                long j;
                synchronized (c.this.k) {
                    j = c.this.r;
                }
                return j;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public ParcelableVolumeInfo getVolumeAttributes() {
                int i;
                int i2;
                int streamMaxVolume;
                int streamVolume;
                int volumeControl = 2;
                synchronized (c.this.k) {
                    i = c.this.z;
                    i2 = c.this.A;
                    VolumeProviderCompat volumeProviderCompat = c.this.B;
                    if (i != 2) {
                        streamMaxVolume = c.this.j.getStreamMaxVolume(i2);
                        streamVolume = c.this.j.getStreamVolume(i2);
                    } else {
                        volumeControl = volumeProviderCompat.getVolumeControl();
                        streamMaxVolume = volumeProviderCompat.getMaxVolume();
                        streamVolume = volumeProviderCompat.getCurrentVolume();
                    }
                }
                return new ParcelableVolumeInfo(i, i2, volumeControl, streamMaxVolume, streamVolume);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void adjustVolume(int i, int i2, String str) {
                c.this.a(i, i2);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void setVolumeTo(int i, int i2, String str) {
                c.this.b(i, i2);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void play() {
                c.this.g.a(1);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void playFromMediaId(String str, Bundle bundle) {
                c.this.g.a(2, str, bundle);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void playFromSearch(String str, Bundle bundle) {
                c.this.g.a(3, str, bundle);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void playFromUri(Uri uri, Bundle bundle) {
                c.this.g.a(18, uri, bundle);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void skipToQueueItem(long j) {
                c.this.g.a(4, Long.valueOf(j));
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void pause() {
                c.this.g.a(5);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void stop() {
                c.this.g.a(6);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void next() {
                c.this.g.a(7);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void previous() {
                c.this.g.a(8);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void fastForward() {
                c.this.g.a(9);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void rewind() {
                c.this.g.a(10);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void seekTo(long j) {
                c.this.g.a(11, Long.valueOf(j));
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void rate(RatingCompat ratingCompat) {
                c.this.g.a(12, ratingCompat);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void sendCustomAction(String str, Bundle bundle) {
                c.this.g.a(13, str, bundle);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public MediaMetadataCompat getMetadata() {
                return c.this.s;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public PlaybackStateCompat getPlaybackState() {
                return c.this.g();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public List<QueueItem> getQueue() {
                List<QueueItem> list;
                synchronized (c.this.k) {
                    list = c.this.v;
                }
                return list;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public CharSequence getQueueTitle() {
                return c.this.w;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public Bundle getExtras() {
                Bundle bundle;
                synchronized (c.this.k) {
                    bundle = c.this.y;
                }
                return bundle;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public int getRatingType() {
                return c.this.x;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public boolean isTransportControlEnabled() {
                return (c.this.r & 2) != 0;
            }
        }

        static final class a {
            public final String a;
            public final Bundle b;
            public final ResultReceiver c;

            public a(String str, Bundle bundle, ResultReceiver resultReceiver) {
                this.a = str;
                this.b = bundle;
                this.c = resultReceiver;
            }
        }

        /* JADX INFO: renamed from: android.support.v4.media.session.MediaSessionCompat$c$c, reason: collision with other inner class name */
        class HandlerC0000c extends Handler {
            public HandlerC0000c(Looper looper) {
                super(looper);
            }

            public void a(int i, Object obj, Bundle bundle) {
                Message messageObtainMessage = obtainMessage(i, obj);
                messageObtainMessage.setData(bundle);
                messageObtainMessage.sendToTarget();
            }

            public void a(int i, Object obj) {
                obtainMessage(i, obj).sendToTarget();
            }

            public void a(int i) {
                a(i, null);
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (c.this.q != null) {
                    switch (message.what) {
                        case 1:
                            c.this.q.onPlay();
                            break;
                        case 2:
                            c.this.q.onPlayFromMediaId((String) message.obj, message.getData());
                            break;
                        case 3:
                            c.this.q.onPlayFromSearch((String) message.obj, message.getData());
                            break;
                        case 4:
                            c.this.q.onSkipToQueueItem(((Long) message.obj).longValue());
                            break;
                        case 5:
                            c.this.q.onPause();
                            break;
                        case 6:
                            c.this.q.onStop();
                            break;
                        case 7:
                            c.this.q.onSkipToNext();
                            break;
                        case 8:
                            c.this.q.onSkipToPrevious();
                            break;
                        case 9:
                            c.this.q.onFastForward();
                            break;
                        case 10:
                            c.this.q.onRewind();
                            break;
                        case 11:
                            c.this.q.onSeekTo(((Long) message.obj).longValue());
                            break;
                        case 12:
                            c.this.q.onSetRating((RatingCompat) message.obj);
                            break;
                        case 13:
                            c.this.q.onCustomAction((String) message.obj, message.getData());
                            break;
                        case 14:
                            KeyEvent keyEvent = (KeyEvent) message.obj;
                            Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
                            intent.putExtra("android.intent.extra.KEY_EVENT", keyEvent);
                            if (!c.this.q.onMediaButtonEvent(intent)) {
                                a(keyEvent);
                            }
                            break;
                        case 15:
                            a aVar = (a) message.obj;
                            c.this.q.onCommand(aVar.a, aVar.b, aVar.c);
                            break;
                        case 16:
                            c.this.a(((Integer) message.obj).intValue(), 0);
                            break;
                        case 17:
                            c.this.b(((Integer) message.obj).intValue(), 0);
                            break;
                        case 18:
                            c.this.q.onPlayFromUri((Uri) message.obj, message.getData());
                            break;
                    }
                }
            }

            private void a(KeyEvent keyEvent) {
                if (keyEvent != null && keyEvent.getAction() == 0) {
                    long actions = c.this.t == null ? 0L : c.this.t.getActions();
                    switch (keyEvent.getKeyCode()) {
                        case 79:
                        case 85:
                            boolean z = c.this.t != null && c.this.t.getState() == 3;
                            boolean z2 = (516 & actions) != 0;
                            boolean z3 = (actions & 514) != 0;
                            if (z && z3) {
                                c.this.q.onPause();
                                break;
                            } else if (!z && z2) {
                                c.this.q.onPlay();
                                break;
                            }
                            break;
                        case 86:
                            if ((actions & 1) != 0) {
                                c.this.q.onStop();
                            }
                            break;
                        case 87:
                            if ((actions & 32) != 0) {
                                c.this.q.onSkipToNext();
                            }
                            break;
                        case 88:
                            if ((actions & 16) != 0) {
                                c.this.q.onSkipToPrevious();
                            }
                            break;
                        case 89:
                            if ((actions & 8) != 0) {
                                c.this.q.onRewind();
                            }
                            break;
                        case 90:
                            if ((actions & 64) != 0) {
                                c.this.q.onFastForward();
                            }
                            break;
                        case TransportMediator.KEYCODE_MEDIA_PLAY /* 126 */:
                            if ((actions & 4) != 0) {
                                c.this.q.onPlay();
                            }
                            break;
                        case TransportMediator.KEYCODE_MEDIA_PAUSE /* 127 */:
                            if ((actions & 2) != 0) {
                                c.this.q.onPause();
                            }
                            break;
                    }
                }
            }
        }
    }

    static class b implements a {
        private final Object a;
        private final Token b;
        private PendingIntent c;

        public b(Context context, String str) {
            this.a = MediaSessionCompatApi21.a(context, str);
            this.b = new Token(MediaSessionCompatApi21.e(this.a));
        }

        public b(Object obj) {
            this.a = MediaSessionCompatApi21.a(obj);
            this.b = new Token(MediaSessionCompatApi21.e(this.a));
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.a
        public void a(Callback callback, Handler handler) {
            MediaSessionCompatApi21.a(this.a, callback.a, handler);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.a
        public void a(int i) {
            MediaSessionCompatApi21.a(this.a, i);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.a
        public void b(int i) {
            MediaSessionCompatApi21.b(this.a, i);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.a
        public void a(VolumeProviderCompat volumeProviderCompat) {
            MediaSessionCompatApi21.a(this.a, volumeProviderCompat.getVolumeProvider());
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.a
        public void a(boolean z) {
            MediaSessionCompatApi21.a(this.a, z);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.a
        public boolean a() {
            return MediaSessionCompatApi21.c(this.a);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.a
        public void a(String str, Bundle bundle) {
            MediaSessionCompatApi21.a(this.a, str, bundle);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.a
        public void b() {
            MediaSessionCompatApi21.d(this.a);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.a
        public Token c() {
            return this.b;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.a
        public void a(PlaybackStateCompat playbackStateCompat) {
            MediaSessionCompatApi21.b(this.a, playbackStateCompat.getPlaybackState());
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.a
        public void a(MediaMetadataCompat mediaMetadataCompat) {
            MediaSessionCompatApi21.c(this.a, mediaMetadataCompat.getMediaMetadata());
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.a
        public void a(PendingIntent pendingIntent) {
            MediaSessionCompatApi21.a(this.a, pendingIntent);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.a
        public void b(PendingIntent pendingIntent) {
            this.c = pendingIntent;
            MediaSessionCompatApi21.b(this.a, pendingIntent);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.a
        public void a(List<QueueItem> list) {
            ArrayList arrayList = null;
            if (list != null) {
                ArrayList arrayList2 = new ArrayList();
                Iterator<QueueItem> it = list.iterator();
                while (it.hasNext()) {
                    arrayList2.add(it.next().getQueueItem());
                }
                arrayList = arrayList2;
            }
            MediaSessionCompatApi21.a(this.a, (List<Object>) arrayList);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.a
        public void a(CharSequence charSequence) {
            MediaSessionCompatApi21.a(this.a, charSequence);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.a
        public void c(int i) {
            if (Build.VERSION.SDK_INT >= 22) {
                bq.a(this.a, i);
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.a
        public void a(Bundle bundle) {
            MediaSessionCompatApi21.a(this.a, bundle);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.a
        public Object d() {
            return this.a;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.a
        public Object e() {
            return null;
        }
    }
}
