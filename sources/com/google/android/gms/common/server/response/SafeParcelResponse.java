package com.google.android.gms.common.server.response;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.internal.zzmj;
import com.google.android.gms.internal.zzmk;
import com.google.android.gms.internal.zzmu;
import com.google.android.gms.internal.zzmv;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class SafeParcelResponse extends FastJsonResponse implements SafeParcelable {
    public static final zze CREATOR = new zze();
    private final int a;
    private final Parcel b;
    private final int c;
    private final FieldMappingDictionary d;
    private final String e;
    private int f;
    private int g;

    SafeParcelResponse(int i, Parcel parcel, FieldMappingDictionary fieldMappingDictionary) {
        this.a = i;
        this.b = (Parcel) zzx.zzw(parcel);
        this.c = 2;
        this.d = fieldMappingDictionary;
        if (this.d == null) {
            this.e = null;
        } else {
            this.e = this.d.zzpT();
        }
        this.f = 2;
    }

    private SafeParcelResponse(SafeParcelable safeParcelable, FieldMappingDictionary fieldMappingDictionary, String str) {
        this.a = 1;
        this.b = Parcel.obtain();
        safeParcelable.writeToParcel(this.b, 0);
        this.c = 1;
        this.d = (FieldMappingDictionary) zzx.zzw(fieldMappingDictionary);
        this.e = (String) zzx.zzw(str);
        this.f = 2;
    }

    private static FieldMappingDictionary a(FastJsonResponse fastJsonResponse) {
        FieldMappingDictionary fieldMappingDictionary = new FieldMappingDictionary(fastJsonResponse.getClass());
        a(fieldMappingDictionary, fastJsonResponse);
        fieldMappingDictionary.zzpR();
        fieldMappingDictionary.zzpQ();
        return fieldMappingDictionary;
    }

    private static HashMap<Integer, Map.Entry<String, FastJsonResponse.Field<?, ?>>> a(Map<String, FastJsonResponse.Field<?, ?>> map) {
        HashMap<Integer, Map.Entry<String, FastJsonResponse.Field<?, ?>>> map2 = new HashMap<>();
        for (Map.Entry<String, FastJsonResponse.Field<?, ?>> entry : map.entrySet()) {
            map2.put(Integer.valueOf(entry.getValue().zzpK()), entry);
        }
        return map2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static void a(FieldMappingDictionary fieldMappingDictionary, FastJsonResponse fastJsonResponse) {
        Class<?> cls = fastJsonResponse.getClass();
        if (fieldMappingDictionary.zzb(cls)) {
            return;
        }
        Map<String, FastJsonResponse.Field<?, ?>> mapZzpD = fastJsonResponse.zzpD();
        fieldMappingDictionary.zza(cls, mapZzpD);
        Iterator<String> it = mapZzpD.keySet().iterator();
        while (it.hasNext()) {
            FastJsonResponse.Field<?, ?> field = mapZzpD.get(it.next());
            Class<? extends FastJsonResponse> clsZzpL = field.zzpL();
            if (clsZzpL != null) {
                try {
                    a(fieldMappingDictionary, clsZzpL.newInstance());
                } catch (IllegalAccessException e) {
                    throw new IllegalStateException("Could not access object of type " + field.zzpL().getCanonicalName(), e);
                } catch (InstantiationException e2) {
                    throw new IllegalStateException("Could not instantiate an object of type " + field.zzpL().getCanonicalName(), e2);
                }
            }
        }
    }

    private void a(StringBuilder sb, int i, Object obj) {
        switch (i) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                sb.append(obj);
                return;
            case 7:
                sb.append("\"").append(zzmu.zzcz(obj.toString())).append("\"");
                return;
            case 8:
                sb.append("\"").append(zzmk.zzi((byte[]) obj)).append("\"");
                return;
            case 9:
                sb.append("\"").append(zzmk.zzj((byte[]) obj));
                sb.append("\"");
                return;
            case 10:
                zzmv.zza(sb, (HashMap) obj);
                return;
            case 11:
                throw new IllegalArgumentException("Method does not accept concrete type.");
            default:
                throw new IllegalArgumentException("Unknown type = " + i);
        }
    }

    private void a(StringBuilder sb, FastJsonResponse.Field<?, ?> field, Parcel parcel, int i) {
        switch (field.zzpC()) {
            case 0:
                a(sb, field, zza(field, Integer.valueOf(com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, i))));
                return;
            case 1:
                a(sb, field, zza(field, com.google.android.gms.common.internal.safeparcel.zza.zzk(parcel, i)));
                return;
            case 2:
                a(sb, field, zza(field, Long.valueOf(com.google.android.gms.common.internal.safeparcel.zza.zzi(parcel, i))));
                return;
            case 3:
                a(sb, field, zza(field, Float.valueOf(com.google.android.gms.common.internal.safeparcel.zza.zzl(parcel, i))));
                return;
            case 4:
                a(sb, field, zza(field, Double.valueOf(com.google.android.gms.common.internal.safeparcel.zza.zzn(parcel, i))));
                return;
            case 5:
                a(sb, field, zza(field, com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, i)));
                return;
            case 6:
                a(sb, field, zza(field, Boolean.valueOf(com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, i))));
                return;
            case 7:
                a(sb, field, zza(field, com.google.android.gms.common.internal.safeparcel.zza.zzp(parcel, i)));
                return;
            case 8:
            case 9:
                a(sb, field, zza(field, com.google.android.gms.common.internal.safeparcel.zza.zzs(parcel, i)));
                return;
            case 10:
                a(sb, field, zza(field, zzi(com.google.android.gms.common.internal.safeparcel.zza.zzr(parcel, i))));
                return;
            case 11:
                throw new IllegalArgumentException("Method does not accept concrete type.");
            default:
                throw new IllegalArgumentException("Unknown field out type = " + field.zzpC());
        }
    }

    private void a(StringBuilder sb, FastJsonResponse.Field<?, ?> field, Object obj) {
        if (field.zzpH()) {
            a(sb, field, (ArrayList<?>) obj);
        } else {
            a(sb, field.zzpB(), obj);
        }
    }

    private void a(StringBuilder sb, FastJsonResponse.Field<?, ?> field, ArrayList<?> arrayList) {
        sb.append("[");
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            if (i != 0) {
                sb.append(",");
            }
            a(sb, field.zzpB(), arrayList.get(i));
        }
        sb.append("]");
    }

    private void a(StringBuilder sb, String str, FastJsonResponse.Field<?, ?> field, Parcel parcel, int i) {
        sb.append("\"").append(str).append("\":");
        if (field.zzpN()) {
            a(sb, field, parcel, i);
        } else {
            b(sb, field, parcel, i);
        }
    }

    private void a(StringBuilder sb, Map<String, FastJsonResponse.Field<?, ?>> map, Parcel parcel) {
        HashMap<Integer, Map.Entry<String, FastJsonResponse.Field<?, ?>>> mapA = a(map);
        sb.append('{');
        int iZzap = com.google.android.gms.common.internal.safeparcel.zza.zzap(parcel);
        boolean z = false;
        while (parcel.dataPosition() < iZzap) {
            int iZzao = com.google.android.gms.common.internal.safeparcel.zza.zzao(parcel);
            Map.Entry<String, FastJsonResponse.Field<?, ?>> entry = mapA.get(Integer.valueOf(com.google.android.gms.common.internal.safeparcel.zza.zzbM(iZzao)));
            if (entry != null) {
                if (z) {
                    sb.append(",");
                }
                a(sb, entry.getKey(), entry.getValue(), parcel, iZzao);
                z = true;
            }
        }
        if (parcel.dataPosition() != iZzap) {
            throw new zza.C0006zza("Overread allowed size end=" + iZzap, parcel);
        }
        sb.append('}');
    }

    private void b(StringBuilder sb, FastJsonResponse.Field<?, ?> field, Parcel parcel, int i) {
        if (field.zzpI()) {
            sb.append("[");
            switch (field.zzpC()) {
                case 0:
                    zzmj.zza(sb, com.google.android.gms.common.internal.safeparcel.zza.zzv(parcel, i));
                    break;
                case 1:
                    zzmj.zza(sb, com.google.android.gms.common.internal.safeparcel.zza.zzx(parcel, i));
                    break;
                case 2:
                    zzmj.zza(sb, com.google.android.gms.common.internal.safeparcel.zza.zzw(parcel, i));
                    break;
                case 3:
                    zzmj.zza(sb, com.google.android.gms.common.internal.safeparcel.zza.zzy(parcel, i));
                    break;
                case 4:
                    zzmj.zza(sb, com.google.android.gms.common.internal.safeparcel.zza.zzz(parcel, i));
                    break;
                case 5:
                    zzmj.zza(sb, com.google.android.gms.common.internal.safeparcel.zza.zzA(parcel, i));
                    break;
                case 6:
                    zzmj.zza(sb, com.google.android.gms.common.internal.safeparcel.zza.zzu(parcel, i));
                    break;
                case 7:
                    zzmj.zza(sb, com.google.android.gms.common.internal.safeparcel.zza.zzB(parcel, i));
                    break;
                case 8:
                case 9:
                case 10:
                    throw new UnsupportedOperationException("List of type BASE64, BASE64_URL_SAFE, or STRING_MAP is not supported");
                case 11:
                    Parcel[] parcelArrZzF = com.google.android.gms.common.internal.safeparcel.zza.zzF(parcel, i);
                    int length = parcelArrZzF.length;
                    for (int i2 = 0; i2 < length; i2++) {
                        if (i2 > 0) {
                            sb.append(",");
                        }
                        parcelArrZzF[i2].setDataPosition(0);
                        a(sb, field.zzpP(), parcelArrZzF[i2]);
                    }
                    break;
                default:
                    throw new IllegalStateException("Unknown field type out.");
            }
            sb.append("]");
            return;
        }
        switch (field.zzpC()) {
            case 0:
                sb.append(com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, i));
                return;
            case 1:
                sb.append(com.google.android.gms.common.internal.safeparcel.zza.zzk(parcel, i));
                return;
            case 2:
                sb.append(com.google.android.gms.common.internal.safeparcel.zza.zzi(parcel, i));
                return;
            case 3:
                sb.append(com.google.android.gms.common.internal.safeparcel.zza.zzl(parcel, i));
                return;
            case 4:
                sb.append(com.google.android.gms.common.internal.safeparcel.zza.zzn(parcel, i));
                return;
            case 5:
                sb.append(com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, i));
                return;
            case 6:
                sb.append(com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, i));
                return;
            case 7:
                sb.append("\"").append(zzmu.zzcz(com.google.android.gms.common.internal.safeparcel.zza.zzp(parcel, i))).append("\"");
                return;
            case 8:
                sb.append("\"").append(zzmk.zzi(com.google.android.gms.common.internal.safeparcel.zza.zzs(parcel, i))).append("\"");
                return;
            case 9:
                sb.append("\"").append(zzmk.zzj(com.google.android.gms.common.internal.safeparcel.zza.zzs(parcel, i)));
                sb.append("\"");
                return;
            case 10:
                Bundle bundleZzr = com.google.android.gms.common.internal.safeparcel.zza.zzr(parcel, i);
                Set<String> setKeySet = bundleZzr.keySet();
                setKeySet.size();
                sb.append("{");
                boolean z = true;
                for (String str : setKeySet) {
                    if (!z) {
                        sb.append(",");
                    }
                    sb.append("\"").append(str).append("\"");
                    sb.append(":");
                    sb.append("\"").append(zzmu.zzcz(bundleZzr.getString(str))).append("\"");
                    z = false;
                }
                sb.append("}");
                return;
            case 11:
                Parcel parcelZzE = com.google.android.gms.common.internal.safeparcel.zza.zzE(parcel, i);
                parcelZzE.setDataPosition(0);
                a(sb, field.zzpP(), parcelZzE);
                return;
            default:
                throw new IllegalStateException("Unknown field type out");
        }
    }

    public static <T extends FastJsonResponse & SafeParcelable> SafeParcelResponse zza(T t) {
        String canonicalName = t.getClass().getCanonicalName();
        return new SafeParcelResponse(t, a(t), canonicalName);
    }

    public static HashMap<String, String> zzi(Bundle bundle) {
        HashMap<String, String> map = new HashMap<>();
        for (String str : bundle.keySet()) {
            map.put(str, bundle.getString(str));
        }
        return map;
    }

    FieldMappingDictionary a() {
        switch (this.c) {
            case 0:
                return null;
            case 1:
                return this.d;
            case 2:
                return this.d;
            default:
                throw new IllegalStateException("Invalid creation type: " + this.c);
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        zze zzeVar = CREATOR;
        return 0;
    }

    public int getVersionCode() {
        return this.a;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public String toString() {
        zzx.zzb(this.d, "Cannot convert to JSON on client side.");
        Parcel parcelZzpV = zzpV();
        parcelZzpV.setDataPosition(0);
        StringBuilder sb = new StringBuilder(100);
        a(sb, this.d.zzcw(this.e), parcelZzpV);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zze zzeVar = CREATOR;
        zze.a(this, parcel, i);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected Object zzcs(String str) {
        throw new UnsupportedOperationException("Converting to JSON does not require this method.");
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected boolean zzct(String str) {
        throw new UnsupportedOperationException("Converting to JSON does not require this method.");
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public Map<String, FastJsonResponse.Field<?, ?>> zzpD() {
        if (this.d == null) {
            return null;
        }
        return this.d.zzcw(this.e);
    }

    public Parcel zzpV() {
        switch (this.f) {
            case 0:
                this.g = com.google.android.gms.common.internal.safeparcel.zzb.zzaq(this.b);
                com.google.android.gms.common.internal.safeparcel.zzb.zzI(this.b, this.g);
                this.f = 2;
                break;
            case 1:
                com.google.android.gms.common.internal.safeparcel.zzb.zzI(this.b, this.g);
                this.f = 2;
                break;
        }
        return this.b;
    }
}
