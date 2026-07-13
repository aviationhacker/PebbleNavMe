package org.eclipse.jetty.io;

import java.io.IOException;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractConnection implements Connection {
    private static final Logger a = Log.getLogger((Class<?>) AbstractConnection.class);
    protected final EndPoint _endp;
    private final long b;

    public AbstractConnection(EndPoint endPoint) {
        this._endp = endPoint;
        this.b = System.currentTimeMillis();
    }

    public AbstractConnection(EndPoint endPoint, long j) {
        this._endp = endPoint;
        this.b = j;
    }

    @Override // org.eclipse.jetty.io.Connection
    public long getTimeStamp() {
        return this.b;
    }

    public EndPoint getEndPoint() {
        return this._endp;
    }

    @Override // org.eclipse.jetty.io.Connection
    public void onIdleExpired(long j) {
        try {
            a.debug("onIdleExpired {}ms {} {}", Long.valueOf(j), this, this._endp);
            if (this._endp.isInputShutdown() || this._endp.isOutputShutdown()) {
                this._endp.close();
            } else {
                this._endp.shutdownOutput();
            }
        } catch (IOException e) {
            a.ignore(e);
            try {
                this._endp.close();
            } catch (IOException e2) {
                a.ignore(e2);
            }
        }
    }

    public String toString() {
        return String.format("%s@%x", getClass().getSimpleName(), Integer.valueOf(hashCode()));
    }
}
