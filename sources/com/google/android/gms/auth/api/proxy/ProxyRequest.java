package com.google.android.gms.auth.api.proxy;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Patterns;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzx;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class ProxyRequest implements SafeParcelable {
    public static final int VERSION_CODE = 2;
    final int a;
    Bundle b;
    public final byte[] body;
    public final int httpMethod;
    public final long timeoutMillis;
    public final String url;
    public static final Parcelable.Creator<ProxyRequest> CREATOR = new zzb();
    public static final int HTTP_METHOD_GET = 0;
    public static final int HTTP_METHOD_POST = 1;
    public static final int HTTP_METHOD_PUT = 2;
    public static final int HTTP_METHOD_DELETE = 3;
    public static final int HTTP_METHOD_HEAD = 4;
    public static final int HTTP_METHOD_OPTIONS = 5;
    public static final int HTTP_METHOD_TRACE = 6;
    public static final int HTTP_METHOD_PATCH = 7;
    public static final int LAST_CODE = 7;

    public static class Builder {
        private String a;
        private int b = ProxyRequest.HTTP_METHOD_GET;
        private long c = 3000;
        private byte[] d = null;
        private Bundle e = new Bundle();

        public Builder(String str) {
            zzx.zzcr(str);
            if (!Patterns.WEB_URL.matcher(str).matches()) {
                throw new IllegalArgumentException("The supplied url [ " + str + "] is not match Patterns.WEB_URL!");
            }
            this.a = str;
        }

        public ProxyRequest build() {
            if (this.d == null) {
                this.d = new byte[0];
            }
            return new ProxyRequest(2, this.a, this.b, this.c, this.d, this.e);
        }

        public Builder putHeader(String str, String str2) {
            zzx.zzh(str, "Header name cannot be null or empty!");
            Bundle bundle = this.e;
            if (str2 == null) {
                str2 = "";
            }
            bundle.putString(str, str2);
            return this;
        }

        public Builder setBody(byte[] bArr) {
            this.d = bArr;
            return this;
        }

        public Builder setHttpMethod(int i) {
            zzx.zzb(i >= 0 && i <= ProxyRequest.LAST_CODE, "Unrecognized http method code.");
            this.b = i;
            return this;
        }

        public Builder setTimeoutMillis(long j) {
            zzx.zzb(j >= 0, "The specified timeout must be non-negative.");
            this.c = j;
            return this;
        }
    }

    ProxyRequest(int i, String str, int i2, long j, byte[] bArr, Bundle bundle) {
        this.a = i;
        this.url = str;
        this.httpMethod = i2;
        this.timeoutMillis = j;
        this.body = bArr;
        this.b = bundle;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Map<String, String> getHeaderMap() {
        LinkedHashMap linkedHashMap = new LinkedHashMap(this.b.size());
        for (String str : this.b.keySet()) {
            linkedHashMap.put(str, this.b.getString(str));
        }
        return Collections.unmodifiableMap(linkedHashMap);
    }

    public String toString() {
        return "ProxyRequest[ url: " + this.url + ", method: " + this.httpMethod + " ]";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzb.a(this, parcel, i);
    }
}
