package org.eclipse.jetty.websocket;

import com.google.android.gms.auth.api.credentials.CredentialsApi;
import com.google.common.base.Ascii;
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
import org.eclipse.jetty.util.Utf8StringBuilder;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;
import org.eclipse.jetty.websocket.WebSocket;
import org.eclipse.jetty.websocket.WebSocketParser;

/* JADX INFO: loaded from: classes.dex */
public class WebSocketConnectionD08 extends AbstractConnection implements WebSocketConnection {
    private static final Logger a = Log.getLogger((Class<?>) WebSocketConnectionD08.class);
    private static final byte[] b;
    private final List<Extension> c;
    private final WebSocketParserD08 d;
    private final WebSocketGeneratorD08 e;
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

    public WebSocketConnectionD08(WebSocket webSocket, EndPoint endPoint, WebSocketBuffers webSocketBuffers, long j, int i, String str, List<Extension> list, int i2) {
        this(webSocket, endPoint, webSocketBuffers, j, i, str, list, i2, null);
    }

    public WebSocketConnectionD08(WebSocket webSocket, EndPoint endPoint, WebSocketBuffers webSocketBuffers, long j, int i, String str, List<Extension> list, int i2, MaskGen maskGen) {
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
        this.e = new WebSocketGeneratorD08(webSocketBuffers, this._endp, maskGen);
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
        this.d = new WebSocketParserD08(webSocketBuffers, endPoint, (this.c == null || this.c.size() == 0) ? bVar : list.get(0), maskGen == null);
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
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.websocket.WebSocketConnectionD08.handle():org.eclipse.jetty.io.Connection");
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
        int i2 = CredentialsApi.ACTIVITY_RESULT_ADD_ACCOUNT;
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
                    if (i <= 0) {
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
                        this.f.addFrame((byte) 8, (byte) 8, bytes, 0, bytes.length);
                    } catch (IOException e) {
                        a.ignore(e);
                        throw th;
                    }
                }
                this.f.flush();
                throw th;
            }
        }
        if (!z) {
            if (i > 0) {
                i2 = i;
            }
            try {
                StringBuilder sbAppend2 = new StringBuilder().append("xx");
                if (str == null) {
                    str = "";
                }
                byte[] bytes2 = sbAppend2.append(str).toString().getBytes("ISO-8859-1");
                bytes2[0] = (byte) (i2 / 256);
                bytes2[1] = (byte) (i2 % 256);
                this.f.addFrame((byte) 8, (byte) 8, bytes2, 0, bytes2.length);
            } catch (IOException e2) {
                a.ignore(e2);
                return;
            }
        }
        this.f.flush();
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
            if (WebSocketConnectionD08.this.r) {
                throw new IOException("closedOut " + WebSocketConnectionD08.this.o + ":" + WebSocketConnectionD08.this.p);
            }
            byte[] bytes = str.getBytes("UTF-8");
            WebSocketConnectionD08.this.f.addFrame((byte) 8, (byte) 1, bytes, 0, bytes.length);
            WebSocketConnectionD08.this.b();
        }

        @Override // org.eclipse.jetty.websocket.WebSocket.Connection
        public void sendMessage(byte[] bArr, int i, int i2) throws IOException {
            if (!WebSocketConnectionD08.this.r) {
                WebSocketConnectionD08.this.f.addFrame((byte) 8, (byte) 2, bArr, i, i2);
                WebSocketConnectionD08.this.b();
                return;
            }
            throw new IOException("closedOut " + WebSocketConnectionD08.this.o + ":" + WebSocketConnectionD08.this.p);
        }

        @Override // org.eclipse.jetty.websocket.WebSocket.FrameConnection
        public void sendFrame(byte b, byte b2, byte[] bArr, int i, int i2) throws IOException {
            if (!WebSocketConnectionD08.this.r) {
                WebSocketConnectionD08.this.f.addFrame(b, b2, bArr, i, i2);
                WebSocketConnectionD08.this.b();
                return;
            }
            throw new IOException("closedOut " + WebSocketConnectionD08.this.o + ":" + WebSocketConnectionD08.this.p);
        }

        @Override // org.eclipse.jetty.websocket.WebSocket.FrameConnection
        public void sendControl(byte b, byte[] bArr, int i, int i2) throws IOException {
            if (!WebSocketConnectionD08.this.r) {
                WebSocketConnectionD08.this.f.addFrame((byte) 8, b, bArr, i, i2);
                WebSocketConnectionD08.this.b();
                return;
            }
            throw new IOException("closedOut " + WebSocketConnectionD08.this.o + ":" + WebSocketConnectionD08.this.p);
        }

        @Override // org.eclipse.jetty.websocket.WebSocket.FrameConnection
        public boolean isMessageComplete(byte b) {
            return WebSocketConnectionD08.a(b);
        }

        @Override // org.eclipse.jetty.websocket.WebSocket.Connection
        public boolean isOpen() {
            return WebSocketConnectionD08.this._endp != null && WebSocketConnectionD08.this._endp.isOpen();
        }

        @Override // org.eclipse.jetty.websocket.WebSocket.Connection
        public void close(int i, String str) {
            if (!this.b) {
                this.b = true;
                WebSocketConnectionD08.this.closeOut(i, str);
            }
        }

        @Override // org.eclipse.jetty.websocket.WebSocket.Connection
        public void setMaxIdleTime(int i) {
            try {
                WebSocketConnectionD08.this._endp.setMaxIdleTime(i);
            } catch (IOException e) {
                WebSocketConnectionD08.a.warn(e);
            }
        }

        @Override // org.eclipse.jetty.websocket.WebSocket.Connection
        public void setMaxTextMessageSize(int i) {
            WebSocketConnectionD08.this.s = i;
        }

        @Override // org.eclipse.jetty.websocket.WebSocket.Connection
        public void setMaxBinaryMessageSize(int i) {
            WebSocketConnectionD08.this.t = i;
        }

        @Override // org.eclipse.jetty.websocket.WebSocket.Connection
        public int getMaxIdleTime() {
            return WebSocketConnectionD08.this._endp.getMaxIdleTime();
        }

        @Override // org.eclipse.jetty.websocket.WebSocket.Connection
        public int getMaxTextMessageSize() {
            return WebSocketConnectionD08.this.s;
        }

        @Override // org.eclipse.jetty.websocket.WebSocket.Connection
        public int getMaxBinaryMessageSize() {
            return WebSocketConnectionD08.this.t;
        }

        @Override // org.eclipse.jetty.websocket.WebSocket.Connection
        public String getProtocol() {
            return WebSocketConnectionD08.this.l;
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
            return WebSocketConnectionD08.b(b);
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
            WebSocketConnectionD08.this.d.setFakeFragments(z);
        }

        @Override // org.eclipse.jetty.websocket.WebSocket.FrameConnection
        public boolean isAllowFrameFragmentation() {
            return WebSocketConnectionD08.this.d.isFakeFragments();
        }

        public String toString() {
            return String.format("%s[D08]@%x l(%s:%d)<->r(%s:%d)", getClass().getSimpleName(), Integer.valueOf(hashCode()), WebSocketConnectionD08.this._endp.getLocalAddr(), Integer.valueOf(WebSocketConnectionD08.this._endp.getLocalPort()), WebSocketConnectionD08.this._endp.getRemoteAddr(), Integer.valueOf(WebSocketConnectionD08.this._endp.getRemotePort()));
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
            boolean zA = WebSocketConnectionD08.a(b);
            synchronized (WebSocketConnectionD08.this) {
                if (!WebSocketConnectionD08.this.q) {
                    try {
                        bArrArray = buffer.array();
                    } catch (Throwable th) {
                        WebSocketConnectionD08.a.warn("{} for {}", th, WebSocketConnectionD08.this._endp, th);
                        WebSocketConnectionD08.a.debug(th);
                        a(1011, "Internal Server Error: " + th);
                    }
                    if (WebSocketConnectionD08.this.h == null || !WebSocketConnectionD08.this.h.onFrame(b, b2, bArrArray, buffer.getIndex(), buffer.length())) {
                        if (WebSocketConnectionD08.this.k == null || !WebSocketConnectionD08.b(b2) || !WebSocketConnectionD08.this.k.onControl(b2, bArrArray, buffer.getIndex(), buffer.length())) {
                            switch (b2) {
                                case 0:
                                    if (WebSocketConnectionD08.this.j != null && this.d == 1) {
                                        if (this.b.append(buffer.array(), buffer.getIndex(), buffer.length(), WebSocketConnectionD08.this.u.getMaxTextMessageSize())) {
                                            if (zA) {
                                                this.d = (byte) -1;
                                                String string = this.b.toString();
                                                this.b.reset();
                                                WebSocketConnectionD08.this.j.onMessage(string);
                                            }
                                        } else {
                                            a();
                                        }
                                    }
                                    if (this.d >= 0 && WebSocketConnectionD08.this.u.getMaxBinaryMessageSize() >= 0 && a(this.c.length(), buffer.length())) {
                                        this.c.put(buffer);
                                        if (zA && WebSocketConnectionD08.this.i != null) {
                                            try {
                                                WebSocketConnectionD08.this.i.onMessage(this.c.array(), this.c.getIndex(), this.c.length());
                                                this.d = (byte) -1;
                                                this.c.clear();
                                                return;
                                            } catch (Throwable th2) {
                                                this.d = (byte) -1;
                                                this.c.clear();
                                                throw th2;
                                            }
                                        }
                                        return;
                                    }
                                    return;
                                case 1:
                                    if (WebSocketConnectionD08.this.j != null) {
                                        if (WebSocketConnectionD08.this.u.getMaxTextMessageSize() > 0) {
                                            if (this.b.append(buffer.array(), buffer.getIndex(), buffer.length(), WebSocketConnectionD08.this.u.getMaxTextMessageSize())) {
                                                if (zA) {
                                                    String string2 = this.b.toString();
                                                    this.b.reset();
                                                    WebSocketConnectionD08.this.j.onMessage(string2);
                                                    return;
                                                }
                                                this.d = (byte) 1;
                                                return;
                                            }
                                            a();
                                            return;
                                        }
                                        if (zA) {
                                            WebSocketConnectionD08.this.j.onMessage(buffer.toString("UTF-8"));
                                            return;
                                        } else {
                                            WebSocketConnectionD08.a.warn("Frame discarded. Text aggregation disabled for {}", WebSocketConnectionD08.this._endp);
                                            WebSocketConnectionD08.this.u.close(1003, "Text frame aggregation disabled");
                                            return;
                                        }
                                    }
                                    return;
                                case 2:
                                case 3:
                                case 4:
                                case 5:
                                case 6:
                                case 7:
                                default:
                                    if (WebSocketConnectionD08.this.i != null && a(0, buffer.length())) {
                                        if (zA) {
                                            WebSocketConnectionD08.this.i.onMessage(bArrArray, buffer.getIndex(), buffer.length());
                                            return;
                                        }
                                        if (WebSocketConnectionD08.this.u.getMaxBinaryMessageSize() < 0) {
                                            WebSocketConnectionD08.a.warn("Frame discarded. Binary aggregation disabed for {}", WebSocketConnectionD08.this._endp);
                                            WebSocketConnectionD08.this.u.close(1003, "Binary frame aggregation disabled");
                                            return;
                                        } else {
                                            this.d = b2;
                                            if (this.c == null) {
                                                this.c = new ByteArrayBuffer(WebSocketConnectionD08.this.u.getMaxBinaryMessageSize());
                                            }
                                            this.c.put(buffer);
                                            return;
                                        }
                                    }
                                    return;
                                case 8:
                                    int i = 1005;
                                    String str = null;
                                    if (buffer.length() >= 2) {
                                        i = (buffer.array()[buffer.getIndex()] * Ascii.NUL) + buffer.array()[buffer.getIndex() + 1];
                                        if (buffer.length() > 2) {
                                            str = new String(buffer.array(), buffer.getIndex() + 2, buffer.length() - 2, "UTF-8");
                                        }
                                    }
                                    WebSocketConnectionD08.this.closeIn(i, str);
                                    return;
                                case 9:
                                    WebSocketConnectionD08.a.debug("PING {}", this);
                                    if (!WebSocketConnectionD08.this.r) {
                                        WebSocketConnectionD08.this.u.sendControl((byte) 10, buffer.array(), buffer.getIndex(), buffer.length());
                                        return;
                                    }
                                    return;
                                case 10:
                                    WebSocketConnectionD08.a.debug("PONG {}", this);
                                    return;
                            }
                            WebSocketConnectionD08.a.warn("{} for {}", th, WebSocketConnectionD08.this._endp, th);
                            WebSocketConnectionD08.a.debug(th);
                            a(1011, "Internal Server Error: " + th);
                        }
                    }
                }
            }
        }

        private void a(int i, String str) {
            WebSocketConnectionD08.this.u.close(i, str);
            try {
                WebSocketConnectionD08.this._endp.close();
            } catch (IOException e) {
                WebSocketConnectionD08.a.warn(e.toString(), new Object[0]);
                WebSocketConnectionD08.a.debug(e);
            }
        }

        private boolean a(int i, int i2) {
            int maxBinaryMessageSize = WebSocketConnectionD08.this.u.getMaxBinaryMessageSize();
            if (maxBinaryMessageSize <= 0 || i + i2 <= maxBinaryMessageSize) {
                return true;
            }
            WebSocketConnectionD08.a.warn("Binary message too large > {}B for {}", Integer.valueOf(WebSocketConnectionD08.this.u.getMaxBinaryMessageSize()), WebSocketConnectionD08.this._endp);
            WebSocketConnectionD08.this.u.close(1003, "Message size > " + WebSocketConnectionD08.this.u.getMaxBinaryMessageSize());
            this.d = (byte) -1;
            if (this.c == null) {
                return false;
            }
            this.c.clear();
            return false;
        }

        private void a() {
            WebSocketConnectionD08.a.warn("Text message too large > {} chars for {}", Integer.valueOf(WebSocketConnectionD08.this.u.getMaxTextMessageSize()), WebSocketConnectionD08.this._endp);
            WebSocketConnectionD08.this.u.close(1003, "Text message size > " + WebSocketConnectionD08.this.u.getMaxTextMessageSize() + " chars");
            this.d = (byte) -1;
            this.b.reset();
        }

        @Override // org.eclipse.jetty.websocket.WebSocketParser.FrameHandler
        public void close(int i, String str) {
            if (i != 1000) {
                WebSocketConnectionD08.a.warn("Close: " + i + " " + str, new Object[0]);
            }
            WebSocketConnectionD08.this.u.close(i, str);
        }

        public String toString() {
            return WebSocketConnectionD08.this.toString() + "FH";
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
        return String.format("WS/D%d p=%s g=%s", Integer.valueOf(this.m), this.d, this.e);
    }
}
