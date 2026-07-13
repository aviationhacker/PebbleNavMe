package org.eclipse.jetty.io.nio;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.SocketException;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.channels.GatheringByteChannel;
import java.nio.channels.SelectableChannel;
import java.nio.channels.SocketChannel;
import org.eclipse.jetty.io.Buffer;
import org.eclipse.jetty.io.EndPoint;
import org.eclipse.jetty.util.StringUtil;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes.dex */
public class ChannelEndPoint implements EndPoint {
    private static final Logger a = Log.getLogger((Class<?>) ChannelEndPoint.class);
    protected final ByteChannel _channel;
    protected final ByteBuffer[] _gather2;
    protected final InetSocketAddress _local;
    protected volatile int _maxIdleTime;
    protected final InetSocketAddress _remote;
    protected final Socket _socket;
    private volatile boolean b;
    private volatile boolean c;

    public ChannelEndPoint(ByteChannel byteChannel) {
        this._gather2 = new ByteBuffer[2];
        this._channel = byteChannel;
        this._socket = byteChannel instanceof SocketChannel ? ((SocketChannel) byteChannel).socket() : null;
        if (this._socket != null) {
            this._local = (InetSocketAddress) this._socket.getLocalSocketAddress();
            this._remote = (InetSocketAddress) this._socket.getRemoteSocketAddress();
            this._maxIdleTime = this._socket.getSoTimeout();
        } else {
            this._remote = null;
            this._local = null;
        }
    }

    protected ChannelEndPoint(ByteChannel byteChannel, int i) throws SocketException {
        this._gather2 = new ByteBuffer[2];
        this._channel = byteChannel;
        this._maxIdleTime = i;
        this._socket = byteChannel instanceof SocketChannel ? ((SocketChannel) byteChannel).socket() : null;
        if (this._socket != null) {
            this._local = (InetSocketAddress) this._socket.getLocalSocketAddress();
            this._remote = (InetSocketAddress) this._socket.getRemoteSocketAddress();
            this._socket.setSoTimeout(this._maxIdleTime);
        } else {
            this._remote = null;
            this._local = null;
        }
    }

    @Override // org.eclipse.jetty.io.EndPoint
    public boolean isBlocking() {
        return !(this._channel instanceof SelectableChannel) || ((SelectableChannel) this._channel).isBlocking();
    }

    @Override // org.eclipse.jetty.io.EndPoint
    public boolean blockReadable(long j) {
        return true;
    }

    @Override // org.eclipse.jetty.io.EndPoint
    public boolean blockWritable(long j) {
        return true;
    }

    @Override // org.eclipse.jetty.io.EndPoint
    public boolean isOpen() {
        return this._channel.isOpen();
    }

    protected final void shutdownChannelInput() {
        a.debug("ishut {}", this);
        this.b = true;
        if (this._channel.isOpen()) {
            try {
                if (this._socket != null) {
                    try {
                        if (!this._socket.isInputShutdown()) {
                            this._socket.shutdownInput();
                        }
                        if (this.c) {
                            close();
                        }
                    } catch (SocketException e) {
                        a.debug(e.toString(), new Object[0]);
                        a.ignore(e);
                        if (this.c) {
                            close();
                        }
                    }
                }
            } catch (Throwable th) {
                if (this.c) {
                    close();
                }
                throw th;
            }
        }
    }

    @Override // org.eclipse.jetty.io.EndPoint
    public void shutdownInput() {
        shutdownChannelInput();
    }

    protected final void shutdownChannelOutput() {
        a.debug("oshut {}", this);
        this.c = true;
        if (this._channel.isOpen()) {
            try {
                if (this._socket != null) {
                    try {
                        if (!this._socket.isOutputShutdown()) {
                            this._socket.shutdownOutput();
                        }
                        if (this.b) {
                            close();
                        }
                    } catch (SocketException e) {
                        a.debug(e.toString(), new Object[0]);
                        a.ignore(e);
                        if (this.b) {
                            close();
                        }
                    }
                }
            } catch (Throwable th) {
                if (this.b) {
                    close();
                }
                throw th;
            }
        }
    }

    @Override // org.eclipse.jetty.io.EndPoint
    public void shutdownOutput() {
        shutdownChannelOutput();
    }

    @Override // org.eclipse.jetty.io.EndPoint
    public boolean isOutputShutdown() {
        return this.c || !this._channel.isOpen() || (this._socket != null && this._socket.isOutputShutdown());
    }

    @Override // org.eclipse.jetty.io.EndPoint
    public boolean isInputShutdown() {
        return this.b || !this._channel.isOpen() || (this._socket != null && this._socket.isInputShutdown());
    }

    @Override // org.eclipse.jetty.io.EndPoint
    public void close() {
        a.debug("close {}", this);
        this._channel.close();
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x002f, code lost:
    
        if (r0 >= 0) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0035, code lost:
    
        if (isOpen() == false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x003b, code lost:
    
        if (isInputShutdown() != false) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x003d, code lost:
    
        shutdownInput();
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0044, code lost:
    
        if (isOutputShutdown() == false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0046, code lost:
    
        r6._channel.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x005e, code lost:
    
        org.eclipse.jetty.io.nio.ChannelEndPoint.a.debug("Exception while filling", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x006b, code lost:
    
        if (r6._channel.isOpen() != false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x006d, code lost:
    
        r6._channel.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0072, code lost:
    
        if (r2 > 0) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0074, code lost:
    
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0075, code lost:
    
        r3 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0076, code lost:
    
        org.eclipse.jetty.io.nio.ChannelEndPoint.a.ignore(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x007c, code lost:
    
        r0 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0086, code lost:
    
        r2 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0087, code lost:
    
        r2 = r0;
        r0 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:?, code lost:
    
        return r0;
     */
    @Override // org.eclipse.jetty.io.EndPoint
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int fill(org.eclipse.jetty.io.Buffer r7) throws java.lang.Throwable {
        /*
            r6 = this;
            r1 = -1
            r2 = 0
            boolean r0 = r6.b
            if (r0 == 0) goto L7
        L6:
            return r1
        L7:
            org.eclipse.jetty.io.Buffer r0 = r7.buffer()
            boolean r3 = r0 instanceof org.eclipse.jetty.io.nio.NIOBuffer
            if (r3 == 0) goto L7e
            org.eclipse.jetty.io.nio.NIOBuffer r0 = (org.eclipse.jetty.io.nio.NIOBuffer) r0
            java.nio.ByteBuffer r3 = r0.getByteBuffer()
            monitor-enter(r3)     // Catch: java.io.IOException -> L5d
            int r0 = r7.putIndex()     // Catch: java.lang.Throwable -> L4d
            r3.position(r0)     // Catch: java.lang.Throwable -> L4d
            java.nio.channels.ByteChannel r0 = r6._channel     // Catch: java.lang.Throwable -> L4d
            int r0 = r0.read(r3)     // Catch: java.lang.Throwable -> L4d
            int r2 = r3.position()     // Catch: java.lang.Throwable -> L8b
            r7.setPutIndex(r2)     // Catch: java.lang.Throwable -> L8b
            r2 = 0
            r3.position(r2)     // Catch: java.lang.Throwable -> L8b
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L8b
            if (r0 >= 0) goto L4b
            boolean r2 = r6.isOpen()     // Catch: java.io.IOException -> L86
            if (r2 == 0) goto L4b
            boolean r2 = r6.isInputShutdown()     // Catch: java.io.IOException -> L86
            if (r2 != 0) goto L40
            r6.shutdownInput()     // Catch: java.io.IOException -> L86
        L40:
            boolean r2 = r6.isOutputShutdown()     // Catch: java.io.IOException -> L86
            if (r2 == 0) goto L4b
            java.nio.channels.ByteChannel r2 = r6._channel     // Catch: java.io.IOException -> L86
            r2.close()     // Catch: java.io.IOException -> L86
        L4b:
            r1 = r0
            goto L6
        L4d:
            r0 = move-exception
            int r4 = r3.position()     // Catch: java.lang.Throwable -> L5a
            r7.setPutIndex(r4)     // Catch: java.lang.Throwable -> L5a
            r4 = 0
            r3.position(r4)     // Catch: java.lang.Throwable -> L5a
            throw r0     // Catch: java.lang.Throwable -> L5a
        L5a:
            r0 = move-exception
        L5b:
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L5a
            throw r0     // Catch: java.io.IOException -> L5d
        L5d:
            r0 = move-exception
        L5e:
            org.eclipse.jetty.util.log.Logger r3 = org.eclipse.jetty.io.nio.ChannelEndPoint.a
            java.lang.String r4 = "Exception while filling"
            r3.debug(r4, r0)
            java.nio.channels.ByteChannel r3 = r6._channel     // Catch: java.lang.Exception -> L75
            boolean r3 = r3.isOpen()     // Catch: java.lang.Exception -> L75
            if (r3 == 0) goto L72
            java.nio.channels.ByteChannel r3 = r6._channel     // Catch: java.lang.Exception -> L75
            r3.close()     // Catch: java.lang.Exception -> L75
        L72:
            if (r2 <= 0) goto L7c
            throw r0
        L75:
            r3 = move-exception
            org.eclipse.jetty.util.log.Logger r4 = org.eclipse.jetty.io.nio.ChannelEndPoint.a
            r4.ignore(r3)
            goto L72
        L7c:
            r0 = r1
            goto L4b
        L7e:
            java.io.IOException r0 = new java.io.IOException
            java.lang.String r1 = "Not Implemented"
            r0.<init>(r1)
            throw r0
        L86:
            r2 = move-exception
            r5 = r2
            r2 = r0
            r0 = r5
            goto L5e
        L8b:
            r2 = move-exception
            r5 = r2
            r2 = r0
            r0 = r5
            goto L5b
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.io.nio.ChannelEndPoint.fill(org.eclipse.jetty.io.Buffer):int");
    }

    @Override // org.eclipse.jetty.io.EndPoint
    public int flush(Buffer buffer) throws IOException {
        int iWrite;
        Buffer buffer2 = buffer.buffer();
        if (buffer2 instanceof NIOBuffer) {
            ByteBuffer byteBufferAsReadOnlyBuffer = ((NIOBuffer) buffer2).getByteBuffer().asReadOnlyBuffer();
            byteBufferAsReadOnlyBuffer.position(buffer.getIndex());
            byteBufferAsReadOnlyBuffer.limit(buffer.putIndex());
            iWrite = this._channel.write(byteBufferAsReadOnlyBuffer);
            if (iWrite > 0) {
                buffer.skip(iWrite);
            }
        } else if (buffer2 instanceof RandomAccessFileBuffer) {
            iWrite = ((RandomAccessFileBuffer) buffer2).writeTo(this._channel, buffer.getIndex(), buffer.length());
            if (iWrite > 0) {
                buffer.skip(iWrite);
            }
        } else if (buffer.array() != null) {
            iWrite = this._channel.write(ByteBuffer.wrap(buffer.array(), buffer.getIndex(), buffer.length()));
            if (iWrite > 0) {
                buffer.skip(iWrite);
            }
        } else {
            throw new IOException("Not Implemented");
        }
        return iWrite;
    }

    @Override // org.eclipse.jetty.io.EndPoint
    public int flush(Buffer buffer, Buffer buffer2, Buffer buffer3) throws IOException {
        int iFlush;
        Buffer buffer4 = buffer == null ? null : buffer.buffer();
        Buffer buffer5 = buffer2 != null ? buffer2.buffer() : null;
        if ((this._channel instanceof GatheringByteChannel) && buffer != null && buffer.length() != 0 && (buffer4 instanceof NIOBuffer) && buffer2 != null && buffer2.length() != 0 && (buffer5 instanceof NIOBuffer)) {
            return gatheringFlush(buffer, ((NIOBuffer) buffer4).getByteBuffer(), buffer2, ((NIOBuffer) buffer5).getByteBuffer());
        }
        if (buffer == null || buffer.length() <= 0) {
            iFlush = 0;
        } else {
            iFlush = flush(buffer);
        }
        if ((buffer == null || buffer.length() == 0) && buffer2 != null && buffer2.length() > 0) {
            iFlush += flush(buffer2);
        }
        if (buffer != null && buffer.length() != 0) {
            return iFlush;
        }
        if ((buffer2 == null || buffer2.length() == 0) && buffer3 != null && buffer3.length() > 0) {
            return iFlush + flush(buffer3);
        }
        return iFlush;
    }

    protected int gatheringFlush(Buffer buffer, ByteBuffer byteBuffer, Buffer buffer2, ByteBuffer byteBuffer2) {
        int iWrite;
        synchronized (this) {
            ByteBuffer byteBufferAsReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
            byteBufferAsReadOnlyBuffer.position(buffer.getIndex());
            byteBufferAsReadOnlyBuffer.limit(buffer.putIndex());
            ByteBuffer byteBufferAsReadOnlyBuffer2 = byteBuffer2.asReadOnlyBuffer();
            byteBufferAsReadOnlyBuffer2.position(buffer2.getIndex());
            byteBufferAsReadOnlyBuffer2.limit(buffer2.putIndex());
            this._gather2[0] = byteBufferAsReadOnlyBuffer;
            this._gather2[1] = byteBufferAsReadOnlyBuffer2;
            iWrite = (int) ((GatheringByteChannel) this._channel).write(this._gather2);
            int length = buffer.length();
            if (iWrite > length) {
                buffer.clear();
                buffer2.skip(iWrite - length);
            } else if (iWrite > 0) {
                buffer.skip(iWrite);
            }
        }
        return iWrite;
    }

    public ByteChannel getChannel() {
        return this._channel;
    }

    @Override // org.eclipse.jetty.io.EndPoint
    public String getLocalAddr() {
        if (this._socket == null) {
            return null;
        }
        if (this._local == null || this._local.getAddress() == null || this._local.getAddress().isAnyLocalAddress()) {
            return StringUtil.ALL_INTERFACES;
        }
        return this._local.getAddress().getHostAddress();
    }

    @Override // org.eclipse.jetty.io.EndPoint
    public String getLocalHost() {
        if (this._socket == null) {
            return null;
        }
        if (this._local == null || this._local.getAddress() == null || this._local.getAddress().isAnyLocalAddress()) {
            return StringUtil.ALL_INTERFACES;
        }
        return this._local.getAddress().getCanonicalHostName();
    }

    @Override // org.eclipse.jetty.io.EndPoint
    public int getLocalPort() {
        if (this._socket == null) {
            return 0;
        }
        if (this._local == null) {
            return -1;
        }
        return this._local.getPort();
    }

    @Override // org.eclipse.jetty.io.EndPoint
    public String getRemoteAddr() {
        if (this._socket == null || this._remote == null) {
            return null;
        }
        return this._remote.getAddress().getHostAddress();
    }

    @Override // org.eclipse.jetty.io.EndPoint
    public String getRemoteHost() {
        if (this._socket == null || this._remote == null) {
            return null;
        }
        return this._remote.getAddress().getCanonicalHostName();
    }

    @Override // org.eclipse.jetty.io.EndPoint
    public int getRemotePort() {
        if (this._socket == null) {
            return 0;
        }
        if (this._remote == null) {
            return -1;
        }
        return this._remote.getPort();
    }

    @Override // org.eclipse.jetty.io.EndPoint
    public Object getTransport() {
        return this._channel;
    }

    @Override // org.eclipse.jetty.io.EndPoint
    public void flush() {
    }

    @Override // org.eclipse.jetty.io.EndPoint
    public int getMaxIdleTime() {
        return this._maxIdleTime;
    }

    @Override // org.eclipse.jetty.io.EndPoint
    public void setMaxIdleTime(int i) throws SocketException {
        if (this._socket != null && i != this._maxIdleTime) {
            this._socket.setSoTimeout(i > 0 ? i : 0);
        }
        this._maxIdleTime = i;
    }
}
