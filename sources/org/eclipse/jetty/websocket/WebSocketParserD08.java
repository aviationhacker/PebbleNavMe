package org.eclipse.jetty.websocket;

import org.eclipse.jetty.io.Buffer;
import org.eclipse.jetty.io.EndPoint;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;
import org.eclipse.jetty.websocket.WebSocketParser;

/* JADX INFO: loaded from: classes.dex */
public class WebSocketParserD08 implements WebSocketParser {
    private static final Logger a = Log.getLogger((Class<?>) WebSocketParserD08.class);
    private final WebSocketBuffers b;
    private final EndPoint c;
    private final WebSocketParser.FrameHandler d;
    private final boolean e;
    private Buffer g;
    private byte h;
    private byte i;
    private int j;
    private long k;
    private boolean l;
    private int n;
    private boolean o;
    private final byte[] m = new byte[4];
    private boolean p = true;
    private State f = State.START;

    public enum State {
        START(0),
        OPCODE(1),
        LENGTH_7(1),
        LENGTH_16(2),
        LENGTH_63(8),
        MASK(4),
        PAYLOAD(0),
        DATA(0),
        SKIP(1),
        SEEK_EOF(1);

        int a;

        State(int i) {
            this.a = i;
        }

        int a() {
            return this.a;
        }
    }

    public WebSocketParserD08(WebSocketBuffers webSocketBuffers, EndPoint endPoint, WebSocketParser.FrameHandler frameHandler, boolean z) {
        this.b = webSocketBuffers;
        this.c = endPoint;
        this.d = frameHandler;
        this.e = z;
    }

    public boolean isFakeFragments() {
        return this.p;
    }

    public void setFakeFragments(boolean z) {
        this.p = z;
    }

    @Override // org.eclipse.jetty.websocket.WebSocketParser
    public boolean isBufferEmpty() {
        return this.g == null || this.g.length() == 0;
    }

    @Override // org.eclipse.jetty.websocket.WebSocketParser
    public Buffer getBuffer() {
        return this.g;
    }

    /* JADX WARN: Removed duplicated region for block: B:138:0x0395  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0103 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0106 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x011b A[LOOP:3: B:53:0x011b->B:171:0x011b, LOOP_START, PHI: r0 r2
  0x011b: PHI (r0v10 int) = (r0v8 int), (r0v31 int) binds: [B:44:0x0101, B:171:0x011b] A[DONT_GENERATE, DONT_INLINE]
  0x011b: PHI (r2v5 boolean) = (r2v4 boolean), (r2v37 boolean) binds: [B:44:0x0101, B:171:0x011b] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // org.eclipse.jetty.websocket.WebSocketParser
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int parseNext() {
        /*
            Method dump skipped, instruction units count: 958
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.websocket.WebSocketParserD08.parseNext():int");
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

    public void returnBuffer() {
        if (this.g != null && this.g.length() == 0) {
            this.b.returnBuffer(this.g);
            this.g = null;
        }
    }

    public String toString() {
        return String.format("%s@%x state=%s buffer=%s", getClass().getSimpleName(), Integer.valueOf(hashCode()), this.f, this.g);
    }
}
