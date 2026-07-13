package org.eclipse.jetty.websocket;

import com.google.android.gms.auth.api.credentials.CredentialsApi;
import com.google.common.primitives.UnsignedBytes;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.lang3.time.DateUtils;
import org.eclipse.jetty.io.AbstractConnection;
import org.eclipse.jetty.io.AsyncEndPoint;
import org.eclipse.jetty.io.Buffer;
import org.eclipse.jetty.io.ByteArrayBuffer;
import org.eclipse.jetty.io.EndPoint;
import org.eclipse.jetty.util.B64Code;
import org.eclipse.jetty.util.Utf8Appendable;
import org.eclipse.jetty.util.Utf8StringBuilder;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;
import org.eclipse.jetty.websocket.WebSocket;
import org.eclipse.jetty.websocket.WebSocketParser;

/* JADX INFO: loaded from: classes.dex */
public class WebSocketConnectionRFC6455 extends AbstractConnection implements WebSocketConnection {
    private static final Logger a = Log.getLogger((Class<?>) WebSocketConnectionRFC6455.class);
    private static final byte[] b;
    private final List<Extension> c;
    private final WebSocketParserRFC6455 d;
    private final WebSocketGeneratorRFC6455 e;
    private final WebSocketGenerator f;
    private final WebSocket g;
    private final WebSocket.OnFrame h;
    private final WebSocket.OnBinaryMessage i;
    private final WebSocket.OnTextMessage j;
    private final WebSocket.OnControl k;
    private final String l;
    private final int m;
    private final ClassLoader n;
    private volatile int o;
    private volatile String p;
    private volatile boolean q;
    private volatile boolean r;
    private int s;
    private int t;
    private final WebSocket.FrameConnection u;

    static {
        try {
            b = "258EAFA5-E914-47DA-95CA-C5AB0DC85B11".getBytes("ISO-8859-1");
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e);
        }
    }

    static boolean a(byte b2) {
        return (b2 & 8) != 0;
    }

    static boolean b(byte b2) {
        return (b2 & 8) != 0;
    }

    public WebSocketConnectionRFC6455(WebSocket webSocket, EndPoint endPoint, WebSocketBuffers webSocketBuffers, long j, int i, String str, List<Extension> list, int i2) {
        this(webSocket, endPoint, webSocketBuffers, j, i, str, list, i2, null);
    }

    public WebSocketConnectionRFC6455(WebSocket webSocket, EndPoint endPoint, WebSocketBuffers webSocketBuffers, long j, int i, String str, List<Extension> list, int i2, MaskGen maskGen) {
        super(endPoint, j);
        this.s = -1;
        this.t = -1;
        this.u = new a();
        this.n = Thread.currentThread().getContextClassLoader();
        this.m = i2;
        this._endp.setMaxIdleTime(i);
        this.g = webSocket;
        this.h = this.g instanceof WebSocket.OnFrame ? (WebSocket.OnFrame) this.g : null;
        this.j = this.g instanceof WebSocket.OnTextMessage ? (WebSocket.OnTextMessage) this.g : null;
        this.i = this.g instanceof WebSocket.OnBinaryMessage ? (WebSocket.OnBinaryMessage) this.g : null;
        this.k = this.g instanceof WebSocket.OnControl ? (WebSocket.OnControl) this.g : null;
        this.e = new WebSocketGeneratorRFC6455(webSocketBuffers, this._endp, maskGen);
        this.c = list;
        b bVar = new b();
        if (this.c != null) {
            int i3 = 0;
            Iterator<Extension> it = this.c.iterator();
            while (true) {
                int i4 = i3;
                if (!it.hasNext()) {
                    break;
                }
                it.next().bind(this.u, i4 == list.size() + (-1) ? bVar : list.get(i4 + 1), i4 == 0 ? this.e : list.get(i4 - 1));
                i3 = i4 + 1;
            }
        }
        this.f = (this.c == null || this.c.size() == 0) ? this.e : list.get(list.size() - 1);
        this.d = new WebSocketParserRFC6455(webSocketBuffers, endPoint, (this.c == null || this.c.size() == 0) ? bVar : list.get(0), maskGen == null);
        this.l = str;
    }

    @Override // org.eclipse.jetty.websocket.WebSocketConnection
    public WebSocket.Connection getConnection() {
        return this.u;
    }

    @Override // org.eclipse.jetty.websocket.WebSocketConnection
    public List<Extension> getExtensions() {
        return this.c == null ? Collections.emptyList() : this.c;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0069 A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0079 A[DONT_GENERATE] */
    @Override // org.eclipse.jetty.io.Connection
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.eclipse.jetty.io.Connection handle() {
        /*
            Method dump skipped, instruction units count: 214
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.websocket.WebSocketConnectionRFC6455.handle():org.eclipse.jetty.io.Connection");
    }

    @Override // org.eclipse.jetty.io.nio.AsyncConnection
    public void onInputShutdown() {
        if (!this.q) {
            this._endp.close();
        }
    }

    @Override // org.eclipse.jetty.io.Connection
    public boolean isIdle() {
        return this.d.isBufferEmpty() && this.f.isBufferEmpty();
    }

    @Override // org.eclipse.jetty.io.AbstractConnection, org.eclipse.jetty.io.Connection
    public void onIdleExpired(long j) {
        closeOut(CredentialsApi.ACTIVITY_RESULT_ADD_ACCOUNT, "Idle for " + j + "ms > " + this._endp.getMaxIdleTime() + "ms");
    }

    @Override // org.eclipse.jetty.io.Connection
    public boolean isSuspended() {
        return false;
    }

    @Override // org.eclipse.jetty.io.Connection
    public void onClose() {
        boolean z;
        synchronized (this) {
            z = this.o == 0;
            if (z) {
                this.o = 1006;
            }
        }
        if (z) {
            this.g.onClose(1006, "closed");
        }
    }

    public void closeIn(int i, String str) {
        boolean z;
        boolean z2;
        a.debug("ClosedIn {} {} {}", this, Integer.valueOf(i), str);
        synchronized (this) {
            z = this.r;
            this.q = true;
            z2 = this.o == 0;
            if (z2) {
                this.o = i;
                this.p = str;
            }
        }
        if (!z) {
            try {
                closeOut(i, str);
            } finally {
                if (z2) {
                    this.g.onClose(i, str);
                }
            }
        }
    }

    public void closeOut(int i, String str) {
        boolean z;
        boolean z2;
        a.debug("ClosedOut {} {} {}", this, Integer.valueOf(i), str);
        synchronized (this) {
            z = this.r;
            this.r = true;
            z2 = this.o == 0;
            if (z2) {
                this.o = i;
                this.p = str;
            }
        }
        if (z2) {
            try {
                this.g.onClose(i, str);
            } catch (Throwable th) {
                if (!z) {
                    if (i < 0 || i == 1005 || i == 1006 || i == 1015) {
                        i = -1;
                    } else if (i == 0) {
                        i = 1000;
                    }
                    try {
                        StringBuilder sbAppend = new StringBuilder().append("xx");
                        if (str == null) {
                            str = "";
                        }
                        byte[] bytes = sbAppend.append(str).toString().getBytes("ISO-8859-1");
                        bytes[0] = (byte) (i / 256);
                        bytes[1] = (byte) (i % 256);
                        this.f.addFrame((byte) 8, (byte) 8, bytes, 0, i > 0 ? bytes.length : 0);
                        this.f.flush();
                        throw th;
                    } catch (IOException e) {
                        a.ignore(e);
                        throw th;
                    }
                }
                throw th;
            }
        }
        if (!z) {
            if (i < 0 || i == 1005 || i == 1006 || i == 1015) {
                i = -1;
            } else if (i == 0) {
                i = 1000;
            }
            try {
                StringBuilder sbAppend2 = new StringBuilder().append("xx");
                if (str == null) {
                    str = "";
                }
                byte[] bytes2 = sbAppend2.append(str).toString().getBytes("ISO-8859-1");
                bytes2[0] = (byte) (i / 256);
                bytes2[1] = (byte) (i % 256);
                this.f.addFrame((byte) 8, (byte) 8, bytes2, 0, i > 0 ? bytes2.length : 0);
                this.f.flush();
            } catch (IOException e2) {
                a.ignore(e2);
            }
        }
    }

    @Override // org.eclipse.jetty.websocket.WebSocketConnection
    public void shutdown() {
        WebSocket.FrameConnection frameConnection = this.u;
        if (frameConnection != null) {
            frameConnection.close(DateUtils.SEMI_MONTH, null);
        }
    }

    @Override // org.eclipse.jetty.websocket.WebSocketConnection
    public void fillBuffersFrom(Buffer buffer) {
        this.d.fill(buffer);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        if (!this.f.isBufferEmpty() && (this._endp instanceof AsyncEndPoint)) {
            ((AsyncEndPoint) this._endp).scheduleWrite();
        }
    }

    protected void onFrameHandshake() {
        if (this.h != null) {
            this.h.onHandshake(this.u);
        }
    }

    protected void onWebSocketOpen() {
        this.g.onOpen(this.u);
    }

    class a implements WebSocket.FrameConnection {
        private volatile boolean b;

        private a() {
        }

        @Override // org.eclipse.jetty.websocket.WebSocket.Connection
        public void sendMessage(String str) throws IOException {
            if (WebSocketConnectionRFC6455.this.r) {
                throw new IOException("closedOut " + WebSocketConnectionRFC6455.this.o + ":" + WebSocketConnectionRFC6455.this.p);
            }
            byte[] bytes = str.getBytes("UTF-8");
            WebSocketConnectionRFC6455.this.f.addFrame((byte) 8, (byte) 1, bytes, 0, bytes.length);
            WebSocketConnectionRFC6455.this.b();
        }

        @Override // org.eclipse.jetty.websocket.WebSocket.Connection
        public void sendMessage(byte[] bArr, int i, int i2) throws IOException {
            if (!WebSocketConnectionRFC6455.this.r) {
                WebSocketConnectionRFC6455.this.f.addFrame((byte) 8, (byte) 2, bArr, i, i2);
                WebSocketConnectionRFC6455.this.b();
                return;
            }
            throw new IOException("closedOut " + WebSocketConnectionRFC6455.this.o + ":" + WebSocketConnectionRFC6455.this.p);
        }

        @Override // org.eclipse.jetty.websocket.WebSocket.FrameConnection
        public void sendFrame(byte b, byte b2, byte[] bArr, int i, int i2) throws IOException {
            if (!WebSocketConnectionRFC6455.this.r) {
                WebSocketConnectionRFC6455.this.f.addFrame(b, b2, bArr, i, i2);
                WebSocketConnectionRFC6455.this.b();
                return;
            }
            throw new IOException("closedOut " + WebSocketConnectionRFC6455.this.o + ":" + WebSocketConnectionRFC6455.this.p);
        }

        @Override // org.eclipse.jetty.websocket.WebSocket.FrameConnection
        public void sendControl(byte b, byte[] bArr, int i, int i2) throws IOException {
            if (!WebSocketConnectionRFC6455.this.r) {
                WebSocketConnectionRFC6455.this.f.addFrame((byte) 8, b, bArr, i, i2);
                WebSocketConnectionRFC6455.this.b();
                return;
            }
            throw new IOException("closedOut " + WebSocketConnectionRFC6455.this.o + ":" + WebSocketConnectionRFC6455.this.p);
        }

        @Override // org.eclipse.jetty.websocket.WebSocket.FrameConnection
        public boolean isMessageComplete(byte b) {
            return WebSocketConnectionRFC6455.a(b);
        }

        @Override // org.eclipse.jetty.websocket.WebSocket.Connection
        public boolean isOpen() {
            return WebSocketConnectionRFC6455.this._endp != null && WebSocketConnectionRFC6455.this._endp.isOpen();
        }

        @Override // org.eclipse.jetty.websocket.WebSocket.Connection
        public void close(int i, String str) {
            if (!this.b) {
                this.b = true;
                WebSocketConnectionRFC6455.this.closeOut(i, str);
            }
        }

        @Override // org.eclipse.jetty.websocket.WebSocket.Connection
        public void setMaxIdleTime(int i) {
            try {
                WebSocketConnectionRFC6455.this._endp.setMaxIdleTime(i);
            } catch (IOException e) {
                WebSocketConnectionRFC6455.a.warn(e);
            }
        }

        @Override // org.eclipse.jetty.websocket.WebSocket.Connection
        public void setMaxTextMessageSize(int i) {
            WebSocketConnectionRFC6455.this.s = i;
        }

        @Override // org.eclipse.jetty.websocket.WebSocket.Connection
        public void setMaxBinaryMessageSize(int i) {
            WebSocketConnectionRFC6455.this.t = i;
        }

        @Override // org.eclipse.jetty.websocket.WebSocket.Connection
        public int getMaxIdleTime() {
            return WebSocketConnectionRFC6455.this._endp.getMaxIdleTime();
        }

        @Override // org.eclipse.jetty.websocket.WebSocket.Connection
        public int getMaxTextMessageSize() {
            return WebSocketConnectionRFC6455.this.s;
        }

        @Override // org.eclipse.jetty.websocket.WebSocket.Connection
        public int getMaxBinaryMessageSize() {
            return WebSocketConnectionRFC6455.this.t;
        }

        @Override // org.eclipse.jetty.websocket.WebSocket.Connection
        public String getProtocol() {
            return WebSocketConnectionRFC6455.this.l;
        }

        @Override // org.eclipse.jetty.websocket.WebSocket.FrameConnection
        public byte binaryOpcode() {
            return (byte) 2;
        }

        @Override // org.eclipse.jetty.websocket.WebSocket.FrameConnection
        public byte textOpcode() {
            return (byte) 1;
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
            return WebSocketConnectionRFC6455.b(b);
        }

        @Override // org.eclipse.jetty.websocket.WebSocket.FrameConnection
        public boolean isText(byte b) {
            return b == 1;
        }

        @Override // org.eclipse.jetty.websocket.WebSocket.FrameConnection
        public boolean isBinary(byte b) {
            return b == 2;
        }

        @Override // org.eclipse.jetty.websocket.WebSocket.FrameConnection
        public boolean isContinuation(byte b) {
            return b == 0;
        }

        @Override // org.eclipse.jetty.websocket.WebSocket.FrameConnection
        public boolean isClose(byte b) {
            return b == 8;
        }

        @Override // org.eclipse.jetty.websocket.WebSocket.FrameConnection
        public boolean isPing(byte b) {
            return b == 9;
        }

        @Override // org.eclipse.jetty.websocket.WebSocket.FrameConnection
        public boolean isPong(byte b) {
            return b == 10;
        }

        @Override // org.eclipse.jetty.websocket.WebSocket.Connection
        public void disconnect() {
            close(CredentialsApi.ACTIVITY_RESULT_ADD_ACCOUNT, null);
        }

        @Override // org.eclipse.jetty.websocket.WebSocket.Connection
        public void close() {
            close(CredentialsApi.ACTIVITY_RESULT_ADD_ACCOUNT, null);
        }

        @Override // org.eclipse.jetty.websocket.WebSocket.FrameConnection
        public void setAllowFrameFragmentation(boolean z) {
            WebSocketConnectionRFC6455.this.d.setFakeFragments(z);
        }

        @Override // org.eclipse.jetty.websocket.WebSocket.FrameConnection
        public boolean isAllowFrameFragmentation() {
            return WebSocketConnectionRFC6455.this.d.isFakeFragments();
        }

        public String toString() {
            return String.format("%s@%x l(%s:%d)<->r(%s:%d)", getClass().getSimpleName(), Integer.valueOf(hashCode()), WebSocketConnectionRFC6455.this._endp.getLocalAddr(), Integer.valueOf(WebSocketConnectionRFC6455.this._endp.getLocalPort()), WebSocketConnectionRFC6455.this._endp.getRemoteAddr(), Integer.valueOf(WebSocketConnectionRFC6455.this._endp.getRemotePort()));
        }
    }

    class b implements WebSocketParser.FrameHandler {
        private final Utf8StringBuilder b;
        private ByteArrayBuffer c;
        private byte d;

        private b() {
            this.b = new Utf8StringBuilder(512);
            this.d = (byte) -1;
        }

        @Override // org.eclipse.jetty.websocket.WebSocketParser.FrameHandler
        public void onFrame(byte b, byte b2, Buffer buffer) {
            boolean zA = WebSocketConnectionRFC6455.a(b);
            synchronized (WebSocketConnectionRFC6455.this) {
                if (!WebSocketConnectionRFC6455.this.q) {
                    try {
                        byte[] bArrArray = buffer.array();
                        if (WebSocketConnectionRFC6455.b(b2) && buffer.length() > 125) {
                            a(1002, "Control frame too large: " + buffer.length() + " > 125");
                            return;
                        }
                        if ((b & 7) == 0) {
                            if (WebSocketConnectionRFC6455.this.o == 0 || WebSocketConnectionRFC6455.this.o == 1000 || b2 == 8) {
                                if (WebSocketConnectionRFC6455.this.h == null || !WebSocketConnectionRFC6455.this.h.onFrame(b, b2, bArrArray, buffer.getIndex(), buffer.length())) {
                                    if (WebSocketConnectionRFC6455.this.k == null || !WebSocketConnectionRFC6455.b(b2) || !WebSocketConnectionRFC6455.this.k.onControl(b2, bArrArray, buffer.getIndex(), buffer.length())) {
                                        switch (b2) {
                                            case 0:
                                                if (this.d != -1) {
                                                    if (WebSocketConnectionRFC6455.this.j != null && this.d == 1) {
                                                        if (this.b.append(buffer.array(), buffer.getIndex(), buffer.length(), WebSocketConnectionRFC6455.this.u.getMaxTextMessageSize())) {
                                                            if (zA) {
                                                                this.d = (byte) -1;
                                                                String string = this.b.toString();
                                                                this.b.reset();
                                                                WebSocketConnectionRFC6455.this.j.onMessage(string);
                                                            }
                                                        } else {
                                                            a();
                                                        }
                                                    }
                                                    if (this.d >= 0 && WebSocketConnectionRFC6455.this.u.getMaxBinaryMessageSize() >= 0 && this.c != null && a(this.c.length(), buffer.length())) {
                                                        this.c.put(buffer);
                                                        if (zA && WebSocketConnectionRFC6455.this.i != null) {
                                                            try {
                                                                WebSocketConnectionRFC6455.this.i.onMessage(this.c.array(), this.c.getIndex(), this.c.length());
                                                                this.d = (byte) -1;
                                                                this.c.clear();
                                                                return;
                                                            } catch (Throwable th) {
                                                                this.d = (byte) -1;
                                                                this.c.clear();
                                                                throw th;
                                                            }
                                                        }
                                                        return;
                                                    }
                                                    return;
                                                }
                                                a(1002, "Bad Continuation");
                                                return;
                                            case 1:
                                                if (this.d == -1) {
                                                    if (WebSocketConnectionRFC6455.this.j != null) {
                                                        if (WebSocketConnectionRFC6455.this.u.getMaxTextMessageSize() > 0) {
                                                            if (this.b.append(buffer.array(), buffer.getIndex(), buffer.length(), WebSocketConnectionRFC6455.this.u.getMaxTextMessageSize())) {
                                                                if (zA) {
                                                                    String string2 = this.b.toString();
                                                                    this.b.reset();
                                                                    WebSocketConnectionRFC6455.this.j.onMessage(string2);
                                                                    return;
                                                                }
                                                                this.d = (byte) 1;
                                                                return;
                                                            }
                                                            a();
                                                            return;
                                                        }
                                                        if (zA) {
                                                            WebSocketConnectionRFC6455.this.j.onMessage(buffer.toString("UTF-8"));
                                                            return;
                                                        } else {
                                                            WebSocketConnectionRFC6455.a.warn("Frame discarded. Text aggregation disabled for {}", WebSocketConnectionRFC6455.this._endp);
                                                            a(1008, "Text frame aggregation disabled");
                                                            return;
                                                        }
                                                    }
                                                    return;
                                                }
                                                a(1002, "Expected Continuation" + Integer.toHexString(b2));
                                                return;
                                            case 2:
                                                if (this.d == -1) {
                                                    if (WebSocketConnectionRFC6455.this.i != null && a(0, buffer.length())) {
                                                        if (zA) {
                                                            WebSocketConnectionRFC6455.this.i.onMessage(bArrArray, buffer.getIndex(), buffer.length());
                                                            return;
                                                        }
                                                        if (WebSocketConnectionRFC6455.this.u.getMaxBinaryMessageSize() < 0) {
                                                            WebSocketConnectionRFC6455.a.warn("Frame discarded. Binary aggregation disabed for {}", WebSocketConnectionRFC6455.this._endp);
                                                            a(1008, "Binary frame aggregation disabled");
                                                            return;
                                                        } else {
                                                            this.d = b2;
                                                            if (this.c == null) {
                                                                this.c = new ByteArrayBuffer(WebSocketConnectionRFC6455.this.u.getMaxBinaryMessageSize());
                                                            }
                                                            this.c.put(buffer);
                                                            return;
                                                        }
                                                    }
                                                    return;
                                                }
                                                a(1002, "Expected Continuation" + Integer.toHexString(b2));
                                                return;
                                            case 3:
                                            case 4:
                                            case 5:
                                            case 6:
                                            case 7:
                                            default:
                                                a(1002, "Bad opcode 0x" + Integer.toHexString(b2));
                                                return;
                                            case 8:
                                                int i = 1005;
                                                String string3 = null;
                                                if (buffer.length() >= 2) {
                                                    i = ((buffer.array()[buffer.getIndex()] & UnsignedBytes.MAX_VALUE) * 256) + (buffer.array()[buffer.getIndex() + 1] & UnsignedBytes.MAX_VALUE);
                                                    if (i < 1000 || i == 1004 || i == 1006 || i == 1005 || ((i > 1011 && i <= 2999) || i >= 5000)) {
                                                        a(1002, "Invalid close code " + i);
                                                        return;
                                                    } else if (buffer.length() > 2 && this.b.append(buffer.array(), buffer.getIndex() + 2, buffer.length() - 2, WebSocketConnectionRFC6455.this.u.getMaxTextMessageSize())) {
                                                        string3 = this.b.toString();
                                                        this.b.reset();
                                                    }
                                                } else if (buffer.length() == 1) {
                                                    a(1002, "Invalid payload length of 1");
                                                    return;
                                                }
                                                WebSocketConnectionRFC6455.this.closeIn(i, string3);
                                                return;
                                            case 9:
                                                WebSocketConnectionRFC6455.a.debug("PING {}", this);
                                                if (!WebSocketConnectionRFC6455.this.r) {
                                                    WebSocketConnectionRFC6455.this.u.sendControl((byte) 10, buffer.array(), buffer.getIndex(), buffer.length());
                                                    return;
                                                }
                                                return;
                                            case 10:
                                                WebSocketConnectionRFC6455.a.debug("PONG {}", this);
                                                return;
                                        }
                                    }
                                    return;
                                }
                                return;
                            }
                            return;
                        }
                        a(1002, "RSV bits set 0x" + Integer.toHexString(b));
                    } catch (Utf8Appendable.NotUtf8Exception e) {
                        WebSocketConnectionRFC6455.a.warn("NOTUTF8 - {} for {}", e, WebSocketConnectionRFC6455.this._endp, e);
                        WebSocketConnectionRFC6455.a.debug(e);
                        a(1007, "Invalid UTF-8");
                    } catch (Throwable th2) {
                        WebSocketConnectionRFC6455.a.warn("{} for {}", th2, WebSocketConnectionRFC6455.this._endp, th2);
                        WebSocketConnectionRFC6455.a.debug(th2);
                        a(1011, "Internal Server Error: " + th2);
                    }
                }
            }
        }

        private void a(int i, String str) {
            WebSocketConnectionRFC6455.this.u.close(i, str);
            try {
                WebSocketConnectionRFC6455.this._endp.close();
            } catch (IOException e) {
                WebSocketConnectionRFC6455.a.warn(e.toString(), new Object[0]);
                WebSocketConnectionRFC6455.a.debug(e);
            }
        }

        private boolean a(int i, int i2) {
            int maxBinaryMessageSize = WebSocketConnectionRFC6455.this.u.getMaxBinaryMessageSize();
            if (maxBinaryMessageSize <= 0 || i + i2 <= maxBinaryMessageSize) {
                return true;
            }
            WebSocketConnectionRFC6455.a.warn("Binary message too large > {}B for {}", Integer.valueOf(WebSocketConnectionRFC6455.this.u.getMaxBinaryMessageSize()), WebSocketConnectionRFC6455.this._endp);
            WebSocketConnectionRFC6455.this.u.close(1009, "Message size > " + WebSocketConnectionRFC6455.this.u.getMaxBinaryMessageSize());
            this.d = (byte) -1;
            if (this.c == null) {
                return false;
            }
            this.c.clear();
            return false;
        }

        private void a() {
            WebSocketConnectionRFC6455.a.warn("Text message too large > {} chars for {}", Integer.valueOf(WebSocketConnectionRFC6455.this.u.getMaxTextMessageSize()), WebSocketConnectionRFC6455.this._endp);
            WebSocketConnectionRFC6455.this.u.close(1009, "Text message size > " + WebSocketConnectionRFC6455.this.u.getMaxTextMessageSize() + " chars");
            this.d = (byte) -1;
            this.b.reset();
        }

        @Override // org.eclipse.jetty.websocket.WebSocketParser.FrameHandler
        public void close(int i, String str) {
            if (i != 1000) {
                WebSocketConnectionRFC6455.a.warn("Close: " + i + " " + str, new Object[0]);
            }
            WebSocketConnectionRFC6455.this.u.close(i, str);
        }

        public String toString() {
            return WebSocketConnectionRFC6455.this.toString() + "FH";
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

    @Override // org.eclipse.jetty.io.AbstractConnection
    public String toString() {
        return String.format("%s p=%s g=%s", getClass().getSimpleName(), this.d, this.e);
    }
}
