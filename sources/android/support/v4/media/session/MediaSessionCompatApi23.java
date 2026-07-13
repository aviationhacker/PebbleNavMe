package android.support.v4.media.session;

import android.net.Uri;
import android.os.Bundle;
import android.support.v4.media.session.MediaSessionCompatApi21;

/* JADX INFO: loaded from: classes.dex */
class MediaSessionCompatApi23 {

    public interface Callback extends MediaSessionCompatApi21.Callback {
        void onPlayFromUri(Uri uri, Bundle bundle);
    }

    public static Object a(Callback callback) {
        return new a(callback);
    }

    static class a<T extends Callback> extends MediaSessionCompatApi21.a<T> {
        public a(T t) {
            super(t);
        }

        @Override // android.media.session.MediaSession.Callback
        public void onPlayFromUri(Uri uri, Bundle bundle) {
            ((Callback) this.a).onPlayFromUri(uri, bundle);
        }
    }
}
