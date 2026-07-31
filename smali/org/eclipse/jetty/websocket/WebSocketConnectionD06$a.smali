.class Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field volatile a:Z

.field b:I

.field c:I

.field final synthetic d:Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;


# direct methods
.method private constructor <init>(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)V
    .locals 1

    .prologue
    .line 309
    iput-object p1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$a;->d:Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$a;->d:Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->a(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$a;->b:I

    .line 313
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$a;->d:Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->b(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$a;->c:I

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$1;)V
    .locals 0

    .prologue
    .line 309
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$a;-><init>(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)V

    return-void
.end method


# virtual methods
.method public binaryOpcode()B
    .locals 1

    .prologue
    .line 429
    const/4 v0, 0x5

    return v0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 501
    const/16 v0, 0x3e8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$a;->close(ILjava/lang/String;)V

    .line 502
    return-void
.end method

.method public close(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 371
    iget-boolean v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$a;->a:Z

    if-eqz v0, :cond_0

    .line 375
    :goto_0
    return-void

    .line 373
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$a;->a:Z

    .line 374
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$a;->d:Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->closeOut(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public continuationOpcode()B
    .locals 1

    .prologue
    .line 441
    const/4 v0, 0x0

    return v0
.end method

.method public disconnect()V
    .locals 0

    .prologue
    .line 495
    invoke-virtual {p0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$a;->close()V

    .line 496
    return-void
.end method

.method public finMask()B
    .locals 1

    .prologue
    .line 447
    const/16 v0, 0x8

    return v0
.end method

.method public getMaxBinaryMessageSize()I
    .locals 1

    .prologue
    .line 417
    iget v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$a;->c:I

    return v0
.end method

.method public getMaxIdleTime()I
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$a;->d:Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->i(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->getMaxIdleTime()I

    move-result v0

    return v0
.end method

.method public getMaxTextMessageSize()I
    .locals 1

    .prologue
    .line 405
    iget v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$a;->b:I

    return v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$a;->d:Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->j(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAllowFrameFragmentation()Z
    .locals 1

    .prologue
    .line 517
    const/4 v0, 0x0

    return v0
.end method

.method public isBinary(B)Z
    .locals 1

    .prologue
    .line 465
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClose(B)Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 477
    if-ne p1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContinuation(B)Z
    .locals 1

    .prologue
    .line 471
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isControl(B)Z
    .locals 1

    .prologue
    .line 453
    invoke-static {p1}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->b(I)Z

    move-result v0

    return v0
.end method

.method public isMessageComplete(B)Z
    .locals 1

    .prologue
    .line 359
    invoke-static {p1}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->a(I)Z

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$a;->d:Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->f(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$a;->d:Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->g(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPing(B)Z
    .locals 1

    .prologue
    .line 483
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPong(B)Z
    .locals 1

    .prologue
    .line 489
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isText(B)Z
    .locals 1

    .prologue
    .line 459
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendControl(B[BII)V
    .locals 6

    .prologue
    .line 349
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$a;->d:Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->c(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closing"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 351
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$a;->d:Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->d(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    move-result-object v0

    const/16 v1, 0x8

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lorg/eclipse/jetty/websocket/WebSocketGenerator;->addFrame(BB[BII)V

    .line 352
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$a;->d:Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->d(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/websocket/WebSocketGenerator;->flush()I

    .line 353
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$a;->d:Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->e(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)V

    .line 354
    return-void
.end method

.method public sendFrame(BB[BII)V
    .locals 6

    .prologue
    .line 339
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$a;->d:Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->c(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closing"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 341
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$a;->d:Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->d(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/eclipse/jetty/websocket/WebSocketGenerator;->addFrame(BB[BII)V

    .line 342
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$a;->d:Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->d(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/websocket/WebSocketGenerator;->flush()I

    .line 343
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$a;->d:Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->e(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)V

    .line 344
    return-void
.end method

.method public declared-synchronized sendMessage(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 318
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$a;->d:Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->c(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closing"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 320
    :cond_0
    :try_start_1
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 321
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$a;->d:Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->d(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x4

    const/4 v4, 0x0

    array-length v5, v3

    invoke-interface/range {v0 .. v5}, Lorg/eclipse/jetty/websocket/WebSocketGenerator;->addFrame(BB[BII)V

    .line 322
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$a;->d:Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->d(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/websocket/WebSocketGenerator;->flush()I

    .line 323
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$a;->d:Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->e(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 324
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized sendMessage([BII)V
    .locals 6

    .prologue
    .line 329
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$a;->d:Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->c(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closing"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 331
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$a;->d:Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->d(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x5

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Lorg/eclipse/jetty/websocket/WebSocketGenerator;->addFrame(BB[BII)V

    .line 332
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$a;->d:Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->d(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/websocket/WebSocketGenerator;->flush()I

    .line 333
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$a;->d:Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->e(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 334
    monitor-exit p0

    return-void
.end method

.method public setAllowFrameFragmentation(Z)V
    .locals 0

    .prologue
    .line 513
    return-void
.end method

.method public setMaxBinaryMessageSize(I)V
    .locals 0

    .prologue
    .line 399
    iput p1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$a;->c:I

    .line 400
    return-void
.end method

.method public setMaxIdleTime(I)V
    .locals 2

    .prologue
    .line 382
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$a;->d:Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->h(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/io/EndPoint;->setMaxIdleTime(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    :goto_0
    return-void

    .line 384
    :catch_0
    move-exception v0

    .line 386
    invoke-static {}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->a()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setMaxTextMessageSize(I)V
    .locals 0

    .prologue
    .line 393
    iput p1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$a;->b:I

    .line 394
    return-void
.end method

.method public textOpcode()B
    .locals 1

    .prologue
    .line 435
    const/4 v0, 0x4

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$a;->d:Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;

    invoke-static {v1}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->k(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->getLocalAddr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$a;->d:Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;

    invoke-static {v1}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->l(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->getLocalPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$a;->d:Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;

    invoke-static {v1}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->m(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->getRemoteAddr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$a;->d:Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;

    invoke-static {v1}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->n(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->getRemotePort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
