package com.google.android.gms.common.stats;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import org.eclipse.jetty.util.URIUtil;

/* JADX INFO: loaded from: classes.dex */
public final class ConnectionEvent extends zzf implements SafeParcelable {
    public static final Parcelable.Creator<ConnectionEvent> CREATOR = new zza();
    final int a;
    private final long b;
    private int c;
    private final String d;
    private final String e;
    private final String f;
    private final String g;
    private final String h;
    private final String i;
    private final long j;
    private final long k;
    private long l;

    ConnectionEvent(int i, long j, int i2, String str, String str2, String str3, String str4, String str5, String str6, long j2, long j3) {
        this.a = i;
        this.b = j;
        this.c = i2;
        this.d = str;
        this.e = str2;
        this.f = str3;
        this.g = str4;
        this.l = -1L;
        this.h = str5;
        this.i = str6;
        this.j = j2;
        this.k = j3;
    }

    public ConnectionEvent(long j, int i, String str, String str2, String str3, String str4, String str5, String str6, long j2, long j3) {
        this(1, j, i, str, str2, str3, str4, str5, str6, j2, j3);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.google.android.gms.common.stats.zzf
    public int getEventType() {
        return this.c;
    }

    @Override // com.google.android.gms.common.stats.zzf
    public long getTimeMillis() {
        return this.b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zza.a(this, parcel, i);
    }

    public String zzpX() {
        return this.d;
    }

    public String zzpY() {
        return this.e;
    }

    public String zzpZ() {
        return this.f;
    }

    public String zzqa() {
        return this.g;
    }

    public String zzqb() {
        return this.h;
    }

    public String zzqc() {
        return this.i;
    }

    @Override // com.google.android.gms.common.stats.zzf
    public long zzqd() {
        return this.l;
    }

    public long zzqe() {
        return this.k;
    }

    public long zzqf() {
        return this.j;
    }

    @Override // com.google.android.gms.common.stats.zzf
    public String zzqg() {
        return "\t" + zzpX() + URIUtil.SLASH + zzpY() + "\t" + zzpZ() + URIUtil.SLASH + zzqa() + "\t" + (this.h == null ? "" : this.h) + "\t" + zzqe();
    }
}
