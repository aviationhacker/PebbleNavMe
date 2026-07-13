package ar.com.hjg.pngj;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public class BufferedStreamFeeder {
    private InputStream a;
    private byte[] b;
    private int c;
    private int d;
    private boolean e;
    private boolean f;
    private boolean g;

    public BufferedStreamFeeder(InputStream inputStream) {
        this(inputStream, 8192);
    }

    public BufferedStreamFeeder(InputStream inputStream, int i) {
        this.e = false;
        this.f = true;
        this.g = false;
        this.a = inputStream;
        this.b = new byte[i < 1 ? 8192 : i];
    }

    public InputStream getStream() {
        return this.a;
    }

    public int feed(IBytesConsumer iBytesConsumer) {
        return feed(iBytesConsumer, -1);
    }

    public int feed(IBytesConsumer iBytesConsumer, int i) {
        int iConsume = 0;
        if (this.c == 0) {
            refillBuffer();
        }
        if (i <= 0 || i >= this.c) {
            i = this.c;
        }
        if (i > 0 && (iConsume = iBytesConsumer.consume(this.b, this.d, i)) > 0) {
            this.d += iConsume;
            this.c -= iConsume;
        }
        if (iConsume < 1 && this.g) {
            throw new PngjInputException("failed feed bytes");
        }
        return iConsume;
    }

    public boolean feedFixed(IBytesConsumer iBytesConsumer, int i) {
        while (i > 0) {
            int iFeed = feed(iBytesConsumer, i);
            if (iFeed < 1) {
                return false;
            }
            i -= iFeed;
        }
        return true;
    }

    protected void refillBuffer() {
        if (this.c <= 0 && !this.e) {
            try {
                this.d = 0;
                this.c = this.a.read(this.b);
                if (this.c < 0) {
                    close();
                }
            } catch (IOException e) {
                throw new PngjInputException(e);
            }
        }
    }

    public boolean hasMoreToFeed() {
        if (this.e) {
            return this.c > 0;
        }
        refillBuffer();
        return this.c > 0;
    }

    public void setCloseStream(boolean z) {
        this.f = z;
    }

    public void close() {
        this.e = true;
        this.b = null;
        this.c = 0;
        this.d = 0;
        if (this.a != null && this.f) {
            try {
                this.a.close();
            } catch (Exception e) {
            }
        }
        this.a = null;
    }

    public void setInputStream(InputStream inputStream) {
        this.a = inputStream;
        this.e = false;
    }

    public boolean isEof() {
        return this.e;
    }

    public void setFailIfNoFeed(boolean z) {
        this.g = z;
    }
}
