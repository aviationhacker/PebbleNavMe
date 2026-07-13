package com.google.android.gms.appdatasearch;

import android.content.ComponentName;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import com.getpebble.android.kit.Constants;
import com.google.android.gms.appdatasearch.DocumentContents;
import com.google.android.gms.appdatasearch.RegisterSectionInfo;
import com.google.android.gms.appindexing.AppIndexApi;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.zzox;
import com.google.android.gms.internal.zzse;
import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.zip.CRC32;

/* JADX INFO: loaded from: classes.dex */
public class UsageInfo implements SafeParcelable {
    public static final zzj CREATOR = new zzj();
    final int a;
    final DocumentId b;
    final long c;
    int d;
    final DocumentContents e;
    final boolean f;
    int g;
    int h;
    public final String zzub;

    public static final class zza {
        private DocumentId a;
        private String d;
        private DocumentContents e;
        private long b = -1;
        private int c = -1;
        private int g = -1;
        private boolean f = false;
        private int h = 0;

        public zza zzO(boolean z) {
            this.f = z;
            return this;
        }

        public zza zza(DocumentContents documentContents) {
            this.e = documentContents;
            return this;
        }

        public zza zza(DocumentId documentId) {
            this.a = documentId;
            return this;
        }

        public zza zzan(int i) {
            this.c = i;
            return this;
        }

        public zza zzao(int i) {
            this.h = i;
            return this;
        }

        public UsageInfo zzlv() {
            return new UsageInfo(this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h);
        }

        public zza zzw(long j) {
            this.b = j;
            return this;
        }
    }

    UsageInfo(int i, DocumentId documentId, long j, int i2, String str, DocumentContents documentContents, boolean z, int i3, int i4) {
        this.a = i;
        this.b = documentId;
        this.c = j;
        this.d = i2;
        this.zzub = str;
        this.e = documentContents;
        this.f = z;
        this.g = i3;
        this.h = i4;
    }

    private UsageInfo(DocumentId documentId, long j, int i, String str, DocumentContents documentContents, boolean z, int i2, int i3) {
        this(1, documentId, j, i, str, documentContents, z, i2, i3);
    }

    public UsageInfo(String str, Intent intent, String str2, Uri uri, String str3, List<AppIndexApi.AppIndexingLink> list, int i) {
        this(1, zza(str, intent), System.currentTimeMillis(), 0, (String) null, zza(intent, str2, uri, str3, list).zzlo(), false, -1, i);
    }

    private static DocumentId a(String str, String str2) {
        return new DocumentId(str, "", str2);
    }

    private static DocumentSection a(Uri uri) {
        return new DocumentSection(uri.toString(), new RegisterSectionInfo.zza("web_url").zzal(4).zzM(true).zzbB("url").zzlt());
    }

    private static DocumentSection a(String str) {
        return new DocumentSection(str, new RegisterSectionInfo.zza("title").zzal(1).zzN(true).zzbB(Constants.CUST_NAME).zzlt(), "text1");
    }

    private static DocumentSection a(List<AppIndexApi.AppIndexingLink> list) {
        zzox.zza zzaVar = new zzox.zza();
        zzox.zza.C0009zza[] c0009zzaArr = new zzox.zza.C0009zza[list.size()];
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= c0009zzaArr.length) {
                zzaVar.zzaCU = c0009zzaArr;
                return new DocumentSection(zzse.zzf(zzaVar), new RegisterSectionInfo.zza("outlinks").zzM(true).zzbB(".private:outLinks").zzbA("blob").zzlt());
            }
            c0009zzaArr[i2] = new zzox.zza.C0009zza();
            AppIndexApi.AppIndexingLink appIndexingLink = list.get(i2);
            c0009zzaArr[i2].zzaCW = appIndexingLink.appIndexingUrl.toString();
            c0009zzaArr[i2].viewId = appIndexingLink.viewId;
            if (appIndexingLink.webUrl != null) {
                c0009zzaArr[i2].zzaCX = appIndexingLink.webUrl.toString();
            }
            i = i2 + 1;
        }
    }

    private static String a(Intent intent) {
        String uri = intent.toUri(1);
        CRC32 crc32 = new CRC32();
        try {
            crc32.update(uri.getBytes("UTF-8"));
            return Long.toHexString(crc32.getValue());
        } catch (UnsupportedEncodingException e) {
            throw new IllegalStateException(e);
        }
    }

    private static DocumentSection b(String str, String str2) {
        return new DocumentSection(str2, new RegisterSectionInfo.zza(str).zzM(true).zzlt(), str);
    }

    public static DocumentContents.zza zza(Intent intent, String str, Uri uri, String str2, List<AppIndexApi.AppIndexingLink> list) {
        String string;
        DocumentContents.zza zzaVar = new DocumentContents.zza();
        zzaVar.zza(a(str));
        if (uri != null) {
            zzaVar.zza(a(uri));
        }
        if (list != null) {
            zzaVar.zza(a(list));
        }
        String action = intent.getAction();
        if (action != null) {
            zzaVar.zza(b("intent_action", action));
        }
        String dataString = intent.getDataString();
        if (dataString != null) {
            zzaVar.zza(b("intent_data", dataString));
        }
        ComponentName component = intent.getComponent();
        if (component != null) {
            zzaVar.zza(b("intent_activity", component.getClassName()));
        }
        Bundle extras = intent.getExtras();
        if (extras != null && (string = extras.getString("intent_extra_data_key")) != null) {
            zzaVar.zza(b("intent_extra_data", string));
        }
        return zzaVar.zzbx(str2).zzK(true);
    }

    public static DocumentId zza(String str, Intent intent) {
        return a(str, a(intent));
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        zzj zzjVar = CREATOR;
        return 0;
    }

    public String toString() {
        return String.format("UsageInfo[documentId=%s, timestamp=%d, usageType=%d, status=%d]", this.b, Long.valueOf(this.c), Integer.valueOf(this.d), Integer.valueOf(this.h));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzj zzjVar = CREATOR;
        zzj.a(this, parcel, i);
    }

    public DocumentContents zzlu() {
        return this.e;
    }
}
