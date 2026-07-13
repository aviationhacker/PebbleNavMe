package com.google.android.gms.appindexing;

import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.common.internal.zzw;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class AndroidAppUri {
    private final Uri a;

    private AndroidAppUri(Uri uri) {
        this.a = uri;
    }

    private static boolean a(AndroidAppUri androidAppUri) {
        if (!"android-app".equals(androidAppUri.a.getScheme())) {
            throw new IllegalArgumentException("android-app scheme is required.");
        }
        if (TextUtils.isEmpty(androidAppUri.getPackageName())) {
            throw new IllegalArgumentException("Package name is empty.");
        }
        if (androidAppUri.a.equals(newAndroidAppUri(androidAppUri.getPackageName(), androidAppUri.getDeepLinkUri()).toUri())) {
            return true;
        }
        throw new IllegalArgumentException("URI is not canonical.");
    }

    public static AndroidAppUri newAndroidAppUri(Uri uri) {
        AndroidAppUri androidAppUri = new AndroidAppUri(uri);
        if (a(androidAppUri)) {
            return androidAppUri;
        }
        throw new IllegalArgumentException("AndroidAppUri validation failed.");
    }

    public static AndroidAppUri newAndroidAppUri(String str, Uri uri) {
        Uri.Builder builderAuthority = new Uri.Builder().scheme("android-app").authority(str);
        if (uri != null) {
            builderAuthority.appendPath(uri.getScheme());
            if (uri.getAuthority() != null) {
                builderAuthority.appendPath(uri.getAuthority());
            }
            Iterator<String> it = uri.getPathSegments().iterator();
            while (it.hasNext()) {
                builderAuthority.appendPath(it.next());
            }
            builderAuthority.encodedQuery(uri.getEncodedQuery()).encodedFragment(uri.getEncodedFragment());
        }
        return new AndroidAppUri(builderAuthority.build());
    }

    public boolean equals(Object obj) {
        if (obj instanceof AndroidAppUri) {
            return this.a.equals(((AndroidAppUri) obj).a);
        }
        return false;
    }

    public Uri getDeepLinkUri() {
        List<String> pathSegments = this.a.getPathSegments();
        if (pathSegments.size() <= 0) {
            return null;
        }
        String str = pathSegments.get(0);
        Uri.Builder builder = new Uri.Builder();
        builder.scheme(str);
        if (pathSegments.size() > 1) {
            builder.authority(pathSegments.get(1));
            int i = 2;
            while (true) {
                int i2 = i;
                if (i2 >= pathSegments.size()) {
                    break;
                }
                builder.appendPath(pathSegments.get(i2));
                i = i2 + 1;
            }
        }
        builder.encodedQuery(this.a.getEncodedQuery());
        builder.encodedFragment(this.a.getEncodedFragment());
        return builder.build();
    }

    public String getPackageName() {
        return this.a.getAuthority();
    }

    public int hashCode() {
        return zzw.hashCode(this.a);
    }

    public String toString() {
        return this.a.toString();
    }

    public Uri toUri() {
        return this.a;
    }
}
