.class public Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/websocket/WebSocketGenerator;


# instance fields
.field private final a:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

.field private final b:Lorg/eclipse/jetty/io/EndPoint;

.field private c:Lorg/eclipse/jetty/io/Buffer;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/websocket/WebSocketBuffers;Lorg/eclipse/jetty/io/EndPoint;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->a:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    .line 45
    iput-object p2, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->b:Lorg/eclipse/jetty/io/EndPoint;

    .line 46
    return-void
.end method

.method private declared-synchronized a()I
    .locals 2

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->b:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Lorg/eclipse/jetty/io/EofException;

    invoke-direct {v0}, Lorg/eclipse/jetty/io/EofException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 141
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->c:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->c:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->b:Lorg/eclipse/jetty/io/EndPoint;

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->c:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/EndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 144
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized a(J)I
    .locals 3

    .prologue
    .line 149
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->c:Lorg/eclipse/jetty/io/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 150
    const/4 v0, 0x0

    .line 165
    :cond_0
    monitor-exit p0

    return v0

    .line 151
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->a()I

    move-result v0

    .line 152
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->c:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->compact()V

    .line 153
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->b:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->isBlocking()Z

    move-result v1

    if-nez v1, :cond_0

    .line 155
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->c:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v1

    if-nez v1, :cond_0

    .line 157
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->b:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1, p1, p2}, Lorg/eclipse/jetty/io/EndPoint;->blockWritable(J)Z

    move-result v1

    .line 158
    if-nez v1, :cond_2

    .line 159
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Write timeout"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 161
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 162
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->c:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->compact()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized a(BJ)V
    .locals 2

    .prologue
    .line 113
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->c:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->a:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    invoke-virtual {v0}, Lorg/eclipse/jetty/websocket/WebSocketBuffers;->getDirectBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->c:Lorg/eclipse/jetty/io/Buffer;

    .line 115
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->c:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 116
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->c:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v0

    if-nez v0, :cond_1

    .line 117
    invoke-direct {p0, p2, p3}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->a(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :cond_1
    monitor-exit p0

    return-void

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(B)Z
    .locals 2

    .prologue
    .line 108
    monitor-enter p0

    and-int/lit8 v0, p1, -0x80

    const/16 v1, -0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addFrame(BB[BII)V
    .locals 6

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->b:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->getMaxIdleTime()I

    move-result v0

    int-to-long v2, v0

    .line 52
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->c:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->a:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    invoke-virtual {v0}, Lorg/eclipse/jetty/websocket/WebSocketBuffers;->getDirectBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->c:Lorg/eclipse/jetty/io/Buffer;

    .line 55
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->c:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v0

    if-nez v0, :cond_1

    .line 56
    invoke-direct {p0, v2, v3}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->a(J)I

    .line 58
    :cond_1
    invoke-direct {p0, p2, v2, v3}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->a(BJ)V

    .line 60
    invoke-direct {p0, p2}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->a(B)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 69
    new-instance v0, Ljava/math/BigInteger;

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    div-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    .line 70
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lez v0, :cond_2

    .line 72
    mul-int/lit8 v1, v0, 0x7

    shr-int v1, p5, v1

    and-int/lit8 v1, v1, 0x7f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    .line 73
    invoke-direct {p0, v1, v2, v3}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->a(BJ)V

    .line 70
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 75
    :cond_2
    and-int/lit8 v0, p5, 0x7f

    int-to-byte v0, v0

    invoke-direct {p0, v0, v2, v3}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->a(BJ)V

    :cond_3
    move v1, p5

    .line 79
    :cond_4
    :goto_1
    if-lez v1, :cond_9

    .line 81
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->c:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v0

    if-ge v1, v0, :cond_6

    move v0, v1

    .line 82
    :goto_2
    iget-object v4, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->c:Lorg/eclipse/jetty/io/Buffer;

    sub-int v5, p5, v1

    add-int/2addr v5, p4

    invoke-interface {v4, p3, v5, v0}, Lorg/eclipse/jetty/io/Buffer;->put([BII)I

    .line 83
    sub-int/2addr v1, v0

    .line 84
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->c:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v0

    if-lez v0, :cond_7

    .line 86
    invoke-direct {p0, p2}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->a(B)Z

    move-result v0

    if-nez v0, :cond_5

    .line 87
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->c:Lorg/eclipse/jetty/io/Buffer;

    const/4 v4, -0x1

    invoke-interface {v0, v4}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 89
    :cond_5
    invoke-direct {p0}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->a()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 81
    :cond_6
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->c:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v0

    goto :goto_2

    .line 94
    :cond_7
    invoke-direct {p0, v2, v3}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->a(J)I

    .line 95
    if-nez v1, :cond_4

    .line 97
    invoke-direct {p0, p2}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->a(B)Z

    move-result v0

    if-nez v0, :cond_8

    .line 98
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->c:Lorg/eclipse/jetty/io/Buffer;

    const/4 v4, -0x1

    invoke-interface {v0, v4}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 100
    :cond_8
    invoke-direct {p0}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->a()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 104
    :cond_9
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized flush()I
    .locals 3

    .prologue
    .line 127
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->a()I

    move-result v0

    .line 128
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->c:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->c:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 130
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->a:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->c:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/websocket/WebSocketBuffers;->returnBuffer(Lorg/eclipse/jetty/io/Buffer;)V

    .line 131
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->c:Lorg/eclipse/jetty/io/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    :cond_0
    monitor-exit p0

    return v0

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush(I)I
    .locals 2

    .prologue
    .line 122
    monitor-enter p0

    int-to-long v0, p1

    :try_start_0
    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->a(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isBufferEmpty()Z
    .locals 1

    .prologue
    .line 170
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->c:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD00;->c:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
