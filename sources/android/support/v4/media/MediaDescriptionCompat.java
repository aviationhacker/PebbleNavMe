package android.support.v4.media;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import android.support.v4.media.MediaDescriptionCompatApi21;
import android.text.TextUtils;
import defpackage.bm;

/* JADX INFO: loaded from: classes.dex */
public final class MediaDescriptionCompat implements Parcelable {
    public static final Parcelable.Creator<MediaDescriptionCompat> CREATOR = new Parcelable.Creator<MediaDescriptionCompat>() { // from class: android.support.v4.media.MediaDescriptionCompat.1
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public MediaDescriptionCompat createFromParcel(Parcel parcel) {
            return Build.VERSION.SDK_INT < 21 ? new MediaDescriptionCompat(parcel) : MediaDescriptionCompat.fromMediaDescription(MediaDescriptionCompatApi21.fromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public MediaDescriptionCompat[] newArray(int i) {
            return new MediaDescriptionCompat[i];
        }
    };
    private final String a;
    private final CharSequence b;
    private final CharSequence c;
    private final CharSequence d;
    private final Bitmap e;
    private final Uri f;
    private final Bundle g;
    private final Uri h;
    private Object i;

    private MediaDescriptionCompat(String str, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, Bitmap bitmap, Uri uri, Bundle bundle, Uri uri2) {
        this.a = str;
        this.b = charSequence;
        this.c = charSequence2;
        this.d = charSequence3;
        this.e = bitmap;
        this.f = uri;
        this.g = bundle;
        this.h = uri2;
    }

    private MediaDescriptionCompat(Parcel parcel) {
        this.a = parcel.readString();
        this.b = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.c = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.d = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.e = (Bitmap) parcel.readParcelable(null);
        this.f = (Uri) parcel.readParcelable(null);
        this.g = parcel.readBundle();
        this.h = (Uri) parcel.readParcelable(null);
    }

    @Nullable
    public String getMediaId() {
        return this.a;
    }

    @Nullable
    public CharSequence getTitle() {
        return this.b;
    }

    @Nullable
    public CharSequence getSubtitle() {
        return this.c;
    }

    @Nullable
    public CharSequence getDescription() {
        return this.d;
    }

    @Nullable
    public Bitmap getIconBitmap() {
        return this.e;
    }

    @Nullable
    public Uri getIconUri() {
        return this.f;
    }

    @Nullable
    public Bundle getExtras() {
        return this.g;
    }

    @Nullable
    public Uri getMediaUri() {
        return this.h;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        if (Build.VERSION.SDK_INT < 21) {
            parcel.writeString(this.a);
            TextUtils.writeToParcel(this.b, parcel, i);
            TextUtils.writeToParcel(this.c, parcel, i);
            TextUtils.writeToParcel(this.d, parcel, i);
            parcel.writeParcelable(this.e, i);
            parcel.writeParcelable(this.f, i);
            parcel.writeBundle(this.g);
            return;
        }
        MediaDescriptionCompatApi21.writeToParcel(getMediaDescription(), parcel, i);
    }

    public String toString() {
        return ((Object) this.b) + ", " + ((Object) this.c) + ", " + ((Object) this.d);
    }

    public Object getMediaDescription() {
        if (this.i != null || Build.VERSION.SDK_INT < 21) {
            return this.i;
        }
        Object objNewInstance = MediaDescriptionCompatApi21.Builder.newInstance();
        MediaDescriptionCompatApi21.Builder.setMediaId(objNewInstance, this.a);
        MediaDescriptionCompatApi21.Builder.setTitle(objNewInstance, this.b);
        MediaDescriptionCompatApi21.Builder.setSubtitle(objNewInstance, this.c);
        MediaDescriptionCompatApi21.Builder.setDescription(objNewInstance, this.d);
        MediaDescriptionCompatApi21.Builder.setIconBitmap(objNewInstance, this.e);
        MediaDescriptionCompatApi21.Builder.setIconUri(objNewInstance, this.f);
        MediaDescriptionCompatApi21.Builder.setExtras(objNewInstance, this.g);
        if (Build.VERSION.SDK_INT >= 23) {
            bm.a.a(objNewInstance, this.h);
        }
        this.i = MediaDescriptionCompatApi21.Builder.build(objNewInstance);
        return this.i;
    }

    public static MediaDescriptionCompat fromMediaDescription(Object obj) {
        if (obj == null || Build.VERSION.SDK_INT < 21) {
            return null;
        }
        Builder builder = new Builder();
        builder.setMediaId(MediaDescriptionCompatApi21.getMediaId(obj));
        builder.setTitle(MediaDescriptionCompatApi21.getTitle(obj));
        builder.setSubtitle(MediaDescriptionCompatApi21.getSubtitle(obj));
        builder.setDescription(MediaDescriptionCompatApi21.getDescription(obj));
        builder.setIconBitmap(MediaDescriptionCompatApi21.getIconBitmap(obj));
        builder.setIconUri(MediaDescriptionCompatApi21.getIconUri(obj));
        builder.setExtras(MediaDescriptionCompatApi21.getExtras(obj));
        if (Build.VERSION.SDK_INT >= 23) {
            builder.setMediaUri(bm.a(obj));
        }
        MediaDescriptionCompat mediaDescriptionCompatBuild = builder.build();
        mediaDescriptionCompatBuild.i = obj;
        return mediaDescriptionCompatBuild;
    }

    public static final class Builder {
        private String a;
        private CharSequence b;
        private CharSequence c;
        private CharSequence d;
        private Bitmap e;
        private Uri f;
        private Bundle g;
        private Uri h;

        public Builder setMediaId(@Nullable String str) {
            this.a = str;
            return this;
        }

        public Builder setTitle(@Nullable CharSequence charSequence) {
            this.b = charSequence;
            return this;
        }

        public Builder setSubtitle(@Nullable CharSequence charSequence) {
            this.c = charSequence;
            return this;
        }

        public Builder setDescription(@Nullable CharSequence charSequence) {
            this.d = charSequence;
            return this;
        }

        public Builder setIconBitmap(@Nullable Bitmap bitmap) {
            this.e = bitmap;
            return this;
        }

        public Builder setIconUri(@Nullable Uri uri) {
            this.f = uri;
            return this;
        }

        public Builder setExtras(@Nullable Bundle bundle) {
            this.g = bundle;
            return this;
        }

        public Builder setMediaUri(@Nullable Uri uri) {
            this.h = uri;
            return this;
        }

        public MediaDescriptionCompat build() {
            return new MediaDescriptionCompat(this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h);
        }
    }
}
