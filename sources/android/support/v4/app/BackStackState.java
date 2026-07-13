package android.support.v4.app;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.app.BackStackRecord;
import android.text.TextUtils;
import android.util.Log;
import defpackage.w;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class BackStackState implements Parcelable {
    public static final Parcelable.Creator<BackStackState> CREATOR = new Parcelable.Creator<BackStackState>() { // from class: android.support.v4.app.BackStackState.1
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public BackStackState createFromParcel(Parcel parcel) {
            return new BackStackState(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public BackStackState[] newArray(int i) {
            return new BackStackState[i];
        }
    };
    final int[] a;
    final int b;
    final int c;
    final String d;
    final int e;
    final int f;
    final CharSequence g;
    final int h;
    final CharSequence i;
    final ArrayList<String> j;
    final ArrayList<String> k;

    public BackStackState(BackStackRecord backStackRecord) {
        int size = 0;
        for (BackStackRecord.a aVar = backStackRecord.c; aVar != null; aVar = aVar.a) {
            if (aVar.i != null) {
                size += aVar.i.size();
            }
        }
        this.a = new int[size + (backStackRecord.e * 7)];
        if (!backStackRecord.l) {
            throw new IllegalStateException("Not on back stack");
        }
        int i = 0;
        for (BackStackRecord.a aVar2 = backStackRecord.c; aVar2 != null; aVar2 = aVar2.a) {
            int i2 = i + 1;
            this.a[i] = aVar2.c;
            int i3 = i2 + 1;
            this.a[i2] = aVar2.d != null ? aVar2.d.p : -1;
            int i4 = i3 + 1;
            this.a[i3] = aVar2.e;
            int i5 = i4 + 1;
            this.a[i4] = aVar2.f;
            int i6 = i5 + 1;
            this.a[i5] = aVar2.g;
            int i7 = i6 + 1;
            this.a[i6] = aVar2.h;
            if (aVar2.i != null) {
                int size2 = aVar2.i.size();
                int i8 = i7 + 1;
                this.a[i7] = size2;
                int i9 = 0;
                while (i9 < size2) {
                    this.a[i8] = aVar2.i.get(i9).p;
                    i9++;
                    i8++;
                }
                i = i8;
            } else {
                i = i7 + 1;
                this.a[i7] = 0;
            }
        }
        this.b = backStackRecord.j;
        this.c = backStackRecord.k;
        this.d = backStackRecord.n;
        this.e = backStackRecord.p;
        this.f = backStackRecord.q;
        this.g = backStackRecord.r;
        this.h = backStackRecord.s;
        this.i = backStackRecord.t;
        this.j = backStackRecord.u;
        this.k = backStackRecord.v;
    }

    public BackStackState(Parcel parcel) {
        this.a = parcel.createIntArray();
        this.b = parcel.readInt();
        this.c = parcel.readInt();
        this.d = parcel.readString();
        this.e = parcel.readInt();
        this.f = parcel.readInt();
        this.g = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.h = parcel.readInt();
        this.i = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.j = parcel.createStringArrayList();
        this.k = parcel.createStringArrayList();
    }

    public BackStackRecord a(w wVar) {
        BackStackRecord backStackRecord = new BackStackRecord(wVar);
        int i = 0;
        int i2 = 0;
        while (i2 < this.a.length) {
            BackStackRecord.a aVar = new BackStackRecord.a();
            int i3 = i2 + 1;
            aVar.c = this.a[i2];
            if (w.a) {
                Log.v("FragmentManager", "Instantiate " + backStackRecord + " op #" + i + " base fragment #" + this.a[i3]);
            }
            int i4 = i3 + 1;
            int i5 = this.a[i3];
            if (i5 >= 0) {
                aVar.d = wVar.f.get(i5);
            } else {
                aVar.d = null;
            }
            int i6 = i4 + 1;
            aVar.e = this.a[i4];
            int i7 = i6 + 1;
            aVar.f = this.a[i6];
            int i8 = i7 + 1;
            aVar.g = this.a[i7];
            int i9 = i8 + 1;
            aVar.h = this.a[i8];
            int i10 = i9 + 1;
            int i11 = this.a[i9];
            if (i11 > 0) {
                aVar.i = new ArrayList<>(i11);
                int i12 = 0;
                while (i12 < i11) {
                    if (w.a) {
                        Log.v("FragmentManager", "Instantiate " + backStackRecord + " set remove fragment #" + this.a[i10]);
                    }
                    aVar.i.add(wVar.f.get(this.a[i10]));
                    i12++;
                    i10++;
                }
            }
            backStackRecord.a(aVar);
            i++;
            i2 = i10;
        }
        backStackRecord.j = this.b;
        backStackRecord.k = this.c;
        backStackRecord.n = this.d;
        backStackRecord.p = this.e;
        backStackRecord.l = true;
        backStackRecord.q = this.f;
        backStackRecord.r = this.g;
        backStackRecord.s = this.h;
        backStackRecord.t = this.i;
        backStackRecord.u = this.j;
        backStackRecord.v = this.k;
        backStackRecord.a(1);
        return backStackRecord;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeIntArray(this.a);
        parcel.writeInt(this.b);
        parcel.writeInt(this.c);
        parcel.writeString(this.d);
        parcel.writeInt(this.e);
        parcel.writeInt(this.f);
        TextUtils.writeToParcel(this.g, parcel, 0);
        parcel.writeInt(this.h);
        TextUtils.writeToParcel(this.i, parcel, 0);
        parcel.writeStringList(this.j);
        parcel.writeStringList(this.k);
    }
}
