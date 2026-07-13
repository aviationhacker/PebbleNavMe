package com.google.android.gms.appdatasearch;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class RegisterSectionInfo implements SafeParcelable {
    public static final zzi CREATOR = new zzi();
    final int a;
    final int[] b;
    public final String name;
    public final int weight;
    public final String zzQF;
    public final boolean zzQG;
    public final boolean zzQH;
    public final String zzQI;
    public final Feature[] zzQJ;
    public final String zzQL;

    public static final class zza {
        private final String a;
        private String b;
        private boolean c;
        private boolean e;
        private String f;
        private BitSet h;
        private String i;
        private int d = 1;
        private final List<Feature> g = new ArrayList();

        public zza(String str) {
            this.a = str;
        }

        public zza zzM(boolean z) {
            this.c = z;
            return this;
        }

        public zza zzN(boolean z) {
            this.e = z;
            return this;
        }

        public zza zzal(int i) {
            if (this.h == null) {
                this.h = new BitSet();
            }
            this.h.set(i);
            return this;
        }

        public zza zzbA(String str) {
            this.b = str;
            return this;
        }

        public zza zzbB(String str) {
            this.i = str;
            return this;
        }

        public RegisterSectionInfo zzlt() {
            int i = 0;
            int[] iArr = null;
            if (this.h != null) {
                iArr = new int[this.h.cardinality()];
                int iNextSetBit = this.h.nextSetBit(0);
                while (iNextSetBit >= 0) {
                    iArr[i] = iNextSetBit;
                    iNextSetBit = this.h.nextSetBit(iNextSetBit + 1);
                    i++;
                }
            }
            return new RegisterSectionInfo(this.a, this.b, this.c, this.d, this.e, this.f, (Feature[]) this.g.toArray(new Feature[this.g.size()]), iArr, this.i);
        }
    }

    RegisterSectionInfo(int i, String str, String str2, boolean z, int i2, boolean z2, String str3, Feature[] featureArr, int[] iArr, String str4) {
        this.a = i;
        this.name = str;
        this.zzQF = str2;
        this.zzQG = z;
        this.weight = i2;
        this.zzQH = z2;
        this.zzQI = str3;
        this.zzQJ = featureArr;
        this.b = iArr;
        this.zzQL = str4;
    }

    RegisterSectionInfo(String str, String str2, boolean z, int i, boolean z2, String str3, Feature[] featureArr, int[] iArr, String str4) {
        this(2, str, str2, z, i, z2, str3, featureArr, iArr, str4);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        zzi zziVar = CREATOR;
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzi zziVar = CREATOR;
        zzi.a(this, parcel, i);
    }
}
