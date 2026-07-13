package android.support.v4.content;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.support.v4.os.CancellationSignal;
import android.support.v4.os.OperationCanceledException;
import defpackage.ak;

/* JADX INFO: loaded from: classes.dex */
public class ContentResolverCompat {
    private static final a a;

    interface a {
        Cursor a(ContentResolver contentResolver, Uri uri, String[] strArr, String str, String[] strArr2, String str2, CancellationSignal cancellationSignal);
    }

    static class b implements a {
        b() {
        }

        @Override // android.support.v4.content.ContentResolverCompat.a
        public Cursor a(ContentResolver contentResolver, Uri uri, String[] strArr, String str, String[] strArr2, String str2, CancellationSignal cancellationSignal) {
            if (cancellationSignal != null) {
                cancellationSignal.throwIfCanceled();
            }
            return contentResolver.query(uri, strArr, str, strArr2, str2);
        }
    }

    static class c extends b {
        c() {
        }

        @Override // android.support.v4.content.ContentResolverCompat.b, android.support.v4.content.ContentResolverCompat.a
        public Cursor a(ContentResolver contentResolver, Uri uri, String[] strArr, String str, String[] strArr2, String str2, CancellationSignal cancellationSignal) throws Exception {
            Object cancellationSignalObject;
            if (cancellationSignal != null) {
                try {
                    cancellationSignalObject = cancellationSignal.getCancellationSignalObject();
                } catch (Exception e) {
                    if (ak.a(e)) {
                        throw new OperationCanceledException();
                    }
                    throw e;
                }
            } else {
                cancellationSignalObject = null;
            }
            return ak.a(contentResolver, uri, strArr, str, strArr2, str2, cancellationSignalObject);
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 16) {
            a = new c();
        } else {
            a = new b();
        }
    }

    private ContentResolverCompat() {
    }

    public static Cursor query(ContentResolver contentResolver, Uri uri, String[] strArr, String str, String[] strArr2, String str2, CancellationSignal cancellationSignal) {
        return a.a(contentResolver, uri, strArr, str, strArr2, str2, cancellationSignal);
    }
}
