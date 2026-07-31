.class public Lorg/eclipse/jetty/websocket/WebSocketServletConnectionD06;
.super Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/websocket/WebSocketServletConnection;


# instance fields
.field private final a:Lorg/eclipse/jetty/websocket/WebSocketFactory;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/websocket/WebSocketFactory;Lorg/eclipse/jetty/websocket/WebSocket;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/websocket/WebSocketBuffers;JILjava/lang/String;)V
    .locals 9

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-wide v4, p5

    move/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;-><init>(Lorg/eclipse/jetty/websocket/WebSocket;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/websocket/WebSocketBuffers;JILjava/lang/String;)V

    .line 35
    iput-object p1, p0, Lorg/eclipse/jetty/websocket/WebSocketServletConnectionD06;->a:Lorg/eclipse/jetty/websocket/WebSocketFactory;

    .line 36
    return-void
.end method


# virtual methods
.method public handshake(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 41
    const-string v0, "Sec-WebSocket-Key"

    invoke-interface {p1, v0}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    const-string v1, "Upgrade"

    const-string v2, "WebSocket"

    invoke-interface {p2, v1, v2}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v1, "Connection"

    const-string v2, "Upgrade"

    invoke-interface {p2, v1, v2}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v1, "Sec-WebSocket-Accept"

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketServletConnectionD06;->hashKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    if-eqz p3, :cond_0

    .line 48
    const-string v0, "Sec-WebSocket-Protocol"

    invoke-interface {p2, v0, p3}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_0
    const/16 v0, 0x65

    invoke-interface {p2, v0}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    .line 53
    invoke-virtual {p0}, Lorg/eclipse/jetty/websocket/WebSocketServletConnectionD06;->onFrameHandshake()V

    .line 54
    invoke-virtual {p0}, Lorg/eclipse/jetty/websocket/WebSocketServletConnectionD06;->onWebSocketOpen()V

    .line 55
    return-void
.end method

.method public onClose()V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->onClose()V

    .line 61
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketServletConnectionD06;->a:Lorg/eclipse/jetty/websocket/WebSocketFactory;

    invoke-virtual {v0, p0}, Lorg/eclipse/jetty/websocket/WebSocketFactory;->removeConnection(Lorg/eclipse/jetty/websocket/WebSocketServletConnection;)Z

    .line 62
    return-void
.end method
