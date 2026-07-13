package android.support.v4.os;

import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import defpackage.cb;

/* JADX INFO: loaded from: classes.dex */
public class ParcelableCompat {
    public static <T> Parcelable.Creator<T> newCreator(ParcelableCompatCreatorCallbacks<T> parcelableCompatCreatorCallbacks) {
        return Build.VERSION.SDK_INT >= 13 ? cb.a(parcelableCompatCreatorCallbacks) : new a(parcelableCompatCreatorCallbacks);
    }

    static class a<T> implements Parcelable.Creator<T> {
        final ParcelableCompatCreatorCallbacks<T> a;

        public a(ParcelableCompatCreatorCallbacks<T> parcelableCompatCreatorCallbacks) {
            this.a = parcelableCompatCreatorCallbacks;
        }

        @Override // android.os.Parcelable.Creator
        public T createFromParcel(Parcel parcel) {
            return this.a.createFromParcel(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        public T[] newArray(int i) {
            return this.a.newArray(i);
        }
    }
}
