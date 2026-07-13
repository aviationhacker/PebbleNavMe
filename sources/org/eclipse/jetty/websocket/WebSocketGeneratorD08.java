package org.eclipse.jetty.websocket;

import com.google.common.base.Ascii;
import java.io.IOException;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import org.eclipse.jetty.io.Buffer;
import org.eclipse.jetty.io.EndPoint;
import org.eclipse.jetty.io.EofException;

/* JADX INFO: loaded from: classes.dex */
public class WebSocketGeneratorD08 implements WebSocketGenerator {
    private final Lock a;
    private final WebSocketBuffers b;
    private final EndPoint c;
    private final byte[] d;
    private final MaskGen e;
    private Buffer f;
    private int g;
    private boolean h;
    private boolean i;

    public WebSocketGeneratorD08(WebSocketBuffers webSocketBuffers, EndPoint endPoint) {
        this(webSocketBuffers, endPoint, null);
    }

    public WebSocketGeneratorD08(WebSocketBuffers webSocketBuffers, EndPoint endPoint, MaskGen maskGen) {
        this.a = new ReentrantLock();
        this.d = new byte[4];
        this.b = webSocketBuffers;
        this.c = endPoint;
        this.e = maskGen;
    }

    public Buffer getBuffer() {
        this.a.lock();
        try {
            return this.f;
        } finally {
            this.a.unlock();
        }
    }

    @Override // org.eclipse.jetty.websocket.WebSocketGenerator
    public void addFrame(byte b, byte b2, byte[] bArr, int i, int i2) {
        int iCapacity;
        byte b3;
        this.a.lock();
        try {
            if (this.i) {
                throw new EofException("Closed");
            }
            if (b2 == 8) {
                this.i = true;
            }
            boolean z = this.e != null;
            if (this.f == null) {
                this.f = z ? this.b.getBuffer() : this.b.getDirectBuffer();
            }
            boolean zA = WebSocketConnectionD08.a(b);
            int i3 = z ? 14 : 10;
            int i4 = i2;
            byte b4 = b2;
            while (true) {
                if (this.h) {
                    b4 = 0;
                }
                byte b5 = (byte) ((b4 & Ascii.SI) + ((b & Ascii.SI) << 4));
                this.h = true;
                if (i4 + i3 > this.f.capacity()) {
                    byte b6 = (byte) (b5 & Ascii.DEL);
                    iCapacity = this.f.capacity() - i3;
                    b3 = b6;
                } else if (zA) {
                    iCapacity = i4;
                    b3 = (byte) (b5 | 128);
                } else {
                    iCapacity = i4;
                    b3 = b5;
                }
                if (this.f.space() <= i3) {
                    flushBuffer();
                    if (this.f.space() <= i3) {
                        flush();
                    }
                }
                if (iCapacity > 65535) {
                    Buffer buffer = this.f;
                    byte[] bArr2 = new byte[10];
                    bArr2[0] = b3;
                    bArr2[1] = z ? (byte) -1 : Ascii.DEL;
                    bArr2[2] = 0;
                    bArr2[3] = 0;
                    bArr2[4] = 0;
                    bArr2[5] = 0;
                    bArr2[6] = (byte) ((iCapacity >> 24) & 255);
                    bArr2[7] = (byte) ((iCapacity >> 16) & 255);
                    bArr2[8] = (byte) ((iCapacity >> 8) & 255);
                    bArr2[9] = (byte) (iCapacity & 255);
                    buffer.put(bArr2);
                } else if (iCapacity >= 126) {
                    Buffer buffer2 = this.f;
                    byte[] bArr3 = new byte[4];
                    bArr3[0] = b3;
                    bArr3[1] = z ? (byte) -2 : (byte) 126;
                    bArr3[2] = (byte) (iCapacity >> 8);
                    bArr3[3] = (byte) (iCapacity & 255);
                    buffer2.put(bArr3);
                } else {
                    Buffer buffer3 = this.f;
                    byte[] bArr4 = new byte[2];
                    bArr4[0] = b3;
                    bArr4[1] = (byte) (z ? iCapacity | 128 : iCapacity);
                    buffer3.put(bArr4);
                }
                if (z) {
                    this.e.genMask(this.d);
                    this.g = 0;
                    this.f.put(this.d);
                }
                int i5 = iCapacity;
                while (i5 > 0) {
                    this.f.compact();
                    int iSpace = i5 < this.f.space() ? i5 : this.f.space();
                    if (z) {
                        for (int i6 = 0; i6 < iSpace; i6++) {
                            Buffer buffer4 = this.f;
                            byte b7 = bArr[(iCapacity - i5) + i + i6];
                            byte[] bArr5 = this.d;
                            int i7 = this.g;
                            this.g = i7 + 1;
                            buffer4.put((byte) (b7 ^ bArr5[i7 % 4]));
                        }
                    } else {
                        this.f.put(bArr, (iCapacity - i5) + i, iSpace);
                    }
                    i5 -= iSpace;
                    if (this.f.space() > 0) {
                        flushBuffer();
                    } else {
                        flush();
                        if (i5 == 0) {
                            flushBuffer();
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
            this.h = !zA;
            if (this.f != null && this.f.length() == 0) {
                this.b.returnBuffer(this.f);
                this.f = null;
            }
        } finally {
            this.a.unlock();
        }
    }

    public int flushBuffer() {
        if (this.a.tryLock()) {
            try {
                if (!this.c.isOpen()) {
                    throw new EofException();
                }
                if (this.f != null) {
                    iFlush = this.f.hasContent() ? this.c.flush(this.f) : 0;
                    if (this.i && this.f.length() == 0) {
                        this.c.shutdownOutput();
                    }
                }
            } finally {
                this.a.unlock();
            }
        }
        return iFlush;
    }

    @Override // org.eclipse.jetty.websocket.WebSocketGenerator
    public int flush() {
        int iFlushBuffer = 0;
        if (this.a.tryLock()) {
            try {
                if (this.f != null) {
                    iFlushBuffer = flushBuffer();
                    if (!this.c.isBlocking()) {
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        long maxIdleTime = ((long) this.c.getMaxIdleTime()) + jCurrentTimeMillis;
                        while (this.f.length() > 0) {
                            if (this.c.blockWritable(maxIdleTime - jCurrentTimeMillis)) {
                                iFlushBuffer += flushBuffer();
                            } else {
                                jCurrentTimeMillis = System.currentTimeMillis();
                                if (jCurrentTimeMillis >= maxIdleTime) {
                                    throw new IOException("Write timeout");
                                }
                            }
                        }
                    }
                    this.f.compact();
                }
            } finally {
                this.a.unlock();
            }
        }
        return iFlushBuffer;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0011  */
    @Override // org.eclipse.jetty.websocket.WebSocketGenerator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean isBufferEmpty() {
        /*
            r2 = this;
            java.util.concurrent.locks.Lock r0 = r2.a
            r0.lock()
            org.eclipse.jetty.io.Buffer r0 = r2.f     // Catch: java.lang.Throwable -> L1a
            if (r0 == 0) goto L11
            org.eclipse.jetty.io.Buffer r0 = r2.f     // Catch: java.lang.Throwable -> L1a
            int r0 = r0.length()     // Catch: java.lang.Throwable -> L1a
            if (r0 != 0) goto L18
        L11:
            r0 = 1
        L12:
            java.util.concurrent.locks.Lock r1 = r2.a
            r1.unlock()
            return r0
        L18:
            r0 = 0
            goto L12
        L1a:
            r0 = move-exception
            java.util.concurrent.locks.Lock r1 = r2.a
            r1.unlock()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.websocket.WebSocketGeneratorD08.isBufferEmpty():boolean");
    }

    public void returnBuffer() {
        this.a.lock();
        try {
            if (this.f != null && this.f.length() == 0) {
                this.b.returnBuffer(this.f);
                this.f = null;
            }
        } finally {
            this.a.unlock();
        }
    }

    public String toString() {
        Buffer buffer = this.f;
        Object[] objArr = new Object[4];
        objArr[0] = getClass().getSimpleName();
        objArr[1] = Integer.valueOf(hashCode());
        objArr[2] = Boolean.valueOf(this.i);
        objArr[3] = Integer.valueOf(buffer == null ? -1 : buffer.length());
        return String.format("%s@%x closed=%b buffer=%d", objArr);
    }
}
