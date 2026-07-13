package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import com.google.android.gms.appdatasearch.GetRecentContextCall;
import com.google.android.gms.appdatasearch.UsageInfo;
import com.google.android.gms.appdatasearch.zza;
import com.google.android.gms.appdatasearch.zzk;
import com.google.android.gms.appindexing.Action;
import com.google.android.gms.appindexing.AppIndexApi;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzlb;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class zzju implements zzk, AppIndexApi {

    @Deprecated
    static final class a implements AppIndexApi.ActionResult {
        private zzju a;
        private PendingResult<Status> b;
        private Action c;

        a(zzju zzjuVar, PendingResult<Status> pendingResult, Action action) {
            this.a = zzjuVar;
            this.b = pendingResult;
            this.c = action;
        }

        @Override // com.google.android.gms.appindexing.AppIndexApi.ActionResult
        public PendingResult<Status> end(GoogleApiClient googleApiClient) {
            return this.a.zza(googleApiClient, zzjt.zza(this.c, System.currentTimeMillis(), googleApiClient.getContext().getPackageName(), 2));
        }

        @Override // com.google.android.gms.appindexing.AppIndexApi.ActionResult
        public PendingResult<Status> getPendingResult() {
            return this.b;
        }
    }

    static abstract class b<T extends Result> extends zzlb.zza<T, zzjs> {
        public b(GoogleApiClient googleApiClient) {
            super(zza.zzPT, googleApiClient);
        }

        protected abstract void a(zzjp zzjpVar);

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzlb.zza
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void zza(zzjs zzjsVar) {
            a(zzjsVar.zzlw());
        }
    }

    static abstract class c<T extends Result> extends b<Status> {
        c(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzlc
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Status zzb(Status status) {
            return status;
        }
    }

    static final class d extends zzjr<Status> {
        public d(zzlb.zzb<Status> zzbVar) {
            super(zzbVar);
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        @Override // com.google.android.gms.internal.zzjr, com.google.android.gms.internal.zzjq
        public void zzc(Status status) {
            this.zzRb.zzp((T) status);
        }
    }

    private PendingResult<Status> a(GoogleApiClient googleApiClient, Action action, int i) {
        return zza(googleApiClient, zzjt.zza(action, System.currentTimeMillis(), googleApiClient.getContext().getPackageName(), i));
    }

    private static void a(String str, Uri uri) {
        if (!"android-app".equals(uri.getScheme())) {
            throw new IllegalArgumentException("AppIndex: The URI scheme must be 'android-app' and follow the format (android-app://<package_name>/<scheme>/[host_path]). Provided URI: " + uri);
        }
        String host = uri.getHost();
        if (str != null && !str.equals(host)) {
            throw new IllegalArgumentException("AppIndex: The URI host must match the package name and follow the format (android-app://<package_name>/<scheme>/[host_path]). Provided URI: " + uri);
        }
        List<String> pathSegments = uri.getPathSegments();
        if (pathSegments.isEmpty() || pathSegments.get(0).isEmpty()) {
            throw new IllegalArgumentException("AppIndex: The app URI scheme must exist and follow the format android-app://<package_name>/<scheme>/[host_path]). Provided URI: " + uri);
        }
    }

    public static Intent zza(String str, Uri uri) {
        a(str, uri);
        List<String> pathSegments = uri.getPathSegments();
        String str2 = pathSegments.get(0);
        Uri.Builder builder = new Uri.Builder();
        builder.scheme(str2);
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
        builder.encodedQuery(uri.getEncodedQuery());
        builder.encodedFragment(uri.getEncodedFragment());
        return new Intent("android.intent.action.VIEW", builder.build());
    }

    public static void zzp(List<AppIndexApi.AppIndexingLink> list) {
        if (list == null) {
            return;
        }
        Iterator<AppIndexApi.AppIndexingLink> it = list.iterator();
        while (it.hasNext()) {
            a(null, it.next().appIndexingUrl);
        }
    }

    @Override // com.google.android.gms.appindexing.AppIndexApi
    public AppIndexApi.ActionResult action(GoogleApiClient googleApiClient, Action action) {
        return new a(this, a(googleApiClient, action, 1), action);
    }

    @Override // com.google.android.gms.appindexing.AppIndexApi
    public PendingResult<Status> end(GoogleApiClient googleApiClient, Action action) {
        return a(googleApiClient, action, 2);
    }

    @Override // com.google.android.gms.appindexing.AppIndexApi
    public PendingResult<Status> start(GoogleApiClient googleApiClient, Action action) {
        return a(googleApiClient, action, 1);
    }

    @Override // com.google.android.gms.appindexing.AppIndexApi
    public PendingResult<Status> view(GoogleApiClient googleApiClient, Activity activity, Intent intent, String str, Uri uri, List<AppIndexApi.AppIndexingLink> list) {
        String packageName = googleApiClient.getContext().getPackageName();
        zzp(list);
        return zza(googleApiClient, new UsageInfo(packageName, intent, str, uri, null, list, 1));
    }

    @Override // com.google.android.gms.appindexing.AppIndexApi
    public PendingResult<Status> view(GoogleApiClient googleApiClient, Activity activity, Uri uri, String str, Uri uri2, List<AppIndexApi.AppIndexingLink> list) {
        String packageName = googleApiClient.getContext().getPackageName();
        a(packageName, uri);
        return view(googleApiClient, activity, zza(packageName, uri), str, uri2, list);
    }

    @Override // com.google.android.gms.appindexing.AppIndexApi
    public PendingResult<Status> viewEnd(GoogleApiClient googleApiClient, Activity activity, Intent intent) {
        return zza(googleApiClient, new UsageInfo.zza().zza(UsageInfo.zza(googleApiClient.getContext().getPackageName(), intent)).zzw(System.currentTimeMillis()).zzan(0).zzao(2).zzlv());
    }

    @Override // com.google.android.gms.appindexing.AppIndexApi
    public PendingResult<Status> viewEnd(GoogleApiClient googleApiClient, Activity activity, Uri uri) {
        return viewEnd(googleApiClient, activity, zza(googleApiClient.getContext().getPackageName(), uri));
    }

    @Override // com.google.android.gms.appdatasearch.zzk
    public PendingResult<GetRecentContextCall.Response> zza(GoogleApiClient googleApiClient, GetRecentContextCall.Request request) {
        return googleApiClient.zza(new GetRecentContextCall.zza(request, googleApiClient));
    }

    public PendingResult<Status> zza(GoogleApiClient googleApiClient, final UsageInfo... usageInfoArr) {
        final String packageName = googleApiClient.getContext().getPackageName();
        return googleApiClient.zza(new c<Status>(googleApiClient) { // from class: com.google.android.gms.internal.zzju.1
            @Override // com.google.android.gms.internal.zzju.b
            protected void a(zzjp zzjpVar) {
                zzjpVar.zza(new d(this), packageName, usageInfoArr);
            }
        });
    }
}
