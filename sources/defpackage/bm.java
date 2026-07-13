package defpackage;

import android.media.MediaDescription;
import android.net.Uri;
import android.support.v4.media.MediaDescriptionCompatApi21;

/* JADX INFO: loaded from: classes.dex */
public class bm extends MediaDescriptionCompatApi21 {
    public static Uri a(Object obj) {
        return ((MediaDescription) obj).getMediaUri();
    }

    public static class a extends MediaDescriptionCompatApi21.Builder {
        public static void a(Object obj, Uri uri) {
            ((MediaDescription.Builder) obj).setMediaUri(uri);
        }
    }
}
