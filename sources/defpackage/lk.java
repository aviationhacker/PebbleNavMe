package defpackage;

import com.google.common.base.Preconditions;
import com.google.common.io.CharSource;
import java.io.IOException;
import java.io.Reader;
import java.util.Iterator;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class lk extends Reader {
    private final Iterator<? extends CharSource> a;
    private Reader b;

    public lk(Iterator<? extends CharSource> it) {
        this.a = it;
        a();
    }

    private void a() {
        close();
        if (this.a.hasNext()) {
            this.b = this.a.next().openStream();
        }
    }

    @Override // java.io.Reader
    public int read(@Nullable char[] cArr, int i, int i2) throws IOException {
        if (this.b == null) {
            return -1;
        }
        int i3 = this.b.read(cArr, i, i2);
        if (i3 != -1) {
            return i3;
        }
        a();
        return read(cArr, i, i2);
    }

    @Override // java.io.Reader
    public long skip(long j) throws IOException {
        Preconditions.checkArgument(j >= 0, "n is negative");
        if (j > 0) {
            while (this.b != null) {
                long jSkip = this.b.skip(j);
                if (jSkip <= 0) {
                    a();
                } else {
                    return jSkip;
                }
            }
        }
        return 0L;
    }

    @Override // java.io.Reader
    public boolean ready() {
        return this.b != null && this.b.ready();
    }

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.b != null) {
            try {
                this.b.close();
            } finally {
                this.b = null;
            }
        }
    }
}
