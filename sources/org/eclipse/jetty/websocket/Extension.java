package org.eclipse.jetty.websocket;

import java.util.Map;
import org.eclipse.jetty.websocket.WebSocket;
import org.eclipse.jetty.websocket.WebSocketParser;

/* JADX INFO: loaded from: classes.dex */
public interface Extension extends WebSocketGenerator, WebSocketParser.FrameHandler {
    void bind(WebSocket.FrameConnection frameConnection, WebSocketParser.FrameHandler frameHandler, WebSocketGenerator webSocketGenerator);

    String getName();

    String getParameterizedName();

    boolean init(Map<String, String> map);
}
