package org.eclipse.jetty.websocket;

import com.google.android.gms.auth.api.credentials.CredentialsApi;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Collections;
import java.util.List;
import org.eclipse.jetty.io.AbstractConnection;
import org.eclipse.jetty.io.AsyncEndPoint;
import org.eclipse.jetty.io.Buffer;
import org.eclipse.jetty.io.ByteArrayBuffer;
import org.eclipse.jetty.io.EndPoint;
import org.eclipse.jetty.io.nio.IndirectNIOBuffer;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;
import org.eclipse.jetty.websocket.WebSocket;
import org.eclipse.jetty.websocket.WebSocketParser;

/* JADX INFO: loaded from: classes.dex */
public class WebSocketConnectionD00 extends AbstractConnection implements WebSocket.FrameConnection, WebSocketConnection {
    public static final byte LENGTH_FRAME = -128;
    public static final byte SENTINEL_FRAME = 0;
    private static final Logger a = Log.getLogger((Class<?>) WebSocketConnectionD00.class);
    private final WebSocketParser b;
    private final WebSocketGenerator c;
    private final WebSocket d;
    private final String e;
    private String f;
    private String g;
    private ByteArrayBuffer h;

    public WebSocketConnectionD00(WebSocket webSocket, EndPoint endPoint, WebSocketBuffers webSocketBuffers, long j, int i, String str) {
        super(endPoint, j);
        this._endp.setMaxIdleTime(i);
        this.d = webSocket;
        this.e = str;
        this.c = new WebSocketGeneratorD00(webSocketBuffers, this._endp);
        this.b = new WebSocketParserD00(webSocketBuffers, endPoint, new a(this.d));
    }

    @Override // org.eclipse.jetty.websocket.WebSocketConnection
    public WebSocket.Connection getConnection() {
        return this;
    }

    public void setHixieKeys(String str, String str2) {
        this.f = str;
        this.g = str2;
        this.h = new IndirectNIOBuffer(16);
    }

    /* JADX WARN: Removed duplicated region for block: B:61:0x0102 A[DONT_GENERATE] */
    @Override // org.eclipse.jetty.io.Connection
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.eclipse.jetty.io.Connection handle() {
        /*
            Method dump skipped, instruction units count: 360
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.websocket.WebSocketConnectionD00.handle():org.eclipse.jetty.io.Connection");
    }

    @Override // org.eclipse.jetty.io.nio.AsyncConnection
    public void onInputShutdown() {
    }

    private void b() {
        byte[] bArrDoTheHixieHixieShake = doTheHixieHixieShake(a(this.f), a(this.g), this.h.asArray());
        this.h.clear();
        this.h.put(bArrDoTheHixieHixieShake);
    }

    @Override // org.eclipse.jetty.websocket.WebSocket.Connection
    public boolean isOpen() {
        return this._endp != null && this._endp.isOpen();
    }

    @Override // org.eclipse.jetty.io.Connection
    public boolean isIdle() {
        return this.b.isBufferEmpty() && this.c.isBufferEmpty();
    }

    @Override // org.eclipse.jetty.io.Connection
    public boolean isSuspended() {
        return false;
    }

    @Override // org.eclipse.jetty.io.Connection
    public void onClose() {
        this.d.onClose(CredentialsApi.ACTIVITY_RESULT_ADD_ACCOUNT, "");
    }

    @Override // org.eclipse.jetty.websocket.WebSocket.Connection
    public void sendMessage(String str) throws UnsupportedEncodingException {
        byte[] bytes = str.getBytes("UTF-8");
        this.c.addFrame((byte) 0, (byte) 0, bytes, 0, bytes.length);
        this.c.flush();
        c();
    }

    @Override // org.eclipse.jetty.websocket.WebSocket.Connection
    public void sendMessage(byte[] bArr, int i, int i2) {
        this.c.addFrame((byte) 0, (byte) -128, bArr, i, i2);
        this.c.flush();
        c();
    }

    public boolean isMore(byte b) {
        return (b & 8) != 0;
    }

    @Override // org.eclipse.jetty.websocket.WebSocket.FrameConnection
    public void sendControl(byte b, byte[] bArr, int i, int i2) {
    }

    @Override // org.eclipse.jetty.websocket.WebSocket.FrameConnection
    public void sendFrame(byte b, byte b2, byte[] bArr, int i, int i2) {
        this.c.addFrame((byte) 0, b2, bArr, i, i2);
        this.c.flush();
        c();
    }

    @Override // org.eclipse.jetty.websocket.WebSocket.Connection
    public void close(int i, String str) {
        throw new UnsupportedOperationException();
    }

    @Override // org.eclipse.jetty.websocket.WebSocket.Connection
    public void disconnect() {
        close();
    }

    @Override // org.eclipse.jetty.websocket.WebSocket.Connection
    public void close() {
        try {
            this.c.flush();
            this._endp.close();
        } catch (IOException e) {
            a.ignore(e);
        }
    }

    @Override // org.eclipse.jetty.websocket.WebSocketConnection
    public void shutdown() {
        close();
    }

    @Override // org.eclipse.jetty.websocket.WebSocketConnection
    public void fillBuffersFrom(Buffer buffer) {
        this.b.fill(buffer);
    }

    private void c() {
        if (!this.c.isBufferEmpty() && (this._endp instanceof AsyncEndPoint)) {
            ((AsyncEndPoint) this._endp).scheduleWrite();
        }
    }

    static long a(String str) {
        int i = 0;
        long j = 0;
        for (char c : str.toCharArray()) {
            if (Character.isDigit(c)) {
                j = (j * 10) + ((long) (c - '0'));
            } else if (c == ' ') {
                i++;
            }
        }
        return j / ((long) i);
    }

    public static byte[] doTheHixieHixieShake(long j, long j2, byte[] bArr) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            byte[] bArr2 = {(byte) ((j >> 24) & 255), (byte) ((j >> 16) & 255), (byte) ((j >> 8) & 255), (byte) (255 & j), (byte) ((j2 >> 24) & 255), (byte) ((j2 >> 16) & 255), (byte) ((j2 >> 8) & 255), (byte) (255 & j2), 0, 0, 0, 0, 0, 0, 0, 0};
            System.arraycopy(bArr, 0, bArr2, 8, 8);
            messageDigest.update(bArr2);
            return messageDigest.digest();
        } catch (NoSuchAlgorithmException e) {
            throw new IllegalStateException(e);
        }
    }

    @Override // org.eclipse.jetty.websocket.WebSocket.Connection
    public void setMaxTextMessageSize(int i) {
    }

    @Override // org.eclipse.jetty.websocket.WebSocket.Connection
    public void setMaxIdleTime(int i) {
        try {
            this._endp.setMaxIdleTime(i);
        } catch (IOException e) {
            a.warn(e);
        }
    }

    @Override // org.eclipse.jetty.websocket.WebSocket.Connection
    public void setMaxBinaryMessageSize(int i) {
    }

    @Override // org.eclipse.jetty.websocket.WebSocket.Connection
    public int getMaxTextMessageSize() {
        return -1;
    }

    @Override // org.eclipse.jetty.websocket.WebSocket.Connection
    public int getMaxIdleTime() {
        return this._endp.getMaxIdleTime();
    }

    @Override // org.eclipse.jetty.websocket.WebSocket.Connection
    public int getMaxBinaryMessageSize() {
        return -1;
    }

    @Override // org.eclipse.jetty.websocket.WebSocket.Connection
    public String getProtocol() {
        return this.e;
    }

    protected void onFrameHandshake() {
        if (this.d instanceof WebSocket.OnFrame) {
            ((WebSocket.OnFrame) this.d).onHandshake(this);
        }
    }

    protected void onWebsocketOpen() {
        this.d.onOpen(this);
    }

    static class a implements WebSocketParser.FrameHandler {
        final WebSocket a;

        a(WebSocket webSocket) {
            this.a = webSocket;
        }

        @Override // org.eclipse.jetty.websocket.WebSocketParser.FrameHandler
        public void onFrame(byte b, byte b2, Buffer buffer) {
            try {
                byte[] bArrArray = buffer.array();
                if (b2 == 0) {
                    if (this.a instanceof WebSocket.OnTextMessage) {
                        ((WebSocket.OnTextMessage) this.a).onMessage(buffer.toString("UTF-8"));
                    }
                } else if (this.a instanceof WebSocket.OnBinaryMessage) {
                    ((WebSocket.OnBinaryMessage) this.a).onMessage(bArrArray, buffer.getIndex(), buffer.length());
                }
            } catch (Throwable th) {
                WebSocketConnectionD00.a.warn(th);
            }
        }

        @Override // org.eclipse.jetty.websocket.WebSocketParser.FrameHandler
        public void close(int i, String str) {
        }
    }

    @Override // org.eclipse.jetty.websocket.WebSocket.FrameConnection
    public boolean isMessageComplete(byte b) {
        return true;
    }

    @Override // org.eclipse.jetty.websocket.WebSocket.FrameConnection
    public byte binaryOpcode() {
        return (byte) -128;
    }

    @Override // org.eclipse.jetty.websocket.WebSocket.FrameConnection
    public byte textOpcode() {
        return (byte) 0;
    }

    @Override // org.eclipse.jetty.websocket.WebSocket.FrameConnection
    public boolean isControl(byte b) {
        return false;
    }

    @Override // org.eclipse.jetty.websocket.WebSocket.FrameConnection
    public boolean isText(byte b) {
        return (b & (-128)) == 0;
    }

    @Override // org.eclipse.jetty.websocket.WebSocket.FrameConnection
    public boolean isBinary(byte b) {
        return (b & (-128)) != 0;
    }

    @Override // org.eclipse.jetty.websocket.WebSocket.FrameConnection
    public boolean isContinuation(byte b) {
        return false;
    }

    @Override // org.eclipse.jetty.websocket.WebSocket.FrameConnection
    public boolean isClose(byte b) {
        return false;
    }

    @Override // org.eclipse.jetty.websocket.WebSocket.FrameConnection
    public boolean isPing(byte b) {
        return false;
    }

    @Override // org.eclipse.jetty.websocket.WebSocket.FrameConnection
    public boolean isPong(byte b) {
        return false;
    }

    @Override // org.eclipse.jetty.websocket.WebSocketConnection
    public List<Extension> getExtensions() {
        return Collections.emptyList();
    }

    @Override // org.eclipse.jetty.websocket.WebSocket.FrameConnection
    public byte continuationOpcode() {
        return (byte) 0;
    }

    @Override // org.eclipse.jetty.websocket.WebSocket.FrameConnection
    public byte finMask() {
        return (byte) 0;
    }

    @Override // org.eclipse.jetty.websocket.WebSocket.FrameConnection
    public void setAllowFrameFragmentation(boolean z) {
    }

    @Override // org.eclipse.jetty.websocket.WebSocket.FrameConnection
    public boolean isAllowFrameFragmentation() {
        return false;
    }
}
