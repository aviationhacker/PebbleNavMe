package com.google.android.gms.common.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.IntentSender;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;

/* JADX INFO: loaded from: classes.dex */
public final class Status implements Result, SafeParcelable {
    private final int a;
    private final int b;
    private final String c;
    private final PendingIntent d;
    public static final Status zzabb = new Status(0);
    public static final Status zzabc = new Status(14);
    public static final Status zzabd = new Status(8);
    public static final Status zzabe = new Status(15);
    public static final Status zzabf = new Status(16);
    public static final Parcelable.Creator<Status> CREATOR = new zzd();

    public Status(int i) {
        this(i, null);
    }

    Status(int i, int i2, String str, PendingIntent pendingIntent) {
        this.a = i;
        this.b = i2;
        this.c = str;
        this.d = pendingIntent;
    }

    public Status(int i, String str) {
        this(1, i, str, null);
    }

    public Status(int i, String str, PendingIntent pendingIntent) {
        this(1, i, str, pendingIntent);
    }

    private String c() {
        return this.c != null ? this.c : CommonStatusCodes.getStatusCodeString(this.b);
    }

    PendingIntent a() {
        return this.d;
    }

    int b() {
        return this.a;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Status)) {
            return false;
        }
        Status status = (Status) obj;
        return this.a == status.a && this.b == status.b && zzw.equal(this.c, status.c) && zzw.equal(this.d, status.d);
    }

    public PendingIntent getResolution() {
        return this.d;
    }

    @Override // com.google.android.gms.common.api.Result
    public Status getStatus() {
        return this;
    }

    public int getStatusCode() {
        return this.b;
    }

    public String getStatusMessage() {
        return this.c;
    }

    public boolean hasResolution() {
        return this.d != null;
    }

    public int hashCode() {
        return zzw.hashCode(Integer.valueOf(this.a), Integer.valueOf(this.b), this.c, this.d);
    }

    public boolean isCanceled() {
        return this.b == 16;
    }

    public boolean isInterrupted() {
        return this.b == 14;
    }

    public boolean isSuccess() {
        return this.b <= 0;
    }

    public void startResolutionForResult(Activity activity, int i) throws IntentSender.SendIntentException {
        if (hasResolution()) {
            activity.startIntentSenderForResult(this.d.getIntentSender(), i, null, 0, 0, 0);
        }
    }

    public String toString() {
        return zzw.zzv(this).zzg("statusCode", c()).zzg("resolution", this.d).toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzd.a(this, parcel, i);
    }
}
