.class Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

.field private volatile b:Z


# direct methods
.method private constructor <init>(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)V
    .locals 0

    .prologue
    .line 429
    iput-object p1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$a;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$1;)V
    .locals 0

    .prologue
    .line 429
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$a;-><init>(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)V

    return-void
.end method


# virtual methods
.method public binaryOpcode()B
    .locals 1

    .prologue
    .line 544
    const/4 v0, 0x2

    return v0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 616
    const/16 v0, 0x3e8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$a;->close(ILjava/lang/String;)V

    .line 617
    return-void
.end method

.method public close(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 486
    iget-boolean v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$a;->b:Z

    if-eqz v0, :cond_0

    .line 490
    :goto_0
    return-void

    .line 488
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$a;->b:Z

    .line 489
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$a;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->closeOut(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public continuationOpcode()B
    .locals 1

    .prologue
    .line 556
    const/4 v0, 0x0

    return v0
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 610
    const/16 v0, 0x3e8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$a;->close(ILjava/lang/String;)V

    .line 611
    return-void
.end method

.method public finMask()B
    .locals 1

    .prologue
    .line 562
    const/16 v0, 0x8

    return v0
.end method

.method public getMaxBinaryMessageSize()I
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$a;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->k(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)I

    move-result v0

    return v0
.end method

.method public getMaxIdleTime()I
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$a;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->i(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->getMaxIdleTime()I

    move-result v0

    return v0
.end method

.method public getMaxTextMessageSize()I
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$a;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->j(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)I

    move-result v0

    return v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$a;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->l(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAllowFrameFragmentation()Z
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$a;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->m(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455;->isFakeFragments()Z

    move-result v0

    return v0
.end method

.method public isBinary(B)Z
    .locals 1

    .prologue
    .line 580
    const/4 v0, 0x2

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
    .line 592
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContinuation(B)Z
    .locals 1

    .prologue
    .line 586
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
    .line 568
    invoke-static {p1}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->b(B)Z

    move-result v0

    return v0
.end method

.method public isMessageComplete(B)Z
    .locals 1

    .prologue
    .line 474
    invoke-static {p1}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->a(B)Z

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$a;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->f(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$a;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->g(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/io/EndPoint;

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
    .line 598
    const/16 v0, 0x9

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
    .line 604
    const/16 v0, 0xa

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
    const/4 v0, 0x1

    .line 574
    if-ne p1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendControl(B[BII)V
    .locals 6

    .prologue
    .line 465
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$a;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->a(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closedOut "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$a;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v2}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->b(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$a;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v2}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->c(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 467
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$a;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->d(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    move-result-object v0

    const/16 v1, 0x8

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lorg/eclipse/jetty/websocket/WebSocketGenerator;->addFrame(BB[BII)V

    .line 468
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$a;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->e(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)V

    .line 469
    return-void
.end method

.method public sendFrame(BB[BII)V
    .locals 6

    .prologue
    .line 455
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$a;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->a(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closedOut "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$a;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v2}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->b(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$a;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v2}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->c(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 457
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$a;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->d(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/eclipse/jetty/websocket/WebSocketGenerator;->addFrame(BB[BII)V

    .line 458
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$a;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->e(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)V

    .line 459
    return-void
.end method

.method public sendMessage(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 436
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$a;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->a(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closedOut "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$a;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v2}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->b(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$a;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v2}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->c(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 438
    :cond_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 439
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$a;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->d(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v4, 0x0

    array-length v5, v3

    invoke-interface/range {v0 .. v5}, Lorg/eclipse/jetty/websocket/WebSocketGenerator;->addFrame(BB[BII)V

    .line 440
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$a;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->e(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)V

    .line 441
    return-void
.end method

.method public sendMessage([BII)V
    .locals 6

    .prologue
    .line 446
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$a;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->a(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closedOut "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$a;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v2}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->b(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$a;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v2}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->c(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 448
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$a;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->d(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x2

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Lorg/eclipse/jetty/websocket/WebSocketGenerator;->addFrame(BB[BII)V

    .line 449
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$a;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->e(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)V

    .line 450
    return-void
.end method

.method public setAllowFrameFragmentation(Z)V
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$a;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->m(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455;->setFakeFragments(Z)V

    .line 623
    return-void
.end method

.method public setMaxBinaryMessageSize(I)V
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$a;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v0, p1}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->b(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;I)I

    .line 515
    return-void
.end method

.method public setMaxIdleTime(I)V
    .locals 2

    .prologue
    .line 497
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$a;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->h(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/io/EndPoint;->setMaxIdleTime(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    :goto_0
    return-void

    .line 499
    :catch_0
    move-exception v0

    .line 501
    invoke-static {}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->a()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setMaxTextMessageSize(I)V
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$a;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v0, p1}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->a(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;I)I

    .line 509
    return-void
.end method

.method public textOpcode()B
    .locals 1

    .prologue
    .line 550
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 635
    const-string v0, "%s@%x l(%s:%d)<->r(%s:%d)"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$a;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v3}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->n(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v3

    invoke-interface {v3}, Lorg/eclipse/jetty/io/EndPoint;->getLocalAddr()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$a;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v3}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->o(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v3

    invoke-interface {v3}, Lorg/eclipse/jetty/io/EndPoint;->getLocalPort()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$a;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v3}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->p(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v3

    invoke-interface {v3}, Lorg/eclipse/jetty/io/EndPoint;->getRemoteAddr()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$a;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v3}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->q(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v3

    invoke-interface {v3}, Lorg/eclipse/jetty/io/EndPoint;->getRemotePort()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
