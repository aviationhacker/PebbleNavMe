package org.eclipse.jetty.websocket;

import java.util.List;
import org.eclipse.jetty.io.Buffer;
import org.eclipse.jetty.io.nio.AsyncConnection;
import org.eclipse.jetty.websocket.WebSocket;

/* JADX INFO: loaded from: classes.dex */
public interface WebSocketConnection extends AsyncConnection {
    void fillBuffersFrom(Buffer buffer);

    WebSocket.Connection getConnection();

    List<Extension> getExtensions();

    void shutdown();
}
