package com.google.android.gms.appindexing;

import android.net.Uri;
import android.os.Bundle;
import com.getpebble.android.kit.Constants;
import com.google.android.gms.common.internal.zzx;

/* JADX INFO: loaded from: classes.dex */
public class Thing {
    final Bundle a;

    public static class Builder {
        final Bundle a = new Bundle();

        public Thing build() {
            return new Thing(this.a);
        }

        public Builder put(String str, Thing thing) {
            zzx.zzw(str);
            if (thing != null) {
                this.a.putParcelable(str, thing.a);
            }
            return this;
        }

        public Builder put(String str, String str2) {
            zzx.zzw(str);
            if (str2 != null) {
                this.a.putString(str, str2);
            }
            return this;
        }

        public Builder setDescription(String str) {
            put("description", str);
            return this;
        }

        public Builder setId(String str) {
            if (str != null) {
                put("id", str);
            }
            return this;
        }

        public Builder setName(String str) {
            zzx.zzw(str);
            put(Constants.CUST_NAME, str);
            return this;
        }

        public Builder setType(String str) {
            put("type", str);
            return this;
        }

        public Builder setUrl(Uri uri) {
            zzx.zzw(uri);
            put("url", uri.toString());
            return this;
        }
    }

    Thing(Bundle bundle) {
        this.a = bundle;
    }

    public Bundle zzlx() {
        return this.a;
    }
}
