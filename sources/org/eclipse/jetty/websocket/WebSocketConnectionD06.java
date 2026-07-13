package org.eclipse.jetty.websocket;

import com.google.android.gms.auth.api.credentials.CredentialsApi;
import com.google.common.primitives.UnsignedBytes;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.util.Collections;
import java.util.List;
import org.apache.commons.lang3.time.DateUtils;
import org.eclipse.jetty.io.AbstractConnection;
import org.eclipse.jetty.io.AsyncEndPoint;
import org.eclipse.jetty.io.Buffer;
import org.eclipse.jetty.io.ByteArrayBuffer;
import org.eclipse.jetty.io.EndPoint;
import org.eclipse.jetty.util.B64Code;
import org.eclipse.jetty.util.Utf8StringBuilder;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;
import org.eclipse.jetty.websocket.WebSocket;
import org.eclipse.jetty.websocket.WebSocketParser;

/* JADX INFO: loaded from: classes.dex */
public class WebSocketConnectionD06 extends AbstractConnection implements WebSocketConnection {
    private static final Logger a = Log.getLogger((Class<?>) WebSocketConnectionD06.class);
    private static final byte[] b;
    private final WebSocketParser c;
    private final WebSocketGenerator d;
    private final WebSocket e;
    private final WebSocket.OnFrame f;
    private final WebSocket.OnBinaryMessage g;
    private final WebSocket.OnTextMessage h;
    private final WebSocket.OnControl i;
    private final String j;
    private volatile boolean k;
    private volatile boolean l;
    private int m;
    private int n;
    private final WebSocketParser.FrameHandler o;
    private final WebSocket.FrameConnection p;

    static {
        try {
            b = "258EAFA5-E914-47DA-95CA-C5AB0DC85B11".getBytes("ISO-8859-1");
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e);
        }
    }

    static boolean a(int i) {
        return (i & 8) != 0;
    }

    static boolean b(int i) {
        switch (i) {
            case 1:
            case 2:
            case 3:
                return true;
            default:
                return false;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WebSocketConnectionD06(WebSocket webSocket, EndPoint endPoint, WebSocketBuffers webSocketBuffers, long j, int i, String str) {
        super(endPoint, j);
        this.n = -1;
        this.o = new b();
        this.p = new a();
        this._endp.setMaxIdleTime(i);
        this.e = webSocket;
        this.f = this.e instanceof WebSocket.OnFrame ? (WebSocket.OnFrame) this.e : null;
        this.h = this.e instanceof WebSocket.OnTextMessage ? (WebSocket.OnTextMessage) this.e : null;
        this.g = this.e instanceof WebSocket.OnBinaryMessage ? (WebSocket.OnBinaryMessage) this.e : null;
        this.i = this.e instanceof WebSocket.OnControl ? (WebSocket.OnControl) this.e : null;
        this.d = new WebSocketGeneratorD06(webSocketBuffers, this._endp, null);
        this.c = new WebSocketParserD06(webSocketBuffers, endPoint, this.o, true);
        this.j = str;
        this.m = webSocketBuffers.getBufferSize();
        this.n = -1;
    }

    @Override // org.eclipse.jetty.websocket.WebSocketConnection
    public WebSocket.Connection getConnection() {
        return this.p;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0041 A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0051 A[DONT_GENERATE] */
    @Override // org.eclipse.jetty.io.Connection
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.eclipse.jetty.io.Connection handle() {
        /*
            r6 = this;
            r5 = 0
            r4 = 1002(0x3ea, float:1.404E-42)
            r1 = 1
            r0 = r1
        L5:
            if (r0 == 0) goto L21
            org.eclipse.jetty.websocket.WebSocketGenerator r0 = r6.d     // Catch: java.io.IOException -> L55 java.lang.Throwable -> L5c
            int r2 = r0.flush()     // Catch: java.io.IOException -> L55 java.lang.Throwable -> L5c
            org.eclipse.jetty.websocket.WebSocketParser r0 = r6.c     // Catch: java.io.IOException -> L55 java.lang.Throwable -> L5c
            int r3 = r0.parseNext()     // Catch: java.io.IOException -> L55 java.lang.Throwable -> L5c
            if (r2 > 0) goto L17
            if (r3 <= 0) goto L3f
        L17:
            r0 = r1
        L18:
            if (r3 < 0) goto L1c
            if (r2 >= 0) goto L5
        L1c:
            org.eclipse.jetty.io.EndPoint r0 = r6._endp     // Catch: java.io.IOException -> L55 java.lang.Throwable -> L5c
            r0.close()     // Catch: java.io.IOException -> L55 java.lang.Throwable -> L5c
        L21:
            org.eclipse.jetty.io.EndPoint r0 = r6._endp
            boolean r0 = r0.isOpen()
            if (r0 == 0) goto L3e
            boolean r0 = r6.k
            if (r0 == 0) goto L41
            boolean r0 = r6.l
            if (r0 == 0) goto L41
            org.eclipse.jetty.websocket.WebSocketGenerator r0 = r6.d
            boolean r0 = r0.isBufferEmpty()
            if (r0 == 0) goto L41
            org.eclipse.jetty.io.EndPoint r0 = r6._endp
            r0.close()
        L3e:
            return r6
        L3f:
            r0 = 0
            goto L18
        L41:
            org.eclipse.jetty.io.EndPoint r0 = r6._endp
            boolean r0 = r0.isInputShutdown()
            if (r0 == 0) goto L51
            boolean r0 = r6.k
            if (r0 != 0) goto L51
            r6.closeIn(r4, r5)
            goto L3e
        L51:
            r6.b()
            goto L3e
        L55:
            r0 = move-exception
            org.eclipse.jetty.io.EndPoint r1 = r6._endp     // Catch: java.lang.Throwable -> L5c java.io.IOException -> L7b
            r1.close()     // Catch: java.lang.Throwable -> L5c java.io.IOException -> L7b
        L5b:
            throw r0     // Catch: java.lang.Throwable -> L5c
        L5c:
            r0 = move-exception
            org.eclipse.jetty.io.EndPoint r1 = r6._endp
            boolean r1 = r1.isOpen()
            if (r1 == 0) goto L7a
            boolean r1 = r6.k
            if (r1 == 0) goto L82
            boolean r1 = r6.l
            if (r1 == 0) goto L82
            org.eclipse.jetty.websocket.WebSocketGenerator r1 = r6.d
            boolean r1 = r1.isBufferEmpty()
            if (r1 == 0) goto L82
            org.eclipse.jetty.io.EndPoint r1 = r6._endp
            r1.close()
        L7a:
            throw r0
        L7b:
            r1 = move-exception
            org.eclipse.jetty.util.log.Logger r2 = org.eclipse.jetty.websocket.WebSocketConnectionD06.a     // Catch: java.lang.Throwable -> L5c
            r2.ignore(r1)     // Catch: java.lang.Throwable -> L5c
            goto L5b
        L82:
            org.eclipse.jetty.io.EndPoint r1 = r6._endp
            boolean r1 = r1.isInputShutdown()
            if (r1 == 0) goto L92
            boolean r1 = r6.k
            if (r1 != 0) goto L92
            r6.closeIn(r4, r5)
            goto L7a
        L92:
            r6.b()
            goto L7a
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.websocket.WebSocketConnectionD06.handle():org.eclipse.jetty.io.Connection");
    }

    @Override // org.eclipse.jetty.io.nio.AsyncConnection
    public void onInputShutdown() {
    }

    @Override // org.eclipse.jetty.io.Connection
    public boolean isIdle() {
        return this.c.isBufferEmpty() && this.d.isBufferEmpty();
    }

    @Override // org.eclipse.jetty.io.AbstractConnection, org.eclipse.jetty.io.Connection
    public void onIdleExpired(long j) {
        closeOut(CredentialsApi.ACTIVITY_RESULT_ADD_ACCOUNT, "Idle");
    }

    @Override // org.eclipse.jetty.io.Connection
    public boolean isSuspended() {
        return false;
    }

    @Override // org.eclipse.jetty.io.Connection
    public void onClose() {
        this.e.onClose(CredentialsApi.ACTIVITY_RESULT_ADD_ACCOUNT, "");
    }

    /* JADX WARN: Finally extract failed */
    public synchronized void closeIn(int i, String str) {
        a.debug("ClosedIn {} {}", this, str);
        try {
            try {
                if (this.l) {
                    this._endp.close();
                } else {
                    closeOut(i, str);
                }
                this.k = true;
            } catch (IOException e) {
                a.ignore(e);
                this.k = true;
            }
        } catch (Throwable th) {
            this.k = true;
            throw th;
        }
    }

    /* JADX WARN: Finally extract failed */
    public synchronized void closeOut(int i, String str) {
        a.debug("ClosedOut {} {}", this, str);
        try {
            try {
                if (this.k || this.l) {
                    this._endp.close();
                } else {
                    if (i <= 0) {
                        i = CredentialsApi.ACTIVITY_RESULT_ADD_ACCOUNT;
                    }
                    StringBuilder sbAppend = new StringBuilder().append("xx");
                    if (str == null) {
                        str = "";
                    }
                    byte[] bytes = sbAppend.append(str).toString().getBytes("ISO-8859-1");
                    bytes[0] = (byte) (i / 256);
                    bytes[1] = (byte) (i % 256);
                    this.d.addFrame((byte) 8, (byte) 1, bytes, 0, bytes.length);
                }
                this.d.flush();
                this.l = true;
            } catch (IOException e) {
                a.ignore(e);
                this.l = true;
            }
        } catch (Throwable th) {
            this.l = true;
            throw th;
        }
    }

    @Override // org.eclipse.jetty.websocket.WebSocketConnection
    public void shutdown() {
        WebSocket.FrameConnection frameConnection = this.p;
        if (frameConnection != null) {
            frameConnection.close(DateUtils.SEMI_MONTH, null);
        }
    }

    @Override // org.eclipse.jetty.websocket.WebSocketConnection
    public void fillBuffersFrom(Buffer buffer) {
        this.c.fill(buffer);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        if (!this.d.isBufferEmpty() && (this._endp instanceof AsyncEndPoint)) {
            ((AsyncEndPoint) this._endp).scheduleWrite();
        }
    }

    @Override // org.eclipse.jetty.websocket.WebSocketConnection
    public List<Extension> getExtensions() {
        return Collections.emptyList();
    }

    protected void onFrameHandshake() {
        if (this.f != null) {
            this.f.onHandshake(this.p);
        }
    }

    protected void onWebSocketOpen() {
        this.e.onOpen(this.p);
    }

    class a implements WebSocket.FrameConnection {
        volatile boolean a;
        int b;
        int c;

        private a() {
            this.b = WebSocketConnectionD06.this.m;
            this.c = WebSocketConnectionD06.this.n;
        }

        @Override // org.eclipse.jetty.websocket.WebSocket.Connection
        public synchronized void sendMessage(String str) {
            if (WebSocketConnectionD06.this.l) {
                throw new IOException("closing");
            }
            byte[] bytes = str.getBytes("UTF-8");
            WebSocketConnectionD06.this.d.addFrame((byte) 8, (byte) 4, bytes, 0, bytes.length);
            WebSocketConnectionD06.this.d.flush();
            WebSocketConnectionD06.this.b();
        }

        @Override // org.eclipse.jetty.websocket.WebSocket.Connection
        public synchronized void sendMessage(byte[] bArr, int i, int i2) {
            if (!WebSocketConnectionD06.this.l) {
                WebSocketConnectionD06.this.d.addFrame((byte) 8, (byte) 5, bArr, i, i2);
                WebSocketConnectionD06.this.d.flush();
                WebSocketConnectionD06.this.b();
            } else {
                throw new IOException("closing");
            }
        }

        @Override // org.eclipse.jetty.websocket.WebSocket.FrameConnection
        public void sendFrame(byte b, byte b2, byte[] bArr, int i, int i2) throws IOException {
            if (!WebSocketConnectionD06.this.l) {
                WebSocketConnectionD06.this.d.addFrame(b, b2, bArr, i, i2);
                WebSocketConnectionD06.this.d.flush();
                WebSocketConnectionD06.this.b();
                return;
            }
            throw new IOException("closing");
        }

        @Override // org.eclipse.jetty.websocket.WebSocket.FrameConnection
        public void sendControl(byte b, byte[] bArr, int i, int i2) throws IOException {
            if (!WebSocketConnectionD06.this.l) {
                WebSocketConnectionD06.this.d.addFrame((byte) 8, b, bArr, i, i2);
                WebSocketConnectionD06.this.d.flush();
                WebSocketConnectionD06.this.b();
                return;
            }
            throw new IOException("closing");
        }

        @Override // org.eclipse.jetty.websocket.WebSocket.FrameConnection
        public boolean isMessageComplete(byte b) {
            return WebSocketConnectionD06.a(b);
        }

        @Override // org.eclipse.jetty.websocket.WebSocket.Connection
        public boolean isOpen() {
            return WebSocketConnectionD06.this._endp != null && WebSocketConnectionD06.this._endp.isOpen();
        }

        @Override // org.eclipse.jetty.websocket.WebSocket.Connection
        public void close(int i, String str) {
            if (!this.a) {
                this.a = true;
                WebSocketConnectionD06.this.closeOut(i, str);
            }
        }

        @Override // org.eclipse.jetty.websocket.WebSocket.Connection
        public void setMaxIdleTime(int i) {
            try {
                WebSocketConnectionD06.this._endp.setMaxIdleTime(i);
            } catch (IOException e) {
                WebSocketConnectionD06.a.warn(e);
            }
        }

        @Override // org.eclipse.jetty.websocket.WebSocket.Connection
        public void setMaxTextMessageSize(int i) {
            this.b = i;
        }

        @Override // org.eclipse.jetty.websocket.WebSocket.Connection
        public void setMaxBinaryMessageSize(int i) {
            this.c = i;
        }

        @Override // org.eclipse.jetty.websocket.WebSocket.Connection
        public int getMaxTextMessageSize() {
            return this.b;
        }

        @Override // org.eclipse.jetty.websocket.WebSocket.Connection
        public int getMaxIdleTime() {
            return WebSocketConnectionD06.this._endp.getMaxIdleTime();
        }

        @Override // org.eclipse.jetty.websocket.WebSocket.Connection
        public int getMaxBinaryMessageSize() {
            return this.c;
        }

        @Override // org.eclipse.jetty.websocket.WebSocket.Connection
        public String getProtocol() {
            return WebSocketConnectionD06.this.j;
        }

        @Override // org.eclipse.jetty.websocket.WebSocket.FrameConnection
        public byte binaryOpcode() {
            return (byte) 5;
        }

        @Override // org.eclipse.jetty.websocket.WebSocket.FrameConnection
        public byte textOpcode() {
            return (byte) 4;
        }

        @Override // org.eclipse.jetty.websocket.WebSocket.FrameConnection
        public byte continuationOpcode() {
            return (byte) 0;
        }

        @Override // org.eclipse.jetty.websocket.WebSocket.FrameConnection
        public byte finMask() {
            return (byte) 8;
        }

        @Override // org.eclipse.jetty.websocket.WebSocket.FrameConnection
        public boolean isControl(byte b) {
            return WebSocketConnectionD06.b(b);
        }

        @Override // org.eclipse.jetty.websocket.WebSocket.FrameConnection
        public boolean isText(byte b) {
            return b == 4;
        }

        @Override // org.eclipse.jetty.websocket.WebSocket.FrameConnection
        public boolean isBinary(byte b) {
            return b == 5;
        }

        @Override // org.eclipse.jetty.websocket.WebSocket.FrameConnection
        public boolean isContinuation(byte b) {
            return b == 0;
        }

        @Override // org.eclipse.jetty.websocket.WebSocket.FrameConnection
        public boolean isClose(byte b) {
            return b == 1;
        }

        @Override // org.eclipse.jetty.websocket.WebSocket.FrameConnection
        public boolean isPing(byte b) {
            return b == 2;
        }

        @Override // org.eclipse.jetty.websocket.WebSocket.FrameConnection
        public boolean isPong(byte b) {
            return b == 3;
        }

        @Override // org.eclipse.jetty.websocket.WebSocket.Connection
        public void disconnect() {
            close();
        }

        @Override // org.eclipse.jetty.websocket.WebSocket.Connection
        public void close() {
            close(CredentialsApi.ACTIVITY_RESULT_ADD_ACCOUNT, null);
        }

        public String toString() {
            return getClass().getSimpleName() + "@" + WebSocketConnectionD06.this._endp.getLocalAddr() + ":" + WebSocketConnectionD06.this._endp.getLocalPort() + "<->" + WebSocketConnectionD06.this._endp.getRemoteAddr() + ":" + WebSocketConnectionD06.this._endp.getRemotePort();
        }

        @Override // org.eclipse.jetty.websocket.WebSocket.FrameConnection
        public void setAllowFrameFragmentation(boolean z) {
        }

        @Override // org.eclipse.jetty.websocket.WebSocket.FrameConnection
        public boolean isAllowFrameFragmentation() {
            return false;
        }
    }

    class b implements WebSocketParser.FrameHandler {
        private final Utf8StringBuilder b;
        private ByteArrayBuffer c;
        private byte d;

        private b() {
            this.b = new Utf8StringBuilder();
            this.d = (byte) -1;
        }

        @Override // org.eclipse.jetty.websocket.WebSocketParser.FrameHandler
        public void onFrame(byte b, byte b2, Buffer buffer) {
            byte[] bArrArray;
            int i;
            boolean zA = WebSocketConnectionD06.a(b);
            synchronized (WebSocketConnectionD06.this) {
                if (!WebSocketConnectionD06.this.k) {
                    try {
                        bArrArray = buffer.array();
                    } catch (Throwable th) {
                        WebSocketConnectionD06.a.warn(th);
                    }
                    if (WebSocketConnectionD06.this.f == null || !WebSocketConnectionD06.this.f.onFrame(b, b2, bArrArray, buffer.getIndex(), buffer.length())) {
                        if (WebSocketConnectionD06.this.i == null || !WebSocketConnectionD06.b(b2) || !WebSocketConnectionD06.this.i.onControl(b2, bArrArray, buffer.getIndex(), buffer.length())) {
                            switch (b2) {
                                case 0:
                                    if (this.d == 4 && WebSocketConnectionD06.this.p.getMaxTextMessageSize() >= 0) {
                                        if (!this.b.append(buffer.array(), buffer.getIndex(), buffer.length(), WebSocketConnectionD06.this.p.getMaxTextMessageSize())) {
                                            WebSocketConnectionD06.this.p.close(1004, "Text message size > " + WebSocketConnectionD06.this.p.getMaxTextMessageSize() + " chars");
                                            this.b.reset();
                                            this.d = (byte) -1;
                                        } else if (zA && WebSocketConnectionD06.this.h != null) {
                                            this.d = (byte) -1;
                                            String string = this.b.toString();
                                            this.b.reset();
                                            WebSocketConnectionD06.this.h.onMessage(string);
                                        }
                                    } else if (this.d >= 0 && WebSocketConnectionD06.this.p.getMaxBinaryMessageSize() >= 0) {
                                        if (this.c.space() < this.c.length()) {
                                            WebSocketConnectionD06.this.p.close(1004, "Message size > " + WebSocketConnectionD06.this.p.getMaxBinaryMessageSize());
                                            this.c.clear();
                                            this.d = (byte) -1;
                                        } else {
                                            this.c.put(buffer);
                                            if (zA && WebSocketConnectionD06.this.g != null) {
                                                try {
                                                    WebSocketConnectionD06.this.g.onMessage(this.c.array(), this.c.getIndex(), this.c.length());
                                                    this.d = (byte) -1;
                                                    this.c.clear();
                                                } catch (Throwable th2) {
                                                    this.d = (byte) -1;
                                                    this.c.clear();
                                                    throw th2;
                                                }
                                            }
                                        }
                                    }
                                    break;
                                case 1:
                                    String str = null;
                                    if (buffer.length() >= 2) {
                                        i = (buffer.array()[buffer.getIndex()] * UnsignedBytes.MAX_VALUE) + buffer.array()[buffer.getIndex() + 1];
                                        if (buffer.length() > 2) {
                                            str = new String(buffer.array(), buffer.getIndex() + 2, buffer.length() - 2, "UTF-8");
                                        }
                                    } else {
                                        i = -1;
                                    }
                                    WebSocketConnectionD06.this.closeIn(i, str);
                                    break;
                                case 2:
                                    WebSocketConnectionD06.a.debug("PING {}", this);
                                    if (!WebSocketConnectionD06.this.l) {
                                        WebSocketConnectionD06.this.p.sendControl((byte) 3, buffer.array(), buffer.getIndex(), buffer.length());
                                    }
                                    break;
                                case 3:
                                    WebSocketConnectionD06.a.debug("PONG {}", this);
                                    break;
                                case 4:
                                    if (WebSocketConnectionD06.this.h != null) {
                                        if (zA) {
                                            WebSocketConnectionD06.this.h.onMessage(buffer.toString("UTF-8"));
                                        } else if (WebSocketConnectionD06.this.p.getMaxTextMessageSize() >= 0) {
                                            if (this.b.append(buffer.array(), buffer.getIndex(), buffer.length(), WebSocketConnectionD06.this.p.getMaxTextMessageSize())) {
                                                this.d = (byte) 4;
                                            } else {
                                                this.b.reset();
                                                this.d = (byte) -1;
                                                WebSocketConnectionD06.this.p.close(1004, "Text message size > " + WebSocketConnectionD06.this.p.getMaxTextMessageSize() + " chars");
                                            }
                                        }
                                    }
                                    break;
                                default:
                                    if (WebSocketConnectionD06.this.g != null) {
                                        if (zA) {
                                            WebSocketConnectionD06.this.g.onMessage(bArrArray, buffer.getIndex(), buffer.length());
                                        } else if (WebSocketConnectionD06.this.p.getMaxBinaryMessageSize() >= 0) {
                                            if (buffer.length() > WebSocketConnectionD06.this.p.getMaxBinaryMessageSize()) {
                                                WebSocketConnectionD06.this.p.close(1004, "Message size > " + WebSocketConnectionD06.this.p.getMaxBinaryMessageSize());
                                                if (this.c != null) {
                                                    this.c.clear();
                                                }
                                                this.d = (byte) -1;
                                            } else {
                                                this.d = b2;
                                                if (this.c == null) {
                                                    this.c = new ByteArrayBuffer(WebSocketConnectionD06.this.p.getMaxBinaryMessageSize());
                                                }
                                                this.c.put(buffer);
                                            }
                                        }
                                    }
                                    break;
                            }
                        }
                    }
                }
            }
        }

        @Override // org.eclipse.jetty.websocket.WebSocketParser.FrameHandler
        public void close(int i, String str) {
            WebSocketConnectionD06.this.p.close(i, str);
        }

        public String toString() {
            return WebSocketConnectionD06.this.toString() + "FH";
        }
    }

    public static String hashKey(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA1");
            messageDigest.update(str.getBytes("UTF-8"));
            messageDigest.update(b);
            return new String(B64Code.encode(messageDigest.digest()));
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
