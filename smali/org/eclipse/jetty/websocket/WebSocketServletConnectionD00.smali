.class public Lorg/eclipse/jetty/websocket/WebSocketServletConnectionD00;
.super Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/websocket/WebSocketServletConnection;


# instance fields
.field private final a:Lorg/eclipse/jetty/websocket/WebSocketFactory;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/websocket/WebSocketFactory;Lorg/eclipse/jetty/websocket/WebSocket;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/websocket/WebSocketBuffers;JILjava/lang/String;)V
    .locals 9

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-wide v4, p5

    move/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;-><init>(Lorg/eclipse/jetty/websocket/WebSocket;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/websocket/WebSocketBuffers;JILjava/lang/String;)V

    .line 37
    iput-object p1, p0, Lorg/eclipse/jetty/websocket/WebSocketServletConnectionD00;->a:Lorg/eclipse/jetty/websocket/WebSocketFactory;

    .line 38
    return-void
.end method


# virtual methods
.method public handshake(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/16 v5, 0x65

    .line 42
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    move-result-object v1

    .line 44
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    :cond_0
    new-instance v1, Lorg/eclipse/jetty/http/HttpURI;

    invoke-direct {v1, v0}, Lorg/eclipse/jetty/http/HttpURI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/eclipse/jetty/http/HttpURI;->toString()Ljava/lang/String;

    move-result-object v1

    .line 49
    const-string v0, "Host"

    invoke-interface {p1, v0}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 51
    const-string v0, "Sec-WebSocket-Origin"

    invoke-interface {p1, v0}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    if-nez v0, :cond_1

    .line 54
    const-string v0, "Origin"

    invoke-interface {p1, v0}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    :cond_1
    if-eqz v0, :cond_2

    .line 58
    const-string v3, "\r\n"

    invoke-static {v0, v3}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    :cond_2
    const-string v3, "Sec-WebSocket-Key1"

    invoke-interface {p1, v3}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 63
    if-eqz v3, :cond_6

    .line 65
    const-string v4, "Sec-WebSocket-Key2"

    invoke-interface {p1, v4}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 66
    invoke-virtual {p0, v3, v4}, Lorg/eclipse/jetty/websocket/WebSocketServletConnectionD00;->setHixieKeys(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v3, "Upgrade"

    const-string v4, "WebSocket"

    invoke-interface {p2, v3, v4}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v3, "Connection"

    const-string v4, "Upgrade"

    invoke-interface {p2, v3, v4}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    if-eqz v0, :cond_3

    .line 72
    const-string v3, "Sec-WebSocket-Origin"

    invoke-interface {p2, v3, v0}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_3
    const-string v3, "Sec-WebSocket-Location"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "wss://"

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v3, v0}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    if-eqz p3, :cond_4

    .line 77
    const-string v0, "Sec-WebSocket-Protocol"

    invoke-interface {p2, v0, p3}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_4
    const-string v0, "WebSocket Protocol Handshake"

    invoke-interface {p2, v5, v0}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V

    .line 97
    :goto_1
    return-void

    .line 74
    :cond_5
    const-string v0, "ws://"

    goto :goto_0

    .line 83
    :cond_6
    const-string v3, "Upgrade"

    const-string v4, "WebSocket"

    invoke-interface {p2, v3, v4}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v3, "Connection"

    const-string v4, "Upgrade"

    invoke-interface {p2, v3, v4}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v3, "WebSocket-Origin"

    invoke-interface {p2, v3, v0}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v3, "WebSocket-Location"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "wss://"

    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v3, v0}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    if-eqz p3, :cond_7

    .line 89
    const-string v0, "WebSocket-Protocol"

    invoke-interface {p2, v0, p3}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_7
    const-string v0, "Web Socket Protocol Handshake"

    invoke-interface {p2, v5, v0}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V

    .line 92
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->flushBuffer()V

    .line 94
    invoke-virtual {p0}, Lorg/eclipse/jetty/websocket/WebSocketServletConnectionD00;->onFrameHandshake()V

    .line 95
    invoke-virtual {p0}, Lorg/eclipse/jetty/websocket/WebSocketServletConnectionD00;->onWebsocketOpen()V

    goto :goto_1

    .line 86
    :cond_8
    const-string v0, "ws://"

    goto :goto_2
.end method

.method public onClose()V
    .locals 1

    .prologue
    .line 102
    invoke-super {p0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->onClose()V

    .line 103
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketServletConnectionD00;->a:Lorg/eclipse/jetty/websocket/WebSocketFactory;

    invoke-virtual {v0, p0}, Lorg/eclipse/jetty/websocket/WebSocketFactory;->removeConnection(Lorg/eclipse/jetty/websocket/WebSocketServletConnection;)Z

    .line 104
    return-void
.end method
