package org.eclipse.jetty.websocket;

/* JADX INFO: loaded from: classes.dex */
public interface WebSocketGenerator {
    void addFrame(byte b, byte b2, byte[] bArr, int i, int i2);

    int flush();

    boolean isBufferEmpty();
}
