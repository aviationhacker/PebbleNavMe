package org.eclipse.jetty.websocket;

import java.util.HashMap;
import java.util.Map;
import org.eclipse.jetty.io.Buffer;
import org.eclipse.jetty.util.QuotedStringTokenizer;
import org.eclipse.jetty.websocket.WebSocket;
import org.eclipse.jetty.websocket.WebSocketParser;

/* JADX INFO: loaded from: classes.dex */
public class AbstractExtension implements Extension {
    private static final int[] a = {-1, 4, 2, 1};
    private final String b;
    private final Map<String, String> c = new HashMap();
    private WebSocketParser.FrameHandler d;
    private WebSocketGenerator e;
    private WebSocket.FrameConnection f;

    public AbstractExtension(String str) {
        this.b = str;
    }

    public WebSocket.FrameConnection getConnection() {
        return this.f;
    }

    @Override // org.eclipse.jetty.websocket.Extension
    public boolean init(Map<String, String> map) {
        this.c.putAll(map);
        return true;
    }

    public String getInitParameter(String str) {
        return this.c.get(str);
    }

    public String getInitParameter(String str, String str2) {
        return !this.c.containsKey(str) ? str2 : this.c.get(str);
    }

    public int getInitParameter(String str, int i) {
        String str2 = this.c.get(str);
        return str2 == null ? i : Integer.valueOf(str2).intValue();
    }

    @Override // org.eclipse.jetty.websocket.Extension
    public void bind(WebSocket.FrameConnection frameConnection, WebSocketParser.FrameHandler frameHandler, WebSocketGenerator webSocketGenerator) {
        this.f = frameConnection;
        this.d = frameHandler;
        this.e = webSocketGenerator;
    }

    @Override // org.eclipse.jetty.websocket.Extension
    public String getName() {
        return this.b;
    }

    @Override // org.eclipse.jetty.websocket.Extension
    public String getParameterizedName() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.b);
        for (String str : this.c.keySet()) {
            sb.append(';').append(str).append('=').append(QuotedStringTokenizer.quoteIfNeeded(this.c.get(str), ";="));
        }
        return sb.toString();
    }

    @Override // org.eclipse.jetty.websocket.WebSocketParser.FrameHandler
    public void onFrame(byte b, byte b2, Buffer buffer) {
        this.d.onFrame(b, b2, buffer);
    }

    @Override // org.eclipse.jetty.websocket.WebSocketParser.FrameHandler
    public void close(int i, String str) {
        this.d.close(i, str);
    }

    @Override // org.eclipse.jetty.websocket.WebSocketGenerator
    public int flush() {
        return this.e.flush();
    }

    @Override // org.eclipse.jetty.websocket.WebSocketGenerator
    public boolean isBufferEmpty() {
        return this.e.isBufferEmpty();
    }

    @Override // org.eclipse.jetty.websocket.WebSocketGenerator
    public void addFrame(byte b, byte b2, byte[] bArr, int i, int i2) {
        this.e.addFrame(b, b2, bArr, i, i2);
    }

    public byte setFlag(byte b, int i) {
        if (i < 1 || i > 3) {
            throw new IllegalArgumentException("rsv" + i);
        }
        return (byte) (a[i] | b);
    }

    public byte clearFlag(byte b, int i) {
        if (i < 1 || i > 3) {
            throw new IllegalArgumentException("rsv" + i);
        }
        return (byte) ((a[i] ^ (-1)) & b);
    }

    public boolean isFlag(byte b, int i) {
        if (i < 1 || i > 3) {
            throw new IllegalArgumentException("rsv" + i);
        }
        return (a[i] & b) != 0;
    }

    public String toString() {
        return getParameterizedName();
    }
}
