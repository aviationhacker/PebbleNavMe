package org.eclipse.jetty.io.bio;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.SocketTimeoutException;
import org.eclipse.jetty.io.Buffer;
import org.eclipse.jetty.io.EndPoint;

/* JADX INFO: loaded from: classes.dex */
public class StreamEndPoint implements EndPoint {
    InputStream d;
    OutputStream e;
    int f;
    boolean g;
    boolean h;

    public StreamEndPoint(InputStream inputStream, OutputStream outputStream) {
        this.d = inputStream;
        this.e = outputStream;
    }

    @Override // org.eclipse.jetty.io.EndPoint
    public boolean isBlocking() {
        return true;
    }

    @Override // org.eclipse.jetty.io.EndPoint
    public boolean blockReadable(long j) {
        return true;
    }

    @Override // org.eclipse.jetty.io.EndPoint
    public boolean blockWritable(long j) {
        return true;
    }

    @Override // org.eclipse.jetty.io.EndPoint
    public boolean isOpen() {
        return this.d != null;
    }

    public final boolean isClosed() {
        return !isOpen();
    }

    @Override // org.eclipse.jetty.io.EndPoint
    public void shutdownOutput() throws IOException {
        this.h = true;
        if (this.g && this.e != null) {
            this.e.close();
        }
    }

    @Override // org.eclipse.jetty.io.EndPoint
    public boolean isInputShutdown() {
        return this.g;
    }

    @Override // org.eclipse.jetty.io.EndPoint
    public void shutdownInput() throws IOException {
        this.g = true;
        if (this.h && this.d != null) {
            this.d.close();
        }
    }

    @Override // org.eclipse.jetty.io.EndPoint
    public boolean isOutputShutdown() {
        return this.h;
    }

    @Override // org.eclipse.jetty.io.EndPoint
    public void close() throws IOException {
        if (this.d != null) {
            this.d.close();
        }
        this.d = null;
        if (this.e != null) {
            this.e.close();
        }
        this.e = null;
    }

    protected void idleExpired() throws IOException {
        if (this.d != null) {
            this.d.close();
        }
    }

    @Override // org.eclipse.jetty.io.EndPoint
    public int fill(Buffer buffer) throws IOException {
        if (this.g) {
            return -1;
        }
        if (this.d == null) {
            return 0;
        }
        int iSpace = buffer.space();
        if (iSpace <= 0) {
            if (buffer.hasContent()) {
                return 0;
            }
            throw new IOException("FULL");
        }
        try {
            int from = buffer.readFrom(this.d, iSpace);
            if (from < 0) {
                shutdownInput();
            }
            return from;
        } catch (SocketTimeoutException e) {
            idleExpired();
            return -1;
        }
    }

    @Override // org.eclipse.jetty.io.EndPoint
    public int flush(Buffer buffer) {
        if (this.h) {
            return -1;
        }
        if (this.e == null) {
            return 0;
        }
        int length = buffer.length();
        if (length > 0) {
            buffer.writeTo(this.e);
        }
        if (!buffer.isImmutable()) {
            buffer.clear();
            return length;
        }
        return length;
    }

    @Override // org.eclipse.jetty.io.EndPoint
    public int flush(Buffer buffer, Buffer buffer2, Buffer buffer3) {
        int length;
        int length2;
        int iFlush = 0;
        if (buffer == null || (length2 = buffer.length()) <= 0 || (iFlush = flush(buffer)) >= length2) {
            if (buffer2 != null && (length = buffer2.length()) > 0) {
                int iFlush2 = flush(buffer2);
                if (iFlush2 < 0) {
                    return iFlush <= 0 ? iFlush2 : iFlush;
                }
                iFlush += iFlush2;
                if (iFlush2 < length) {
                    return iFlush;
                }
            }
            if (buffer3 != null && buffer3.length() > 0) {
                int iFlush3 = flush(buffer3);
                if (iFlush3 < 0) {
                    return iFlush <= 0 ? iFlush3 : iFlush;
                }
                return iFlush + iFlush3;
            }
            return iFlush;
        }
        return iFlush;
    }

    @Override // org.eclipse.jetty.io.EndPoint
    public String getLocalAddr() {
        return null;
    }

    @Override // org.eclipse.jetty.io.EndPoint
    public String getLocalHost() {
        return null;
    }

    @Override // org.eclipse.jetty.io.EndPoint
    public int getLocalPort() {
        return 0;
    }

    @Override // org.eclipse.jetty.io.EndPoint
    public String getRemoteAddr() {
        return null;
    }

    @Override // org.eclipse.jetty.io.EndPoint
    public String getRemoteHost() {
        return null;
    }

    @Override // org.eclipse.jetty.io.EndPoint
    public int getRemotePort() {
        return 0;
    }

    @Override // org.eclipse.jetty.io.EndPoint
    public Object getTransport() {
        return null;
    }

    public InputStream getInputStream() {
        return this.d;
    }

    public void setInputStream(InputStream inputStream) {
        this.d = inputStream;
    }

    public OutputStream getOutputStream() {
        return this.e;
    }

    public void setOutputStream(OutputStream outputStream) {
        this.e = outputStream;
    }

    @Override // org.eclipse.jetty.io.EndPoint
    public void flush() throws IOException {
        if (this.e != null) {
            this.e.flush();
        }
    }

    @Override // org.eclipse.jetty.io.EndPoint
    public int getMaxIdleTime() {
        return this.f;
    }

    @Override // org.eclipse.jetty.io.EndPoint
    public void setMaxIdleTime(int i) {
        this.f = i;
    }
}
