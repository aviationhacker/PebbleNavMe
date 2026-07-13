package org.eclipse.jetty.websocket;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/* JADX INFO: loaded from: classes.dex */
public interface WebSocketServletConnection extends WebSocketConnection {
    void handshake(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, String str);
}
