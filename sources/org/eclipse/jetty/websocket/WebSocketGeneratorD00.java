package org.eclipse.jetty.websocket;

import android.support.v4.media.TransportMediator;
import java.io.IOException;
import java.math.BigInteger;
import org.eclipse.jetty.io.Buffer;
import org.eclipse.jetty.io.EndPoint;
import org.eclipse.jetty.io.EofException;

/* JADX INFO: loaded from: classes.dex */
public class WebSocketGeneratorD00 implements WebSocketGenerator {
    private final WebSocketBuffers a;
    private final EndPoint b;
    private Buffer c;

    public WebSocketGeneratorD00(WebSocketBuffers webSocketBuffers, EndPoint endPoint) {
        this.a = webSocketBuffers;
        this.b = endPoint;
    }

    @Override // org.eclipse.jetty.websocket.WebSocketGenerator
    public synchronized void addFrame(byte b, byte b2, byte[] bArr, int i, int i2) {
        long maxIdleTime = this.b.getMaxIdleTime();
        if (this.c == null) {
            this.c = this.a.getDirectBuffer();
        }
        if (this.c.space() == 0) {
            a(maxIdleTime);
        }
        a(b2, maxIdleTime);
        if (a(b2)) {
            for (int iBitLength = ((new BigInteger(String.valueOf(i2)).bitLength() / 7) + 1) - 1; iBitLength > 0; iBitLength--) {
                a((byte) (((i2 >> (iBitLength * 7)) & TransportMediator.KEYCODE_MEDIA_PAUSE) | 128), maxIdleTime);
            }
            a((byte) (i2 & TransportMediator.KEYCODE_MEDIA_PAUSE), maxIdleTime);
        }
        int i3 = i2;
        while (i3 > 0) {
            int iSpace = i3 < this.c.space() ? i3 : this.c.space();
            this.c.put(bArr, (i2 - i3) + i, iSpace);
            i3 -= iSpace;
            if (this.c.space() > 0) {
                if (!a(b2)) {
                    this.c.put((byte) -1);
                }
                a();
            } else {
                a(maxIdleTime);
                if (i3 == 0) {
                    if (!a(b2)) {
                        this.c.put((byte) -1);
                    }
                    a();
                }
            }
        }
    }

    private synchronized boolean a(byte b) {
        return (b & (-128)) == -128;
    }

    private synchronized void a(byte b, long j) {
        if (this.c == null) {
            this.c = this.a.getDirectBuffer();
        }
        this.c.put(b);
        if (this.c.space() == 0) {
            a(j);
        }
    }

    public synchronized int flush(int i) {
        return a(i);
    }

    @Override // org.eclipse.jetty.websocket.WebSocketGenerator
    public synchronized int flush() {
        int iA;
        iA = a();
        if (this.c != null && this.c.length() == 0) {
            this.a.returnBuffer(this.c);
            this.c = null;
        }
        return iA;
    }

    private synchronized int a() {
        if (!this.b.isOpen()) {
            throw new EofException();
        }
        return (this.c == null || !this.c.hasContent()) ? 0 : this.b.flush(this.c);
    }

    private synchronized int a(long j) {
        int iA;
        if (this.c == null) {
            iA = 0;
        } else {
            iA = a();
            this.c.compact();
            if (!this.b.isBlocking()) {
                while (this.c.space() == 0) {
                    if (!this.b.blockWritable(j)) {
                        throw new IOException("Write timeout");
                    }
                    iA += a();
                    this.c.compact();
                }
            }
        }
        return iA;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x000d  */
    @Override // org.eclipse.jetty.websocket.WebSocketGenerator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized boolean isBufferEmpty() {
        /*
            r1 = this;
            monitor-enter(r1)
            org.eclipse.jetty.io.Buffer r0 = r1.c     // Catch: java.lang.Throwable -> L12
            if (r0 == 0) goto Ld
            org.eclipse.jetty.io.Buffer r0 = r1.c     // Catch: java.lang.Throwable -> L12
            int r0 = r0.length()     // Catch: java.lang.Throwable -> L12
            if (r0 != 0) goto L10
        Ld:
            r0 = 1
        Le:
            monitor-exit(r1)
            return r0
        L10:
            r0 = 0
            goto Le
        L12:
            r0 = move-exception
            monitor-exit(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.websocket.WebSocketGeneratorD00.isBufferEmpty():boolean");
    }
}
