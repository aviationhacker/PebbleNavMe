package android.support.v4.media;

import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import defpackage.bn;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
public final class RatingCompat implements Parcelable {
    public static final Parcelable.Creator<RatingCompat> CREATOR = new Parcelable.Creator<RatingCompat>() { // from class: android.support.v4.media.RatingCompat.1
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public RatingCompat createFromParcel(Parcel parcel) {
            return new RatingCompat(parcel.readInt(), parcel.readFloat());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public RatingCompat[] newArray(int i) {
            return new RatingCompat[i];
        }
    };
    public static final int RATING_3_STARS = 3;
    public static final int RATING_4_STARS = 4;
    public static final int RATING_5_STARS = 5;
    public static final int RATING_HEART = 1;
    public static final int RATING_NONE = 0;
    public static final int RATING_PERCENTAGE = 6;
    public static final int RATING_THUMB_UP_DOWN = 2;
    private final int a;
    private final float b;
    private Object c;

    @Retention(RetentionPolicy.SOURCE)
    public @interface StarStyle {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Style {
    }

    private RatingCompat(int i, float f) {
        this.a = i;
        this.b = f;
    }

    public String toString() {
        return "Rating:style=" + this.a + " rating=" + (this.b < 0.0f ? "unrated" : String.valueOf(this.b));
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return this.a;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.a);
        parcel.writeFloat(this.b);
    }

    public static RatingCompat newUnratedRating(int i) {
        switch (i) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                return new RatingCompat(i, -1.0f);
            default:
                return null;
        }
    }

    public static RatingCompat newHeartRating(boolean z) {
        return new RatingCompat(1, z ? 1.0f : 0.0f);
    }

    public static RatingCompat newThumbRating(boolean z) {
        return new RatingCompat(2, z ? 1.0f : 0.0f);
    }

    public static RatingCompat newStarRating(int i, float f) {
        float f2;
        switch (i) {
            case 3:
                f2 = 3.0f;
                break;
            case 4:
                f2 = 4.0f;
                break;
            case 5:
                f2 = 5.0f;
                break;
            default:
                Log.e("Rating", "Invalid rating style (" + i + ") for a star rating");
                return null;
        }
        if (f < 0.0f || f > f2) {
            Log.e("Rating", "Trying to set out of range star-based rating");
            return null;
        }
        return new RatingCompat(i, f);
    }

    public static RatingCompat newPercentageRating(float f) {
        if (f >= 0.0f && f <= 100.0f) {
            return new RatingCompat(6, f);
        }
        Log.e("Rating", "Invalid percentage-based rating value");
        return null;
    }

    public boolean isRated() {
        return this.b >= 0.0f;
    }

    public int getRatingStyle() {
        return this.a;
    }

    public boolean hasHeart() {
        if (this.a != 1) {
            return false;
        }
        return this.b == 1.0f;
    }

    public boolean isThumbUp() {
        return this.a == 2 && this.b == 1.0f;
    }

    public float getStarRating() {
        switch (this.a) {
            case 3:
            case 4:
            case 5:
                if (isRated()) {
                    return this.b;
                }
            default:
                return -1.0f;
        }
    }

    public float getPercentRating() {
        if (this.a == 6 && isRated()) {
            return this.b;
        }
        return -1.0f;
    }

    public static RatingCompat fromRating(Object obj) {
        RatingCompat ratingCompatNewUnratedRating = null;
        if (obj != null && Build.VERSION.SDK_INT >= 21) {
            int iB = bn.b(obj);
            if (bn.a(obj)) {
                switch (iB) {
                    case 1:
                        ratingCompatNewUnratedRating = newHeartRating(bn.c(obj));
                        break;
                    case 2:
                        ratingCompatNewUnratedRating = newThumbRating(bn.d(obj));
                        break;
                    case 3:
                    case 4:
                    case 5:
                        ratingCompatNewUnratedRating = newStarRating(iB, bn.e(obj));
                        break;
                    case 6:
                        ratingCompatNewUnratedRating = newPercentageRating(bn.f(obj));
                        break;
                }
            } else {
                ratingCompatNewUnratedRating = newUnratedRating(iB);
            }
            ratingCompatNewUnratedRating.c = obj;
        }
        return ratingCompatNewUnratedRating;
    }

    public Object getRating() {
        if (this.c != null || Build.VERSION.SDK_INT < 21) {
            return this.c;
        }
        if (isRated()) {
            switch (this.a) {
                case 1:
                    this.c = bn.a(hasHeart());
                    break;
                case 2:
                    this.c = bn.b(isThumbUp());
                    break;
                case 3:
                case 4:
                case 5:
                    this.c = bn.a(this.a, getStarRating());
                    break;
                case 6:
                    this.c = bn.a(getPercentRating());
                default:
                    return null;
            }
            return this.c;
        }
        this.c = bn.a(this.a);
        return this.c;
    }
}
