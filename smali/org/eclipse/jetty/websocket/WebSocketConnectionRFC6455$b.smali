.class Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

.field private final b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

.field private c:Lorg/eclipse/jetty/io/ByteArrayBuffer;

.field private d:B


# direct methods
.method private constructor <init>(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)V
    .locals 2

    .prologue
    .line 648
    iput-object p1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 651
    new-instance v0, Lorg/eclipse/jetty/util/Utf8StringBuilder;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/util/Utf8StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    .line 653
    const/4 v0, -0x1

    iput-byte v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->d:B

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$1;)V
    .locals 0

    .prologue
    .line 648
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;-><init>(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)V

    return-void
.end method

.method private a()V
    .locals 5

    .prologue
    .line 931
    invoke-static {}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->a()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "Text message too large > {} chars for {}"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v4}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->v(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    move-result-object v4

    invoke-interface {v4}, Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;->getMaxTextMessageSize()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v4}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->D(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 932
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->v(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    move-result-object v0

    const/16 v1, 0x3f1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Text message size > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v3}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->v(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

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

    .line 934
    const/4 v0, -0x1

    iput-byte v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->d:B

    .line 935
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->reset()V

    .line 936
    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 4

    .prologue
    .line 900
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->v(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;->close(ILjava/lang/String;)V

    .line 905
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->B(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 912
    :goto_0
    return-void

    .line 907
    :catch_0
    move-exception v0

    .line 909
    invoke-static {}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->a()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 910
    invoke-static {}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->a()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(II)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 916
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v2}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->v(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;->getMaxBinaryMessageSize()I

    move-result v2

    .line 917
    if-lez v2, :cond_1

    add-int v3, p1, p2

    if-le v3, v2, :cond_1

    .line 919
    invoke-static {}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->a()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v2

    const-string v3, "Binary message too large > {}B for {}"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v5}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->v(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    move-result-object v5

    invoke-interface {v5}, Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;->getMaxBinaryMessageSize()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    iget-object v5, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v5}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->C(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-interface {v2, v3, v4}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 920
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v1}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->v(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    move-result-object v1

    const/16 v2, 0x3f1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Message size > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v4}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->v(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    move-result-object v4

    invoke-interface {v4}, Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;->getMaxBinaryMessageSize()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;->close(ILjava/lang/String;)V

    .line 921
    const/4 v1, -0x1

    iput-byte v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->d:B

    .line 922
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->c:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    if-eqz v1, :cond_0

    .line 923
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->c:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->clear()V

    .line 926
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
    .line 940
    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_0

    .line 941
    invoke-static {}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->a()Lorg/eclipse/jetty/util/log/Logger;

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

    .line 942
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->v(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;->close(ILjava/lang/String;)V

    .line 943
    return-void
.end method

.method public onFrame(BBLorg/eclipse/jetty/io/Buffer;)V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 657
    invoke-static {p1}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->a(B)Z

    move-result v6

    .line 659
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    monitor-enter v1

    .line 662
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->r(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 663
    monitor-exit v1

    .line 896
    :cond_0
    :goto_0
    return-void

    .line 664
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 667
    :try_start_1
    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v3

    .line 669
    invoke-static {p2}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->b(B)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    const/16 v1, 0x7d

    if-le v0, v1, :cond_2

    .line 671
    const/16 v0, 0x3ea

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Control frame too large: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->a(ILjava/lang/String;)V
    :try_end_1
    .catch Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 884
    :catch_0
    move-exception v0

    .line 886
    invoke-static {}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->a()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    const-string v2, "NOTUTF8 - {} for {}"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v8

    iget-object v4, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v4}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->z(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v4

    aput-object v4, v3, v7

    aput-object v0, v3, v10

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 887
    invoke-static {}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->a()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 888
    const/16 v0, 0x3ef

    const-string v1, "Invalid UTF-8"

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 664
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 676
    :cond_2
    and-int/lit8 v0, p1, 0x7

    if-eqz v0, :cond_3

    .line 678
    const/16 v0, 0x3ea

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RSV bits set 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->a(ILjava/lang/String;)V
    :try_end_3
    .catch Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 890
    :catch_1
    move-exception v0

    .line 892
    invoke-static {}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->a()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    const-string v2, "{} for {}"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v8

    iget-object v4, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v4}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->A(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v4

    aput-object v4, v3, v7

    aput-object v0, v3, v10

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 893
    invoke-static {}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->a()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 894
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

    invoke-direct {p0, v1, v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 683
    :cond_3
    :try_start_4
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->b(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->b(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_4

    const/16 v0, 0x8

    if-ne p2, v0, :cond_0

    .line 689
    :cond_4
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->s(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/websocket/WebSocket$OnFrame;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 691
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->s(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/websocket/WebSocket$OnFrame;

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

    .line 695
    :cond_5
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->t(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/websocket/WebSocket$OnControl;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {p2}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->b(B)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 697
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->t(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/websocket/WebSocket$OnControl;

    move-result-object v0

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v1

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    invoke-interface {v0, p2, v3, v1, v2}, Lorg/eclipse/jetty/websocket/WebSocket$OnControl;->onControl(B[BII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 701
    :cond_6
    packed-switch p2, :pswitch_data_0

    .line 880
    :pswitch_0
    const/16 v0, 0x3ea

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad opcode 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 705
    :pswitch_1
    iget-byte v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->d:B

    if-ne v0, v9, :cond_7

    .line 707
    const/16 v0, 0x3ea

    const-string v1, "Bad Continuation"

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 712
    :cond_7
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->u(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/websocket/WebSocket$OnTextMessage;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-byte v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->d:B

    if-ne v0, v7, :cond_8

    .line 714
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v1

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v2

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v3

    iget-object v4, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v4}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->v(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    move-result-object v4

    invoke-interface {v4}, Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;->getMaxTextMessageSize()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->append([BIII)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 717
    if-eqz v6, :cond_8

    .line 719
    const/4 v0, -0x1

    iput-byte v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->d:B

    .line 720
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 721
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->reset()V

    .line 722
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v1}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->u(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/websocket/WebSocket$OnTextMessage;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/websocket/WebSocket$OnTextMessage;->onMessage(Ljava/lang/String;)V

    .line 729
    :cond_8
    :goto_1
    iget-byte v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->d:B

    if-ltz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->v(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;->getMaxBinaryMessageSize()I

    move-result v0

    if-ltz v0, :cond_0

    .line 731
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->c:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->c:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->length()I

    move-result v0

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->c:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v0, p3}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 736
    if-eqz v6, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->w(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/websocket/WebSocket$OnBinaryMessage;
    :try_end_4
    .catch Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v0

    if-eqz v0, :cond_0

    .line 740
    :try_start_5
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->w(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/websocket/WebSocket$OnBinaryMessage;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->c:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->array()[B

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->c:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v2}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->getIndex()I

    move-result v2

    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->c:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v3}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->length()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/jetty/websocket/WebSocket$OnBinaryMessage;->onMessage([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 744
    const/4 v0, -0x1

    :try_start_6
    iput-byte v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->d:B

    .line 745
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->c:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->clear()V

    goto/16 :goto_0

    .line 726
    :cond_9
    invoke-direct {p0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->a()V

    goto :goto_1

    .line 744
    :catchall_1
    move-exception v0

    const/4 v1, -0x1

    iput-byte v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->d:B

    .line 745
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->c:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->clear()V

    throw v0

    .line 754
    :pswitch_2
    invoke-static {}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->a()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "PING {}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 755
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->a(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 757
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->v(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

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

    .line 764
    :pswitch_3
    invoke-static {}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->a()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "PONG {}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 770
    :pswitch_4
    const/16 v1, 0x3ed

    .line 771
    const/4 v0, 0x0

    .line 772
    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    if-lt v2, v10, :cond_e

    .line 774
    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v1

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    mul-int/lit16 v1, v1, 0x100

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v2

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    .line 777
    const/16 v2, 0x3e8

    if-lt v1, v2, :cond_b

    const/16 v2, 0x3ec

    if-eq v1, v2, :cond_b

    const/16 v2, 0x3ee

    if-eq v1, v2, :cond_b

    const/16 v2, 0x3ed

    if-eq v1, v2, :cond_b

    const/16 v2, 0x3f3

    if-le v1, v2, :cond_a

    const/16 v2, 0xbb7

    if-le v1, v2, :cond_b

    :cond_a
    const/16 v2, 0x1388

    if-lt v1, v2, :cond_c

    .line 784
    :cond_b
    const/16 v0, 0x3ea

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid close code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 788
    :cond_c
    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    if-le v2, v10, :cond_d

    .line 790
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v3

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    iget-object v6, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v6}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->v(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    move-result-object v6

    invoke-interface {v6}, Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;->getMaxTextMessageSize()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->append([BIII)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 792
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 793
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->reset()V

    .line 803
    :cond_d
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-virtual {v2, v1, v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->closeIn(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 797
    :cond_e
    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    if-ne v2, v7, :cond_d

    .line 800
    const/16 v0, 0x3ea

    const-string v1, "Invalid payload length of 1"

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 809
    :pswitch_5
    iget-byte v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->d:B

    if-eq v0, v9, :cond_f

    .line 811
    const/16 v0, 0x3ea

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected Continuation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 815
    :cond_f
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->u(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/websocket/WebSocket$OnTextMessage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 817
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->v(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;->getMaxTextMessageSize()I

    move-result v0

    if-gtz v0, :cond_11

    .line 820
    if-eqz v6, :cond_10

    .line 821
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->u(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/websocket/WebSocket$OnTextMessage;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-interface {p3, v1}, Lorg/eclipse/jetty/io/Buffer;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/websocket/WebSocket$OnTextMessage;->onMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 824
    :cond_10
    invoke-static {}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->a()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "Frame discarded. Text aggregation disabled for {}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v4}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->x(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 825
    const/16 v0, 0x3f0

    const-string v1, "Text frame aggregation disabled"

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 829
    :cond_11
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v1

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v2

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v3

    iget-object v4, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v4}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->v(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    move-result-object v4

    invoke-interface {v4}, Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;->getMaxTextMessageSize()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->append([BIII)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 831
    if-eqz v6, :cond_12

    .line 833
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 834
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->b:Lorg/eclipse/jetty/util/Utf8StringBuilder;

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->reset()V

    .line 835
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v1}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->u(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/websocket/WebSocket$OnTextMessage;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/websocket/WebSocket$OnTextMessage;->onMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 839
    :cond_12
    const/4 v0, 0x1

    iput-byte v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->d:B

    goto/16 :goto_0

    .line 843
    :cond_13
    invoke-direct {p0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->a()V

    goto/16 :goto_0

    .line 850
    :pswitch_6
    iget-byte v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->d:B

    if-eq v0, v9, :cond_14

    .line 852
    const/16 v0, 0x3ea

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected Continuation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 856
    :cond_14
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->w(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/websocket/WebSocket$OnBinaryMessage;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 858
    if-eqz v6, :cond_15

    .line 860
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->w(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/websocket/WebSocket$OnBinaryMessage;

    move-result-object v0

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v1

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    invoke-interface {v0, v3, v1, v2}, Lorg/eclipse/jetty/websocket/WebSocket$OnBinaryMessage;->onMessage([BII)V

    goto/16 :goto_0

    .line 862
    :cond_15
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->v(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;->getMaxBinaryMessageSize()I

    move-result v0

    if-ltz v0, :cond_17

    .line 864
    iput-byte p2, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->d:B

    .line 866
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->c:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    if-nez v0, :cond_16

    .line 867
    new-instance v0, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v1}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->v(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;->getMaxBinaryMessageSize()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->c:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    .line 868
    :cond_16
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->c:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v0, p3}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    goto/16 :goto_0

    .line 872
    :cond_17
    invoke-static {}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->a()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "Frame discarded. Binary aggregation disabed for {}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v4}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->y(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 873
    const/16 v0, 0x3f0

    const-string v1, "Binary frame aggregation disabled"

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->a(ILjava/lang/String;)V
    :try_end_6
    .catch Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 701
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_6
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
    .line 948
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;->a:Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-virtual {v1}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->toString()Ljava/lang/String;

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
