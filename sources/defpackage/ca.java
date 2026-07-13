package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.os.ParcelableCompatCreatorCallbacks;

/* JADX INFO: loaded from: classes.dex */
class ca<T> implements Parcelable.ClassLoaderCreator<T> {
    private final ParcelableCompatCreatorCallbacks<T> a;

    public ca(ParcelableCompatCreatorCallbacks<T> parcelableCompatCreatorCallbacks) {
        this.a = parcelableCompatCreatorCallbacks;
    }

    @Override // android.os.Parcelable.Creator
    public T createFromParcel(Parcel parcel) {
        return this.a.createFromParcel(parcel, null);
    }

    @Override // android.os.Parcelable.ClassLoaderCreator
    public T createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return this.a.createFromParcel(parcel, classLoader);
    }

    @Override // android.os.Parcelable.Creator
    public T[] newArray(int i) {
        return this.a.newArray(i);
    }
}
