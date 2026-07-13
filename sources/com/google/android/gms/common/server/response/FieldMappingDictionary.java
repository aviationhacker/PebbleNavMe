package com.google.android.gms.common.server.response;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.common.server.response.FastJsonResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class FieldMappingDictionary implements SafeParcelable {
    public static final zzc CREATOR = new zzc();
    private final int a;
    private final HashMap<String, Map<String, FastJsonResponse.Field<?, ?>>> b;
    private final ArrayList<Entry> c;
    private final String d;

    public static class Entry implements SafeParcelable {
        public static final zzd CREATOR = new zzd();
        final int a;
        final String b;
        final ArrayList<FieldMapPair> c;

        Entry(int i, String str, ArrayList<FieldMapPair> arrayList) {
            this.a = i;
            this.b = str;
            this.c = arrayList;
        }

        Entry(String str, Map<String, FastJsonResponse.Field<?, ?>> map) {
            this.a = 1;
            this.b = str;
            this.c = a(map);
        }

        private static ArrayList<FieldMapPair> a(Map<String, FastJsonResponse.Field<?, ?>> map) {
            if (map == null) {
                return null;
            }
            ArrayList<FieldMapPair> arrayList = new ArrayList<>();
            for (String str : map.keySet()) {
                arrayList.add(new FieldMapPair(str, map.get(str)));
            }
            return arrayList;
        }

        HashMap<String, FastJsonResponse.Field<?, ?>> a() {
            HashMap<String, FastJsonResponse.Field<?, ?>> map = new HashMap<>();
            int size = this.c.size();
            for (int i = 0; i < size; i++) {
                FieldMapPair fieldMapPair = this.c.get(i);
                map.put(fieldMapPair.b, fieldMapPair.c);
            }
            return map;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            zzd zzdVar = CREATOR;
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            zzd zzdVar = CREATOR;
            zzd.a(this, parcel, i);
        }
    }

    public static class FieldMapPair implements SafeParcelable {
        public static final zzb CREATOR = new zzb();
        final int a;
        final String b;
        final FastJsonResponse.Field<?, ?> c;

        FieldMapPair(int i, String str, FastJsonResponse.Field<?, ?> field) {
            this.a = i;
            this.b = str;
            this.c = field;
        }

        FieldMapPair(String str, FastJsonResponse.Field<?, ?> field) {
            this.a = 1;
            this.b = str;
            this.c = field;
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
    }

    FieldMappingDictionary(int i, ArrayList<Entry> arrayList, String str) {
        this.a = i;
        this.c = null;
        this.b = a(arrayList);
        this.d = (String) zzx.zzw(str);
        zzpQ();
    }

    public FieldMappingDictionary(Class<? extends FastJsonResponse> cls) {
        this.a = 1;
        this.c = null;
        this.b = new HashMap<>();
        this.d = cls.getCanonicalName();
    }

    private static HashMap<String, Map<String, FastJsonResponse.Field<?, ?>>> a(ArrayList<Entry> arrayList) {
        HashMap<String, Map<String, FastJsonResponse.Field<?, ?>>> map = new HashMap<>();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            Entry entry = arrayList.get(i);
            map.put(entry.b, entry.a());
        }
        return map;
    }

    int a() {
        return this.a;
    }

    ArrayList<Entry> b() {
        ArrayList<Entry> arrayList = new ArrayList<>();
        for (String str : this.b.keySet()) {
            arrayList.add(new Entry(str, this.b.get(str)));
        }
        return arrayList;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        zzc zzcVar = CREATOR;
        return 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        for (String str : this.b.keySet()) {
            sb.append(str).append(":\n");
            Map<String, FastJsonResponse.Field<?, ?>> map = this.b.get(str);
            for (String str2 : map.keySet()) {
                sb.append("  ").append(str2).append(": ");
                sb.append(map.get(str2));
            }
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzc zzcVar = CREATOR;
        zzc.a(this, parcel, i);
    }

    public void zza(Class<? extends FastJsonResponse> cls, Map<String, FastJsonResponse.Field<?, ?>> map) {
        this.b.put(cls.getCanonicalName(), map);
    }

    public boolean zzb(Class<? extends FastJsonResponse> cls) {
        return this.b.containsKey(cls.getCanonicalName());
    }

    public Map<String, FastJsonResponse.Field<?, ?>> zzcw(String str) {
        return this.b.get(str);
    }

    public void zzpQ() {
        Iterator<String> it = this.b.keySet().iterator();
        while (it.hasNext()) {
            Map<String, FastJsonResponse.Field<?, ?>> map = this.b.get(it.next());
            Iterator<String> it2 = map.keySet().iterator();
            while (it2.hasNext()) {
                map.get(it2.next()).zza(this);
            }
        }
    }

    public void zzpR() {
        for (String str : this.b.keySet()) {
            Map<String, FastJsonResponse.Field<?, ?>> map = this.b.get(str);
            HashMap map2 = new HashMap();
            for (String str2 : map.keySet()) {
                map2.put(str2, map.get(str2).zzpG());
            }
            this.b.put(str, map2);
        }
    }

    public String zzpT() {
        return this.d;
    }
}
