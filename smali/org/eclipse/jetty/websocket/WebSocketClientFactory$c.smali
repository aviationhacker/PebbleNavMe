.class Lorg/eclipse/jetty/websocket/WebSocketClientFactory$c;
.super Lorg/eclipse/jetty/io/nio/SelectorManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/websocket/WebSocketClientFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lorg/eclipse/jetty/websocket/WebSocketClientFactory;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/websocket/WebSocketClientFactory;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$c;->a:Lorg/eclipse/jetty/websocket/WebSocketClientFactory;

    invoke-direct {p0}, Lorg/eclipse/jetty/io/nio/SelectorManager;-><init>()V

    return-void
.end method


# virtual methods
.method protected connectionFailed(Ljava/nio/channels/SocketChannel;Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 336
    instance-of v0, p3, Lorg/eclipse/jetty/websocket/WebSocketClient$a;

    if-nez v0, :cond_0

    .line 337
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jetty/io/nio/SelectorManager;->connectionFailed(Ljava/nio/channels/SocketChannel;Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 345
    :goto_0
    return-void

    .line 340
    :cond_0
    invoke-static {}, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->a()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 341
    check-cast p3, Lorg/eclipse/jetty/websocket/WebSocketClient$a;

    .line 343
    invoke-virtual {p3, p2}, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public dispatch(Ljava/lang/Runnable;)Z
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$c;->a:Lorg/eclipse/jetty/websocket/WebSocketClientFactory;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->a(Lorg/eclipse/jetty/websocket/WebSocketClientFactory;)Lorg/eclipse/jetty/util/thread/ThreadPool;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/util/thread/ThreadPool;->dispatch(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method protected endPointClosed(Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;)V
    .locals 1

    .prologue
    .line 330
    invoke-virtual {p1}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;->getConnection()Lorg/eclipse/jetty/io/Connection;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Connection;->onClose()V

    .line 331
    return-void
.end method

.method protected endPointOpened(Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;)V
    .locals 0

    .prologue
    .line 319
    return-void
.end method

.method protected endPointUpgraded(Lorg/eclipse/jetty/io/ConnectedEndPoint;Lorg/eclipse/jetty/io/Connection;)V
    .locals 5

    .prologue
    .line 324
    sget-object v0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$c;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "upgrade {} -> {}"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    invoke-interface {p1}, Lorg/eclipse/jetty/io/ConnectedEndPoint;->getConnection()Lorg/eclipse/jetty/io/Connection;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 325
    return-void
.end method

.method public newConnection(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/AsyncEndPoint;Ljava/lang/Object;)Lorg/eclipse/jetty/io/nio/AsyncConnection;
    .locals 2

    .prologue
    .line 311
    check-cast p3, Lorg/eclipse/jetty/websocket/WebSocketClient$a;

    .line 312
    new-instance v0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$c;->a:Lorg/eclipse/jetty/websocket/WebSocketClientFactory;

    invoke-direct {v0, v1, p2, p3}, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;-><init>(Lorg/eclipse/jetty/websocket/WebSocketClientFactory;Lorg/eclipse/jetty/io/AsyncEndPoint;Lorg/eclipse/jetty/websocket/WebSocketClient$a;)V

    return-object v0
.end method

.method protected newEndPoint(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;Ljava/nio/channels/SelectionKey;)Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;
    .locals 4

    .prologue
    .line 286
    invoke-virtual {p3}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/websocket/WebSocketClient$a;

    .line 287
    invoke-virtual {v0}, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->e()I

    move-result v1

    .line 288
    if-gez v1, :cond_0

    .line 289
    invoke-virtual {p0}, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$c;->getMaxIdleTime()J

    move-result-wide v2

    long-to-int v1, v2

    .line 290
    :cond_0
    new-instance v2, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;

    invoke-direct {v2, p1, p2, p3, v1}, Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;-><init>(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;Ljava/nio/channels/SelectionKey;I)V

    .line 294
    const-string v1, "wss"

    invoke-virtual {v0}, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->d()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 296
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$c;->a:Lorg/eclipse/jetty/websocket/WebSocketClientFactory;

    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->newSslEngine(Ljava/nio/channels/SocketChannel;)Ljavax/net/ssl/SSLEngine;

    move-result-object v1

    .line 297
    new-instance v3, Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-direct {v3, v1, v2}, Lorg/eclipse/jetty/io/nio/SslConnection;-><init>(Ljavax/net/ssl/SSLEngine;Lorg/eclipse/jetty/io/EndPoint;)V

    .line 298
    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/AsyncEndPoint;->setConnection(Lorg/eclipse/jetty/io/Connection;)V

    .line 299
    invoke-virtual {v3}, Lorg/eclipse/jetty/io/nio/SslConnection;->getSslEndPoint()Lorg/eclipse/jetty/io/AsyncEndPoint;

    move-result-object v1

    .line 302
    :goto_0
    invoke-virtual {p2}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->getManager()Lorg/eclipse/jetty/io/nio/SelectorManager;

    move-result-object v3

    invoke-virtual {v3, p1, v1, v0}, Lorg/eclipse/jetty/io/nio/SelectorManager;->newConnection(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/AsyncEndPoint;Ljava/lang/Object;)Lorg/eclipse/jetty/io/nio/AsyncConnection;

    move-result-object v0

    .line 303
    invoke-interface {v1, v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->setConnection(Lorg/eclipse/jetty/io/Connection;)V

    .line 305
    return-object v2

    :cond_1
    move-object v1, v2

    goto :goto_0
.end method
