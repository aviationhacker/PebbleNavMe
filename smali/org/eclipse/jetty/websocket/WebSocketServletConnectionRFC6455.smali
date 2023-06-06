.class public Lorg/eclipse/jetty/websocket/WebSocketServletConnectionRFC6455;
.super Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/websocket/WebSocketServletConnection;


# instance fields
.field private final a:Lorg/eclipse/jetty/websocket/WebSocketFactory;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/websocket/WebSocketFactory;Lorg/eclipse/jetty/websocket/WebSocket;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/websocket/WebSocketBuffers;JILjava/lang/String;Ljava/util/List;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jetty/websocket/WebSocketFactory;",
            "Lorg/eclipse/jetty/websocket/WebSocket;",
            "Lorg/eclipse/jetty/io/EndPoint;",
            "Lorg/eclipse/jetty/websocket/WebSocketBuffers;",
            "JI",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/websocket/Extension;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 35
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-wide/from16 v4, p5

    move/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;-><init>(Lorg/eclipse/jetty/websocket/WebSocket;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/websocket/WebSocketBuffers;JILjava/lang/String;Ljava/util/List;I)V

    .line 36
    iput-object p1, p0, Lorg/eclipse/jetty/websocket/WebSocketServletConnectionRFC6455;->a:Lorg/eclipse/jetty/websocket/WebSocketFactory;

    .line 37
    return-void
.end method


# virtual methods
.method public handshake(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 42
    const-string v0, "Sec-WebSocket-Key"

    invoke-interface {p1, v0}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    const-string v1, "Upgrade"

    const-string v2, "WebSocket"

    invoke-interface {p2, v1, v2}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v1, "Connection"

    const-string v2, "Upgrade"

    invoke-interface {p2, v1, v2}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v1, "Sec-WebSocket-Accept"

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketServletConnectionRFC6455;->hashKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    if-eqz p3, :cond_0

    .line 49
    const-string v0, "Sec-WebSocket-Protocol"

    invoke-interface {p2, v0, p3}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/websocket/WebSocketServletConnectionRFC6455;->getExtensions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/websocket/Extension;

    .line 54
    const-string v2, "Sec-WebSocket-Extensions"

    invoke-interface {v0}, Lorg/eclipse/jetty/websocket/Extension;->getParameterizedName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v2, v0}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_1
    const/16 v0, 0x65

    invoke-interface {p2, v0}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    .line 59
    invoke-virtual {p0}, Lorg/eclipse/jetty/websocket/WebSocketServletConnectionRFC6455;->onFrameHandshake()V

    .line 60
    invoke-virtual {p0}, Lorg/eclipse/jetty/websocket/WebSocketServletConnectionRFC6455;->onWebSocketOpen()V

    .line 61
    return-void
.end method

.method public onClose()V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->onClose()V

    .line 67
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketServletConnectionRFC6455;->a:Lorg/eclipse/jetty/websocket/WebSocketFactory;

    invoke-virtual {v0, p0}, Lorg/eclipse/jetty/websocket/WebSocketFactory;->removeConnection(Lorg/eclipse/jetty/websocket/WebSocketServletConnection;)Z

    .line 68
    return-void
.end method
