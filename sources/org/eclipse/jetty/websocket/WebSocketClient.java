package org.eclipse.jetty.websocket;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.ProtocolException;
import java.net.SocketAddress;
import java.net.URI;
import java.nio.channels.ByteChannel;
import java.nio.channels.SocketChannel;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;
import org.eclipse.jetty.websocket.WebSocket;

/* JADX INFO: loaded from: classes.dex */
public class WebSocketClient {
    private static final Logger a = Log.getLogger(WebSocketClient.class.getName());
    private final WebSocketClientFactory b;
    private final Map<String, String> c;
    private final List<String> d;
    private String e;
    private String f;
    private int g;
    private int h;
    private int i;
    private MaskGen j;
    private SocketAddress k;

    @Deprecated
    public WebSocketClient() {
        this.c = new ConcurrentHashMap();
        this.d = new CopyOnWriteArrayList();
        this.g = -1;
        this.h = 16384;
        this.i = -1;
        this.b = new WebSocketClientFactory();
        this.b.start();
        this.j = this.b.getMaskGen();
    }

    public WebSocketClient(WebSocketClientFactory webSocketClientFactory) {
        this.c = new ConcurrentHashMap();
        this.d = new CopyOnWriteArrayList();
        this.g = -1;
        this.h = 16384;
        this.i = -1;
        this.b = webSocketClientFactory;
        this.j = this.b.getMaskGen();
    }

    public WebSocketClientFactory getFactory() {
        return this.b;
    }

    public SocketAddress getBindAddress() {
        return this.k;
    }

    public void setBindAddress(SocketAddress socketAddress) {
        this.k = socketAddress;
    }

    public int getMaxIdleTime() {
        return this.g;
    }

    public void setMaxIdleTime(int i) {
        this.g = i;
    }

    public String getProtocol() {
        return this.f;
    }

    public void setProtocol(String str) {
        this.f = str;
    }

    public String getOrigin() {
        return this.e;
    }

    public void setOrigin(String str) {
        this.e = str;
    }

    public Map<String, String> getCookies() {
        return this.c;
    }

    public List<String> getExtensions() {
        return this.d;
    }

    public MaskGen getMaskGen() {
        return this.j;
    }

    public void setMaskGen(MaskGen maskGen) {
        this.j = maskGen;
    }

    public int getMaxTextMessageSize() {
        return this.h;
    }

    public void setMaxTextMessageSize(int i) {
        this.h = i;
    }

    public int getMaxBinaryMessageSize() {
        return this.i;
    }

    public void setMaxBinaryMessageSize(int i) {
        this.i = i;
    }

    public WebSocket.Connection open(URI uri, WebSocket webSocket, long j, TimeUnit timeUnit) throws IOException {
        try {
            return open(uri, webSocket).get(j, timeUnit);
        } catch (ExecutionException e) {
            Throwable cause = e.getCause();
            if (cause instanceof IOException) {
                throw ((IOException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            throw new RuntimeException(cause);
        }
    }

    public Future<WebSocket.Connection> open(URI uri, WebSocket webSocket) throws IOException {
        if (!this.b.isStarted()) {
            throw new IllegalStateException("Factory !started");
        }
        InetSocketAddress socketAddress = toSocketAddress(uri);
        SocketChannel socketChannelOpen = SocketChannel.open();
        if (this.k != null) {
            socketChannelOpen.socket().bind(this.k);
        }
        socketChannelOpen.socket().setTcpNoDelay(true);
        a aVar = new a(webSocket, uri, this, socketChannelOpen);
        socketChannelOpen.configureBlocking(false);
        socketChannelOpen.connect(socketAddress);
        this.b.getSelectorManager().register(socketChannelOpen, aVar);
        return aVar;
    }

    public static InetSocketAddress toSocketAddress(URI uri) {
        String scheme = uri.getScheme();
        if (!"ws".equalsIgnoreCase(scheme) && !"wss".equalsIgnoreCase(scheme)) {
            throw new IllegalArgumentException("Bad WebSocket scheme: " + scheme);
        }
        int port = uri.getPort();
        if (port == 0) {
            throw new IllegalArgumentException("Bad WebSocket port: " + port);
        }
        if (port < 0) {
            port = "ws".equals(scheme) ? 80 : 443;
        }
        return new InetSocketAddress(uri.getHost(), port);
    }

    static class a implements Future<WebSocket.Connection> {
        final WebSocket a;
        final URI b;
        final WebSocketClient c;
        final CountDownLatch d;
        ByteChannel e;
        WebSocketConnection f;
        Throwable g;

        private a(WebSocket webSocket, URI uri, WebSocketClient webSocketClient, ByteChannel byteChannel) {
            this.d = new CountDownLatch(1);
            this.a = webSocket;
            this.b = uri;
            this.c = webSocketClient;
            this.e = byteChannel;
        }

        public void a(WebSocketConnection webSocketConnection) {
            WebSocketConnection webSocketConnection2;
            try {
                this.c.getFactory().addConnection(webSocketConnection);
                webSocketConnection.getConnection().setMaxTextMessageSize(this.c.getMaxTextMessageSize());
                webSocketConnection.getConnection().setMaxBinaryMessageSize(this.c.getMaxBinaryMessageSize());
                synchronized (this) {
                    if (this.e != null) {
                        this.f = webSocketConnection;
                    }
                    webSocketConnection2 = this.f;
                }
                if (webSocketConnection2 != null) {
                    if (this.a instanceof WebSocket.OnFrame) {
                        ((WebSocket.OnFrame) this.a).onHandshake((WebSocket.FrameConnection) webSocketConnection2.getConnection());
                    }
                    this.a.onOpen(webSocketConnection2.getConnection());
                }
            } finally {
                this.d.countDown();
            }
        }

        public void a(Throwable th) {
            ByteChannel byteChannel = null;
            try {
                synchronized (this) {
                    if (this.e != null) {
                        byteChannel = this.e;
                        this.e = null;
                        this.g = th;
                    }
                }
                if (byteChannel != null) {
                    if (th instanceof ProtocolException) {
                        a(byteChannel, 1002, th.getMessage());
                    } else {
                        a(byteChannel, 1006, th.getMessage());
                    }
                }
            } finally {
                this.d.countDown();
            }
        }

        public Map<String, String> a() {
            return this.c.getCookies();
        }

        public String b() {
            return this.c.getProtocol();
        }

        public WebSocket c() {
            return this.a;
        }

        public URI d() {
            return this.b;
        }

        public int e() {
            return this.c.getMaxIdleTime();
        }

        public String f() {
            return this.c.getOrigin();
        }

        public MaskGen g() {
            return this.c.getMaskGen();
        }

        public String toString() {
            return "[" + this.b + "," + this.a + "]@" + hashCode();
        }

        @Override // java.util.concurrent.Future
        public boolean cancel(boolean z) {
            CountDownLatch countDownLatch;
            ByteChannel byteChannel = null;
            try {
                synchronized (this) {
                    if (this.f == null && this.g == null && this.e != null) {
                        byteChannel = this.e;
                        this.e = null;
                    }
                }
                if (byteChannel != null) {
                    a(byteChannel, 1006, "cancelled");
                    return true;
                }
                return false;
            } finally {
                this.d.countDown();
            }
        }

        @Override // java.util.concurrent.Future
        public boolean isCancelled() {
            boolean z;
            synchronized (this) {
                z = this.e == null && this.f == null;
            }
            return z;
        }

        @Override // java.util.concurrent.Future
        public boolean isDone() {
            boolean z;
            synchronized (this) {
                z = this.f != null && this.g == null;
            }
            return z;
        }

        @Override // java.util.concurrent.Future
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public WebSocket.Connection get() {
            try {
                return get(Long.MAX_VALUE, TimeUnit.SECONDS);
            } catch (TimeoutException e) {
                throw new IllegalStateException("The universe has ended", e);
            }
        }

        @Override // java.util.concurrent.Future
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public WebSocket.Connection get(long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
            Throwable th;
            ByteChannel byteChannel;
            WebSocket.Connection connection = null;
            this.d.await(j, timeUnit);
            synchronized (this) {
                th = this.g;
                if (this.f == null) {
                    th = this.g;
                    byteChannel = this.e;
                    this.e = null;
                } else {
                    byteChannel = null;
                    connection = this.f.getConnection();
                }
            }
            if (byteChannel != null) {
                a(byteChannel, 1006, "timeout");
            }
            if (th != null) {
                throw new ExecutionException(th);
            }
            if (connection != null) {
                return connection;
            }
            throw new TimeoutException();
        }

        private void a(ByteChannel byteChannel, int i, String str) {
            try {
                this.a.onClose(i, str);
            } catch (Exception e) {
                WebSocketClient.a.warn(e);
            }
            try {
                byteChannel.close();
            } catch (IOException e2) {
                WebSocketClient.a.debug(e2);
            }
        }
    }
}
