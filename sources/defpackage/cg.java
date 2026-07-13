package defpackage;

import android.content.Context;
import android.net.Uri;
import android.support.v4.provider.DocumentFile;

/* JADX INFO: loaded from: classes.dex */
public class cg extends DocumentFile {
    private Context a;
    private Uri b;

    public cg(DocumentFile documentFile, Context context, Uri uri) {
        super(documentFile);
        this.a = context;
        this.b = uri;
    }

    @Override // android.support.v4.provider.DocumentFile
    public DocumentFile createFile(String str, String str2) {
        throw new UnsupportedOperationException();
    }

    @Override // android.support.v4.provider.DocumentFile
    public DocumentFile createDirectory(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // android.support.v4.provider.DocumentFile
    public Uri getUri() {
        return this.b;
    }

    @Override // android.support.v4.provider.DocumentFile
    public String getName() {
        return cd.b(this.a, this.b);
    }

    @Override // android.support.v4.provider.DocumentFile
    public String getType() {
        return cd.c(this.a, this.b);
    }

    @Override // android.support.v4.provider.DocumentFile
    public boolean isDirectory() {
        return cd.d(this.a, this.b);
    }

    @Override // android.support.v4.provider.DocumentFile
    public boolean isFile() {
        return cd.e(this.a, this.b);
    }

    @Override // android.support.v4.provider.DocumentFile
    public long lastModified() {
        return cd.f(this.a, this.b);
    }

    @Override // android.support.v4.provider.DocumentFile
    public long length() {
        return cd.g(this.a, this.b);
    }

    @Override // android.support.v4.provider.DocumentFile
    public boolean canRead() {
        return cd.h(this.a, this.b);
    }

    @Override // android.support.v4.provider.DocumentFile
    public boolean canWrite() {
        return cd.i(this.a, this.b);
    }

    @Override // android.support.v4.provider.DocumentFile
    public boolean delete() {
        return cd.j(this.a, this.b);
    }

    @Override // android.support.v4.provider.DocumentFile
    public boolean exists() {
        return cd.k(this.a, this.b);
    }

    @Override // android.support.v4.provider.DocumentFile
    public DocumentFile[] listFiles() {
        throw new UnsupportedOperationException();
    }

    @Override // android.support.v4.provider.DocumentFile
    public boolean renameTo(String str) {
        throw new UnsupportedOperationException();
    }
}
