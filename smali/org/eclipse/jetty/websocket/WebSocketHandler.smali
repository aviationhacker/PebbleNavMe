.class public abstract Lorg/eclipse/jetty/websocket/WebSocketHandler;
.super Lorg/eclipse/jetty/server/handler/HandlerWrapper;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/websocket/WebSocketFactory$Acceptor;


# instance fields
.field private final a:Lorg/eclipse/jetty/websocket/WebSocketFactory;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;-><init>()V

    .line 32
    new-instance v0, Lorg/eclipse/jetty/websocket/WebSocketFactory;

    const v1, 0x8000

    invoke-direct {v0, p0, v1}, Lorg/eclipse/jetty/websocket/WebSocketFactory;-><init>(Lorg/eclipse/jetty/websocket/WebSocketFactory$Acceptor;I)V

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketHandler;->a:Lorg/eclipse/jetty/websocket/WebSocketFactory;

    return-void
.end method


# virtual methods
.method public checkOrigin(Ljavax/servlet/http/HttpServletRequest;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    return v0
.end method

.method public getWebSocketFactory()Lorg/eclipse/jetty/websocket/WebSocketFactory;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketHandler;->a:Lorg/eclipse/jetty/websocket/WebSocketFactory;

    return-object v0
.end method

.method public handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketHandler;->a:Lorg/eclipse/jetty/websocket/WebSocketFactory;

    invoke-virtual {v0, p3, p4}, Lorg/eclipse/jetty/websocket/WebSocketFactory;->acceptWebSocket(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p4}, Ljavax/servlet/http/HttpServletResponse;->isCommitted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    .line 49
    :goto_0
    return-void

    .line 48
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/handler/HandlerWrapper;->handle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_0
.end method
