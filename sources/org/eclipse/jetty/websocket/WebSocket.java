package org.eclipse.jetty.websocket;

/* JADX INFO: loaded from: classes.dex */
public interface WebSocket {

    public interface Connection {
        void close();

        void close(int i, String str);

        void disconnect();

        int getMaxBinaryMessageSize();

        int getMaxIdleTime();

        int getMaxTextMessageSize();

        String getProtocol();

        boolean isOpen();

        void sendMessage(String str);

        void sendMessage(byte[] bArr, int i, int i2);

        void setMaxBinaryMessageSize(int i);

        void setMaxIdleTime(int i);

        void setMaxTextMessageSize(int i);
    }

    public interface FrameConnection extends Connection {
        byte binaryOpcode();

        byte continuationOpcode();

        byte finMask();

        boolean isAllowFrameFragmentation();

        boolean isBinary(byte b);

        boolean isClose(byte b);

        boolean isContinuation(byte b);

        boolean isControl(byte b);

        boolean isMessageComplete(byte b);

        boolean isPing(byte b);

        boolean isPong(byte b);

        boolean isText(byte b);

        void sendControl(byte b, byte[] bArr, int i, int i2);

        void sendFrame(byte b, byte b2, byte[] bArr, int i, int i2);

        void setAllowFrameFragmentation(boolean z);

        byte textOpcode();
    }

    public interface OnBinaryMessage extends WebSocket {
        void onMessage(byte[] bArr, int i, int i2);
    }

    public interface OnControl extends WebSocket {
        boolean onControl(byte b, byte[] bArr, int i, int i2);
    }

    public interface OnFrame extends WebSocket {
        boolean onFrame(byte b, byte b2, byte[] bArr, int i, int i2);

        void onHandshake(FrameConnection frameConnection);
    }

    public interface OnTextMessage extends WebSocket {
        void onMessage(String str);
    }

    void onClose(int i, String str);

    void onOpen(Connection connection);
}
