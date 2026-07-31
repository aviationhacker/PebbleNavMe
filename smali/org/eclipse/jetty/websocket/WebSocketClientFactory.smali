.class public Lorg/eclipse/jetty/websocket/WebSocketClientFactory;
.super Lorg/eclipse/jetty/util/component/AggregateLifeCycle;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/websocket/WebSocketClientFactory$b;,
        Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;,
        Lorg/eclipse/jetty/websocket/WebSocketClientFactory$c;
    }
.end annotation


# static fields
.field private static final a:Lorg/eclipse/jetty/util/log/Logger;

.field private static final b:Lorg/eclipse/jetty/io/ByteArrayBuffer;


# instance fields
.field private final c:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/eclipse/jetty/websocket/WebSocketConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

.field private final e:Lorg/eclipse/jetty/util/thread/ThreadPool;

.field private final f:Lorg/eclipse/jetty/websocket/WebSocketClientFactory$c;

.field private g:Lorg/eclipse/jetty/websocket/MaskGen;

.field private h:Lorg/eclipse/jetty/websocket/WebSocketBuffers;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 69
    const-class v0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/String;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->a:Lorg/eclipse/jetty/util/log/Logger;

    .line 70
    new-instance v0, Lorg/eclipse/jetty/io/ByteArrayBuffer$CaseInsensitive;

    const-string v1, "Sec-WebSocket-Accept"

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer$CaseInsensitive;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->b:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;-><init>(Lorg/eclipse/jetty/util/thread/ThreadPool;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/util/thread/ThreadPool;)V
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lorg/eclipse/jetty/websocket/RandomMaskGen;

    invoke-direct {v0}, Lorg/eclipse/jetty/websocket/RandomMaskGen;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;-><init>(Lorg/eclipse/jetty/util/thread/ThreadPool;Lorg/eclipse/jetty/websocket/MaskGen;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/util/thread/ThreadPool;Lorg/eclipse/jetty/websocket/MaskGen;)V
    .locals 1

    .prologue
    .line 107
    const/16 v0, 0x2000

    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;-><init>(Lorg/eclipse/jetty/util/thread/ThreadPool;Lorg/eclipse/jetty/websocket/MaskGen;I)V

    .line 108
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/util/thread/ThreadPool;Lorg/eclipse/jetty/websocket/MaskGen;I)V
    .locals 1

    .prologue
    .line 120
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;-><init>()V

    .line 71
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->c:Ljava/util/Queue;

    .line 72
    new-instance v0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->d:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    .line 121
    if-nez p1, :cond_0

    .line 122
    new-instance p1, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;

    invoke-direct {p1}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;-><init>()V

    .line 123
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->e:Lorg/eclipse/jetty/util/thread/ThreadPool;

    .line 124
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->e:Lorg/eclipse/jetty/util/thread/ThreadPool;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->addBean(Ljava/lang/Object;)Z

    .line 126
    new-instance v0, Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    invoke-direct {v0, p3}, Lorg/eclipse/jetty/websocket/WebSocketBuffers;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->h:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    .line 127
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->h:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->addBean(Ljava/lang/Object;)Z

    .line 129
    iput-object p2, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->g:Lorg/eclipse/jetty/websocket/MaskGen;

    .line 130
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->g:Lorg/eclipse/jetty/websocket/MaskGen;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->addBean(Ljava/lang/Object;)Z

    .line 132
    new-instance v0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$c;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$c;-><init>(Lorg/eclipse/jetty/websocket/WebSocketClientFactory;)V

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->f:Lorg/eclipse/jetty/websocket/WebSocketClientFactory$c;

    .line 133
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->f:Lorg/eclipse/jetty/websocket/WebSocketClientFactory$c;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->addBean(Ljava/lang/Object;)Z

    .line 135
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->d:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->addBean(Ljava/lang/Object;)Z

    .line 136
    return-void
.end method

.method static synthetic a()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->a:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method static synthetic a(Lorg/eclipse/jetty/websocket/WebSocketClientFactory;)Lorg/eclipse/jetty/util/thread/ThreadPool;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->e:Lorg/eclipse/jetty/util/thread/ThreadPool;

    return-object v0
.end method

.method static synthetic b()Lorg/eclipse/jetty/io/ByteArrayBuffer;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->b:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    return-object v0
.end method

.method static synthetic b(Lorg/eclipse/jetty/websocket/WebSocketClientFactory;)Lorg/eclipse/jetty/websocket/WebSocketBuffers;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->h:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    return-object v0
.end method


# virtual methods
.method protected addConnection(Lorg/eclipse/jetty/websocket/WebSocketConnection;)Z
    .locals 1

    .prologue
    .line 257
    invoke-virtual {p0}, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->c:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected closeConnections()V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/websocket/WebSocketConnection;

    .line 268
    invoke-interface {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnection;->shutdown()V

    goto :goto_0

    .line 269
    :cond_0
    return-void
.end method

.method protected doStop()V
    .locals 0

    .prologue
    .line 220
    invoke-virtual {p0}, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->closeConnections()V

    .line 221
    invoke-super {p0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->doStop()V

    .line 222
    return-void
.end method

.method public getBufferSize()I
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->h:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    invoke-virtual {v0}, Lorg/eclipse/jetty/websocket/WebSocketBuffers;->getBufferSize()I

    move-result v0

    return v0
.end method

.method public getMaskGen()Lorg/eclipse/jetty/websocket/MaskGen;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->g:Lorg/eclipse/jetty/websocket/MaskGen;

    return-object v0
.end method

.method public getSelectorManager()Lorg/eclipse/jetty/io/nio/SelectorManager;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->f:Lorg/eclipse/jetty/websocket/WebSocketClientFactory$c;

    return-object v0
.end method

.method public getSslContextFactory()Lorg/eclipse/jetty/util/ssl/SslContextFactory;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->d:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    return-object v0
.end method

.method public getThreadPool()Lorg/eclipse/jetty/util/thread/ThreadPool;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->e:Lorg/eclipse/jetty/util/thread/ThreadPool;

    return-object v0
.end method

.method protected newSslEngine(Ljava/nio/channels/SocketChannel;)Ljavax/net/ssl/SSLEngine;
    .locals 3

    .prologue
    .line 239
    if-eqz p1, :cond_0

    .line 241
    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 242
    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getPort()I

    move-result v1

    .line 243
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->d:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v2, v0, v1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->newSslEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    .line 249
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLEngine;->setUseClientMode(Z)V

    .line 250
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->beginHandshake()V

    .line 252
    return-object v0

    .line 247
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->d:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->newSslEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    goto :goto_0
.end method

.method public newWebSocketClient()Lorg/eclipse/jetty/websocket/WebSocketClient;
    .locals 1

    .prologue
    .line 233
    new-instance v0, Lorg/eclipse/jetty/websocket/WebSocketClient;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/websocket/WebSocketClient;-><init>(Lorg/eclipse/jetty/websocket/WebSocketClientFactory;)V

    return-object v0
.end method

.method protected removeConnection(Lorg/eclipse/jetty/websocket/WebSocketConnection;)Z
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->c:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setBufferSize(I)V
    .locals 2

    .prologue
    .line 201
    invoke-virtual {p0}, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->h:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->removeBean(Ljava/lang/Object;)Z

    .line 204
    new-instance v0, Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    invoke-direct {v0, p1}, Lorg/eclipse/jetty/websocket/WebSocketBuffers;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->h:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    .line 205
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->h:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->addBean(Ljava/lang/Object;)Z

    .line 206
    return-void
.end method

.method public setMaskGen(Lorg/eclipse/jetty/websocket/MaskGen;)V
    .locals 2

    .prologue
    .line 187
    invoke-virtual {p0}, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->g:Lorg/eclipse/jetty/websocket/MaskGen;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->removeBean(Ljava/lang/Object;)Z

    .line 190
    iput-object p1, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->g:Lorg/eclipse/jetty/websocket/MaskGen;

    .line 191
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->addBean(Ljava/lang/Object;)Z

    .line 192
    return-void
.end method
