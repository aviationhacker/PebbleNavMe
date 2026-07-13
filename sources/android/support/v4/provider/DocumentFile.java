package android.support.v4.provider;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import defpackage.cd;
import defpackage.ce;
import defpackage.cf;
import defpackage.cg;
import defpackage.ch;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public abstract class DocumentFile {
    private final DocumentFile a;

    public abstract boolean canRead();

    public abstract boolean canWrite();

    public abstract DocumentFile createDirectory(String str);

    public abstract DocumentFile createFile(String str, String str2);

    public abstract boolean delete();

    public abstract boolean exists();

    public abstract String getName();

    public abstract String getType();

    public abstract Uri getUri();

    public abstract boolean isDirectory();

    public abstract boolean isFile();

    public abstract long lastModified();

    public abstract long length();

    public abstract DocumentFile[] listFiles();

    public abstract boolean renameTo(String str);

    protected DocumentFile(DocumentFile documentFile) {
        this.a = documentFile;
    }

    public static DocumentFile fromFile(File file) {
        return new cf(null, file);
    }

    public static DocumentFile fromSingleUri(Context context, Uri uri) {
        if (Build.VERSION.SDK_INT >= 19) {
            return new cg(null, context, uri);
        }
        return null;
    }

    public static DocumentFile fromTreeUri(Context context, Uri uri) {
        if (Build.VERSION.SDK_INT >= 21) {
            return new ch(null, context, ce.a(uri));
        }
        return null;
    }

    public static boolean isDocumentUri(Context context, Uri uri) {
        if (Build.VERSION.SDK_INT >= 19) {
            return cd.a(context, uri);
        }
        return false;
    }

    public DocumentFile getParentFile() {
        return this.a;
    }

    public DocumentFile findFile(String str) {
        for (DocumentFile documentFile : listFiles()) {
            if (str.equals(documentFile.getName())) {
                return documentFile;
            }
        }
        return null;
    }
}
