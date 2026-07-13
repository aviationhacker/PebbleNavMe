package android.support.v4.media;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompatApi21;
import android.support.v4.util.ArrayMap;
import android.text.TextUtils;
import android.util.Log;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class MediaMetadataCompat implements Parcelable {
    public static final Parcelable.Creator<MediaMetadataCompat> CREATOR;
    public static final String METADATA_KEY_ALBUM = "android.media.metadata.ALBUM";
    public static final String METADATA_KEY_ALBUM_ART = "android.media.metadata.ALBUM_ART";
    public static final String METADATA_KEY_ALBUM_ARTIST = "android.media.metadata.ALBUM_ARTIST";
    public static final String METADATA_KEY_ALBUM_ART_URI = "android.media.metadata.ALBUM_ART_URI";
    public static final String METADATA_KEY_ART = "android.media.metadata.ART";
    public static final String METADATA_KEY_ARTIST = "android.media.metadata.ARTIST";
    public static final String METADATA_KEY_ART_URI = "android.media.metadata.ART_URI";
    public static final String METADATA_KEY_AUTHOR = "android.media.metadata.AUTHOR";
    public static final String METADATA_KEY_COMPILATION = "android.media.metadata.COMPILATION";
    public static final String METADATA_KEY_COMPOSER = "android.media.metadata.COMPOSER";
    public static final String METADATA_KEY_DATE = "android.media.metadata.DATE";
    public static final String METADATA_KEY_DISC_NUMBER = "android.media.metadata.DISC_NUMBER";
    public static final String METADATA_KEY_DISPLAY_DESCRIPTION = "android.media.metadata.DISPLAY_DESCRIPTION";
    public static final String METADATA_KEY_DISPLAY_ICON = "android.media.metadata.DISPLAY_ICON";
    public static final String METADATA_KEY_DISPLAY_ICON_URI = "android.media.metadata.DISPLAY_ICON_URI";
    public static final String METADATA_KEY_DISPLAY_SUBTITLE = "android.media.metadata.DISPLAY_SUBTITLE";
    public static final String METADATA_KEY_DISPLAY_TITLE = "android.media.metadata.DISPLAY_TITLE";
    public static final String METADATA_KEY_DURATION = "android.media.metadata.DURATION";
    public static final String METADATA_KEY_GENRE = "android.media.metadata.GENRE";
    public static final String METADATA_KEY_MEDIA_ID = "android.media.metadata.MEDIA_ID";
    public static final String METADATA_KEY_NUM_TRACKS = "android.media.metadata.NUM_TRACKS";
    public static final String METADATA_KEY_RATING = "android.media.metadata.RATING";
    public static final String METADATA_KEY_TITLE = "android.media.metadata.TITLE";
    public static final String METADATA_KEY_TRACK_NUMBER = "android.media.metadata.TRACK_NUMBER";
    public static final String METADATA_KEY_USER_RATING = "android.media.metadata.USER_RATING";
    public static final String METADATA_KEY_WRITER = "android.media.metadata.WRITER";
    public static final String METADATA_KEY_YEAR = "android.media.metadata.YEAR";
    private static final ArrayMap<String, Integer> a = new ArrayMap<>();
    private static final String[] b;
    private static final String[] c;
    private static final String[] d;
    private final Bundle e;
    private Object f;
    private MediaDescriptionCompat g;

    @Retention(RetentionPolicy.SOURCE)
    public @interface BitmapKey {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface LongKey {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface RatingKey {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface TextKey {
    }

    static {
        a.put(METADATA_KEY_TITLE, 1);
        a.put(METADATA_KEY_ARTIST, 1);
        a.put(METADATA_KEY_DURATION, 0);
        a.put(METADATA_KEY_ALBUM, 1);
        a.put(METADATA_KEY_AUTHOR, 1);
        a.put(METADATA_KEY_WRITER, 1);
        a.put(METADATA_KEY_COMPOSER, 1);
        a.put(METADATA_KEY_COMPILATION, 1);
        a.put(METADATA_KEY_DATE, 1);
        a.put(METADATA_KEY_YEAR, 0);
        a.put(METADATA_KEY_GENRE, 1);
        a.put(METADATA_KEY_TRACK_NUMBER, 0);
        a.put(METADATA_KEY_NUM_TRACKS, 0);
        a.put(METADATA_KEY_DISC_NUMBER, 0);
        a.put(METADATA_KEY_ALBUM_ARTIST, 1);
        a.put(METADATA_KEY_ART, 2);
        a.put(METADATA_KEY_ART_URI, 1);
        a.put(METADATA_KEY_ALBUM_ART, 2);
        a.put(METADATA_KEY_ALBUM_ART_URI, 1);
        a.put(METADATA_KEY_USER_RATING, 3);
        a.put(METADATA_KEY_RATING, 3);
        a.put(METADATA_KEY_DISPLAY_TITLE, 1);
        a.put(METADATA_KEY_DISPLAY_SUBTITLE, 1);
        a.put(METADATA_KEY_DISPLAY_DESCRIPTION, 1);
        a.put(METADATA_KEY_DISPLAY_ICON, 2);
        a.put(METADATA_KEY_DISPLAY_ICON_URI, 1);
        a.put(METADATA_KEY_MEDIA_ID, 1);
        b = new String[]{METADATA_KEY_TITLE, METADATA_KEY_ARTIST, METADATA_KEY_ALBUM, METADATA_KEY_ALBUM_ARTIST, METADATA_KEY_WRITER, METADATA_KEY_AUTHOR, METADATA_KEY_COMPOSER};
        c = new String[]{METADATA_KEY_DISPLAY_ICON, METADATA_KEY_ART, METADATA_KEY_ALBUM_ART};
        d = new String[]{METADATA_KEY_DISPLAY_ICON_URI, METADATA_KEY_ART_URI, METADATA_KEY_ALBUM_ART_URI};
        CREATOR = new Parcelable.Creator<MediaMetadataCompat>() { // from class: android.support.v4.media.MediaMetadataCompat.1
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public MediaMetadataCompat createFromParcel(Parcel parcel) {
                return new MediaMetadataCompat(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public MediaMetadataCompat[] newArray(int i) {
                return new MediaMetadataCompat[i];
            }
        };
    }

    private MediaMetadataCompat(Bundle bundle) {
        this.e = new Bundle(bundle);
    }

    private MediaMetadataCompat(Parcel parcel) {
        this.e = parcel.readBundle();
    }

    public boolean containsKey(String str) {
        return this.e.containsKey(str);
    }

    public CharSequence getText(String str) {
        return this.e.getCharSequence(str);
    }

    public String getString(String str) {
        CharSequence charSequence = this.e.getCharSequence(str);
        if (charSequence != null) {
            return charSequence.toString();
        }
        return null;
    }

    public long getLong(String str) {
        return this.e.getLong(str, 0L);
    }

    public RatingCompat getRating(String str) {
        try {
            return (RatingCompat) this.e.getParcelable(str);
        } catch (Exception e) {
            Log.w("MediaMetadata", "Failed to retrieve a key as Rating.", e);
            return null;
        }
    }

    public Bitmap getBitmap(String str) {
        try {
            return (Bitmap) this.e.getParcelable(str);
        } catch (Exception e) {
            Log.w("MediaMetadata", "Failed to retrieve a key as Bitmap.", e);
            return null;
        }
    }

    public MediaDescriptionCompat getDescription() {
        int i;
        Bitmap bitmap;
        Uri uri = null;
        if (this.g != null) {
            return this.g;
        }
        String string = getString(METADATA_KEY_MEDIA_ID);
        CharSequence[] charSequenceArr = new CharSequence[3];
        CharSequence text = getText(METADATA_KEY_DISPLAY_TITLE);
        if (!TextUtils.isEmpty(text)) {
            charSequenceArr[0] = text;
            charSequenceArr[1] = getText(METADATA_KEY_DISPLAY_SUBTITLE);
            charSequenceArr[2] = getText(METADATA_KEY_DISPLAY_DESCRIPTION);
        } else {
            int i2 = 0;
            int i3 = 0;
            while (i3 < charSequenceArr.length && i2 < b.length) {
                int i4 = i2 + 1;
                CharSequence text2 = getText(b[i2]);
                if (TextUtils.isEmpty(text2)) {
                    i = i3;
                } else {
                    i = i3 + 1;
                    charSequenceArr[i3] = text2;
                }
                i3 = i;
                i2 = i4;
            }
        }
        int i5 = 0;
        while (true) {
            if (i5 >= c.length) {
                bitmap = null;
                break;
            }
            Bitmap bitmap2 = getBitmap(c[i5]);
            if (bitmap2 != null) {
                bitmap = bitmap2;
                break;
            }
            i5++;
        }
        int i6 = 0;
        while (true) {
            if (i6 >= d.length) {
                break;
            }
            String string2 = getString(d[i6]);
            if (TextUtils.isEmpty(string2)) {
                i6++;
            } else {
                uri = Uri.parse(string2);
                break;
            }
        }
        MediaDescriptionCompat.Builder builder = new MediaDescriptionCompat.Builder();
        builder.setMediaId(string);
        builder.setTitle(charSequenceArr[0]);
        builder.setSubtitle(charSequenceArr[1]);
        builder.setDescription(charSequenceArr[2]);
        builder.setIconBitmap(bitmap);
        builder.setIconUri(uri);
        this.g = builder.build();
        return this.g;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeBundle(this.e);
    }

    public int size() {
        return this.e.size();
    }

    public Set<String> keySet() {
        return this.e.keySet();
    }

    public Bundle getBundle() {
        return this.e;
    }

    public static MediaMetadataCompat fromMediaMetadata(Object obj) {
        if (obj == null || Build.VERSION.SDK_INT < 21) {
            return null;
        }
        Builder builder = new Builder();
        for (String str : MediaMetadataCompatApi21.a(obj)) {
            Integer num = a.get(str);
            if (num != null) {
                switch (num.intValue()) {
                    case 0:
                        builder.putLong(str, MediaMetadataCompatApi21.b(obj, str));
                        break;
                    case 1:
                        builder.putText(str, MediaMetadataCompatApi21.d(obj, str));
                        break;
                    case 2:
                        builder.putBitmap(str, MediaMetadataCompatApi21.a(obj, str));
                        break;
                    case 3:
                        builder.putRating(str, RatingCompat.fromRating(MediaMetadataCompatApi21.c(obj, str)));
                        break;
                }
            }
        }
        MediaMetadataCompat mediaMetadataCompatBuild = builder.build();
        mediaMetadataCompatBuild.f = obj;
        return mediaMetadataCompatBuild;
    }

    public Object getMediaMetadata() {
        if (this.f != null || Build.VERSION.SDK_INT < 21) {
            return this.f;
        }
        Object objNewInstance = MediaMetadataCompatApi21.Builder.newInstance();
        for (String str : keySet()) {
            Integer num = a.get(str);
            if (num != null) {
                switch (num.intValue()) {
                    case 0:
                        MediaMetadataCompatApi21.Builder.putLong(objNewInstance, str, getLong(str));
                        break;
                    case 1:
                        MediaMetadataCompatApi21.Builder.putText(objNewInstance, str, getText(str));
                        break;
                    case 2:
                        MediaMetadataCompatApi21.Builder.putBitmap(objNewInstance, str, getBitmap(str));
                        break;
                    case 3:
                        MediaMetadataCompatApi21.Builder.putRating(objNewInstance, str, getRating(str).getRating());
                        break;
                }
            }
        }
        this.f = MediaMetadataCompatApi21.Builder.build(objNewInstance);
        return this.f;
    }

    public static final class Builder {
        private final Bundle a;

        public Builder() {
            this.a = new Bundle();
        }

        public Builder(MediaMetadataCompat mediaMetadataCompat) {
            this.a = new Bundle(mediaMetadataCompat.e);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Builder putText(String str, CharSequence charSequence) {
            if (MediaMetadataCompat.a.containsKey(str) && ((Integer) MediaMetadataCompat.a.get(str)).intValue() != 1) {
                throw new IllegalArgumentException("The " + str + " key cannot be used to put a CharSequence");
            }
            this.a.putCharSequence(str, charSequence);
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Builder putString(String str, String str2) {
            if (MediaMetadataCompat.a.containsKey(str) && ((Integer) MediaMetadataCompat.a.get(str)).intValue() != 1) {
                throw new IllegalArgumentException("The " + str + " key cannot be used to put a String");
            }
            this.a.putCharSequence(str, str2);
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Builder putLong(String str, long j) {
            if (MediaMetadataCompat.a.containsKey(str) && ((Integer) MediaMetadataCompat.a.get(str)).intValue() != 0) {
                throw new IllegalArgumentException("The " + str + " key cannot be used to put a long");
            }
            this.a.putLong(str, j);
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Builder putRating(String str, RatingCompat ratingCompat) {
            if (MediaMetadataCompat.a.containsKey(str) && ((Integer) MediaMetadataCompat.a.get(str)).intValue() != 3) {
                throw new IllegalArgumentException("The " + str + " key cannot be used to put a Rating");
            }
            this.a.putParcelable(str, ratingCompat);
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Builder putBitmap(String str, Bitmap bitmap) {
            if (MediaMetadataCompat.a.containsKey(str) && ((Integer) MediaMetadataCompat.a.get(str)).intValue() != 2) {
                throw new IllegalArgumentException("The " + str + " key cannot be used to put a Bitmap");
            }
            this.a.putParcelable(str, bitmap);
            return this;
        }

        public MediaMetadataCompat build() {
            return new MediaMetadataCompat(this.a);
        }
    }
}
