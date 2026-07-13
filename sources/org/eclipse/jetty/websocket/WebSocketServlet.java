package org.eclipse.jetty.websocket;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;
import org.eclipse.jetty.websocket.WebSocketFactory;

/* JADX INFO: loaded from: classes.dex */
public abstract class WebSocketServlet extends HttpServlet implements WebSocketFactory.Acceptor {
    private final Logger a = Log.getLogger(getClass());
    private WebSocketFactory b;

    /* JADX INFO: Thrown type has an unknown type hierarchy: javax.servlet.ServletException */
    public void init() throws ServletException {
        try {
            String initParameter = getInitParameter("bufferSize");
            this.b = new WebSocketFactory(this, initParameter == null ? 8192 : Integer.parseInt(initParameter));
            this.b.start();
            String initParameter2 = getInitParameter("maxIdleTime");
            if (initParameter2 != null) {
                this.b.setMaxIdleTime(Integer.parseInt(initParameter2));
            }
            String initParameter3 = getInitParameter("maxTextMessageSize");
            if (initParameter3 != null) {
                this.b.setMaxTextMessageSize(Integer.parseInt(initParameter3));
            }
            String initParameter4 = getInitParameter("maxBinaryMessageSize");
            if (initParameter4 != null) {
                this.b.setMaxBinaryMessageSize(Integer.parseInt(initParameter4));
            }
            String initParameter5 = getInitParameter("minVersion");
            if (initParameter5 != null) {
                this.b.setMinVersion(Integer.parseInt(initParameter5));
            }
        } catch (ServletException e) {
            throw e;
        } catch (Exception e2) {
            throw new ServletException(e2);
        }
    }

    protected void service(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) {
        if (!this.b.acceptWebSocket(httpServletRequest, httpServletResponse) && !httpServletResponse.isCommitted()) {
            super.service(httpServletRequest, httpServletResponse);
        }
    }

    @Override // org.eclipse.jetty.websocket.WebSocketFactory.Acceptor
    public boolean checkOrigin(HttpServletRequest httpServletRequest, String str) {
        return true;
    }

    public void destroy() {
        try {
            this.b.stop();
        } catch (Exception e) {
            this.a.ignore(e);
        }
    }
}
