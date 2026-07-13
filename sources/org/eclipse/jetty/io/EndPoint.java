package org.eclipse.jetty.io;

/* JADX INFO: loaded from: classes.dex */
public interface EndPoint {
    boolean blockReadable(long j);

    boolean blockWritable(long j);

    void close();

    int fill(Buffer buffer);

    int flush(Buffer buffer);

    int flush(Buffer buffer, Buffer buffer2, Buffer buffer3);

    void flush();

    String getLocalAddr();

    String getLocalHost();

    int getLocalPort();

    int getMaxIdleTime();

    String getRemoteAddr();

    String getRemoteHost();

    int getRemotePort();

    Object getTransport();

    boolean isBlocking();

    boolean isInputShutdown();

    boolean isOpen();

    boolean isOutputShutdown();

    void setMaxIdleTime(int i);

    void shutdownInput();

    void shutdownOutput();
}
