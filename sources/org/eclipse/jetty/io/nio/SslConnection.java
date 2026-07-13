package org.eclipse.jetty.io.nio;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.SSLEngineResult;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
import org.eclipse.jetty.io.AbstractConnection;
import org.eclipse.jetty.io.AsyncEndPoint;
import org.eclipse.jetty.io.Buffer;
import org.eclipse.jetty.io.Connection;
import org.eclipse.jetty.io.EndPoint;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;
import org.eclipse.jetty.util.thread.Timeout;

/* JADX INFO: loaded from: classes.dex */
public class SslConnection extends AbstractConnection implements AsyncConnection {
    private static final NIOBuffer b = new IndirectNIOBuffer(0);
    private static final ThreadLocal<a> c = new ThreadLocal<>();
    private final Logger a;
    private final SSLEngine d;
    private final SSLSession e;
    private AsyncConnection f;
    private final SslEndPoint g;
    private int h;
    private a i;
    private NIOBuffer j;
    private NIOBuffer k;
    private NIOBuffer l;
    private AsyncEndPoint m;
    private boolean n;
    private boolean o;
    private boolean p;
    private boolean q;
    private final AtomicBoolean r;

    static class a {
        final NIOBuffer a;
        final NIOBuffer b;
        final NIOBuffer c;

        a(int i, int i2) {
            this.a = new IndirectNIOBuffer(i);
            this.b = new IndirectNIOBuffer(i);
            this.c = new IndirectNIOBuffer(i2);
        }
    }

    public SslConnection(SSLEngine sSLEngine, EndPoint endPoint) {
        this(sSLEngine, endPoint, System.currentTimeMillis());
    }

    public SslConnection(SSLEngine sSLEngine, EndPoint endPoint, long j) {
        super(endPoint, j);
        this.a = Log.getLogger("org.eclipse.jetty.io.nio.ssl");
        this.n = true;
        this.r = new AtomicBoolean();
        this.d = sSLEngine;
        this.e = this.d.getSession();
        this.m = (AsyncEndPoint) endPoint;
        this.g = newSslEndPoint();
    }

    protected SslEndPoint newSslEndPoint() {
        return new SslEndPoint();
    }

    public boolean isAllowRenegotiate() {
        return this.n;
    }

    public void setAllowRenegotiate(boolean z) {
        this.n = z;
    }

    private void a() {
        synchronized (this) {
            int i = this.h;
            this.h = i + 1;
            if (i == 0 && this.i == null) {
                this.i = c.get();
                if (this.i == null) {
                    this.i = new a(this.e.getPacketBufferSize() * 2, this.e.getApplicationBufferSize() * 2);
                }
                this.j = this.i.a;
                this.l = this.i.b;
                this.k = this.i.c;
                c.set(null);
            }
        }
    }

    private void b() {
        synchronized (this) {
            int i = this.h - 1;
            this.h = i;
            if (i == 0 && this.i != null && this.j.length() == 0 && this.l.length() == 0 && this.k.length() == 0) {
                this.j = null;
                this.l = null;
                this.k = null;
                c.set(this.i);
                this.i = null;
            }
        }
    }

    @Override // org.eclipse.jetty.io.Connection
    public Connection handle() {
        try {
            a();
            boolean z = true;
            while (z) {
                boolean zA = this.d.getHandshakeStatus() != SSLEngineResult.HandshakeStatus.NOT_HANDSHAKING ? a((Buffer) null, (Buffer) null) : false;
                AsyncConnection asyncConnection = (AsyncConnection) this.f.handle();
                if (asyncConnection == this.f || asyncConnection == null) {
                    z = zA;
                } else {
                    this.f = asyncConnection;
                    z = true;
                }
                this.a.debug("{} handle {} progress={}", this.e, this, Boolean.valueOf(z));
            }
            return this;
        } finally {
            b();
            if (!this.p && this.g.isInputShutdown() && this.g.isOpen()) {
                this.p = true;
                try {
                    this.f.onInputShutdown();
                } catch (Throwable th) {
                    this.a.warn("onInputShutdown failed", th);
                    try {
                        this.g.close();
                    } catch (IOException e) {
                        this.a.ignore(e);
                    }
                }
            }
        }
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
        Connection connection = this.g.getConnection();
        if (connection != null && connection != this) {
            connection.onClose();
        }
    }

    @Override // org.eclipse.jetty.io.AbstractConnection, org.eclipse.jetty.io.Connection
    public void onIdleExpired(long j) {
        try {
            this.a.debug("onIdleExpired {}ms on {}", Long.valueOf(j), this);
            if (this._endp.isOutputShutdown()) {
                this.g.close();
            } else {
                this.g.shutdownOutput();
            }
        } catch (IOException e) {
            this.a.warn(e);
            super.onIdleExpired(j);
        }
    }

    @Override // org.eclipse.jetty.io.nio.AsyncConnection
    public void onInputShutdown() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized boolean a(Buffer buffer, Buffer buffer2) {
        boolean z;
        int iFill;
        boolean z2;
        boolean z3;
        int i;
        int i2 = 0;
        boolean z4 = true;
        synchronized (this) {
            try {
                a();
                if (buffer == null) {
                    this.k.compact();
                    buffer = this.k;
                } else if (buffer.capacity() < this.e.getApplicationBufferSize()) {
                    boolean zA = a((Buffer) null, buffer2);
                    if (this.k == null || !this.k.hasContent()) {
                        b();
                        z4 = zA;
                    } else {
                        this.k.skip(buffer.put(this.k));
                        b();
                    }
                } else if (this.k != null && this.k.hasContent()) {
                    this.k.skip(buffer.put(this.k));
                    b();
                }
                if (buffer2 == null) {
                    buffer2 = b;
                }
                boolean z5 = true;
                z = false;
                while (z5) {
                    try {
                        try {
                            if (this.j.space() > 0) {
                                iFill = this._endp.fill(this.j);
                                z2 = iFill > 0;
                            } else {
                                iFill = 0;
                                z2 = false;
                            }
                        } catch (Throwable th) {
                            th = th;
                        }
                    } catch (IOException e) {
                        e = e;
                    }
                    try {
                        if (this.l.hasContent()) {
                            int iFlush = this._endp.flush(this.l);
                            if (iFlush > 0) {
                                i = iFlush;
                                z3 = true;
                            } else {
                                z3 = z2;
                                i = iFlush;
                            }
                        } else {
                            z3 = z2;
                            i = 0;
                        }
                        try {
                            this.a.debug("{} {} {} filled={}/{} flushed={}/{}", this.e, this, this.d.getHandshakeStatus(), Integer.valueOf(iFill), Integer.valueOf(this.j.length()), Integer.valueOf(i), Integer.valueOf(this.l.length()));
                            switch (AnonymousClass1.a[this.d.getHandshakeStatus().ordinal()]) {
                                case 1:
                                    throw new IllegalStateException();
                                case 2:
                                    z5 = (buffer.space() > 0 && this.j.hasContent() && b(buffer)) ? true : z3;
                                    if (buffer2.hasContent() && this.l.space() > 0 && a(buffer2)) {
                                        z5 = true;
                                    }
                                    break;
                                case 3:
                                    z5 = z3;
                                    while (true) {
                                        Runnable delegatedTask = this.d.getDelegatedTask();
                                        if (delegatedTask != null) {
                                            delegatedTask.run();
                                            z5 = true;
                                        }
                                        break;
                                    }
                                    break;
                                case 4:
                                    if (this.o && !this.n) {
                                        this._endp.close();
                                        z5 = z3;
                                    } else if (!a(buffer2)) {
                                        z5 = z3;
                                    } else {
                                        z5 = true;
                                    }
                                    break;
                                case 5:
                                    if (this.o && !this.n) {
                                        this._endp.close();
                                        z5 = z3;
                                    } else if (!this.j.hasContent() && iFill == -1) {
                                        this._endp.shutdownInput();
                                        z5 = z3;
                                    } else if (!b(buffer)) {
                                        z5 = z3;
                                    } else {
                                        z5 = true;
                                    }
                                    break;
                                default:
                                    z5 = z3;
                                    break;
                            }
                            if (this._endp.isOpen() && this._endp.isInputShutdown() && !this.j.hasContent()) {
                                c();
                            }
                            if (this._endp.isOpen() && this.d.isOutboundDone() && !this.l.hasContent()) {
                                this._endp.shutdownOutput();
                            }
                            z |= z5;
                        } catch (Throwable th2) {
                            th = th2;
                            b();
                            if (z) {
                                this.r.set(true);
                            }
                            throw th;
                        }
                    } catch (IOException e2) {
                        e = e2;
                        i2 = iFill;
                        this._endp.close();
                        throw e;
                    } catch (Throwable th3) {
                        th = th3;
                        i2 = iFill;
                        this.a.debug("{} {} {} filled={}/{} flushed={}/{}", this.e, this, this.d.getHandshakeStatus(), Integer.valueOf(i2), Integer.valueOf(this.j.length()), 0, Integer.valueOf(this.l.length()));
                        throw th;
                    }
                }
                if (buffer == this.k && this.k.hasContent() && !this.f.isSuspended()) {
                    this.m.dispatch();
                }
                b();
                if (z) {
                    this.r.set(true);
                }
                z4 = z;
            } catch (Throwable th4) {
                th = th4;
                z = false;
            }
        }
        return z4;
    }

    private void c() {
        try {
            this.d.closeInbound();
        } catch (SSLException e) {
            this.a.debug(e);
        }
    }

    /* JADX WARN: Finally extract failed */
    private synchronized boolean a(Buffer buffer) {
        SSLEngineResult sSLEngineResultWrap;
        boolean z;
        synchronized (this) {
            ByteBuffer byteBufferC = c(buffer);
            synchronized (byteBufferC) {
                this.l.compact();
                ByteBuffer byteBuffer = this.l.getByteBuffer();
                synchronized (byteBuffer) {
                    try {
                        try {
                            byteBufferC.position(buffer.getIndex());
                            byteBufferC.limit(buffer.putIndex());
                            byteBuffer.position(this.l.putIndex());
                            byteBuffer.limit(byteBuffer.capacity());
                            sSLEngineResultWrap = this.d.wrap(byteBufferC, byteBuffer);
                            if (this.a.isDebugEnabled()) {
                                this.a.debug("{} wrap {} {} consumed={} produced={}", this.e, sSLEngineResultWrap.getStatus(), sSLEngineResultWrap.getHandshakeStatus(), Integer.valueOf(sSLEngineResultWrap.bytesConsumed()), Integer.valueOf(sSLEngineResultWrap.bytesProduced()));
                            }
                            buffer.skip(sSLEngineResultWrap.bytesConsumed());
                            this.l.setPutIndex(this.l.putIndex() + sSLEngineResultWrap.bytesProduced());
                            byteBuffer.position(0);
                            byteBuffer.limit(byteBuffer.capacity());
                            byteBufferC.position(0);
                            byteBufferC.limit(byteBufferC.capacity());
                        } catch (SSLException e) {
                            this.a.debug(String.valueOf(this._endp), e);
                            this._endp.close();
                            throw e;
                        }
                    } catch (Throwable th) {
                        byteBuffer.position(0);
                        byteBuffer.limit(byteBuffer.capacity());
                        byteBufferC.position(0);
                        byteBufferC.limit(byteBufferC.capacity());
                        throw th;
                    }
                }
            }
            switch (AnonymousClass1.b[sSLEngineResultWrap.getStatus().ordinal()]) {
                case 1:
                    throw new IllegalStateException();
                case 2:
                    break;
                case 3:
                    if (sSLEngineResultWrap.getHandshakeStatus() == SSLEngineResult.HandshakeStatus.FINISHED) {
                        this.o = true;
                    }
                    break;
                case 4:
                    this.a.debug("wrap CLOSE {} {}", this, sSLEngineResultWrap);
                    if (sSLEngineResultWrap.getHandshakeStatus() == SSLEngineResult.HandshakeStatus.FINISHED) {
                        this._endp.close();
                    }
                    break;
                default:
                    this.a.debug("{} wrap default {}", this.e, sSLEngineResultWrap);
                    throw new IOException(sSLEngineResultWrap.toString());
            }
            z = sSLEngineResultWrap.bytesConsumed() > 0 || sSLEngineResultWrap.bytesProduced() > 0;
        }
        return z;
    }

    /* JADX INFO: renamed from: org.eclipse.jetty.io.nio.SslConnection$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] a;
        static final /* synthetic */ int[] b = new int[SSLEngineResult.Status.values().length];

        static {
            try {
                b[SSLEngineResult.Status.BUFFER_UNDERFLOW.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                b[SSLEngineResult.Status.BUFFER_OVERFLOW.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                b[SSLEngineResult.Status.OK.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                b[SSLEngineResult.Status.CLOSED.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            a = new int[SSLEngineResult.HandshakeStatus.values().length];
            try {
                a[SSLEngineResult.HandshakeStatus.FINISHED.ordinal()] = 1;
            } catch (NoSuchFieldError e5) {
            }
            try {
                a[SSLEngineResult.HandshakeStatus.NOT_HANDSHAKING.ordinal()] = 2;
            } catch (NoSuchFieldError e6) {
            }
            try {
                a[SSLEngineResult.HandshakeStatus.NEED_TASK.ordinal()] = 3;
            } catch (NoSuchFieldError e7) {
            }
            try {
                a[SSLEngineResult.HandshakeStatus.NEED_WRAP.ordinal()] = 4;
            } catch (NoSuchFieldError e8) {
            }
            try {
                a[SSLEngineResult.HandshakeStatus.NEED_UNWRAP.ordinal()] = 5;
            } catch (NoSuchFieldError e9) {
            }
        }
    }

    /* JADX WARN: Finally extract failed */
    private synchronized boolean b(Buffer buffer) {
        SSLEngineResult sSLEngineResultUnwrap;
        boolean z = false;
        synchronized (this) {
            if (this.j.hasContent()) {
                ByteBuffer byteBufferC = c(buffer);
                synchronized (byteBufferC) {
                    ByteBuffer byteBuffer = this.j.getByteBuffer();
                    synchronized (byteBuffer) {
                        try {
                            try {
                                byteBufferC.position(buffer.putIndex());
                                byteBufferC.limit(buffer.capacity());
                                byteBuffer.position(this.j.getIndex());
                                byteBuffer.limit(this.j.putIndex());
                                sSLEngineResultUnwrap = this.d.unwrap(byteBuffer, byteBufferC);
                                if (this.a.isDebugEnabled()) {
                                    this.a.debug("{} unwrap {} {} consumed={} produced={}", this.e, sSLEngineResultUnwrap.getStatus(), sSLEngineResultUnwrap.getHandshakeStatus(), Integer.valueOf(sSLEngineResultUnwrap.bytesConsumed()), Integer.valueOf(sSLEngineResultUnwrap.bytesProduced()));
                                }
                                this.j.skip(sSLEngineResultUnwrap.bytesConsumed());
                                this.j.compact();
                                buffer.setPutIndex(buffer.putIndex() + sSLEngineResultUnwrap.bytesProduced());
                                byteBuffer.position(0);
                                byteBuffer.limit(byteBuffer.capacity());
                                byteBufferC.position(0);
                                byteBufferC.limit(byteBufferC.capacity());
                            } catch (SSLException e) {
                                this.a.debug(String.valueOf(this._endp), e);
                                this._endp.close();
                                throw e;
                            }
                        } catch (Throwable th) {
                            byteBuffer.position(0);
                            byteBuffer.limit(byteBuffer.capacity());
                            byteBufferC.position(0);
                            byteBufferC.limit(byteBufferC.capacity());
                            throw th;
                        }
                    }
                }
                switch (AnonymousClass1.b[sSLEngineResultUnwrap.getStatus().ordinal()]) {
                    case 1:
                        if (this._endp.isInputShutdown()) {
                            this.j.clear();
                        }
                        break;
                    case 2:
                        if (this.a.isDebugEnabled()) {
                            this.a.debug("{} unwrap {} {}->{}", this.e, sSLEngineResultUnwrap.getStatus(), this.j.toDetailString(), buffer.toDetailString());
                        }
                        break;
                    case 3:
                        if (sSLEngineResultUnwrap.getHandshakeStatus() == SSLEngineResult.HandshakeStatus.FINISHED) {
                            this.o = true;
                        }
                        break;
                    case 4:
                        this.a.debug("unwrap CLOSE {} {}", this, sSLEngineResultUnwrap);
                        if (sSLEngineResultUnwrap.getHandshakeStatus() == SSLEngineResult.HandshakeStatus.FINISHED) {
                            this._endp.close();
                        }
                        break;
                    default:
                        this.a.debug("{} wrap default {}", this.e, sSLEngineResultUnwrap);
                        throw new IOException(sSLEngineResultUnwrap.toString());
                }
                if (sSLEngineResultUnwrap.bytesConsumed() > 0 || sSLEngineResultUnwrap.bytesProduced() > 0) {
                    z = true;
                }
            }
        }
        return z;
    }

    private ByteBuffer c(Buffer buffer) {
        return buffer.buffer() instanceof NIOBuffer ? ((NIOBuffer) buffer.buffer()).getByteBuffer() : ByteBuffer.wrap(buffer.array());
    }

    public AsyncEndPoint getSslEndPoint() {
        return this.g;
    }

    @Override // org.eclipse.jetty.io.AbstractConnection
    public String toString() {
        return String.format("%s %s", super.toString(), this.g);
    }

    public class SslEndPoint implements AsyncEndPoint {
        public SslEndPoint() {
        }

        public SSLEngine getSslEngine() {
            return SslConnection.this.d;
        }

        public AsyncEndPoint getEndpoint() {
            return SslConnection.this.m;
        }

        @Override // org.eclipse.jetty.io.EndPoint
        public void shutdownOutput() {
            synchronized (SslConnection.this) {
                SslConnection.this.a.debug("{} ssl endp.oshut {}", SslConnection.this.e, this);
                SslConnection.this.d.closeOutbound();
                SslConnection.this.q = true;
            }
            flush();
        }

        @Override // org.eclipse.jetty.io.EndPoint
        public boolean isOutputShutdown() {
            boolean z;
            synchronized (SslConnection.this) {
                z = SslConnection.this.q || !isOpen() || SslConnection.this.d.isOutboundDone();
            }
            return z;
        }

        @Override // org.eclipse.jetty.io.EndPoint
        public void shutdownInput() {
            SslConnection.this.a.debug("{} ssl endp.ishut!", SslConnection.this.e);
        }

        @Override // org.eclipse.jetty.io.EndPoint
        public boolean isInputShutdown() {
            boolean z;
            synchronized (SslConnection.this) {
                z = SslConnection.this._endp.isInputShutdown() && (SslConnection.this.k == null || !SslConnection.this.k.hasContent()) && (SslConnection.this.j == null || !SslConnection.this.j.hasContent());
            }
            return z;
        }

        @Override // org.eclipse.jetty.io.EndPoint
        public void close() {
            SslConnection.this.a.debug("{} ssl endp.close", SslConnection.this.e);
            SslConnection.this._endp.close();
        }

        @Override // org.eclipse.jetty.io.EndPoint
        public int fill(Buffer buffer) {
            int length = buffer.length();
            SslConnection.this.a(buffer, (Buffer) null);
            int length2 = buffer.length() - length;
            if (length2 == 0 && isInputShutdown()) {
                return -1;
            }
            return length2;
        }

        @Override // org.eclipse.jetty.io.EndPoint
        public int flush(Buffer buffer) {
            int length = buffer.length();
            SslConnection.this.a((Buffer) null, buffer);
            return length - buffer.length();
        }

        @Override // org.eclipse.jetty.io.EndPoint
        public int flush(Buffer buffer, Buffer buffer2, Buffer buffer3) {
            if (buffer != null && buffer.hasContent()) {
                return flush(buffer);
            }
            if (buffer2 != null && buffer2.hasContent()) {
                return flush(buffer2);
            }
            if (buffer3 != null && buffer3.hasContent()) {
                return flush(buffer3);
            }
            return 0;
        }

        @Override // org.eclipse.jetty.io.EndPoint
        public boolean blockReadable(long j) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            long j2 = j > 0 ? jCurrentTimeMillis + j : Long.MAX_VALUE;
            while (jCurrentTimeMillis < j2 && !SslConnection.this.a((Buffer) null, (Buffer) null)) {
                SslConnection.this._endp.blockReadable(j2 - jCurrentTimeMillis);
                jCurrentTimeMillis = System.currentTimeMillis();
            }
            return jCurrentTimeMillis < j2;
        }

        @Override // org.eclipse.jetty.io.EndPoint
        public boolean blockWritable(long j) {
            return SslConnection.this._endp.blockWritable(j);
        }

        @Override // org.eclipse.jetty.io.EndPoint
        public boolean isOpen() {
            return SslConnection.this._endp.isOpen();
        }

        @Override // org.eclipse.jetty.io.EndPoint
        public Object getTransport() {
            return SslConnection.this._endp;
        }

        @Override // org.eclipse.jetty.io.EndPoint
        public void flush() {
            SslConnection.this.a((Buffer) null, (Buffer) null);
        }

        @Override // org.eclipse.jetty.io.AsyncEndPoint
        public void dispatch() {
            SslConnection.this.m.dispatch();
        }

        @Override // org.eclipse.jetty.io.AsyncEndPoint
        public void asyncDispatch() {
            SslConnection.this.m.asyncDispatch();
        }

        @Override // org.eclipse.jetty.io.AsyncEndPoint
        public void scheduleWrite() {
            SslConnection.this.m.scheduleWrite();
        }

        @Override // org.eclipse.jetty.io.AsyncEndPoint
        public void onIdleExpired(long j) {
            SslConnection.this.m.onIdleExpired(j);
        }

        @Override // org.eclipse.jetty.io.AsyncEndPoint
        public void setCheckForIdle(boolean z) {
            SslConnection.this.m.setCheckForIdle(z);
        }

        @Override // org.eclipse.jetty.io.AsyncEndPoint
        public boolean isCheckForIdle() {
            return SslConnection.this.m.isCheckForIdle();
        }

        @Override // org.eclipse.jetty.io.AsyncEndPoint
        public void scheduleTimeout(Timeout.Task task, long j) {
            SslConnection.this.m.scheduleTimeout(task, j);
        }

        @Override // org.eclipse.jetty.io.AsyncEndPoint
        public void cancelTimeout(Timeout.Task task) {
            SslConnection.this.m.cancelTimeout(task);
        }

        @Override // org.eclipse.jetty.io.AsyncEndPoint
        public boolean isWritable() {
            return SslConnection.this.m.isWritable();
        }

        @Override // org.eclipse.jetty.io.AsyncEndPoint
        public boolean hasProgressed() {
            return SslConnection.this.r.getAndSet(false);
        }

        @Override // org.eclipse.jetty.io.EndPoint
        public String getLocalAddr() {
            return SslConnection.this.m.getLocalAddr();
        }

        @Override // org.eclipse.jetty.io.EndPoint
        public String getLocalHost() {
            return SslConnection.this.m.getLocalHost();
        }

        @Override // org.eclipse.jetty.io.EndPoint
        public int getLocalPort() {
            return SslConnection.this.m.getLocalPort();
        }

        @Override // org.eclipse.jetty.io.EndPoint
        public String getRemoteAddr() {
            return SslConnection.this.m.getRemoteAddr();
        }

        @Override // org.eclipse.jetty.io.EndPoint
        public String getRemoteHost() {
            return SslConnection.this.m.getRemoteHost();
        }

        @Override // org.eclipse.jetty.io.EndPoint
        public int getRemotePort() {
            return SslConnection.this.m.getRemotePort();
        }

        @Override // org.eclipse.jetty.io.EndPoint
        public boolean isBlocking() {
            return false;
        }

        @Override // org.eclipse.jetty.io.EndPoint
        public int getMaxIdleTime() {
            return SslConnection.this.m.getMaxIdleTime();
        }

        @Override // org.eclipse.jetty.io.EndPoint
        public void setMaxIdleTime(int i) {
            SslConnection.this.m.setMaxIdleTime(i);
        }

        @Override // org.eclipse.jetty.io.ConnectedEndPoint
        public Connection getConnection() {
            return SslConnection.this.f;
        }

        @Override // org.eclipse.jetty.io.ConnectedEndPoint
        public void setConnection(Connection connection) {
            SslConnection.this.f = (AsyncConnection) connection;
        }

        public String toString() {
            NIOBuffer nIOBuffer = SslConnection.this.j;
            NIOBuffer nIOBuffer2 = SslConnection.this.l;
            NIOBuffer nIOBuffer3 = SslConnection.this.k;
            return String.format("SSL %s i/o/u=%d/%d/%d ishut=%b oshut=%b {%s}", SslConnection.this.d.getHandshakeStatus(), Integer.valueOf(nIOBuffer == null ? -1 : nIOBuffer.length()), Integer.valueOf(nIOBuffer2 == null ? -1 : nIOBuffer2.length()), Integer.valueOf(nIOBuffer3 != null ? nIOBuffer3.length() : -1), Boolean.valueOf(SslConnection.this.p), Boolean.valueOf(SslConnection.this.q), SslConnection.this.f);
        }
    }
}
