package org.eclipse.jetty.websocket;

import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.nio.channels.SelectionKey;
import java.nio.channels.SocketChannel;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Random;
import java.util.concurrent.ConcurrentLinkedQueue;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.SSLException;
import org.eclipse.jetty.http.HttpFields;
import org.eclipse.jetty.http.HttpParser;
import org.eclipse.jetty.io.AbstractConnection;
import org.eclipse.jetty.io.AsyncEndPoint;
import org.eclipse.jetty.io.Buffer;
import org.eclipse.jetty.io.ByteArrayBuffer;
import org.eclipse.jetty.io.ConnectedEndPoint;
import org.eclipse.jetty.io.Connection;
import org.eclipse.jetty.io.EndPoint;
import org.eclipse.jetty.io.SimpleBuffers;
import org.eclipse.jetty.io.nio.AsyncConnection;
import org.eclipse.jetty.io.nio.SelectChannelEndPoint;
import org.eclipse.jetty.io.nio.SelectorManager;
import org.eclipse.jetty.io.nio.SslConnection;
import org.eclipse.jetty.util.B64Code;
import org.eclipse.jetty.util.QuotedStringTokenizer;
import org.eclipse.jetty.util.URIUtil;
import org.eclipse.jetty.util.component.AggregateLifeCycle;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;
import org.eclipse.jetty.util.ssl.SslContextFactory;
import org.eclipse.jetty.util.thread.QueuedThreadPool;
import org.eclipse.jetty.util.thread.ThreadPool;
import org.eclipse.jetty.websocket.WebSocketClient;

/* JADX INFO: loaded from: classes.dex */
public class WebSocketClientFactory extends AggregateLifeCycle {
    private static final Logger a = Log.getLogger(WebSocketClientFactory.class.getName());
    private static final ByteArrayBuffer b = new ByteArrayBuffer.CaseInsensitive("Sec-WebSocket-Accept");
    private final Queue<WebSocketConnection> c;
    private final SslContextFactory d;
    private final ThreadPool e;
    private final c f;
    private MaskGen g;
    private WebSocketBuffers h;

    public WebSocketClientFactory() {
        this(null);
    }

    public WebSocketClientFactory(ThreadPool threadPool) {
        this(threadPool, new RandomMaskGen());
    }

    public WebSocketClientFactory(ThreadPool threadPool, MaskGen maskGen) {
        this(threadPool, maskGen, 8192);
    }

    public WebSocketClientFactory(ThreadPool threadPool, MaskGen maskGen, int i) {
        this.c = new ConcurrentLinkedQueue();
        this.d = new SslContextFactory();
        this.e = threadPool == null ? new QueuedThreadPool() : threadPool;
        addBean(this.e);
        this.h = new WebSocketBuffers(i);
        addBean(this.h);
        this.g = maskGen;
        addBean(this.g);
        this.f = new c();
        addBean(this.f);
        addBean(this.d);
    }

    public SslContextFactory getSslContextFactory() {
        return this.d;
    }

    public SelectorManager getSelectorManager() {
        return this.f;
    }

    public ThreadPool getThreadPool() {
        return this.e;
    }

    public MaskGen getMaskGen() {
        return this.g;
    }

    public void setMaskGen(MaskGen maskGen) {
        if (isRunning()) {
            throw new IllegalStateException(getState());
        }
        removeBean(this.g);
        this.g = maskGen;
        addBean(maskGen);
    }

    public void setBufferSize(int i) {
        if (isRunning()) {
            throw new IllegalStateException(getState());
        }
        removeBean(this.h);
        this.h = new WebSocketBuffers(i);
        addBean(this.h);
    }

    public int getBufferSize() {
        return this.h.getBufferSize();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.eclipse.jetty.util.component.AggregateLifeCycle, org.eclipse.jetty.util.component.AbstractLifeCycle
    public void doStop() {
        closeConnections();
        super.doStop();
    }

    public WebSocketClient newWebSocketClient() {
        return new WebSocketClient(this);
    }

    protected SSLEngine newSslEngine(SocketChannel socketChannel) throws SSLException {
        SSLEngine sSLEngineNewSslEngine;
        if (socketChannel != null) {
            sSLEngineNewSslEngine = this.d.newSslEngine(socketChannel.socket().getInetAddress().getHostAddress(), socketChannel.socket().getPort());
        } else {
            sSLEngineNewSslEngine = this.d.newSslEngine();
        }
        sSLEngineNewSslEngine.setUseClientMode(true);
        sSLEngineNewSslEngine.beginHandshake();
        return sSLEngineNewSslEngine;
    }

    protected boolean addConnection(WebSocketConnection webSocketConnection) {
        return isRunning() && this.c.add(webSocketConnection);
    }

    protected boolean removeConnection(WebSocketConnection webSocketConnection) {
        return this.c.remove(webSocketConnection);
    }

    protected void closeConnections() {
        Iterator<WebSocketConnection> it = this.c.iterator();
        while (it.hasNext()) {
            it.next().shutdown();
        }
    }

    class c extends SelectorManager {
        c() {
        }

        @Override // org.eclipse.jetty.io.nio.SelectorManager
        public boolean dispatch(Runnable runnable) {
            return WebSocketClientFactory.this.e.dispatch(runnable);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.eclipse.jetty.io.nio.SelectorManager
        public SelectChannelEndPoint newEndPoint(SocketChannel socketChannel, SelectorManager.SelectSet selectSet, SelectionKey selectionKey) {
            AsyncEndPoint sslEndPoint;
            WebSocketClient.a aVar = (WebSocketClient.a) selectionKey.attachment();
            int iE = aVar.e();
            if (iE < 0) {
                iE = (int) getMaxIdleTime();
            }
            SelectChannelEndPoint selectChannelEndPoint = new SelectChannelEndPoint(socketChannel, selectSet, selectionKey, iE);
            if ("wss".equals(aVar.d().getScheme())) {
                SslConnection sslConnection = new SslConnection(WebSocketClientFactory.this.newSslEngine(socketChannel), selectChannelEndPoint);
                selectChannelEndPoint.setConnection(sslConnection);
                sslEndPoint = sslConnection.getSslEndPoint();
            } else {
                sslEndPoint = selectChannelEndPoint;
            }
            sslEndPoint.setConnection(selectSet.getManager().newConnection(socketChannel, sslEndPoint, aVar));
            return selectChannelEndPoint;
        }

        @Override // org.eclipse.jetty.io.nio.SelectorManager
        public AsyncConnection newConnection(SocketChannel socketChannel, AsyncEndPoint asyncEndPoint, Object obj) {
            return WebSocketClientFactory.this.new a(asyncEndPoint, (WebSocketClient.a) obj);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.eclipse.jetty.io.nio.SelectorManager
        public void endPointOpened(SelectChannelEndPoint selectChannelEndPoint) {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.eclipse.jetty.io.nio.SelectorManager
        public void endPointUpgraded(ConnectedEndPoint connectedEndPoint, Connection connection) {
            LOG.debug("upgrade {} -> {}", connection, connectedEndPoint.getConnection());
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.eclipse.jetty.io.nio.SelectorManager
        public void endPointClosed(SelectChannelEndPoint selectChannelEndPoint) {
            selectChannelEndPoint.getConnection().onClose();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.eclipse.jetty.io.nio.SelectorManager
        public void connectionFailed(SocketChannel socketChannel, Throwable th, Object obj) {
            if (obj instanceof WebSocketClient.a) {
                WebSocketClientFactory.a.debug(th);
                ((WebSocketClient.a) obj).a(th);
            } else {
                super.connectionFailed(socketChannel, th, obj);
            }
        }
    }

    class a extends AbstractConnection implements AsyncConnection {
        private final AsyncEndPoint b;
        private final WebSocketClient.a c;
        private final String d;
        private final HttpParser e;
        private String f;
        private String g;
        private ByteArrayBuffer h;

        public a(AsyncEndPoint asyncEndPoint, WebSocketClient.a aVar) {
            super(asyncEndPoint, System.currentTimeMillis());
            this.b = asyncEndPoint;
            this.c = aVar;
            byte[] bArr = new byte[16];
            new Random().nextBytes(bArr);
            this.d = new String(B64Code.encode(bArr));
            this.e = new HttpParser(new SimpleBuffers(WebSocketClientFactory.this.h.getBuffer(), null), this.b, new HttpParser.EventHandler() { // from class: org.eclipse.jetty.websocket.WebSocketClientFactory.a.1
                @Override // org.eclipse.jetty.http.HttpParser.EventHandler
                public void startResponse(Buffer buffer, int i, Buffer buffer2) {
                    if (i != 101) {
                        a.this.g = "Bad response status " + i + " " + buffer2;
                        a.this.b.close();
                    }
                }

                @Override // org.eclipse.jetty.http.HttpParser.EventHandler
                public void parsedHeader(Buffer buffer, Buffer buffer2) {
                    if (WebSocketClientFactory.b.equals(buffer)) {
                        a.this.f = buffer2.toString();
                    }
                }

                @Override // org.eclipse.jetty.http.HttpParser.EventHandler
                public void startRequest(Buffer buffer, Buffer buffer2, Buffer buffer3) {
                    if (a.this.g == null) {
                        a.this.g = "Bad response: " + buffer + " " + buffer2 + " " + buffer3;
                    }
                    a.this.b.close();
                }

                @Override // org.eclipse.jetty.http.HttpParser.EventHandler
                public void content(Buffer buffer) {
                    if (a.this.g == null) {
                        a.this.g = "Bad response. " + buffer.length() + "B of content?";
                    }
                    a.this.b.close();
                }
            });
        }

        private boolean a() {
            if (this.h == null) {
                String path = this.c.d().getPath();
                if (path == null || path.length() == 0) {
                    path = URIUtil.SLASH;
                }
                if (this.c.d().getRawQuery() != null) {
                    path = path + "?" + this.c.d().getRawQuery();
                }
                String strF = this.c.f();
                StringBuilder sb = new StringBuilder(512);
                sb.append("GET ").append(path).append(" HTTP/1.1\r\n").append("Host: ").append(this.c.d().getHost()).append(":").append(this.c.d().getPort()).append("\r\n").append("Upgrade: websocket\r\n").append("Connection: Upgrade\r\n").append("Sec-WebSocket-Key: ").append(this.d).append("\r\n");
                if (strF != null) {
                    sb.append("Origin: ").append(strF).append("\r\n");
                }
                sb.append("Sec-WebSocket-Version: ").append(13).append("\r\n");
                if (this.c.b() != null) {
                    sb.append("Sec-WebSocket-Protocol: ").append(this.c.b()).append("\r\n");
                }
                Map<String, String> mapA = this.c.a();
                if (mapA != null && mapA.size() > 0) {
                    for (String str : mapA.keySet()) {
                        sb.append("Cookie: ").append(QuotedStringTokenizer.quoteIfNeeded(str, HttpFields.__COOKIE_DELIM)).append("=").append(QuotedStringTokenizer.quoteIfNeeded(mapA.get(str), HttpFields.__COOKIE_DELIM)).append("\r\n");
                    }
                }
                sb.append("\r\n");
                this.h = new ByteArrayBuffer(sb.toString(), false);
            }
            try {
                this.h.length();
                if (this.b.flush(this.h) < 0) {
                    throw new IOException("incomplete handshake");
                }
            } catch (IOException e) {
                this.c.a(e);
            }
            return this.h.length() == 0;
        }

        @Override // org.eclipse.jetty.io.Connection
        public Connection handle() {
            while (this.b.isOpen() && !this.e.isComplete()) {
                if ((this.h != null && this.h.length() <= 0) || a()) {
                    if (!this.e.parseAvailable()) {
                        if (this.b.isInputShutdown()) {
                            this.c.a(new IOException("Incomplete handshake response"));
                            return this;
                        }
                        return this;
                    }
                } else {
                    return this;
                }
            }
            if (this.g == null) {
                if (this.f == null) {
                    this.g = "No Sec-WebSocket-Accept";
                } else if (!WebSocketConnectionRFC6455.hashKey(this.d).equals(this.f)) {
                    this.g = "Bad Sec-WebSocket-Accept";
                } else {
                    WebSocketConnection webSocketConnectionB = b();
                    Buffer headerBuffer = this.e.getHeaderBuffer();
                    if (headerBuffer.hasContent()) {
                        webSocketConnectionB.fillBuffersFrom(headerBuffer);
                    }
                    WebSocketClientFactory.this.h.returnBuffer(headerBuffer);
                    this.c.a(webSocketConnectionB);
                    return webSocketConnectionB;
                }
            }
            this.b.close();
            return this;
        }

        private WebSocketConnection b() {
            WebSocketClientFactory.a.debug("newWebSocketConnection()", new Object[0]);
            return new b(this.c.c.getFactory(), this.c.c(), this.b, WebSocketClientFactory.this.h, System.currentTimeMillis(), this.c.e(), this.c.b(), null, 13, this.c.g());
        }

        @Override // org.eclipse.jetty.io.nio.AsyncConnection
        public void onInputShutdown() {
            this.b.close();
        }

        @Override // org.eclipse.jetty.io.Connection
        public boolean isIdle() {
            return false;
        }

        @Override // org.eclipse.jetty.io.Connection
        public boolean isSuspended() {
            return false;
        }

        @Override // org.eclipse.jetty.io.Connection
        public void onClose() {
            if (this.g != null) {
                this.c.a(new ProtocolException(this.g));
            } else {
                this.c.a(new EOFException());
            }
        }
    }

    static class b extends WebSocketConnectionRFC6455 {
        private final WebSocketClientFactory a;

        public b(WebSocketClientFactory webSocketClientFactory, WebSocket webSocket, EndPoint endPoint, WebSocketBuffers webSocketBuffers, long j, int i, String str, List<Extension> list, int i2, MaskGen maskGen) {
            super(webSocket, endPoint, webSocketBuffers, j, i, str, list, i2, maskGen);
            this.a = webSocketClientFactory;
        }

        @Override // org.eclipse.jetty.websocket.WebSocketConnectionRFC6455, org.eclipse.jetty.io.Connection
        public void onClose() {
            super.onClose();
            this.a.removeConnection(this);
        }
    }
}
