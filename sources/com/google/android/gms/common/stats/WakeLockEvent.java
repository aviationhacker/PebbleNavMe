package com.google.android.gms.common.stats;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class WakeLockEvent extends zzf implements SafeParcelable {
    public static final Parcelable.Creator<WakeLockEvent> CREATOR = new zzh();
    final int a;
    private final long b;
    private int c;
    private final String d;
    private final int e;
    private final List<String> f;
    private final String g;
    private final long h;
    private int i;
    private final String j;
    private final String k;
    private final float l;
    private final long m;
    private long n;

    WakeLockEvent(int i, long j, int i2, String str, int i3, List<String> list, String str2, long j2, int i4, String str3, String str4, float f, long j3) {
        this.a = i;
        this.b = j;
        this.c = i2;
        this.d = str;
        this.j = str3;
        this.e = i3;
        this.n = -1L;
        this.f = list;
        this.g = str2;
        this.h = j2;
        this.i = i4;
        this.k = str4;
        this.l = f;
        this.m = j3;
    }

    public WakeLockEvent(long j, int i, String str, int i2, List<String> list, String str2, long j2, int i3, String str3, String str4, float f, long j3) {
        this(1, j, i, str, i2, list, str2, j2, i3, str3, str4, f, j3);
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
        zzh.a(this, parcel, i);
    }

    public String zzqc() {
        return this.g;
    }

    @Override // com.google.android.gms.common.stats.zzf
    public long zzqd() {
        return this.n;
    }

    public long zzqf() {
        return this.h;
    }

    @Override // com.google.android.gms.common.stats.zzf
    public String zzqg() {
        return "\t" + zzqj() + "\t" + zzql() + "\t" + (zzqm() == null ? "" : TextUtils.join(",", zzqm())) + "\t" + zzqn() + "\t" + (zzqk() == null ? "" : zzqk()) + "\t" + (zzqo() == null ? "" : zzqo()) + "\t" + zzqp();
    }

    public String zzqj() {
        return this.d;
    }

    public String zzqk() {
        return this.j;
    }

    public int zzql() {
        return this.e;
    }

    public List<String> zzqm() {
        return this.f;
    }

    public int zzqn() {
        return this.i;
    }

    public String zzqo() {
        return this.k;
    }

    public float zzqp() {
        return this.l;
    }

    public long zzqq() {
        return this.m;
    }
}
