package org.eclipse.jetty.websocket;

import com.google.common.net.HttpHeaders;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.eclipse.jetty.http.HttpURI;
import org.eclipse.jetty.io.EndPoint;
import org.eclipse.jetty.util.QuotedStringTokenizer;

/* JADX INFO: loaded from: classes.dex */
public class WebSocketServletConnectionD00 extends WebSocketConnectionD00 implements WebSocketServletConnection {
    private final WebSocketFactory a;

    public WebSocketServletConnectionD00(WebSocketFactory webSocketFactory, WebSocket webSocket, EndPoint endPoint, WebSocketBuffers webSocketBuffers, long j, int i, String str) {
        super(webSocket, endPoint, webSocketBuffers, j, i, str);
        this.a = webSocketFactory;
    }

    @Override // org.eclipse.jetty.websocket.WebSocketServletConnection
    public void handshake(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, String str) {
        String requestURI = httpServletRequest.getRequestURI();
        String queryString = httpServletRequest.getQueryString();
        if (queryString != null && queryString.length() > 0) {
            requestURI = requestURI + "?" + queryString;
        }
        String string = new HttpURI(requestURI).toString();
        String header = httpServletRequest.getHeader("Host");
        String header2 = httpServletRequest.getHeader("Sec-WebSocket-Origin");
        if (header2 == null) {
            header2 = httpServletRequest.getHeader(HttpHeaders.ORIGIN);
        }
        if (header2 != null) {
            header2 = QuotedStringTokenizer.quoteIfNeeded(header2, "\r\n");
        }
        String header3 = httpServletRequest.getHeader("Sec-WebSocket-Key1");
        if (header3 != null) {
            setHixieKeys(header3, httpServletRequest.getHeader("Sec-WebSocket-Key2"));
            httpServletResponse.setHeader("Upgrade", "WebSocket");
            httpServletResponse.addHeader("Connection", "Upgrade");
            if (header2 != null) {
                httpServletResponse.addHeader("Sec-WebSocket-Origin", header2);
            }
            httpServletResponse.addHeader("Sec-WebSocket-Location", (httpServletRequest.isSecure() ? "wss://" : "ws://") + header + string);
            if (str != null) {
                httpServletResponse.addHeader("Sec-WebSocket-Protocol", str);
            }
            httpServletResponse.sendError(101, "WebSocket Protocol Handshake");
            return;
        }
        httpServletResponse.setHeader("Upgrade", "WebSocket");
        httpServletResponse.addHeader("Connection", "Upgrade");
        httpServletResponse.addHeader("WebSocket-Origin", header2);
        httpServletResponse.addHeader("WebSocket-Location", (httpServletRequest.isSecure() ? "wss://" : "ws://") + header + string);
        if (str != null) {
            httpServletResponse.addHeader("WebSocket-Protocol", str);
        }
        httpServletResponse.sendError(101, "Web Socket Protocol Handshake");
        httpServletResponse.flushBuffer();
        onFrameHandshake();
        onWebsocketOpen();
    }

    @Override // org.eclipse.jetty.websocket.WebSocketConnectionD00, org.eclipse.jetty.io.Connection
    public void onClose() {
        super.onClose();
        this.a.removeConnection(this);
    }
}
