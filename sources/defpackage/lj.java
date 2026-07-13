package defpackage;

import com.google.common.base.Preconditions;
import com.google.common.io.ByteSource;
import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class lj extends InputStream {
    private Iterator<? extends ByteSource> a;
    private InputStream b;

    public lj(Iterator<? extends ByteSource> it) {
        this.a = (Iterator) Preconditions.checkNotNull(it);
        a();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.b != null) {
            try {
                this.b.close();
            } finally {
                this.b = null;
            }
        }
    }

    private void a() {
        close();
        if (this.a.hasNext()) {
            this.b = this.a.next().openStream();
        }
    }

    @Override // java.io.InputStream
    public int available() {
        if (this.b == null) {
            return 0;
        }
        return this.b.available();
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (this.b == null) {
            return -1;
        }
        int i = this.b.read();
        if (i != -1) {
            return i;
        }
        a();
        return read();
    }

    @Override // java.io.InputStream
    public int read(@Nullable byte[] bArr, int i, int i2) throws IOException {
        if (this.b == null) {
            return -1;
        }
        int i3 = this.b.read(bArr, i, i2);
        if (i3 != -1) {
            return i3;
        }
        a();
        return read(bArr, i, i2);
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        if (this.b == null || j <= 0) {
            return 0L;
        }
        long jSkip = this.b.skip(j);
        if (jSkip == 0) {
            if (read() == -1) {
                return 0L;
            }
            return this.b.skip(j - 1) + 1;
        }
        return jSkip;
    }
}
