package org.eclipse.jetty.websocket;

import com.google.common.base.Ascii;
import com.google.common.primitives.UnsignedBytes;
import java.io.IOException;
import org.eclipse.jetty.io.Buffer;
import org.eclipse.jetty.io.EndPoint;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;
import org.eclipse.jetty.websocket.WebSocketParser;

/* JADX INFO: loaded from: classes.dex */
public class WebSocketParserD00 implements WebSocketParser {
    public static final int STATE_DATA = 3;
    public static final int STATE_LENGTH = 2;
    public static final int STATE_SENTINEL_DATA = 1;
    public static final int STATE_START = 0;
    private static final Logger a = Log.getLogger((Class<?>) WebSocketParserD00.class);
    private final WebSocketBuffers b;
    private final EndPoint c;
    private final WebSocketParser.FrameHandler d;
    private int e;
    private Buffer f;
    private byte g;
    private int h;

    public WebSocketParserD00(WebSocketBuffers webSocketBuffers, EndPoint endPoint, WebSocketParser.FrameHandler frameHandler) {
        this.b = webSocketBuffers;
        this.c = endPoint;
        this.d = frameHandler;
    }

    @Override // org.eclipse.jetty.websocket.WebSocketParser
    public boolean isBufferEmpty() {
        return this.f == null || this.f.length() == 0;
    }

    @Override // org.eclipse.jetty.websocket.WebSocketParser
    public Buffer getBuffer() {
        return this.f;
    }

    @Override // org.eclipse.jetty.websocket.WebSocketParser
    public int parseNext() {
        if (this.f == null) {
            this.f = this.b.getBuffer();
        }
        int i = 0;
        while (true) {
            int length = this.f.length();
            if (length == 0 || (this.e == 3 && length < this.h)) {
                this.f.compact();
                if (this.f.space() == 0) {
                    throw new IllegalStateException("FULL");
                }
                try {
                    int iFill = this.c.isOpen() ? this.c.fill(this.f) : -1;
                    if (iFill > 0) {
                        int i2 = iFill + i;
                        try {
                            i = i2;
                            length = this.f.length();
                        } catch (IOException e) {
                            e = e;
                            i = i2;
                            a.debug(e);
                            if (i <= 0) {
                                return -1;
                            }
                            return i;
                        }
                    } else {
                        return i;
                    }
                } catch (IOException e2) {
                    e = e2;
                }
            }
            while (true) {
                int i3 = length - 1;
                if (length > 0) {
                    switch (this.e) {
                        case 0:
                            this.g = this.f.get();
                            if (this.g < 0) {
                                this.h = 0;
                                this.e = 2;
                                length = i3;
                            } else {
                                this.e = 1;
                                this.f.mark(0);
                                length = i3;
                            }
                            break;
                        case 1:
                            if ((this.f.get() & UnsignedBytes.MAX_VALUE) == 255) {
                                this.e = 0;
                                int i4 = i + 1;
                                this.d.onFrame((byte) 0, this.g, this.f.sliceFromMark((this.f.getIndex() - this.f.markIndex()) - 1));
                                this.f.setMarkIndex(-1);
                                if (this.f.length() == 0) {
                                    this.b.returnBuffer(this.f);
                                    this.f = null;
                                    return i4;
                                }
                                return i4;
                            }
                            length = i3;
                            break;
                        case 2:
                            byte b = this.f.get();
                            this.h = (this.h << 7) | (b & Ascii.DEL);
                            if (b < 0) {
                                length = i3;
                            } else {
                                this.e = 3;
                                this.f.mark(0);
                                length = i3;
                            }
                            break;
                        case 3:
                            if (this.f.markIndex() < 0 && this.f.length() < this.h) {
                            }
                            break;
                        default:
                            length = i3;
                            break;
                    }
                }
            }
        }
        Buffer bufferSliceFromMark = this.f.sliceFromMark(this.h);
        this.f.skip(this.h);
        this.e = 0;
        int i5 = i + 1;
        this.d.onFrame((byte) 0, this.g, bufferSliceFromMark);
        if (this.f.length() == 0) {
            this.b.returnBuffer(this.f);
            this.f = null;
            return i5;
        }
        return i5;
    }

    @Override // org.eclipse.jetty.websocket.WebSocketParser
    public void fill(Buffer buffer) {
        if (buffer != null && buffer.length() > 0) {
            if (this.f == null) {
                this.f = this.b.getBuffer();
            }
            this.f.put(buffer);
            buffer.clear();
        }
    }
}
