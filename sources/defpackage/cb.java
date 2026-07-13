package defpackage;

import android.os.Parcelable;
import android.support.v4.os.ParcelableCompatCreatorCallbacks;

/* JADX INFO: loaded from: classes.dex */
public class cb {
    public static <T> Parcelable.Creator<T> a(ParcelableCompatCreatorCallbacks<T> parcelableCompatCreatorCallbacks) {
        return new ca(parcelableCompatCreatorCallbacks);
    }
}
