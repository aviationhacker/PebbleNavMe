.class Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

.field private final b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

.field private c:Lorg/eclipse/jetty/io/ByteArrayBuffer;

.field private d:B


# direct methods
.method private constructor <init>(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)V
    .locals 1

    .prologue
    .line 605
    iput-object p1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 607
    new-instance v0, Lorg/eclipse/jetty/util/Utf8StringBuilder;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/Utf8StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    .line 609
    const/4 v0, -0x1

    iput-byte v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->d:B

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$1;)V
    .locals 0

    .prologue
    .line 605
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;-><init>(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)V

    return-void
.end method

.method private a()V
    .locals 5

    .prologue
    .line 811
    invoke-static {}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->a()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "Text message too large > {} chars for {}"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v4}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->v(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    move-result-object v4

    invoke-interface {v4}, Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;->getMaxTextMessageSize()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v4}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->C(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 812
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->v(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    move-result-object v0

    const/16 v1, 0x3eb

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Text message size > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v3}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->v(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

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

    .line 814
    const/4 v0, -0x1

    iput-byte v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->d:B

    .line 815
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->reset()V

    .line 816
    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 4

    .prologue
    .line 780
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->v(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;->close(ILjava/lang/String;)V

    .line 785
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->A(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 792
    :goto_0
    return-void

    .line 787
    :catch_0
    move-exception v0

    .line 789
    invoke-static {}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->a()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 790
    invoke-static {}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->a()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(II)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 796
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v2}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->v(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;->getMaxBinaryMessageSize()I

    move-result v2

    .line 797
    if-lez v2, :cond_1

    add-int v3, p1, p2

    if-le v3, v2, :cond_1

    .line 799
    invoke-static {}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->a()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v2

    const-string v3, "Binary message too large > {}B for {}"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v5}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->v(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    move-result-object v5

    invoke-interface {v5}, Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;->getMaxBinaryMessageSize()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    iget-object v5, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v5}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->B(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-interface {v2, v3, v4}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 800
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v1}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->v(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    move-result-object v1

    const/16 v2, 0x3eb

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Message size > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v4}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->v(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    move-result-object v4

    invoke-interface {v4}, Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;->getMaxBinaryMessageSize()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;->close(ILjava/lang/String;)V

    .line 801
    const/4 v1, -0x1

    iput-byte v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->d:B

    .line 802
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->c:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    if-eqz v1, :cond_0

    .line 803
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->c:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->clear()V

    .line 806
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public close(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 820
    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_0

    .line 821
    invoke-static {}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->a()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Close: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 822
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->v(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;->close(ILjava/lang/String;)V

    .line 823
    return-void
.end method

.method public onFrame(BBLorg/eclipse/jetty/io/Buffer;)V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 613
    invoke-static {p1}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->a(B)Z

    move-result v6

    .line 615
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    monitor-enter v1

    .line 618
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->r(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 619
    monitor-exit v1

    .line 776
    :cond_0
    :goto_0
    return-void

    .line 620
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 623
    :try_start_1
    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v3

    .line 626
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->s(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Lorg/eclipse/jetty/websocket/WebSocket$OnFrame;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 628
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->s(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Lorg/eclipse/jetty/websocket/WebSocket$OnFrame;

    move-result-object v0

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v4

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v5

    move v1, p1

    move v2, p2

    invoke-interface/range {v0 .. v5}, Lorg/eclipse/jetty/websocket/WebSocket$OnFrame;->onFrame(BB[BII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 632
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->t(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Lorg/eclipse/jetty/websocket/WebSocket$OnControl;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {p2}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->b(B)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 634
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->t(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Lorg/eclipse/jetty/websocket/WebSocket$OnControl;

    move-result-object v0

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v1

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    invoke-interface {v0, p2, v3, v1, v2}, Lorg/eclipse/jetty/websocket/WebSocket$OnControl;->onControl(B[BII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 638
    :cond_3
    packed-switch p2, :pswitch_data_0

    .line 748
    :pswitch_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->w(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Lorg/eclipse/jetty/websocket/WebSocket$OnBinaryMessage;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 750
    if-eqz v6, :cond_b

    .line 752
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->w(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Lorg/eclipse/jetty/websocket/WebSocket$OnBinaryMessage;

    move-result-object v0

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v1

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    invoke-interface {v0, v3, v1, v2}, Lorg/eclipse/jetty/websocket/WebSocket$OnBinaryMessage;->onMessage([BII)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 770
    :catch_0
    move-exception v0

    .line 772
    invoke-static {}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->a()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    const-string v2, "{} for {}"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v8

    iget-object v4, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v4}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->z(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v4

    aput-object v4, v3, v7

    aput-object v0, v3, v9

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 773
    invoke-static {}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->a()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 774
    const/16 v1, 0x3f3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Internal Server Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 620
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 643
    :pswitch_1
    :try_start_3
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->u(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Lorg/eclipse/jetty/websocket/WebSocket$OnTextMessage;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-byte v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->d:B

    if-ne v0, v7, :cond_4

    .line 645
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v1

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v2

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v3

    iget-object v4, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v4}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->v(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    move-result-object v4

    invoke-interface {v4}, Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;->getMaxTextMessageSize()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->append([BIII)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 648
    if-eqz v6, :cond_4

    .line 650
    const/4 v0, -0x1

    iput-byte v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->d:B

    .line 651
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 652
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->reset()V

    .line 653
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v1}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->u(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Lorg/eclipse/jetty/websocket/WebSocket$OnTextMessage;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/websocket/WebSocket$OnTextMessage;->onMessage(Ljava/lang/String;)V

    .line 660
    :cond_4
    :goto_1
    iget-byte v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->d:B

    if-ltz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->v(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;->getMaxBinaryMessageSize()I

    move-result v0

    if-ltz v0, :cond_0

    .line 662
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->c:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->length()I

    move-result v0

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->c:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v0, p3}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 667
    if-eqz v6, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->w(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Lorg/eclipse/jetty/websocket/WebSocket$OnBinaryMessage;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    .line 671
    :try_start_4
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->w(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Lorg/eclipse/jetty/websocket/WebSocket$OnBinaryMessage;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->c:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->array()[B

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->c:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v2}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->getIndex()I

    move-result v2

    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->c:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v3}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->length()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/jetty/websocket/WebSocket$OnBinaryMessage;->onMessage([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 675
    const/4 v0, -0x1

    :try_start_5
    iput-byte v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->d:B

    .line 676
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->c:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->clear()V

    goto/16 :goto_0

    .line 657
    :cond_5
    invoke-direct {p0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->a()V

    goto :goto_1

    .line 675
    :catchall_1
    move-exception v0

    const/4 v1, -0x1

    iput-byte v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->d:B

    .line 676
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->c:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->clear()V

    throw v0

    .line 685
    :pswitch_2
    invoke-static {}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->a()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "PING {}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 686
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->a(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 687
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->v(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v2

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v3

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;->sendControl(B[BII)V

    goto/16 :goto_0

    .line 693
    :pswitch_3
    invoke-static {}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->a()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "PONG {}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 699
    :pswitch_4
    const/16 v1, 0x3ed

    .line 700
    const/4 v0, 0x0

    .line 701
    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    if-lt v2, v9, :cond_6

    .line 703
    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v1

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v2

    aget-byte v1, v1, v2

    mul-int/lit16 v1, v1, 0x100

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v2

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    aget-byte v2, v2, v3

    add-int/2addr v1, v2

    .line 704
    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    if-le v2, v9, :cond_6

    .line 705
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

    .line 707
    :cond_6
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-virtual {v2, v1, v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->closeIn(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 713
    :pswitch_5
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->u(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Lorg/eclipse/jetty/websocket/WebSocket$OnTextMessage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->v(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;->getMaxTextMessageSize()I

    move-result v0

    if-gtz v0, :cond_8

    .line 718
    if-eqz v6, :cond_7

    .line 719
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->u(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Lorg/eclipse/jetty/websocket/WebSocket$OnTextMessage;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-interface {p3, v1}, Lorg/eclipse/jetty/io/Buffer;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/websocket/WebSocket$OnTextMessage;->onMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 722
    :cond_7
    invoke-static {}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->a()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "Frame discarded. Text aggregation disabled for {}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v4}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->x(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 723
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->v(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    move-result-object v0

    const/16 v1, 0x3eb

    const-string v2, "Text frame aggregation disabled"

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;->close(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 727
    :cond_8
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v1

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v2

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v3

    iget-object v4, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v4}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->v(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    move-result-object v4

    invoke-interface {v4}, Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;->getMaxTextMessageSize()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->append([BIII)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 729
    if-eqz v6, :cond_9

    .line 731
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 732
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->reset()V

    .line 733
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v1}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->u(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Lorg/eclipse/jetty/websocket/WebSocket$OnTextMessage;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/websocket/WebSocket$OnTextMessage;->onMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 737
    :cond_9
    const/4 v0, 0x1

    iput-byte v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->d:B

    goto/16 :goto_0

    .line 741
    :cond_a
    invoke-direct {p0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->a()V

    goto/16 :goto_0

    .line 754
    :cond_b
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->v(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;->getMaxBinaryMessageSize()I

    move-result v0

    if-ltz v0, :cond_d

    .line 756
    iput-byte p2, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->d:B

    .line 757
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->c:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    if-nez v0, :cond_c

    .line 758
    new-instance v0, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v1}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->v(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;->getMaxBinaryMessageSize()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->c:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    .line 759
    :cond_c
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->c:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v0, p3}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    goto/16 :goto_0

    .line 763
    :cond_d
    invoke-static {}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->a()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "Frame discarded. Binary aggregation disabed for {}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v4}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->y(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 764
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->v(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    move-result-object v0

    const/16 v1, 0x3eb

    const-string v2, "Binary frame aggregation disabled"

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;->close(ILjava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 638
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 828
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-virtual {v1}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->toString()Ljava/lang/String;

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
