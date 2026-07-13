package org.eclipse.jetty.websocket;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.eclipse.jetty.server.Request;
import org.eclipse.jetty.server.handler.HandlerWrapper;
import org.eclipse.jetty.websocket.WebSocketFactory;

/* JADX INFO: loaded from: classes.dex */
public abstract class WebSocketHandler extends HandlerWrapper implements WebSocketFactory.Acceptor {
    private final WebSocketFactory a = new WebSocketFactory(this, 32768);

    public WebSocketFactory getWebSocketFactory() {
        return this.a;
    }

    public void handle(String str, Request request, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) {
        if (this.a.acceptWebSocket(httpServletRequest, httpServletResponse) || httpServletResponse.isCommitted()) {
            request.setHandled(true);
        } else {
            super.handle(str, request, httpServletRequest, httpServletResponse);
        }
    }

    @Override // org.eclipse.jetty.websocket.WebSocketFactory.Acceptor
    public boolean checkOrigin(HttpServletRequest httpServletRequest, String str) {
        return true;
    }
}
