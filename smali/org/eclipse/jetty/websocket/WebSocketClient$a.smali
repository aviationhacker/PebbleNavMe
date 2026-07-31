.class Lorg/eclipse/jetty/websocket/WebSocketClient$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/websocket/WebSocketClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future",
        "<",
        "Lorg/eclipse/jetty/websocket/WebSocket$Connection;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lorg/eclipse/jetty/websocket/WebSocket;

.field final b:Ljava/net/URI;

.field final c:Lorg/eclipse/jetty/websocket/WebSocketClient;

.field final d:Ljava/util/concurrent/CountDownLatch;

.field e:Ljava/nio/channels/ByteChannel;

.field f:Lorg/eclipse/jetty/websocket/WebSocketConnection;

.field g:Ljava/lang/Throwable;


# direct methods
.method private constructor <init>(Lorg/eclipse/jetty/websocket/WebSocket;Ljava/net/URI;Lorg/eclipse/jetty/websocket/WebSocketClient;Ljava/nio/channels/ByteChannel;)V
    .locals 2

    .prologue
    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->d:Ljava/util/concurrent/CountDownLatch;

    .line 384
    iput-object p1, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->a:Lorg/eclipse/jetty/websocket/WebSocket;

    .line 385
    iput-object p2, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->b:Ljava/net/URI;

    .line 386
    iput-object p3, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->c:Lorg/eclipse/jetty/websocket/WebSocketClient;

    .line 387
    iput-object p4, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->e:Ljava/nio/channels/ByteChannel;

    .line 388
    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/jetty/websocket/WebSocket;Ljava/net/URI;Lorg/eclipse/jetty/websocket/WebSocketClient;Ljava/nio/channels/ByteChannel;Lorg/eclipse/jetty/websocket/WebSocketClient$1;)V
    .locals 0

    .prologue
    .line 372
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/eclipse/jetty/websocket/WebSocketClient$a;-><init>(Lorg/eclipse/jetty/websocket/WebSocket;Ljava/net/URI;Lorg/eclipse/jetty/websocket/WebSocketClient;Ljava/nio/channels/ByteChannel;)V

    return-void
.end method

.method private a(Ljava/nio/channels/ByteChannel;ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 579
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->a:Lorg/eclipse/jetty/websocket/WebSocket;

    invoke-interface {v0, p2, p3}, Lorg/eclipse/jetty/websocket/WebSocket;->onClose(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    :goto_0
    :try_start_1
    invoke-interface {p1}, Ljava/nio/channels/ByteChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 594
    :goto_1
    return-void

    .line 581
    :catch_0
    move-exception v0

    .line 583
    invoke-static {}, Lorg/eclipse/jetty/websocket/WebSocketClient;->a()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 590
    :catch_1
    move-exception v0

    .line 592
    invoke-static {}, Lorg/eclipse/jetty/websocket/WebSocketClient;->a()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public a()Ljava/util/Map;
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
    .line 452
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->c:Lorg/eclipse/jetty/websocket/WebSocketClient;

    invoke-virtual {v0}, Lorg/eclipse/jetty/websocket/WebSocketClient;->getCookies()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public a(JLjava/util/concurrent/TimeUnit;)Lorg/eclipse/jetty/websocket/WebSocket$Connection;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 549
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 553
    monitor-enter p0

    .line 555
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->g:Ljava/lang/Throwable;

    .line 556
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->f:Lorg/eclipse/jetty/websocket/WebSocketConnection;

    if-nez v2, :cond_1

    .line 558
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->g:Ljava/lang/Throwable;

    .line 559
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->e:Ljava/nio/channels/ByteChannel;

    .line 560
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->e:Ljava/nio/channels/ByteChannel;

    .line 564
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 566
    if-eqz v2, :cond_0

    .line 567
    const/16 v3, 0x3ee

    const-string v4, "timeout"

    invoke-direct {p0, v2, v3, v4}, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->a(Ljava/nio/channels/ByteChannel;ILjava/lang/String;)V

    .line 568
    :cond_0
    if-eqz v0, :cond_2

    .line 569
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 563
    :cond_1
    :try_start_1
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->f:Lorg/eclipse/jetty/websocket/WebSocketConnection;

    invoke-interface {v2}, Lorg/eclipse/jetty/websocket/WebSocketConnection;->getConnection()Lorg/eclipse/jetty/websocket/WebSocket$Connection;

    move-result-object v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_0

    .line 564
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 570
    :cond_2
    if-eqz v1, :cond_3

    .line 571
    return-object v1

    .line 572
    :cond_3
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v0
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 425
    .line 426
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 428
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->e:Ljava/nio/channels/ByteChannel;

    if-eqz v1, :cond_0

    .line 430
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->e:Ljava/nio/channels/ByteChannel;

    .line 431
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->e:Ljava/nio/channels/ByteChannel;

    .line 432
    iput-object p1, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->g:Ljava/lang/Throwable;

    .line 434
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 436
    if-eqz v0, :cond_1

    .line 438
    :try_start_2
    instance-of v1, p1, Ljava/net/ProtocolException;

    if-eqz v1, :cond_2

    .line 439
    const/16 v1, 0x3ea

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->a(Ljava/nio/channels/ByteChannel;ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 446
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 448
    return-void

    .line 434
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 446
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0

    .line 441
    :cond_2
    const/16 v1, 0x3ee

    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->a(Ljava/nio/channels/ByteChannel;ILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0
.end method

.method public a(Lorg/eclipse/jetty/websocket/WebSocketConnection;)V
    .locals 3

    .prologue
    .line 394
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->c:Lorg/eclipse/jetty/websocket/WebSocketClient;

    invoke-virtual {v0}, Lorg/eclipse/jetty/websocket/WebSocketClient;->getFactory()Lorg/eclipse/jetty/websocket/WebSocketClientFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->addConnection(Lorg/eclipse/jetty/websocket/WebSocketConnection;)Z

    .line 396
    invoke-interface {p1}, Lorg/eclipse/jetty/websocket/WebSocketConnection;->getConnection()Lorg/eclipse/jetty/websocket/WebSocket$Connection;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->c:Lorg/eclipse/jetty/websocket/WebSocketClient;

    invoke-virtual {v1}, Lorg/eclipse/jetty/websocket/WebSocketClient;->getMaxTextMessageSize()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/websocket/WebSocket$Connection;->setMaxTextMessageSize(I)V

    .line 397
    invoke-interface {p1}, Lorg/eclipse/jetty/websocket/WebSocketConnection;->getConnection()Lorg/eclipse/jetty/websocket/WebSocket$Connection;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->c:Lorg/eclipse/jetty/websocket/WebSocketClient;

    invoke-virtual {v1}, Lorg/eclipse/jetty/websocket/WebSocketClient;->getMaxBinaryMessageSize()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/websocket/WebSocket$Connection;->setMaxBinaryMessageSize(I)V

    .line 400
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 402
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->e:Ljava/nio/channels/ByteChannel;

    if-eqz v0, :cond_0

    .line 403
    iput-object p1, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->f:Lorg/eclipse/jetty/websocket/WebSocketConnection;

    .line 404
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->f:Lorg/eclipse/jetty/websocket/WebSocketConnection;

    .line 405
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 407
    if-eqz v2, :cond_2

    .line 409
    :try_start_2
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->a:Lorg/eclipse/jetty/websocket/WebSocket;

    instance-of v0, v0, Lorg/eclipse/jetty/websocket/WebSocket$OnFrame;

    if-eqz v0, :cond_1

    .line 410
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->a:Lorg/eclipse/jetty/websocket/WebSocket;

    check-cast v0, Lorg/eclipse/jetty/websocket/WebSocket$OnFrame;

    invoke-interface {v2}, Lorg/eclipse/jetty/websocket/WebSocketConnection;->getConnection()Lorg/eclipse/jetty/websocket/WebSocket$Connection;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/websocket/WebSocket$OnFrame;->onHandshake(Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;)V

    .line 412
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->a:Lorg/eclipse/jetty/websocket/WebSocket;

    invoke-interface {v2}, Lorg/eclipse/jetty/websocket/WebSocketConnection;->getConnection()Lorg/eclipse/jetty/websocket/WebSocket$Connection;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/websocket/WebSocket;->onOpen(Lorg/eclipse/jetty/websocket/WebSocket$Connection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 417
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 419
    return-void

    .line 405
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 417
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->c:Lorg/eclipse/jetty/websocket/WebSocketClient;

    invoke-virtual {v0}, Lorg/eclipse/jetty/websocket/WebSocketClient;->getProtocol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Lorg/eclipse/jetty/websocket/WebSocket;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->a:Lorg/eclipse/jetty/websocket/WebSocket;

    return-object v0
.end method

.method public cancel(Z)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 495
    .line 496
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 498
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->f:Lorg/eclipse/jetty/websocket/WebSocketConnection;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->g:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->e:Ljava/nio/channels/ByteChannel;

    if-eqz v1, :cond_0

    .line 500
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->e:Ljava/nio/channels/ByteChannel;

    .line 501
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->e:Ljava/nio/channels/ByteChannel;

    .line 503
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 505
    if-eqz v0, :cond_1

    .line 507
    const/16 v1, 0x3ee

    :try_start_2
    const-string v2, "cancelled"

    invoke-direct {p0, v0, v1, v2}, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->a(Ljava/nio/channels/ByteChannel;ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 508
    const/4 v0, 0x1

    .line 514
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :goto_0
    return v0

    .line 503
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 514
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0

    .line 510
    :cond_1
    const/4 v0, 0x0

    .line 514
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0
.end method

.method public d()Ljava/net/URI;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->b:Ljava/net/URI;

    return-object v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->c:Lorg/eclipse/jetty/websocket/WebSocketClient;

    invoke-virtual {v0}, Lorg/eclipse/jetty/websocket/WebSocketClient;->getMaxIdleTime()I

    move-result v0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->c:Lorg/eclipse/jetty/websocket/WebSocketClient;

    invoke-virtual {v0}, Lorg/eclipse/jetty/websocket/WebSocketClient;->getOrigin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Lorg/eclipse/jetty/websocket/MaskGen;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->c:Lorg/eclipse/jetty/websocket/WebSocketClient;

    invoke-virtual {v0}, Lorg/eclipse/jetty/websocket/WebSocketClient;->getMaskGen()Lorg/eclipse/jetty/websocket/MaskGen;

    move-result-object v0

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 372
    invoke-virtual {p0}, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->h()Lorg/eclipse/jetty/websocket/WebSocket$Connection;

    move-result-object v0

    return-object v0
.end method

.method public synthetic get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 372
    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->a(JLjava/util/concurrent/TimeUnit;)Lorg/eclipse/jetty/websocket/WebSocket$Connection;

    move-result-object v0

    return-object v0
.end method

.method public h()Lorg/eclipse/jetty/websocket/WebSocket$Connection;
    .locals 3

    .prologue
    .line 538
    const-wide v0, 0x7fffffffffffffffL

    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->a(JLjava/util/concurrent/TimeUnit;)Lorg/eclipse/jetty/websocket/WebSocket$Connection;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 540
    :catch_0
    move-exception v0

    .line 542
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The universe has ended"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 520
    monitor-enter p0

    .line 522
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->e:Ljava/nio/channels/ByteChannel;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->f:Lorg/eclipse/jetty/websocket/WebSocketConnection;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 523
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 528
    monitor-enter p0

    .line 530
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->f:Lorg/eclipse/jetty/websocket/WebSocketConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->g:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 531
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->b:Ljava/net/URI;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->a:Lorg/eclipse/jetty/websocket/WebSocket;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
