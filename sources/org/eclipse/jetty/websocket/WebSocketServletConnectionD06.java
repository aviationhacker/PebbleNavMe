package org.eclipse.jetty.websocket;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.eclipse.jetty.io.EndPoint;

/* JADX INFO: loaded from: classes.dex */
public class WebSocketServletConnectionD06 extends WebSocketConnectionD06 implements WebSocketServletConnection {
    private final WebSocketFactory a;

    public WebSocketServletConnectionD06(WebSocketFactory webSocketFactory, WebSocket webSocket, EndPoint endPoint, WebSocketBuffers webSocketBuffers, long j, int i, String str) {
        super(webSocket, endPoint, webSocketBuffers, j, i, str);
        this.a = webSocketFactory;
    }

    @Override // org.eclipse.jetty.websocket.WebSocketServletConnection
    public void handshake(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, String str) {
        String header = httpServletRequest.getHeader("Sec-WebSocket-Key");
        httpServletResponse.setHeader("Upgrade", "WebSocket");
        httpServletResponse.addHeader("Connection", "Upgrade");
        httpServletResponse.addHeader("Sec-WebSocket-Accept", hashKey(header));
        if (str != null) {
            httpServletResponse.addHeader("Sec-WebSocket-Protocol", str);
        }
        httpServletResponse.sendError(101);
        onFrameHandshake();
        onWebSocketOpen();
    }

    @Override // org.eclipse.jetty.websocket.WebSocketConnectionD06, org.eclipse.jetty.io.Connection
    public void onClose() {
        super.onClose();
        this.a.removeConnection(this);
    }
}
