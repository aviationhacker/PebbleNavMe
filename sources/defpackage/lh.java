package defpackage;

import com.google.common.base.Preconditions;
import java.io.IOException;
import java.io.Reader;
import java.nio.CharBuffer;

/* JADX INFO: loaded from: classes.dex */
public final class lh extends Reader {
    private CharSequence a;
    private int b;
    private int c;

    public lh(CharSequence charSequence) {
        this.a = (CharSequence) Preconditions.checkNotNull(charSequence);
    }

    private void a() throws IOException {
        if (this.a == null) {
            throw new IOException("reader closed");
        }
    }

    private boolean b() {
        return c() > 0;
    }

    private int c() {
        return this.a.length() - this.b;
    }

    @Override // java.io.Reader, java.lang.Readable
    public synchronized int read(CharBuffer charBuffer) {
        int iMin;
        Preconditions.checkNotNull(charBuffer);
        a();
        if (!b()) {
            iMin = -1;
        } else {
            iMin = Math.min(charBuffer.remaining(), c());
            for (int i = 0; i < iMin; i++) {
                CharSequence charSequence = this.a;
                int i2 = this.b;
                this.b = i2 + 1;
                charBuffer.put(charSequence.charAt(i2));
            }
        }
        return iMin;
    }

    @Override // java.io.Reader
    public synchronized int read() {
        int iCharAt;
        a();
        if (b()) {
            CharSequence charSequence = this.a;
            int i = this.b;
            this.b = i + 1;
            iCharAt = charSequence.charAt(i);
        } else {
            iCharAt = -1;
        }
        return iCharAt;
    }

    @Override // java.io.Reader
    public synchronized int read(char[] cArr, int i, int i2) {
        int iMin;
        Preconditions.checkPositionIndexes(i, i + i2, cArr.length);
        a();
        if (!b()) {
            iMin = -1;
        } else {
            iMin = Math.min(i2, c());
            for (int i3 = 0; i3 < iMin; i3++) {
                CharSequence charSequence = this.a;
                int i4 = this.b;
                this.b = i4 + 1;
                cArr[i + i3] = charSequence.charAt(i4);
            }
        }
        return iMin;
    }

    @Override // java.io.Reader
    public synchronized long skip(long j) {
        long j2;
        synchronized (this) {
            Preconditions.checkArgument(j >= 0, "n (%s) may not be negative", Long.valueOf(j));
            a();
            int iMin = (int) Math.min(c(), j);
            this.b += iMin;
            j2 = iMin;
        }
        return j2;
    }

    @Override // java.io.Reader
    public synchronized boolean ready() {
        a();
        return true;
    }

    @Override // java.io.Reader
    public boolean markSupported() {
        return true;
    }

    @Override // java.io.Reader
    public synchronized void mark(int i) {
        synchronized (this) {
            Preconditions.checkArgument(i >= 0, "readAheadLimit (%s) may not be negative", Integer.valueOf(i));
            a();
            this.c = this.b;
        }
    }

    @Override // java.io.Reader
    public synchronized void reset() {
        a();
        this.b = this.c;
    }

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        this.a = null;
    }
}
