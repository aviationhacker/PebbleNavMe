package org.eclipse.jetty.websocket;

import com.google.common.base.Ascii;
import java.io.IOException;
import org.eclipse.jetty.io.Buffer;
import org.eclipse.jetty.io.EndPoint;
import org.eclipse.jetty.io.EofException;

/* JADX INFO: loaded from: classes.dex */
public class WebSocketGeneratorD06 implements WebSocketGenerator {
    private final WebSocketBuffers a;
    private final EndPoint b;
    private Buffer c;
    private final byte[] d;
    private int e;
    private boolean f;
    private final MaskGen g;

    public WebSocketGeneratorD06(WebSocketBuffers webSocketBuffers, EndPoint endPoint) {
        this.d = new byte[4];
        this.a = webSocketBuffers;
        this.b = endPoint;
        this.g = null;
    }

    public WebSocketGeneratorD06(WebSocketBuffers webSocketBuffers, EndPoint endPoint, MaskGen maskGen) {
        this.d = new byte[4];
        this.a = webSocketBuffers;
        this.b = endPoint;
        this.g = maskGen;
    }

    @Override // org.eclipse.jetty.websocket.WebSocketGenerator
    public synchronized void addFrame(byte b, byte b2, byte[] bArr, int i, int i2) {
        int iCapacity;
        byte b3;
        long maxIdleTime = this.b.getMaxIdleTime();
        if (this.c == null) {
            this.c = this.g != null ? this.a.getBuffer() : this.a.getDirectBuffer();
        }
        boolean zA = WebSocketConnectionD06.a(b);
        byte b4 = (byte) ((((b & Ascii.SI) << 4) + 15) & b2);
        int i3 = this.g != null ? 14 : 10;
        int i4 = i2;
        while (true) {
            if (this.f) {
                b4 = 0;
            }
            this.f = true;
            if (i4 + i3 > this.c.capacity()) {
                byte b5 = (byte) (b4 & Ascii.DEL);
                iCapacity = this.c.capacity() - i3;
                b3 = b5;
            } else if (zA) {
                iCapacity = i4;
                b3 = (byte) (b4 | (-128));
            } else {
                iCapacity = i4;
                b3 = b4;
            }
            if (this.c.space() <= i3) {
                a(maxIdleTime);
            }
            if (this.g != null) {
                this.g.genMask(this.d);
                this.e = 0;
                this.c.put(this.d);
            }
            if (iCapacity > 65535) {
                a(new byte[]{b3, Ascii.DEL, 0, 0, 0, 0, (byte) ((iCapacity >> 24) & 255), (byte) ((iCapacity >> 16) & 255), (byte) ((iCapacity >> 8) & 255), (byte) (iCapacity & 255)});
            } else if (iCapacity >= 126) {
                a(new byte[]{b3, 126, (byte) (iCapacity >> 8), (byte) (iCapacity & 255)});
            } else {
                a(b3);
                a((byte) iCapacity);
            }
            int i5 = iCapacity;
            while (i5 > 0) {
                this.c.compact();
                int iSpace = i5 < this.c.space() ? i5 : this.c.space();
                if (this.g != null) {
                    for (int i6 = 0; i6 < iSpace; i6++) {
                        a(bArr[(iCapacity - i5) + i + i6]);
                    }
                } else {
                    this.c.put(bArr, (iCapacity - i5) + i, iSpace);
                }
                i5 -= iSpace;
                if (this.c.space() > 0) {
                    a();
                } else {
                    a(maxIdleTime);
                    if (i5 == 0) {
                        a();
                    }
                }
            }
            i += iCapacity;
            i4 -= iCapacity;
            if (i4 <= 0) {
                break;
            } else {
                b4 = b3;
            }
        }
        this.f = !zA;
    }

    private synchronized void a(byte[] bArr) {
        if (this.g != null) {
            for (int i = 0; i < bArr.length; i++) {
                byte b = bArr[i];
                byte[] bArr2 = this.d;
                int i2 = this.e;
                this.e = i2 + 1;
                bArr[i] = (byte) (b ^ bArr2[i2 % 4]);
            }
        }
        this.c.put(bArr);
    }

    private synchronized void a(byte b) {
        Buffer buffer = this.c;
        byte[] bArr = this.d;
        int i = this.e;
        this.e = i + 1;
        buffer.put((byte) (bArr[i % 4] ^ b));
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
        return this.c != null ? this.b.flush(this.c) : 0;
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
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.websocket.WebSocketGeneratorD06.isBufferEmpty():boolean");
    }
}
