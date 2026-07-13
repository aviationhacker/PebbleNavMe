package org.eclipse.jetty.websocket;

import java.util.Iterator;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.eclipse.jetty.io.EndPoint;

/* JADX INFO: loaded from: classes.dex */
public class WebSocketServletConnectionRFC6455 extends WebSocketConnectionRFC6455 implements WebSocketServletConnection {
    private final WebSocketFactory a;

    public WebSocketServletConnectionRFC6455(WebSocketFactory webSocketFactory, WebSocket webSocket, EndPoint endPoint, WebSocketBuffers webSocketBuffers, long j, int i, String str, List<Extension> list, int i2) {
        super(webSocket, endPoint, webSocketBuffers, j, i, str, list, i2);
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
        Iterator<Extension> it = getExtensions().iterator();
        while (it.hasNext()) {
            httpServletResponse.addHeader("Sec-WebSocket-Extensions", it.next().getParameterizedName());
        }
        httpServletResponse.sendError(101);
        onFrameHandshake();
        onWebSocketOpen();
    }

    @Override // org.eclipse.jetty.websocket.WebSocketConnectionRFC6455, org.eclipse.jetty.io.Connection
    public void onClose() {
        super.onClose();
        this.a.removeConnection(this);
    }
}
