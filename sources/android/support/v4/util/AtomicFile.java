package android.support.v4.util;

import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class AtomicFile {
    private final File a;
    private final File b;

    public AtomicFile(File file) {
        this.a = file;
        this.b = new File(file.getPath() + ".bak");
    }

    public File getBaseFile() {
        return this.a;
    }

    public void delete() {
        this.a.delete();
        this.b.delete();
    }

    public FileOutputStream startWrite() throws IOException {
        if (this.a.exists()) {
            if (!this.b.exists()) {
                if (!this.a.renameTo(this.b)) {
                    Log.w("AtomicFile", "Couldn't rename file " + this.a + " to backup file " + this.b);
                }
            } else {
                this.a.delete();
            }
        }
        try {
            return new FileOutputStream(this.a);
        } catch (FileNotFoundException e) {
            if (!this.a.getParentFile().mkdir()) {
                throw new IOException("Couldn't create directory " + this.a);
            }
            try {
                return new FileOutputStream(this.a);
            } catch (FileNotFoundException e2) {
                throw new IOException("Couldn't create " + this.a);
            }
        }
    }

    public void finishWrite(FileOutputStream fileOutputStream) {
        if (fileOutputStream != null) {
            a(fileOutputStream);
            try {
                fileOutputStream.close();
                this.b.delete();
            } catch (IOException e) {
                Log.w("AtomicFile", "finishWrite: Got exception:", e);
            }
        }
    }

    public void failWrite(FileOutputStream fileOutputStream) {
        if (fileOutputStream != null) {
            a(fileOutputStream);
            try {
                fileOutputStream.close();
                this.a.delete();
                this.b.renameTo(this.a);
            } catch (IOException e) {
                Log.w("AtomicFile", "failWrite: Got exception:", e);
            }
        }
    }

    public FileInputStream openRead() {
        if (this.b.exists()) {
            this.a.delete();
            this.b.renameTo(this.a);
        }
        return new FileInputStream(this.a);
    }

    public byte[] readFully() throws IOException {
        byte[] bArr;
        int i = 0;
        FileInputStream fileInputStreamOpenRead = openRead();
        try {
            byte[] bArr2 = new byte[fileInputStreamOpenRead.available()];
            while (true) {
                int i2 = fileInputStreamOpenRead.read(bArr2, i, bArr2.length - i);
                if (i2 <= 0) {
                    return bArr2;
                }
                int i3 = i2 + i;
                int iAvailable = fileInputStreamOpenRead.available();
                if (iAvailable > bArr2.length - i3) {
                    bArr = new byte[iAvailable + i3];
                    System.arraycopy(bArr2, 0, bArr, 0, i3);
                } else {
                    bArr = bArr2;
                }
                bArr2 = bArr;
                i = i3;
            }
        } finally {
            fileInputStreamOpenRead.close();
        }
    }

    static boolean a(FileOutputStream fileOutputStream) {
        if (fileOutputStream != null) {
            try {
                fileOutputStream.getFD().sync();
            } catch (IOException e) {
                return false;
            }
        }
        return true;
    }
}
