package defpackage;

import ar.com.hjg.pngj.PngjInputException;
import ar.com.hjg.pngj.PngjOutputException;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
public final class ge {
    public static OutputStream a(File file, boolean z) {
        if (file.exists() && !z) {
            throw new PngjOutputException("File already exists: " + file);
        }
        try {
            return new FileOutputStream(file);
        } catch (Exception e) {
            throw new PngjInputException("Could not open for write" + file, e);
        }
    }
}
