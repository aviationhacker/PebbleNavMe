.class public Lorg/eclipse/jetty/websocket/WebSocketClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/websocket/WebSocketClient$1;,
        Lorg/eclipse/jetty/websocket/WebSocketClient$a;
    }
.end annotation


# static fields
.field private static final a:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private final b:Lorg/eclipse/jetty/websocket/WebSocketClientFactory;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I

.field private i:I

.field private j:Lorg/eclipse/jetty/websocket/MaskGen;

.field private k:Ljava/net/SocketAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const-class v0, Lorg/eclipse/jetty/websocket/WebSocketClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/String;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/websocket/WebSocketClient;->a:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->c:Ljava/util/Map;

    .line 83
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->d:Ljava/util/List;

    .line 86
    iput v1, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->g:I

    .line 87
    const/16 v0, 0x4000

    iput v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->h:I

    .line 88
    iput v1, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->i:I

    .line 103
    new-instance v0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;

    invoke-direct {v0}, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->b:Lorg/eclipse/jetty/websocket/WebSocketClientFactory;

    .line 104
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->b:Lorg/eclipse/jetty/websocket/WebSocketClientFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->start()V

    .line 105
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->b:Lorg/eclipse/jetty/websocket/WebSocketClientFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->getMaskGen()Lorg/eclipse/jetty/websocket/MaskGen;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->j:Lorg/eclipse/jetty/websocket/MaskGen;

    .line 106
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/websocket/WebSocketClientFactory;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->c:Ljava/util/Map;

    .line 83
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->d:Ljava/util/List;

    .line 86
    iput v1, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->g:I

    .line 87
    const/16 v0, 0x4000

    iput v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->h:I

    .line 88
    iput v1, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->i:I

    .line 116
    iput-object p1, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->b:Lorg/eclipse/jetty/websocket/WebSocketClientFactory;

    .line 117
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->b:Lorg/eclipse/jetty/websocket/WebSocketClientFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->getMaskGen()Lorg/eclipse/jetty/websocket/MaskGen;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->j:Lorg/eclipse/jetty/websocket/MaskGen;

    .line 118
    return-void
.end method

.method static synthetic a()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lorg/eclipse/jetty/websocket/WebSocketClient;->a:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method public static toSocketAddress(Ljava/net/URI;)Ljava/net/InetSocketAddress;
    .locals 4

    .prologue
    .line 357
    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 358
    const-string v0, "ws"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "wss"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 359
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad WebSocket scheme: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_0
    invoke-virtual {p0}, Ljava/net/URI;->getPort()I

    move-result v0

    .line 361
    if-nez v0, :cond_1

    .line 362
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad WebSocket port: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 363
    :cond_1
    if-gez v0, :cond_2

    .line 364
    const-string v0, "ws"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x50

    .line 366
    :cond_2
    :goto_0
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    return-object v1

    .line 364
    :cond_3
    const/16 v0, 0x1bb

    goto :goto_0
.end method


# virtual methods
.method public getBindAddress()Ljava/net/SocketAddress;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->k:Ljava/net/SocketAddress;

    return-object v0
.end method

.method public getCookies()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->c:Ljava/util/Map;

    return-object v0
.end method

.method public getExtensions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->d:Ljava/util/List;

    return-object v0
.end method

.method public getFactory()Lorg/eclipse/jetty/websocket/WebSocketClientFactory;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->b:Lorg/eclipse/jetty/websocket/WebSocketClientFactory;

    return-object v0
.end method

.method public getMaskGen()Lorg/eclipse/jetty/websocket/MaskGen;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->j:Lorg/eclipse/jetty/websocket/MaskGen;

    return-object v0
.end method

.method public getMaxBinaryMessageSize()I
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->i:I

    return v0
.end method

.method public getMaxIdleTime()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->g:I

    return v0
.end method

.method public getMaxTextMessageSize()I
    .locals 1

    .prologue
    .line 256
    iget v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->h:I

    return v0
.end method

.method public getOrigin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->f:Ljava/lang/String;

    return-object v0
.end method

.method public open(Ljava/net/URI;Lorg/eclipse/jetty/websocket/WebSocket;)Ljava/util/concurrent/Future;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Lorg/eclipse/jetty/websocket/WebSocket;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lorg/eclipse/jetty/websocket/WebSocket$Connection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 336
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->b:Lorg/eclipse/jetty/websocket/WebSocketClientFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 337
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Factory !started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 339
    :cond_0
    invoke-static {p1}, Lorg/eclipse/jetty/websocket/WebSocketClient;->toSocketAddress(Ljava/net/URI;)Ljava/net/InetSocketAddress;

    move-result-object v6

    .line 341
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v4

    .line 342
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->k:Ljava/net/SocketAddress;

    if-eqz v0, :cond_1

    .line 343
    invoke-virtual {v4}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->k:Ljava/net/SocketAddress;

    invoke-virtual {v0, v1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 344
    :cond_1
    invoke-virtual {v4}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 346
    new-instance v0, Lorg/eclipse/jetty/websocket/WebSocketClient$a;

    const/4 v5, 0x0

    move-object v1, p2

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/websocket/WebSocketClient$a;-><init>(Lorg/eclipse/jetty/websocket/WebSocket;Ljava/net/URI;Lorg/eclipse/jetty/websocket/WebSocketClient;Ljava/nio/channels/ByteChannel;Lorg/eclipse/jetty/websocket/WebSocketClient$1;)V

    .line 348
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 349
    invoke-virtual {v4, v6}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z

    .line 350
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->b:Lorg/eclipse/jetty/websocket/WebSocketClientFactory;

    invoke-virtual {v1}, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->getSelectorManager()Lorg/eclipse/jetty/io/nio/SelectorManager;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lorg/eclipse/jetty/io/nio/SelectorManager;->register(Ljava/nio/channels/SocketChannel;Ljava/lang/Object;)V

    .line 352
    return-object v0
.end method

.method public open(Ljava/net/URI;Lorg/eclipse/jetty/websocket/WebSocket;JLjava/util/concurrent/TimeUnit;)Lorg/eclipse/jetty/websocket/WebSocket$Connection;
    .locals 3

    .prologue
    .line 308
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/websocket/WebSocketClient;->open(Ljava/net/URI;Lorg/eclipse/jetty/websocket/WebSocket;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0, p3, p4, p5}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/websocket/WebSocket$Connection;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 310
    :catch_0
    move-exception v0

    .line 312
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 313
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_0

    .line 314
    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 315
    :cond_0
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_1

    .line 316
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 317
    :cond_1
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_2

    .line 318
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 319
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setBindAddress(Ljava/net/SocketAddress;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->k:Ljava/net/SocketAddress;

    .line 147
    return-void
.end method

.method public setMaskGen(Lorg/eclipse/jetty/websocket/MaskGen;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->j:Lorg/eclipse/jetty/websocket/MaskGen;

    .line 248
    return-void
.end method

.method public setMaxBinaryMessageSize(I)V
    .locals 0

    .prologue
    .line 287
    iput p1, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->i:I

    .line 288
    return-void
.end method

.method public setMaxIdleTime(I)V
    .locals 0

    .prologue
    .line 167
    iput p1, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->g:I

    .line 168
    return-void
.end method

.method public setMaxTextMessageSize(I)V
    .locals 0

    .prologue
    .line 267
    iput p1, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->h:I

    .line 268
    return-void
.end method

.method public setOrigin(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->e:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public setProtocol(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lorg/eclipse/jetty/websocket/WebSocketClient;->f:Ljava/lang/String;

    .line 188
    return-void
.end method
