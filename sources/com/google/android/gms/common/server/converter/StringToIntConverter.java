package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class StringToIntConverter implements SafeParcelable, FastJsonResponse.zza<String, Integer> {
    public static final zzb CREATOR = new zzb();
    private final int a;
    private final HashMap<String, Integer> b;
    private final HashMap<Integer, String> c;
    private final ArrayList<Entry> d;

    public static final class Entry implements SafeParcelable {
        public static final zzc CREATOR = new zzc();
        final int a;
        final String b;
        final int c;

        Entry(int i, String str, int i2) {
            this.a = i;
            this.b = str;
            this.c = i2;
        }

        Entry(String str, int i) {
            this.a = 1;
            this.b = str;
            this.c = i;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            zzc zzcVar = CREATOR;
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            zzc zzcVar = CREATOR;
            zzc.a(this, parcel, i);
        }
    }

    public StringToIntConverter() {
        this.a = 1;
        this.b = new HashMap<>();
        this.c = new HashMap<>();
        this.d = null;
    }

    StringToIntConverter(int i, ArrayList<Entry> arrayList) {
        this.a = i;
        this.b = new HashMap<>();
        this.c = new HashMap<>();
        this.d = null;
        a(arrayList);
    }

    private void a(ArrayList<Entry> arrayList) {
        for (Entry entry : arrayList) {
            zzi(entry.b, entry.c);
        }
    }

    int a() {
        return this.a;
    }

    ArrayList<Entry> b() {
        ArrayList<Entry> arrayList = new ArrayList<>();
        for (String str : this.b.keySet()) {
            arrayList.add(new Entry(str, this.b.get(str).intValue()));
        }
        return arrayList;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        zzb zzbVar = CREATOR;
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzb zzbVar = CREATOR;
        zzb.a(this, parcel, i);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse.zza
    /* JADX INFO: renamed from: zzb, reason: merged with bridge method [inline-methods] */
    public String convertBack(Integer num) {
        String str = this.c.get(num);
        return (str == null && this.b.containsKey("gms_unknown")) ? "gms_unknown" : str;
    }

    public StringToIntConverter zzi(String str, int i) {
        this.b.put(str, Integer.valueOf(i));
        this.c.put(Integer.valueOf(i), str);
        return this;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse.zza
    public int zzpB() {
        return 7;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse.zza
    public int zzpC() {
        return 0;
    }
}
