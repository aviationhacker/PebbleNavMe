package org.eclipse.jetty.io.nio;

import java.io.IOException;
import java.nio.channels.SelectableChannel;
import java.nio.channels.SelectionKey;
import java.nio.channels.SocketChannel;
import java.util.Locale;
import org.eclipse.jetty.io.AsyncEndPoint;
import org.eclipse.jetty.io.Buffer;
import org.eclipse.jetty.io.ConnectedEndPoint;
import org.eclipse.jetty.io.Connection;
import org.eclipse.jetty.io.EofException;
import org.eclipse.jetty.io.nio.SelectorManager;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;
import org.eclipse.jetty.util.thread.Timeout;

/* JADX INFO: loaded from: classes.dex */
public class SelectChannelEndPoint extends ChannelEndPoint implements AsyncEndPoint, ConnectedEndPoint {
    public static final Logger LOG = Log.getLogger("org.eclipse.jetty.io.nio");
    private final boolean a;
    private final SelectorManager.SelectSet b;
    private final SelectorManager c;
    private SelectionKey d;
    private final Runnable e;
    private int f;
    private volatile AsyncConnection g;
    private int h;
    private boolean i;
    private volatile boolean j;
    private boolean k;
    private boolean l;
    private boolean m;
    private volatile long n;
    private volatile boolean o;
    private boolean p;

    public SelectChannelEndPoint(SocketChannel socketChannel, SelectorManager.SelectSet selectSet, SelectionKey selectionKey, int i) {
        super(socketChannel, i);
        this.a = System.getProperty("os.name").toLowerCase(Locale.ENGLISH).contains("win");
        this.e = new Runnable() { // from class: org.eclipse.jetty.io.nio.SelectChannelEndPoint.1
            @Override // java.lang.Runnable
            public void run() throws Throwable {
                SelectChannelEndPoint.this.handle();
            }
        };
        this.j = true;
        this.c = selectSet.getManager();
        this.b = selectSet;
        this.h = 0;
        this.i = false;
        this.m = true;
        this.d = selectionKey;
        setCheckForIdle(true);
    }

    public SelectionKey getSelectionKey() {
        SelectionKey selectionKey;
        synchronized (this) {
            selectionKey = this.d;
        }
        return selectionKey;
    }

    public SelectorManager getSelectManager() {
        return this.c;
    }

    @Override // org.eclipse.jetty.io.ConnectedEndPoint
    public Connection getConnection() {
        return this.g;
    }

    @Override // org.eclipse.jetty.io.ConnectedEndPoint
    public void setConnection(Connection connection) {
        AsyncConnection asyncConnection = this.g;
        this.g = (AsyncConnection) connection;
        if (asyncConnection != null && asyncConnection != this.g) {
            this.c.endPointUpgraded(this, asyncConnection);
        }
    }

    public long getIdleTimestamp() {
        return this.n;
    }

    public void schedule() {
        synchronized (this) {
            if (this.d == null || !this.d.isValid()) {
                this.k = false;
                this.l = false;
                notifyAll();
                return;
            }
            if (this.k || this.l) {
                if (this.k && this.d.isReadable()) {
                    this.k = false;
                }
                if (this.l && this.d.isWritable()) {
                    this.l = false;
                }
                notifyAll();
                this.d.interestOps(0);
                if (this.h < 1) {
                    b();
                }
                return;
            }
            if ((this.d.readyOps() & 4) == 4 && (this.d.interestOps() & 4) == 4) {
                this.f = this.d.interestOps() & (-5);
                this.d.interestOps(this.f);
                this.j = true;
            }
            if (this.h >= 1) {
                this.d.interestOps(0);
            } else {
                dispatch();
                if (this.h >= 1 && !this.b.getManager().isDeferringInterestedOps0()) {
                    this.d.interestOps(0);
                }
            }
        }
    }

    @Override // org.eclipse.jetty.io.AsyncEndPoint
    public void asyncDispatch() {
        synchronized (this) {
            switch (this.h) {
                case -1:
                case 0:
                    dispatch();
                    break;
                case 1:
                case 2:
                    this.h = 2;
                    break;
            }
        }
    }

    @Override // org.eclipse.jetty.io.AsyncEndPoint
    public void dispatch() {
        synchronized (this) {
            if (this.h <= 0) {
                if (this.i) {
                    this.h = -1;
                } else {
                    this.h = 1;
                    if (!this.c.dispatch(this.e)) {
                        this.h = -1;
                        LOG.warn("Dispatched Failed! " + this + " to " + this.c, new Object[0]);
                        b();
                    }
                }
            }
        }
    }

    protected boolean undispatch() {
        synchronized (this) {
            switch (this.h) {
                case 2:
                    this.h = 1;
                    return false;
                default:
                    this.h = 0;
                    b();
                    return true;
            }
        }
    }

    @Override // org.eclipse.jetty.io.AsyncEndPoint
    public void cancelTimeout(Timeout.Task task) {
        getSelectSet().cancelTimeout(task);
    }

    @Override // org.eclipse.jetty.io.AsyncEndPoint
    public void scheduleTimeout(Timeout.Task task, long j) {
        getSelectSet().scheduleTimeout(task, j);
    }

    @Override // org.eclipse.jetty.io.AsyncEndPoint
    public void setCheckForIdle(boolean z) {
        if (z) {
            this.n = System.currentTimeMillis();
            this.o = true;
        } else {
            this.o = false;
        }
    }

    @Override // org.eclipse.jetty.io.AsyncEndPoint
    public boolean isCheckForIdle() {
        return this.o;
    }

    protected void notIdle() {
        this.n = System.currentTimeMillis();
    }

    public void checkIdleTimestamp(long j) {
        if (isCheckForIdle() && this._maxIdleTime > 0) {
            final long j2 = j - this.n;
            if (j2 > this._maxIdleTime) {
                setCheckForIdle(false);
                this.c.dispatch(new Runnable() { // from class: org.eclipse.jetty.io.nio.SelectChannelEndPoint.2
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            SelectChannelEndPoint.this.onIdleExpired(j2);
                        } finally {
                            SelectChannelEndPoint.this.setCheckForIdle(true);
                        }
                    }
                });
            }
        }
    }

    @Override // org.eclipse.jetty.io.AsyncEndPoint
    public void onIdleExpired(long j) {
        try {
            synchronized (this) {
                this.i = true;
            }
            this.g.onIdleExpired(j);
            synchronized (this) {
                this.i = false;
                if (this.h == -1) {
                    dispatch();
                }
            }
        } catch (Throwable th) {
            synchronized (this) {
                this.i = false;
                if (this.h == -1) {
                    dispatch();
                }
                throw th;
            }
        }
    }

    @Override // org.eclipse.jetty.io.nio.ChannelEndPoint, org.eclipse.jetty.io.EndPoint
    public int fill(Buffer buffer) throws Throwable {
        int iFill = super.fill(buffer);
        if (iFill > 0) {
            notIdle();
        }
        return iFill;
    }

    @Override // org.eclipse.jetty.io.nio.ChannelEndPoint, org.eclipse.jetty.io.EndPoint
    public int flush(Buffer buffer, Buffer buffer2, Buffer buffer3) throws IOException {
        int iFlush = super.flush(buffer, buffer2, buffer3);
        if (iFlush == 0 && ((buffer != null && buffer.hasContent()) || ((buffer2 != null && buffer2.hasContent()) || (buffer3 != null && buffer3.hasContent())))) {
            synchronized (this) {
                this.j = false;
                if (this.h < 1) {
                    b();
                }
            }
        } else if (iFlush > 0) {
            this.j = true;
            notIdle();
        }
        return iFlush;
    }

    @Override // org.eclipse.jetty.io.nio.ChannelEndPoint, org.eclipse.jetty.io.EndPoint
    public int flush(Buffer buffer) throws IOException {
        int iFlush = super.flush(buffer);
        if (iFlush == 0 && buffer != null && buffer.hasContent()) {
            synchronized (this) {
                this.j = false;
                if (this.h < 1) {
                    b();
                }
            }
        } else if (iFlush > 0) {
            this.j = true;
            notIdle();
        }
        return iFlush;
    }

    @Override // org.eclipse.jetty.io.nio.ChannelEndPoint, org.eclipse.jetty.io.EndPoint
    public boolean blockReadable(long j) {
        synchronized (this) {
            if (isInputShutdown()) {
                throw new EofException();
            }
            long now = this.b.getNow();
            long j2 = now + j;
            boolean zIsCheckForIdle = isCheckForIdle();
            setCheckForIdle(true);
            try {
                this.k = true;
                while (!isInputShutdown() && this.k) {
                    try {
                        try {
                            b();
                            wait(j > 0 ? j2 - now : 10000L);
                            now = this.b.getNow();
                        } catch (InterruptedException e) {
                            LOG.warn(e);
                            now = this.b.getNow();
                        }
                        if (this.k && j > 0 && now >= j2) {
                            return false;
                        }
                    } catch (Throwable th) {
                        this.b.getNow();
                        throw th;
                    }
                }
                this.k = false;
                setCheckForIdle(zIsCheckForIdle);
                return true;
            } finally {
                this.k = false;
                setCheckForIdle(zIsCheckForIdle);
            }
        }
    }

    @Override // org.eclipse.jetty.io.nio.ChannelEndPoint, org.eclipse.jetty.io.EndPoint
    public boolean blockWritable(long j) {
        synchronized (this) {
            if (isOutputShutdown()) {
                throw new EofException();
            }
            long now = this.b.getNow();
            long j2 = now + j;
            boolean zIsCheckForIdle = isCheckForIdle();
            setCheckForIdle(true);
            try {
                this.l = true;
                while (this.l && !isOutputShutdown()) {
                    try {
                        try {
                            b();
                            wait(j > 0 ? j2 - now : 10000L);
                            now = this.b.getNow();
                        } catch (InterruptedException e) {
                            LOG.warn(e);
                            now = this.b.getNow();
                        }
                        if (this.l && j > 0 && now >= j2) {
                            return false;
                        }
                    } catch (Throwable th) {
                        this.b.getNow();
                        throw th;
                    }
                }
                this.l = false;
                setCheckForIdle(zIsCheckForIdle);
                return true;
            } finally {
                this.l = false;
                setCheckForIdle(zIsCheckForIdle);
            }
        }
    }

    @Override // org.eclipse.jetty.io.AsyncEndPoint
    public void scheduleWrite() {
        if (this.j) {
            LOG.debug("Required scheduleWrite {}", this);
        }
        this.j = false;
        b();
    }

    @Override // org.eclipse.jetty.io.AsyncEndPoint
    public boolean isWritable() {
        return this.j;
    }

    @Override // org.eclipse.jetty.io.AsyncEndPoint
    public boolean hasProgressed() {
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0057 A[Catch: all -> 0x007c, PHI: r0
  0x0057: PHI (r0v2 int) = (r0v0 int), (r0v0 int), (r0v0 int), (r0v0 int), (r0v9 int) binds: [B:5:0x000c, B:47:0x0074, B:30:0x0047, B:32:0x004f, B:33:0x0051] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0004, B:6:0x000e, B:8:0x0012, B:10:0x0016, B:13:0x001f, B:15:0x0023, B:17:0x0027, B:20:0x002c, B:24:0x0037, B:28:0x0042, B:29:0x0045, B:31:0x0049, B:33:0x0051, B:47:0x0074, B:34:0x0057, B:37:0x005c), top: B:52:0x0004, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x007f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void b() {
        /*
            r6 = this;
            r0 = -1
            r3 = 0
            r2 = 1
            monitor-enter(r6)
            java.nio.channels.ByteChannel r1 = r6.getChannel()     // Catch: java.lang.Throwable -> L7c
            boolean r1 = r1.isOpen()     // Catch: java.lang.Throwable -> L7c
            if (r1 == 0) goto L57
            boolean r1 = r6.k     // Catch: java.lang.Throwable -> L7c
            if (r1 != 0) goto L1e
            int r1 = r6.h     // Catch: java.lang.Throwable -> L7c
            if (r1 >= r2) goto L6a
            org.eclipse.jetty.io.nio.AsyncConnection r1 = r6.g     // Catch: java.lang.Throwable -> L7c
            boolean r1 = r1.isSuspended()     // Catch: java.lang.Throwable -> L7c
            if (r1 != 0) goto L6a
        L1e:
            r4 = r2
        L1f:
            boolean r1 = r6.l     // Catch: java.lang.Throwable -> L7c
            if (r1 != 0) goto L2b
            int r1 = r6.h     // Catch: java.lang.Throwable -> L7c
            if (r1 >= r2) goto L6c
            boolean r1 = r6.j     // Catch: java.lang.Throwable -> L7c
            if (r1 != 0) goto L6c
        L2b:
            r1 = r2
        L2c:
            java.net.Socket r5 = r6._socket     // Catch: java.lang.Throwable -> L7c
            boolean r5 = r5.isInputShutdown()     // Catch: java.lang.Throwable -> L7c
            if (r5 != 0) goto L6e
            if (r4 == 0) goto L6e
            r4 = r2
        L37:
            java.net.Socket r5 = r6._socket     // Catch: java.lang.Throwable -> L7c
            boolean r5 = r5.isOutputShutdown()     // Catch: java.lang.Throwable -> L7c
            if (r5 != 0) goto L70
            if (r1 == 0) goto L70
            r1 = 4
        L42:
            r1 = r1 | r4
            r6.f = r1     // Catch: java.lang.Throwable -> L7c
            java.nio.channels.SelectionKey r1 = r6.d     // Catch: java.lang.Exception -> L72 java.lang.Throwable -> L7c
            if (r1 == 0) goto L57
            java.nio.channels.SelectionKey r1 = r6.d     // Catch: java.lang.Exception -> L72 java.lang.Throwable -> L7c
            boolean r1 = r1.isValid()     // Catch: java.lang.Exception -> L72 java.lang.Throwable -> L7c
            if (r1 == 0) goto L57
            java.nio.channels.SelectionKey r1 = r6.d     // Catch: java.lang.Exception -> L72 java.lang.Throwable -> L7c
            int r0 = r1.interestOps()     // Catch: java.lang.Exception -> L72 java.lang.Throwable -> L7c
        L57:
            int r1 = r6.f     // Catch: java.lang.Throwable -> L7c
            if (r1 == r0) goto L7f
            r0 = r2
        L5c:
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L7c
            if (r0 == 0) goto L69
            org.eclipse.jetty.io.nio.SelectorManager$SelectSet r0 = r6.b
            r0.addChange(r6)
            org.eclipse.jetty.io.nio.SelectorManager$SelectSet r0 = r6.b
            r0.wakeup()
        L69:
            return
        L6a:
            r4 = r3
            goto L1f
        L6c:
            r1 = r3
            goto L2c
        L6e:
            r4 = r3
            goto L37
        L70:
            r1 = r3
            goto L42
        L72:
            r1 = move-exception
            r4 = 0
            r6.d = r4     // Catch: java.lang.Throwable -> L7c
            org.eclipse.jetty.util.log.Logger r4 = org.eclipse.jetty.io.nio.SelectChannelEndPoint.LOG     // Catch: java.lang.Throwable -> L7c
            r4.ignore(r1)     // Catch: java.lang.Throwable -> L7c
            goto L57
        L7c:
            r0 = move-exception
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L7c
            throw r0
        L7f:
            r0 = r3
            goto L5c
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.io.nio.SelectChannelEndPoint.b():void");
    }

    void a() {
        synchronized (this) {
            if (getChannel().isOpen()) {
                if (this.f > 0) {
                    if (this.d == null || !this.d.isValid()) {
                        if (((SelectableChannel) getChannel()).isRegistered()) {
                            b();
                        } else {
                            try {
                                this.d = ((SelectableChannel) getChannel()).register(this.b.a(), this.f, this);
                            } catch (Exception e) {
                                LOG.ignore(e);
                                if (this.d != null && this.d.isValid()) {
                                    this.d.cancel();
                                }
                                if (this.m) {
                                    this.b.destroyEndPoint(this);
                                }
                                this.m = false;
                                this.d = null;
                            }
                        }
                    } else {
                        this.d.interestOps(this.f);
                    }
                } else if (this.d != null && this.d.isValid()) {
                    this.d.interestOps(0);
                } else {
                    this.d = null;
                }
            } else {
                if (this.d != null && this.d.isValid()) {
                    this.d.cancel();
                }
                if (this.m) {
                    this.m = false;
                    this.b.destroyEndPoint(this);
                }
                this.d = null;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x008e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void handle() throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 579
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.io.nio.SelectChannelEndPoint.handle():void");
    }

    @Override // org.eclipse.jetty.io.nio.ChannelEndPoint, org.eclipse.jetty.io.EndPoint
    public void close() {
        if (this.a) {
            try {
                SelectionKey selectionKey = this.d;
                if (selectionKey != null) {
                    selectionKey.cancel();
                }
            } catch (Throwable th) {
                LOG.ignore(th);
            }
        }
        try {
            super.close();
        } catch (IOException e) {
            LOG.ignore(e);
        } finally {
            b();
        }
    }

    public String toString() {
        String str;
        SelectionKey selectionKey = this.d;
        if (selectionKey == null) {
            str = "-";
        } else if (selectionKey.isValid()) {
            str = selectionKey.isReadable() ? "r" : "";
            if (selectionKey.isWritable()) {
                str = str + "w";
            }
        } else {
            str = "!";
        }
        return String.format("SCEP@%x{l(%s)<->r(%s),s=%d,open=%b,ishut=%b,oshut=%b,rb=%b,wb=%b,w=%b,i=%d%s}-{%s}", Integer.valueOf(hashCode()), this._socket.getRemoteSocketAddress(), this._socket.getLocalSocketAddress(), Integer.valueOf(this.h), Boolean.valueOf(isOpen()), Boolean.valueOf(isInputShutdown()), Boolean.valueOf(isOutputShutdown()), Boolean.valueOf(this.k), Boolean.valueOf(this.l), Boolean.valueOf(this.j), Integer.valueOf(this.f), str, this.g);
    }

    public SelectorManager.SelectSet getSelectSet() {
        return this.b;
    }

    @Override // org.eclipse.jetty.io.nio.ChannelEndPoint, org.eclipse.jetty.io.EndPoint
    public void setMaxIdleTime(int i) {
        this._maxIdleTime = i;
    }
}
