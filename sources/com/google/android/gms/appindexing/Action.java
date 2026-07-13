package com.google.android.gms.appindexing;

import android.net.Uri;
import android.os.Bundle;
import com.getpebble.android.kit.Constants;
import com.google.android.gms.appindexing.Thing;
import com.google.android.gms.common.internal.zzx;

/* JADX INFO: loaded from: classes.dex */
public final class Action extends Thing {
    public static final String STATUS_TYPE_ACTIVE = "http://schema.org/ActiveActionStatus";
    public static final String STATUS_TYPE_COMPLETED = "http://schema.org/CompletedActionStatus";
    public static final String STATUS_TYPE_FAILED = "http://schema.org/FailedActionStatus";
    public static final String TYPE_ACTIVATE = "http://schema.org/ActivateAction";
    public static final String TYPE_ADD = "http://schema.org/AddAction";
    public static final String TYPE_BOOKMARK = "http://schema.org/BookmarkAction";
    public static final String TYPE_COMMUNICATE = "http://schema.org/CommunicateAction";
    public static final String TYPE_FILM = "http://schema.org/FilmAction";
    public static final String TYPE_LIKE = "http://schema.org/LikeAction";
    public static final String TYPE_LISTEN = "http://schema.org/ListenAction";
    public static final String TYPE_PHOTOGRAPH = "http://schema.org/PhotographAction";
    public static final String TYPE_RESERVE = "http://schema.org/ReserveAction";
    public static final String TYPE_SEARCH = "http://schema.org/SearchAction";
    public static final String TYPE_VIEW = "http://schema.org/ViewAction";
    public static final String TYPE_WANT = "http://schema.org/WantAction";
    public static final String TYPE_WATCH = "http://schema.org/WatchAction";

    public static final class Builder extends Thing.Builder {
        public Builder(String str) {
            zzx.zzw(str);
            super.put("type", str);
        }

        @Override // com.google.android.gms.appindexing.Thing.Builder
        public Action build() {
            zzx.zzb(this.a.get("object"), "setObject is required before calling build().");
            zzx.zzb(this.a.get("type"), "setType is required before calling build().");
            Bundle bundle = (Bundle) this.a.getParcelable("object");
            zzx.zzb(bundle.get(Constants.CUST_NAME), "Must call setObject() with a valid name. Example: setObject(new Thing.Builder().setName(name).setUrl(url))");
            zzx.zzb(bundle.get("url"), "Must call setObject() with a valid app URI. Example: setObject(new Thing.Builder().setName(name).setUrl(url))");
            return new Action(this.a);
        }

        @Override // com.google.android.gms.appindexing.Thing.Builder
        public Builder put(String str, Thing thing) {
            return (Builder) super.put(str, thing);
        }

        @Override // com.google.android.gms.appindexing.Thing.Builder
        public Builder put(String str, String str2) {
            return (Builder) super.put(str, str2);
        }

        public Builder setActionStatus(String str) {
            zzx.zzw(str);
            return (Builder) super.put("actionStatus", str);
        }

        @Override // com.google.android.gms.appindexing.Thing.Builder
        public Builder setName(String str) {
            return (Builder) super.put(Constants.CUST_NAME, str);
        }

        public Builder setObject(Thing thing) {
            zzx.zzw(thing);
            return (Builder) super.put("object", thing);
        }

        @Override // com.google.android.gms.appindexing.Thing.Builder
        public Builder setUrl(Uri uri) {
            if (uri != null) {
                super.put("url", uri.toString());
            }
            return this;
        }
    }

    private Action(Bundle bundle) {
        super(bundle);
    }

    public static Action newAction(String str, String str2, Uri uri) {
        return newAction(str, str2, null, uri);
    }

    public static Action newAction(String str, String str2, Uri uri, Uri uri2) {
        return new Builder(str).setObject(new Thing.Builder().setName(str2).setId(uri == null ? null : uri.toString()).setUrl(uri2).build()).build();
    }
}
