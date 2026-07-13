package defpackage;

import android.net.Uri;
import android.support.v4.provider.DocumentFile;
import android.util.Log;
import android.webkit.MimeTypeMap;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class cf extends DocumentFile {
    private File a;

    public cf(DocumentFile documentFile, File file) {
        super(documentFile);
        this.a = file;
    }

    @Override // android.support.v4.provider.DocumentFile
    public DocumentFile createFile(String str, String str2) {
        String extensionFromMimeType = MimeTypeMap.getSingleton().getExtensionFromMimeType(str);
        if (extensionFromMimeType != null) {
            str2 = str2 + "." + extensionFromMimeType;
        }
        File file = new File(this.a, str2);
        try {
            file.createNewFile();
            return new cf(this, file);
        } catch (IOException e) {
            Log.w("DocumentFile", "Failed to createFile: " + e);
            return null;
        }
    }

    @Override // android.support.v4.provider.DocumentFile
    public DocumentFile createDirectory(String str) {
        File file = new File(this.a, str);
        if (file.isDirectory() || file.mkdir()) {
            return new cf(this, file);
        }
        return null;
    }

    @Override // android.support.v4.provider.DocumentFile
    public Uri getUri() {
        return Uri.fromFile(this.a);
    }

    @Override // android.support.v4.provider.DocumentFile
    public String getName() {
        return this.a.getName();
    }

    @Override // android.support.v4.provider.DocumentFile
    public String getType() {
        if (this.a.isDirectory()) {
            return null;
        }
        return a(this.a.getName());
    }

    @Override // android.support.v4.provider.DocumentFile
    public boolean isDirectory() {
        return this.a.isDirectory();
    }

    @Override // android.support.v4.provider.DocumentFile
    public boolean isFile() {
        return this.a.isFile();
    }

    @Override // android.support.v4.provider.DocumentFile
    public long lastModified() {
        return this.a.lastModified();
    }

    @Override // android.support.v4.provider.DocumentFile
    public long length() {
        return this.a.length();
    }

    @Override // android.support.v4.provider.DocumentFile
    public boolean canRead() {
        return this.a.canRead();
    }

    @Override // android.support.v4.provider.DocumentFile
    public boolean canWrite() {
        return this.a.canWrite();
    }

    @Override // android.support.v4.provider.DocumentFile
    public boolean delete() {
        a(this.a);
        return this.a.delete();
    }

    @Override // android.support.v4.provider.DocumentFile
    public boolean exists() {
        return this.a.exists();
    }

    @Override // android.support.v4.provider.DocumentFile
    public DocumentFile[] listFiles() {
        ArrayList arrayList = new ArrayList();
        File[] fileArrListFiles = this.a.listFiles();
        if (fileArrListFiles != null) {
            for (File file : fileArrListFiles) {
                arrayList.add(new cf(this, file));
            }
        }
        return (DocumentFile[]) arrayList.toArray(new DocumentFile[arrayList.size()]);
    }

    @Override // android.support.v4.provider.DocumentFile
    public boolean renameTo(String str) {
        File file = new File(this.a.getParentFile(), str);
        if (!this.a.renameTo(file)) {
            return false;
        }
        this.a = file;
        return true;
    }

    private static String a(String str) {
        int iLastIndexOf = str.lastIndexOf(46);
        if (iLastIndexOf >= 0) {
            String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(str.substring(iLastIndexOf + 1).toLowerCase());
            if (mimeTypeFromExtension != null) {
                return mimeTypeFromExtension;
            }
        }
        return "application/octet-stream";
    }

    private static boolean a(File file) {
        File[] fileArrListFiles = file.listFiles();
        boolean zA = true;
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                if (file2.isDirectory()) {
                    zA &= a(file2);
                }
                if (!file2.delete()) {
                    Log.w("DocumentFile", "Failed to delete " + file2);
                    zA = false;
                }
            }
        }
        return zA;
    }
}
