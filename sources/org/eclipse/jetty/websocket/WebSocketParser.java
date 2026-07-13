package org.eclipse.jetty.websocket;

import org.eclipse.jetty.io.Buffer;

/* JADX INFO: loaded from: classes.dex */
public interface WebSocketParser {

    public interface FrameHandler {
        void close(int i, String str);

        void onFrame(byte b, byte b2, Buffer buffer);
    }

    void fill(Buffer buffer);

    Buffer getBuffer();

    boolean isBufferEmpty();

    int parseNext();
}
