package org.eclipse.jetty.websocket;

import android.support.v4.media.TransportMediator;
import com.google.common.base.Ascii;
import com.google.common.primitives.UnsignedBytes;
import java.io.IOException;
import org.eclipse.jetty.io.Buffer;
import org.eclipse.jetty.io.EndPoint;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;
import org.eclipse.jetty.websocket.WebSocketParser;

/* JADX INFO: loaded from: classes.dex */
public class WebSocketParserD06 implements WebSocketParser {
    private static final Logger a = Log.getLogger((Class<?>) WebSocketParserD06.class);
    private final WebSocketBuffers b;
    private final EndPoint c;
    private final WebSocketParser.FrameHandler d;
    private final boolean e;
    private Buffer g;
    private byte h;
    private byte i;
    private int j;
    private long k;
    private int m;
    private final byte[] l = new byte[4];
    private State f = State.START;

    public enum State {
        START(0),
        MASK(4),
        OPCODE(1),
        LENGTH_7(1),
        LENGTH_16(2),
        LENGTH_63(8),
        DATA(0),
        SKIP(1);

        int a;

        State(int i) {
            this.a = i;
        }

        int a() {
            return this.a;
        }
    }

    public WebSocketParserD06(WebSocketBuffers webSocketBuffers, EndPoint endPoint, WebSocketParser.FrameHandler frameHandler, boolean z) {
        this.b = webSocketBuffers;
        this.c = endPoint;
        this.d = frameHandler;
        this.e = z;
    }

    @Override // org.eclipse.jetty.websocket.WebSocketParser
    public boolean isBufferEmpty() {
        return this.g == null || this.g.length() == 0;
    }

    @Override // org.eclipse.jetty.websocket.WebSocketParser
    public Buffer getBuffer() {
        return this.g;
    }

    @Override // org.eclipse.jetty.websocket.WebSocketParser
    public int parseNext() {
        int i;
        IOException e;
        if (this.g == null) {
            this.g = this.b.getBuffer();
        }
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int length = this.g.length();
            while (true) {
                if (length < (this.f == State.SKIP ? 1 : this.j)) {
                    this.g.compact();
                    if (this.g.space() == 0) {
                        throw new IllegalStateException("FULL: " + this.f + " " + this.j + ">" + this.g.capacity());
                    }
                    try {
                        int iFill = this.c.isOpen() ? this.c.fill(this.g) : -1;
                        if (iFill <= 0) {
                            return i2 + i3 > 0 ? i3 + i2 : iFill;
                        }
                        i = iFill + i2;
                        try {
                            i2 = i;
                            length = this.g.length();
                        } catch (IOException e2) {
                            e = e2;
                            a.debug(e);
                            if (i + i3 > 0) {
                                return i3 + i;
                            }
                            return -1;
                        }
                    } catch (IOException e3) {
                        i = i2;
                        e = e3;
                    }
                } else {
                    while (this.f != State.DATA) {
                        if (length >= (this.f == State.SKIP ? 1 : this.j)) {
                            switch (this.f) {
                                case START:
                                    this.f = this.e ? State.MASK : State.OPCODE;
                                    this.j = this.f.a();
                                    break;
                                case MASK:
                                    this.g.get(this.l, 0, 4);
                                    length -= 4;
                                    this.f = State.OPCODE;
                                    this.j = this.f.a();
                                    this.m = 0;
                                    break;
                                case OPCODE:
                                    byte b = this.g.get();
                                    length--;
                                    if (this.e) {
                                        byte[] bArr = this.l;
                                        int i4 = this.m;
                                        this.m = i4 + 1;
                                        b = (byte) (b ^ bArr[i4 % 4]);
                                    }
                                    this.i = (byte) (b & Ascii.SI);
                                    this.h = (byte) ((b >> 4) & 15);
                                    if (WebSocketConnectionD06.b(this.i) && !WebSocketConnectionD06.a(this.h)) {
                                        this.f = State.SKIP;
                                        i3++;
                                        this.d.close(1002, "fragmented control");
                                    } else {
                                        this.f = State.LENGTH_7;
                                    }
                                    this.j = this.f.a();
                                    break;
                                case LENGTH_7:
                                    byte b2 = this.g.get();
                                    length--;
                                    if (this.e) {
                                        byte[] bArr2 = this.l;
                                        int i5 = this.m;
                                        this.m = i5 + 1;
                                        b2 = (byte) (b2 ^ bArr2[i5 % 4]);
                                    }
                                    switch (b2) {
                                        case TransportMediator.KEYCODE_MEDIA_PLAY /* 126 */:
                                            this.k = 0L;
                                            this.f = State.LENGTH_16;
                                            this.j = this.f.a();
                                            break;
                                        case TransportMediator.KEYCODE_MEDIA_PAUSE /* 127 */:
                                            this.k = 0L;
                                            this.f = State.LENGTH_63;
                                            this.j = this.f.a();
                                            break;
                                        default:
                                            this.k = b2 & Ascii.DEL;
                                            this.j = (int) this.k;
                                            this.f = State.DATA;
                                            break;
                                    }
                                    break;
                                case LENGTH_16:
                                    byte b3 = this.g.get();
                                    length--;
                                    if (this.e) {
                                        byte[] bArr3 = this.l;
                                        int i6 = this.m;
                                        this.m = i6 + 1;
                                        b3 = (byte) (b3 ^ bArr3[i6 % 4]);
                                    }
                                    this.k = (this.k * 256) + ((long) (b3 & UnsignedBytes.MAX_VALUE));
                                    int i7 = this.j - 1;
                                    this.j = i7;
                                    if (i7 == 0) {
                                        this.j = (int) this.k;
                                        if (this.k > this.g.capacity()) {
                                            this.f = State.SKIP;
                                            i3++;
                                            this.d.close(1004, "frame size " + this.k + ">" + this.g.capacity());
                                        } else {
                                            this.f = State.DATA;
                                        }
                                    }
                                    break;
                                case LENGTH_63:
                                    byte b4 = this.g.get();
                                    length--;
                                    if (this.e) {
                                        byte[] bArr4 = this.l;
                                        int i8 = this.m;
                                        this.m = i8 + 1;
                                        b4 = (byte) (b4 ^ bArr4[i8 % 4]);
                                    }
                                    this.k = (this.k * 256) + ((long) (b4 & UnsignedBytes.MAX_VALUE));
                                    int i9 = this.j - 1;
                                    this.j = i9;
                                    if (i9 == 0) {
                                        this.j = (int) this.k;
                                        if (this.k >= this.g.capacity()) {
                                            this.f = State.SKIP;
                                            i3++;
                                            this.d.close(1004, "frame size " + this.k + ">" + this.g.capacity());
                                        } else {
                                            this.f = State.DATA;
                                        }
                                    }
                                    break;
                                case SKIP:
                                    int iMin = Math.min(length, this.j);
                                    this.g.skip(iMin);
                                    length -= iMin;
                                    this.j -= iMin;
                                    if (this.j == 0) {
                                        this.f = State.START;
                                    }
                                    break;
                            }
                        } else if (this.f != State.DATA && length >= this.j) {
                            Buffer bufferAsMutableBuffer = this.g.get(this.j);
                            if (this.e) {
                                if (bufferAsMutableBuffer.array() == null) {
                                    bufferAsMutableBuffer = this.g.asMutableBuffer();
                                }
                                byte[] bArrArray = bufferAsMutableBuffer.array();
                                int iPutIndex = bufferAsMutableBuffer.putIndex();
                                for (int index = bufferAsMutableBuffer.getIndex(); index < iPutIndex; index++) {
                                    byte b5 = bArrArray[index];
                                    byte[] bArr5 = this.l;
                                    int i10 = this.m;
                                    this.m = i10 + 1;
                                    bArrArray[index] = (byte) (b5 ^ bArr5[i10 % 4]);
                                }
                            }
                            int i11 = i3 + 1;
                            this.d.onFrame(this.h, this.i, bufferAsMutableBuffer);
                            this.j = 0;
                            this.f = State.START;
                            if (this.g.length() == 0) {
                                this.b.returnBuffer(this.g);
                                this.g = null;
                            }
                            return i11 + i2;
                        }
                    }
                    if (this.f != State.DATA) {
                    }
                }
            }
        }
    }

    @Override // org.eclipse.jetty.websocket.WebSocketParser
    public void fill(Buffer buffer) {
        if (buffer != null && buffer.length() > 0) {
            if (this.g == null) {
                this.g = this.b.getBuffer();
            }
            this.g.put(buffer);
            buffer.clear();
        }
    }
}
