.class public abstract Lorg/eclipse/jetty/websocket/WebSocketServlet;
.super Ljavax/servlet/http/HttpServlet;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/websocket/WebSocketFactory$Acceptor;


# instance fields
.field private final a:Lorg/eclipse/jetty/util/log/Logger;

.field private b:Lorg/eclipse/jetty/websocket/WebSocketFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljavax/servlet/http/HttpServlet;-><init>()V

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketServlet;->a:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method


# virtual methods
.method public checkOrigin(Ljavax/servlet/http/HttpServletRequest;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 121
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketServlet;->b:Lorg/eclipse/jetty/websocket/WebSocketFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/websocket/WebSocketFactory;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 125
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketServlet;->a:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 67
    :try_start_0
    const-string v0, "bufferSize"

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/websocket/WebSocketServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    new-instance v1, Lorg/eclipse/jetty/websocket/WebSocketFactory;

    if-nez v0, :cond_4

    const/16 v0, 0x2000

    :goto_0
    invoke-direct {v1, p0, v0}, Lorg/eclipse/jetty/websocket/WebSocketFactory;-><init>(Lorg/eclipse/jetty/websocket/WebSocketFactory$Acceptor;I)V

    iput-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketServlet;->b:Lorg/eclipse/jetty/websocket/WebSocketFactory;

    .line 69
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketServlet;->b:Lorg/eclipse/jetty/websocket/WebSocketFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/websocket/WebSocketFactory;->start()V

    .line 71
    const-string v0, "maxIdleTime"

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/websocket/WebSocketServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_0

    .line 73
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketServlet;->b:Lorg/eclipse/jetty/websocket/WebSocketFactory;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/websocket/WebSocketFactory;->setMaxIdleTime(I)V

    .line 75
    :cond_0
    const-string v0, "maxTextMessageSize"

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/websocket/WebSocketServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_1

    .line 77
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketServlet;->b:Lorg/eclipse/jetty/websocket/WebSocketFactory;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/websocket/WebSocketFactory;->setMaxTextMessageSize(I)V

    .line 79
    :cond_1
    const-string v0, "maxBinaryMessageSize"

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/websocket/WebSocketServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_2

    .line 81
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketServlet;->b:Lorg/eclipse/jetty/websocket/WebSocketFactory;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/websocket/WebSocketFactory;->setMaxBinaryMessageSize(I)V

    .line 83
    :cond_2
    const-string v0, "minVersion"

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/websocket/WebSocketServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_3

    .line 85
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketServlet;->b:Lorg/eclipse/jetty/websocket/WebSocketFactory;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/websocket/WebSocketFactory;->setMinVersion(I)V

    .line 95
    :cond_3
    return-void

    .line 68
    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljavax/servlet/ServletException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 89
    throw v0

    .line 91
    :catch_1
    move-exception v0

    .line 93
    new-instance v1, Ljavax/servlet/ServletException;

    invoke-direct {v1, v0}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected service(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketServlet;->b:Lorg/eclipse/jetty/websocket/WebSocketFactory;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/websocket/WebSocketFactory;->acceptWebSocket(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->isCommitted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    invoke-super {p0, p1, p2}, Ljavax/servlet/http/HttpServlet;->service(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_0
.end method
