package org.eclipse.jetty.websocket;

import com.google.common.net.HttpHeaders;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.eclipse.jetty.http.HttpException;
import org.eclipse.jetty.http.HttpParser;
import org.eclipse.jetty.http.HttpStatus;
import org.eclipse.jetty.http.HttpVersions;
import org.eclipse.jetty.io.ConnectedEndPoint;
import org.eclipse.jetty.server.AbstractHttpConnection;
import org.eclipse.jetty.server.BlockingHttpConnection;
import org.eclipse.jetty.util.QuotedStringTokenizer;
import org.eclipse.jetty.util.component.AbstractLifeCycle;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes.dex */
public class WebSocketFactory extends AbstractLifeCycle {
    private static final Logger a = Log.getLogger((Class<?>) WebSocketFactory.class);
    private final Queue<WebSocketServletConnection> b;
    private final Map<String, Class<? extends Extension>> c;
    private final Acceptor d;
    private WebSocketBuffers e;
    private int f;
    private int g;
    private int h;
    private int i;

    public interface Acceptor {
        boolean checkOrigin(HttpServletRequest httpServletRequest, String str);

        WebSocket doWebSocketConnect(HttpServletRequest httpServletRequest, String str);
    }

    public WebSocketFactory(Acceptor acceptor) {
        this(acceptor, 65536, 13);
    }

    public WebSocketFactory(Acceptor acceptor, int i) {
        this(acceptor, i, 13);
    }

    public WebSocketFactory(Acceptor acceptor, int i, int i2) {
        this.b = new ConcurrentLinkedQueue();
        this.c = new HashMap();
        this.c.put("identity", IdentityExtension.class);
        this.c.put("fragment", FragmentExtension.class);
        this.c.put("x-deflate-frame", DeflateFrameExtension.class);
        this.f = 300000;
        this.g = 16384;
        this.h = -1;
        this.e = new WebSocketBuffers(i);
        this.d = acceptor;
        this.i = 13;
    }

    public int getMinVersion() {
        return this.i;
    }

    public void setMinVersion(int i) {
        this.i = i;
    }

    public Map<String, Class<? extends Extension>> getExtensionClassesMap() {
        return this.c;
    }

    public long getMaxIdleTime() {
        return this.f;
    }

    public void setMaxIdleTime(int i) {
        this.f = i;
    }

    public int getBufferSize() {
        return this.e.getBufferSize();
    }

    public void setBufferSize(int i) {
        if (i != getBufferSize()) {
            this.e = new WebSocketBuffers(i);
        }
    }

    public int getMaxTextMessageSize() {
        return this.g;
    }

    public void setMaxTextMessageSize(int i) {
        this.g = i;
    }

    public int getMaxBinaryMessageSize() {
        return this.h;
    }

    public void setMaxBinaryMessageSize(int i) {
        this.h = i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.eclipse.jetty.util.component.AbstractLifeCycle
    public void doStop() {
        closeConnections();
    }

    public void upgrade(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, WebSocket webSocket, String str) throws HttpException {
        WebSocketServletConnection webSocketServletConnectionRFC6455;
        if (!"websocket".equalsIgnoreCase(httpServletRequest.getHeader("Upgrade"))) {
            throw new IllegalStateException("!Upgrade:websocket");
        }
        if (!HttpVersions.HTTP_1_1.equals(httpServletRequest.getProtocol())) {
            throw new IllegalStateException("!HTTP/1.1");
        }
        int intHeader = httpServletRequest.getIntHeader("Sec-WebSocket-Version");
        int intHeader2 = intHeader < 0 ? httpServletRequest.getIntHeader("Sec-WebSocket-Draft") : intHeader;
        AbstractHttpConnection currentConnection = AbstractHttpConnection.getCurrentConnection();
        if (currentConnection instanceof BlockingHttpConnection) {
            throw new IllegalStateException("Websockets not supported on blocking connectors");
        }
        ConnectedEndPoint connectedEndPoint = (ConnectedEndPoint) currentConnection.getEndPoint();
        ArrayList arrayList = new ArrayList();
        Enumeration headers = httpServletRequest.getHeaders("Sec-WebSocket-Extensions");
        while (headers.hasMoreElements()) {
            QuotedStringTokenizer quotedStringTokenizer = new QuotedStringTokenizer((String) headers.nextElement(), ",");
            while (quotedStringTokenizer.hasMoreTokens()) {
                arrayList.add(quotedStringTokenizer.nextToken());
            }
        }
        int i = intHeader2 < this.i ? Integer.MAX_VALUE : intHeader2;
        switch (i) {
            case -1:
            case 0:
                webSocketServletConnectionRFC6455 = new WebSocketServletConnectionD00(this, webSocket, connectedEndPoint, this.e, currentConnection.getTimeStamp(), this.f, str);
                break;
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                webSocketServletConnectionRFC6455 = new WebSocketServletConnectionD06(this, webSocket, connectedEndPoint, this.e, currentConnection.getTimeStamp(), this.f, str);
                break;
            case 7:
            case 8:
                webSocketServletConnectionRFC6455 = new WebSocketServletConnectionD08(this, webSocket, connectedEndPoint, this.e, currentConnection.getTimeStamp(), this.f, str, initExtensions(arrayList, 5, 5, 3), i);
                break;
            case 9:
            case 10:
            case 11:
            case 12:
            default:
                String str2 = this.i <= 8 ? "13, 8" : "13";
                if (this.i <= 6) {
                    str2 = str2 + ", 6";
                }
                if (this.i <= 0) {
                    str2 = str2 + ", 0";
                }
                httpServletResponse.setHeader("Sec-WebSocket-Version", str2);
                StringBuilder sb = new StringBuilder();
                sb.append("Unsupported websocket client version specification ");
                if (intHeader2 >= 0) {
                    sb.append("[").append(intHeader2).append("]");
                } else {
                    sb.append("<Unspecified, likely a pre-draft version of websocket>");
                }
                sb.append(", configured minVersion [").append(this.i).append("]");
                sb.append(", reported supported versions [").append(str2).append("]");
                a.warn(sb.toString(), new Object[0]);
                throw new HttpException(HttpStatus.BAD_REQUEST_400, "Unsupported websocket version specification");
            case 13:
                webSocketServletConnectionRFC6455 = new WebSocketServletConnectionRFC6455(this, webSocket, connectedEndPoint, this.e, currentConnection.getTimeStamp(), this.f, str, initExtensions(arrayList, 5, 5, 3), i);
                break;
        }
        addConnection(webSocketServletConnectionRFC6455);
        webSocketServletConnectionRFC6455.getConnection().setMaxBinaryMessageSize(this.h);
        webSocketServletConnectionRFC6455.getConnection().setMaxTextMessageSize(this.g);
        webSocketServletConnectionRFC6455.handshake(httpServletRequest, httpServletResponse, str);
        httpServletResponse.flushBuffer();
        webSocketServletConnectionRFC6455.fillBuffersFrom(((HttpParser) currentConnection.getParser()).getHeaderBuffer());
        webSocketServletConnectionRFC6455.fillBuffersFrom(((HttpParser) currentConnection.getParser()).getBodyBuffer());
        a.debug("Websocket upgrade {} {} {} {}", httpServletRequest.getRequestURI(), Integer.valueOf(i), str, webSocketServletConnectionRFC6455);
        httpServletRequest.setAttribute("org.eclipse.jetty.io.Connection", webSocketServletConnectionRFC6455);
    }

    protected String[] parseProtocols(String str) {
        if (str == null) {
            return new String[]{null};
        }
        String strTrim = str.trim();
        if (strTrim == null || strTrim.length() == 0) {
            return new String[]{null};
        }
        String[] strArrSplit = strTrim.split("\\s*,\\s*");
        String[] strArr = new String[strArrSplit.length + 1];
        System.arraycopy(strArrSplit, 0, strArr, 0, strArrSplit.length);
        return strArr;
    }

    public boolean acceptWebSocket(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws HttpException {
        WebSocket webSocketDoWebSocketConnect;
        WebSocket webSocket;
        String str;
        if (!"websocket".equalsIgnoreCase(httpServletRequest.getHeader("Upgrade"))) {
            return false;
        }
        String header = httpServletRequest.getHeader(HttpHeaders.ORIGIN);
        if (header == null) {
            header = httpServletRequest.getHeader("Sec-WebSocket-Origin");
        }
        if (!this.d.checkOrigin(httpServletRequest, header)) {
            httpServletResponse.sendError(HttpStatus.FORBIDDEN_403);
            return false;
        }
        Enumeration headers = httpServletRequest.getHeaders("Sec-WebSocket-Protocol");
        String str2 = null;
        WebSocket webSocket2 = null;
        while (str2 == null && headers != null && headers.hasMoreElements()) {
            String[] protocols = parseProtocols((String) headers.nextElement());
            int length = protocols.length;
            int i = 0;
            WebSocket webSocket3 = webSocket2;
            while (true) {
                if (i >= length) {
                    String str3 = str2;
                    webSocket = webSocket3;
                    str = str3;
                    break;
                }
                str = protocols[i];
                WebSocket webSocketDoWebSocketConnect2 = this.d.doWebSocketConnect(httpServletRequest, str);
                if (webSocketDoWebSocketConnect2 != null) {
                    webSocket = webSocketDoWebSocketConnect2;
                    break;
                }
                i++;
                webSocket3 = webSocketDoWebSocketConnect2;
            }
            webSocket2 = webSocket;
            str2 = str;
        }
        if (webSocket2 == null) {
            webSocketDoWebSocketConnect = this.d.doWebSocketConnect(httpServletRequest, null);
            if (webSocketDoWebSocketConnect == null) {
                httpServletResponse.sendError(HttpStatus.SERVICE_UNAVAILABLE_503);
                return false;
            }
        } else {
            webSocketDoWebSocketConnect = webSocket2;
        }
        upgrade(httpServletRequest, httpServletResponse, webSocketDoWebSocketConnect, str2);
        return true;
    }

    public List<Extension> initExtensions(List<String> list, int i, int i2, int i3) {
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            QuotedStringTokenizer quotedStringTokenizer = new QuotedStringTokenizer(it.next(), ";");
            String strTrim = quotedStringTokenizer.nextToken().trim();
            HashMap map = new HashMap();
            while (quotedStringTokenizer.hasMoreTokens()) {
                QuotedStringTokenizer quotedStringTokenizer2 = new QuotedStringTokenizer(quotedStringTokenizer.nextToken().trim(), "=");
                map.put(quotedStringTokenizer2.nextToken().trim(), quotedStringTokenizer2.hasMoreTokens() ? quotedStringTokenizer2.nextToken().trim() : null);
            }
            Extension extensionA = a(strTrim);
            if (extensionA != null && extensionA.init(map)) {
                a.debug("add {} {}", strTrim, map);
                arrayList.add(extensionA);
            }
        }
        a.debug("extensions={}", arrayList);
        return arrayList;
    }

    private Extension a(String str) {
        try {
            Class<? extends Extension> cls = this.c.get(str);
            if (cls != null) {
                return cls.newInstance();
            }
        } catch (Exception e) {
            a.warn(e);
        }
        return null;
    }

    protected boolean addConnection(WebSocketServletConnection webSocketServletConnection) {
        return isRunning() && this.b.add(webSocketServletConnection);
    }

    protected boolean removeConnection(WebSocketServletConnection webSocketServletConnection) {
        return this.b.remove(webSocketServletConnection);
    }

    protected void closeConnections() {
        Iterator<WebSocketServletConnection> it = this.b.iterator();
        while (it.hasNext()) {
            it.next().shutdown();
        }
    }
}
