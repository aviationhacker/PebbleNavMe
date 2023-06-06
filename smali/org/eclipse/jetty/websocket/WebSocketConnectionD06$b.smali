.class Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;

.field private final b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

.field private c:Lorg/eclipse/jetty/io/ByteArrayBuffer;

.field private d:B


# direct methods
.method private constructor <init>(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)V
    .locals 1

    .prologue
    .line 524
    iput-object p1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 526
    new-instance v0, Lorg/eclipse/jetty/util/Utf8StringBuilder;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/Utf8StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;->b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    .line 528
    const/4 v0, -0x1

    iput-byte v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;->d:B

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$1;)V
    .locals 0

    .prologue
    .line 524
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;-><init>(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)V

    return-void
.end method


# virtual methods
.method public close(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->r(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;->close(ILjava/lang/String;)V

    .line 710
    return-void
.end method

.method public onFrame(BBLorg/eclipse/jetty/io/Buffer;)V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v6, -0x1

    .line 532
    invoke-static {p1}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->a(I)Z

    move-result v7

    .line 534
    iget-object v8, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;

    monitor-enter v8

    .line 537
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->o(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 705
    :goto_0
    return-void

    .line 542
    :cond_0
    :try_start_1
    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v3

    .line 545
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->p(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)Lorg/eclipse/jetty/websocket/WebSocket$OnFrame;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 547
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->p(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)Lorg/eclipse/jetty/websocket/WebSocket$OnFrame;

    move-result-object v0

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v4

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v5

    move v1, p1

    move v2, p2

    invoke-interface/range {v0 .. v5}, Lorg/eclipse/jetty/websocket/WebSocket$OnFrame;->onFrame(BB[BII)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 548
    :try_start_2
    monitor-exit v8

    goto :goto_0

    .line 704
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 551
    :cond_1
    :try_start_3
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->q(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)Lorg/eclipse/jetty/websocket/WebSocket$OnControl;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p2}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 553
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->q(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)Lorg/eclipse/jetty/websocket/WebSocket$OnControl;

    move-result-object v0

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v1

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    invoke-interface {v0, p2, v3, v1, v2}, Lorg/eclipse/jetty/websocket/WebSocket$OnControl;->onControl(B[BII)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 554
    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 557
    :cond_2
    packed-switch p2, :pswitch_data_0

    .line 670
    :try_start_5
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->t(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)Lorg/eclipse/jetty/websocket/WebSocket$OnBinaryMessage;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 672
    if-eqz v7, :cond_a

    .line 674
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->t(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)Lorg/eclipse/jetty/websocket/WebSocket$OnBinaryMessage;

    move-result-object v0

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v1

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    invoke-interface {v0, v3, v1, v2}, Lorg/eclipse/jetty/websocket/WebSocket$OnBinaryMessage;->onMessage([BII)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 704
    :cond_3
    :goto_1
    :try_start_6
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 562
    :pswitch_0
    :try_start_7
    iget-byte v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;->d:B

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->r(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;->getMaxTextMessageSize()I

    move-result v0

    if-ltz v0, :cond_5

    .line 564
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;->b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v1

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v2

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v3

    iget-object v4, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;

    invoke-static {v4}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->r(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    move-result-object v4

    invoke-interface {v4}, Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;->getMaxTextMessageSize()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->append([BIII)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 567
    if-eqz v7, :cond_3

    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->s(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)Lorg/eclipse/jetty/websocket/WebSocket$OnTextMessage;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 569
    const/4 v0, -0x1

    iput-byte v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;->d:B

    .line 570
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;->b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 571
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;->b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->reset()V

    .line 572
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;

    invoke-static {v1}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->s(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)Lorg/eclipse/jetty/websocket/WebSocket$OnTextMessage;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/websocket/WebSocket$OnTextMessage;->onMessage(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 700
    :catch_0
    move-exception v0

    .line 702
    :try_start_8
    invoke-static {}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->a()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    .line 577
    :cond_4
    :try_start_9
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->r(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    move-result-object v0

    const/16 v1, 0x3ec

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Text message size > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;

    invoke-static {v3}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->r(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    move-result-object v3

    invoke-interface {v3}, Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;->getMaxTextMessageSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " chars"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;->close(ILjava/lang/String;)V

    .line 578
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;->b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->reset()V

    .line 579
    const/4 v0, -0x1

    iput-byte v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;->d:B

    goto/16 :goto_1

    .line 582
    :cond_5
    iget-byte v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;->d:B

    if-ltz v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->r(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;->getMaxBinaryMessageSize()I

    move-result v0

    if-ltz v0, :cond_3

    .line 584
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;->c:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->space()I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;->c:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->length()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 586
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->r(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    move-result-object v0

    const/16 v1, 0x3ec

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Message size > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;

    invoke-static {v3}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->r(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    move-result-object v3

    invoke-interface {v3}, Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;->getMaxBinaryMessageSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;->close(ILjava/lang/String;)V

    .line 587
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;->c:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->clear()V

    .line 588
    const/4 v0, -0x1

    iput-byte v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;->d:B

    goto/16 :goto_1

    .line 592
    :cond_6
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;->c:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v0, p3}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 595
    if-eqz v7, :cond_3

    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->t(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)Lorg/eclipse/jetty/websocket/WebSocket$OnBinaryMessage;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_3

    .line 599
    :try_start_a
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->t(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)Lorg/eclipse/jetty/websocket/WebSocket$OnBinaryMessage;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;->c:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->array()[B

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;->c:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v2}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->getIndex()I

    move-result v2

    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;->c:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v3}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->length()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/jetty/websocket/WebSocket$OnBinaryMessage;->onMessage([BII)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 603
    const/4 v0, -0x1

    :try_start_b
    iput-byte v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;->d:B

    .line 604
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;->c:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->clear()V

    goto/16 :goto_1

    .line 603
    :catchall_1
    move-exception v0

    const/4 v1, -0x1

    iput-byte v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;->d:B

    .line 604
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;->c:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->clear()V

    throw v0

    .line 613
    :pswitch_1
    invoke-static {}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->a()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "PING {}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 614
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->c(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 615
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->r(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v2

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v3

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;->sendControl(B[BII)V

    goto/16 :goto_1

    .line 621
    :pswitch_2
    invoke-static {}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->a()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "PONG {}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 628
    :pswitch_3
    const/4 v0, 0x0

    .line 629
    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    if-lt v1, v9, :cond_e

    .line 631
    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v1

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v2

    aget-byte v1, v1, v2

    mul-int/lit16 v1, v1, 0xff

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v2

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    aget-byte v2, v2, v3

    add-int/2addr v1, v2

    .line 632
    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    if-le v2, v9, :cond_7

    .line 633
    new-instance v0, Ljava/lang/String;

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v2

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    const-string v5, "UTF-8"

    invoke-direct {v0, v2, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 635
    :cond_7
    :goto_2
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;

    invoke-virtual {v2, v1, v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->closeIn(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 642
    :pswitch_4
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->s(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)Lorg/eclipse/jetty/websocket/WebSocket$OnTextMessage;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 644
    if-eqz v7, :cond_8

    .line 647
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->s(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)Lorg/eclipse/jetty/websocket/WebSocket$OnTextMessage;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-interface {p3, v1}, Lorg/eclipse/jetty/io/Buffer;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/websocket/WebSocket$OnTextMessage;->onMessage(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 651
    :cond_8
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->r(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;->getMaxTextMessageSize()I

    move-result v0

    if-ltz v0, :cond_3

    .line 654
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;->b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v1

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v2

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v3

    iget-object v4, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;

    invoke-static {v4}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->r(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    move-result-object v4

    invoke-interface {v4}, Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;->getMaxTextMessageSize()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->append([BIII)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 655
    const/4 v0, 0x4

    iput-byte v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;->d:B

    goto/16 :goto_1

    .line 658
    :cond_9
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;->b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->reset()V

    .line 659
    const/4 v0, -0x1

    iput-byte v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;->d:B

    .line 660
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->r(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    move-result-object v0

    const/16 v1, 0x3ec

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Text message size > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;

    invoke-static {v3}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->r(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    move-result-object v3

    invoke-interface {v3}, Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;->getMaxTextMessageSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " chars"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;->close(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 678
    :cond_a
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->r(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;->getMaxBinaryMessageSize()I

    move-result v0

    if-ltz v0, :cond_3

    .line 680
    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;

    invoke-static {v1}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->r(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;->getMaxBinaryMessageSize()I

    move-result v1

    if-le v0, v1, :cond_c

    .line 682
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->r(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    move-result-object v0

    const/16 v1, 0x3ec

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Message size > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;

    invoke-static {v3}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->r(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    move-result-object v3

    invoke-interface {v3}, Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;->getMaxBinaryMessageSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;->close(ILjava/lang/String;)V

    .line 683
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;->c:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    if-eqz v0, :cond_b

    .line 684
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;->c:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->clear()V

    .line 685
    :cond_b
    const/4 v0, -0x1

    iput-byte v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;->d:B

    goto/16 :goto_1

    .line 689
    :cond_c
    iput-byte p2, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;->d:B

    .line 690
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;->c:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    if-nez v0, :cond_d

    .line 691
    new-instance v0, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;

    invoke-static {v1}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->r(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;->getMaxBinaryMessageSize()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;->c:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    .line 692
    :cond_d
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;->c:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v0, p3}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->put(Lorg/eclipse/jetty/io/Buffer;)I
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_1

    :cond_e
    move v1, v6

    goto/16 :goto_2

    .line 557
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;

    invoke-virtual {v1}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FH"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
