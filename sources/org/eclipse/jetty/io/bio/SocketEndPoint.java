package org.eclipse.jetty.io.bio;

import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.SocketException;
import javax.net.ssl.SSLSocket;
import org.eclipse.jetty.util.StringUtil;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes.dex */
public class SocketEndPoint extends StreamEndPoint {
    private static final Logger i = Log.getLogger((Class<?>) SocketEndPoint.class);
    final Socket a;
    final InetSocketAddress b;
    final InetSocketAddress c;

    public SocketEndPoint(Socket socket) {
        super(socket.getInputStream(), socket.getOutputStream());
        this.a = socket;
        this.b = (InetSocketAddress) this.a.getLocalSocketAddress();
        this.c = (InetSocketAddress) this.a.getRemoteSocketAddress();
        super.setMaxIdleTime(this.a.getSoTimeout());
    }

    protected SocketEndPoint(Socket socket, int i2) throws SocketException {
        super(socket.getInputStream(), socket.getOutputStream());
        this.a = socket;
        this.b = (InetSocketAddress) this.a.getLocalSocketAddress();
        this.c = (InetSocketAddress) this.a.getRemoteSocketAddress();
        this.a.setSoTimeout(i2 > 0 ? i2 : 0);
        super.setMaxIdleTime(i2);
    }

    @Override // org.eclipse.jetty.io.bio.StreamEndPoint, org.eclipse.jetty.io.EndPoint
    public boolean isOpen() {
        return (!super.isOpen() || this.a == null || this.a.isClosed()) ? false : true;
    }

    @Override // org.eclipse.jetty.io.bio.StreamEndPoint, org.eclipse.jetty.io.EndPoint
    public boolean isInputShutdown() {
        if (this.a instanceof SSLSocket) {
            return super.isInputShutdown();
        }
        return this.a.isClosed() || this.a.isInputShutdown();
    }

    @Override // org.eclipse.jetty.io.bio.StreamEndPoint, org.eclipse.jetty.io.EndPoint
    public boolean isOutputShutdown() {
        if (this.a instanceof SSLSocket) {
            return super.isOutputShutdown();
        }
        return this.a.isClosed() || this.a.isOutputShutdown();
    }

    protected final void shutdownSocketOutput() throws IOException {
        if (!this.a.isClosed()) {
            if (!this.a.isOutputShutdown()) {
                this.a.shutdownOutput();
            }
            if (this.a.isInputShutdown()) {
                this.a.close();
            }
        }
    }

    @Override // org.eclipse.jetty.io.bio.StreamEndPoint, org.eclipse.jetty.io.EndPoint
    public void shutdownOutput() throws IOException {
        if (this.a instanceof SSLSocket) {
            super.shutdownOutput();
        } else {
            shutdownSocketOutput();
        }
    }

    public void shutdownSocketInput() throws IOException {
        if (!this.a.isClosed()) {
            if (!this.a.isInputShutdown()) {
                this.a.shutdownInput();
            }
            if (this.a.isOutputShutdown()) {
                this.a.close();
            }
        }
    }

    @Override // org.eclipse.jetty.io.bio.StreamEndPoint, org.eclipse.jetty.io.EndPoint
    public void shutdownInput() throws IOException {
        if (this.a instanceof SSLSocket) {
            super.shutdownInput();
        } else {
            shutdownSocketInput();
        }
    }

    @Override // org.eclipse.jetty.io.bio.StreamEndPoint, org.eclipse.jetty.io.EndPoint
    public void close() throws IOException {
        this.a.close();
        this.d = null;
        this.e = null;
    }

    @Override // org.eclipse.jetty.io.bio.StreamEndPoint, org.eclipse.jetty.io.EndPoint
    public String getLocalAddr() {
        return (this.b == null || this.b.getAddress() == null || this.b.getAddress().isAnyLocalAddress()) ? StringUtil.ALL_INTERFACES : this.b.getAddress().getHostAddress();
    }

    @Override // org.eclipse.jetty.io.bio.StreamEndPoint, org.eclipse.jetty.io.EndPoint
    public String getLocalHost() {
        return (this.b == null || this.b.getAddress() == null || this.b.getAddress().isAnyLocalAddress()) ? StringUtil.ALL_INTERFACES : this.b.getAddress().getCanonicalHostName();
    }

    @Override // org.eclipse.jetty.io.bio.StreamEndPoint, org.eclipse.jetty.io.EndPoint
    public int getLocalPort() {
        if (this.b == null) {
            return -1;
        }
        return this.b.getPort();
    }

    @Override // org.eclipse.jetty.io.bio.StreamEndPoint, org.eclipse.jetty.io.EndPoint
    public String getRemoteAddr() {
        InetAddress address;
        if (this.c == null || (address = this.c.getAddress()) == null) {
            return null;
        }
        return address.getHostAddress();
    }

    @Override // org.eclipse.jetty.io.bio.StreamEndPoint, org.eclipse.jetty.io.EndPoint
    public String getRemoteHost() {
        if (this.c == null) {
            return null;
        }
        return this.c.getAddress().getCanonicalHostName();
    }

    @Override // org.eclipse.jetty.io.bio.StreamEndPoint, org.eclipse.jetty.io.EndPoint
    public int getRemotePort() {
        if (this.c == null) {
            return -1;
        }
        return this.c.getPort();
    }

    @Override // org.eclipse.jetty.io.bio.StreamEndPoint, org.eclipse.jetty.io.EndPoint
    public Object getTransport() {
        return this.a;
    }

    @Override // org.eclipse.jetty.io.bio.StreamEndPoint, org.eclipse.jetty.io.EndPoint
    public void setMaxIdleTime(int i2) throws SocketException {
        if (i2 != getMaxIdleTime()) {
            this.a.setSoTimeout(i2 > 0 ? i2 : 0);
        }
        super.setMaxIdleTime(i2);
    }

    @Override // org.eclipse.jetty.io.bio.StreamEndPoint
    protected void idleExpired() throws IOException {
        try {
            if (!isInputShutdown()) {
                shutdownInput();
            }
        } catch (IOException e) {
            i.ignore(e);
            this.a.close();
        }
    }

    public String toString() {
        return this.b + " <--> " + this.c;
    }
}
