package android.support.v4.media.session;

import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import defpackage.br;
import defpackage.bs;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class PlaybackStateCompat implements Parcelable {
    public static final long ACTION_FAST_FORWARD = 64;
    public static final long ACTION_PAUSE = 2;
    public static final long ACTION_PLAY = 4;
    public static final long ACTION_PLAY_FROM_MEDIA_ID = 1024;
    public static final long ACTION_PLAY_FROM_SEARCH = 2048;
    public static final long ACTION_PLAY_FROM_URI = 8192;
    public static final long ACTION_PLAY_PAUSE = 512;
    public static final long ACTION_REWIND = 8;
    public static final long ACTION_SEEK_TO = 256;
    public static final long ACTION_SET_RATING = 128;
    public static final long ACTION_SKIP_TO_NEXT = 32;
    public static final long ACTION_SKIP_TO_PREVIOUS = 16;
    public static final long ACTION_SKIP_TO_QUEUE_ITEM = 4096;
    public static final long ACTION_STOP = 1;
    public static final Parcelable.Creator<PlaybackStateCompat> CREATOR = new Parcelable.Creator<PlaybackStateCompat>() { // from class: android.support.v4.media.session.PlaybackStateCompat.1
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PlaybackStateCompat createFromParcel(Parcel parcel) {
            return new PlaybackStateCompat(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PlaybackStateCompat[] newArray(int i) {
            return new PlaybackStateCompat[i];
        }
    };
    public static final long PLAYBACK_POSITION_UNKNOWN = -1;
    public static final int STATE_BUFFERING = 6;
    public static final int STATE_CONNECTING = 8;
    public static final int STATE_ERROR = 7;
    public static final int STATE_FAST_FORWARDING = 4;
    public static final int STATE_NONE = 0;
    public static final int STATE_PAUSED = 2;
    public static final int STATE_PLAYING = 3;
    public static final int STATE_REWINDING = 5;
    public static final int STATE_SKIPPING_TO_NEXT = 10;
    public static final int STATE_SKIPPING_TO_PREVIOUS = 9;
    public static final int STATE_SKIPPING_TO_QUEUE_ITEM = 11;
    public static final int STATE_STOPPED = 1;
    private final int a;
    private final long b;
    private final long c;
    private final float d;
    private final long e;
    private final CharSequence f;
    private final long g;
    private List<CustomAction> h;
    private final long i;
    private final Bundle j;
    private Object k;

    @Retention(RetentionPolicy.SOURCE)
    public @interface Actions {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface State {
    }

    private PlaybackStateCompat(int i, long j, long j2, float f, long j3, CharSequence charSequence, long j4, List<CustomAction> list, long j5, Bundle bundle) {
        this.a = i;
        this.b = j;
        this.c = j2;
        this.d = f;
        this.e = j3;
        this.f = charSequence;
        this.g = j4;
        this.h = new ArrayList(list);
        this.i = j5;
        this.j = bundle;
    }

    private PlaybackStateCompat(Parcel parcel) {
        this.a = parcel.readInt();
        this.b = parcel.readLong();
        this.d = parcel.readFloat();
        this.g = parcel.readLong();
        this.c = parcel.readLong();
        this.e = parcel.readLong();
        this.f = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.h = parcel.createTypedArrayList(CustomAction.CREATOR);
        this.i = parcel.readLong();
        this.j = parcel.readBundle();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("PlaybackState {");
        sb.append("state=").append(this.a);
        sb.append(", position=").append(this.b);
        sb.append(", buffered position=").append(this.c);
        sb.append(", speed=").append(this.d);
        sb.append(", updated=").append(this.g);
        sb.append(", actions=").append(this.e);
        sb.append(", error=").append(this.f);
        sb.append(", custom actions=").append(this.h);
        sb.append(", active item id=").append(this.i);
        sb.append("}");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.a);
        parcel.writeLong(this.b);
        parcel.writeFloat(this.d);
        parcel.writeLong(this.g);
        parcel.writeLong(this.c);
        parcel.writeLong(this.e);
        TextUtils.writeToParcel(this.f, parcel, i);
        parcel.writeTypedList(this.h);
        parcel.writeLong(this.i);
        parcel.writeBundle(this.j);
    }

    public int getState() {
        return this.a;
    }

    public long getPosition() {
        return this.b;
    }

    public long getBufferedPosition() {
        return this.c;
    }

    public float getPlaybackSpeed() {
        return this.d;
    }

    public long getActions() {
        return this.e;
    }

    public List<CustomAction> getCustomActions() {
        return this.h;
    }

    public CharSequence getErrorMessage() {
        return this.f;
    }

    public long getLastPositionUpdateTime() {
        return this.g;
    }

    public long getActiveQueueItemId() {
        return this.i;
    }

    @Nullable
    public Bundle getExtras() {
        return this.j;
    }

    public static PlaybackStateCompat fromPlaybackState(Object obj) {
        if (obj == null || Build.VERSION.SDK_INT < 21) {
            return null;
        }
        List<Object> listH = br.h(obj);
        ArrayList arrayList = null;
        if (listH != null) {
            arrayList = new ArrayList(listH.size());
            Iterator<Object> it = listH.iterator();
            while (it.hasNext()) {
                arrayList.add(CustomAction.fromCustomAction(it.next()));
            }
        }
        PlaybackStateCompat playbackStateCompat = new PlaybackStateCompat(br.a(obj), br.b(obj), br.c(obj), br.d(obj), br.e(obj), br.f(obj), br.g(obj), arrayList, br.i(obj), Build.VERSION.SDK_INT >= 22 ? bs.a(obj) : null);
        playbackStateCompat.k = obj;
        return playbackStateCompat;
    }

    public Object getPlaybackState() {
        if (this.k != null || Build.VERSION.SDK_INT < 21) {
            return this.k;
        }
        ArrayList arrayList = null;
        if (this.h != null) {
            arrayList = new ArrayList(this.h.size());
            Iterator<CustomAction> it = this.h.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().getCustomAction());
            }
        }
        if (Build.VERSION.SDK_INT >= 22) {
            this.k = bs.a(this.a, this.b, this.c, this.d, this.e, this.f, this.g, arrayList, this.i, this.j);
        } else {
            this.k = br.a(this.a, this.b, this.c, this.d, this.e, this.f, this.g, arrayList, this.i);
        }
        return this.k;
    }

    public static final class CustomAction implements Parcelable {
        public static final Parcelable.Creator<CustomAction> CREATOR = new Parcelable.Creator<CustomAction>() { // from class: android.support.v4.media.session.PlaybackStateCompat.CustomAction.1
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public CustomAction createFromParcel(Parcel parcel) {
                return new CustomAction(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public CustomAction[] newArray(int i) {
                return new CustomAction[i];
            }
        };
        private final String a;
        private final CharSequence b;
        private final int c;
        private final Bundle d;
        private Object e;

        private CustomAction(String str, CharSequence charSequence, int i, Bundle bundle) {
            this.a = str;
            this.b = charSequence;
            this.c = i;
            this.d = bundle;
        }

        private CustomAction(Parcel parcel) {
            this.a = parcel.readString();
            this.b = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.c = parcel.readInt();
            this.d = parcel.readBundle();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.a);
            TextUtils.writeToParcel(this.b, parcel, i);
            parcel.writeInt(this.c);
            parcel.writeBundle(this.d);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public static CustomAction fromCustomAction(Object obj) {
            if (obj == null || Build.VERSION.SDK_INT < 21) {
                return null;
            }
            CustomAction customAction = new CustomAction(br.a.a(obj), br.a.b(obj), br.a.c(obj), br.a.d(obj));
            customAction.e = obj;
            return customAction;
        }

        public Object getCustomAction() {
            if (this.e != null || Build.VERSION.SDK_INT < 21) {
                return this.e;
            }
            this.e = br.a.a(this.a, this.b, this.c, this.d);
            return this.e;
        }

        public String getAction() {
            return this.a;
        }

        public CharSequence getName() {
            return this.b;
        }

        public int getIcon() {
            return this.c;
        }

        public Bundle getExtras() {
            return this.d;
        }

        public String toString() {
            return "Action:mName='" + ((Object) this.b) + ", mIcon=" + this.c + ", mExtras=" + this.d;
        }

        public static final class Builder {
            private final String a;
            private final CharSequence b;
            private final int c;
            private Bundle d;

            public Builder(String str, CharSequence charSequence, int i) {
                if (TextUtils.isEmpty(str)) {
                    throw new IllegalArgumentException("You must specify an action to build a CustomAction.");
                }
                if (TextUtils.isEmpty(charSequence)) {
                    throw new IllegalArgumentException("You must specify a name to build a CustomAction.");
                }
                if (i == 0) {
                    throw new IllegalArgumentException("You must specify an icon resource id to build a CustomAction.");
                }
                this.a = str;
                this.b = charSequence;
                this.c = i;
            }

            public Builder setExtras(Bundle bundle) {
                this.d = bundle;
                return this;
            }

            public CustomAction build() {
                return new CustomAction(this.a, this.b, this.c, this.d);
            }
        }
    }

    public static final class Builder {
        private final List<CustomAction> a;
        private int b;
        private long c;
        private long d;
        private float e;
        private long f;
        private CharSequence g;
        private long h;
        private long i;
        private Bundle j;

        public Builder() {
            this.a = new ArrayList();
            this.i = -1L;
        }

        public Builder(PlaybackStateCompat playbackStateCompat) {
            this.a = new ArrayList();
            this.i = -1L;
            this.b = playbackStateCompat.a;
            this.c = playbackStateCompat.b;
            this.e = playbackStateCompat.d;
            this.h = playbackStateCompat.g;
            this.d = playbackStateCompat.c;
            this.f = playbackStateCompat.e;
            this.g = playbackStateCompat.f;
            if (playbackStateCompat.h != null) {
                this.a.addAll(playbackStateCompat.h);
            }
            this.i = playbackStateCompat.i;
            this.j = playbackStateCompat.j;
        }

        public Builder setState(int i, long j, float f) {
            return setState(i, j, f, SystemClock.elapsedRealtime());
        }

        public Builder setState(int i, long j, float f, long j2) {
            this.b = i;
            this.c = j;
            this.h = j2;
            this.e = f;
            return this;
        }

        public Builder setBufferedPosition(long j) {
            this.d = j;
            return this;
        }

        public Builder setActions(long j) {
            this.f = j;
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Builder addCustomAction(String str, String str2, int i) {
            return addCustomAction(new CustomAction(str, str2, i, null));
        }

        public Builder addCustomAction(CustomAction customAction) {
            if (customAction == null) {
                throw new IllegalArgumentException("You may not add a null CustomAction to PlaybackStateCompat.");
            }
            this.a.add(customAction);
            return this;
        }

        public Builder setActiveQueueItemId(long j) {
            this.i = j;
            return this;
        }

        public Builder setErrorMessage(CharSequence charSequence) {
            this.g = charSequence;
            return this;
        }

        public Builder setExtras(Bundle bundle) {
            this.j = bundle;
            return this;
        }

        public PlaybackStateCompat build() {
            return new PlaybackStateCompat(this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.a, this.i, this.j);
        }
    }
}
