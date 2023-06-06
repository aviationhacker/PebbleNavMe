.class public Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/websocket/WebSocketGenerator;


# instance fields
.field private final a:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

.field private final b:Lorg/eclipse/jetty/io/EndPoint;

.field private c:Lorg/eclipse/jetty/io/Buffer;

.field private final d:[B

.field private e:I

.field private f:Z

.field private final g:Lorg/eclipse/jetty/websocket/MaskGen;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/websocket/WebSocketBuffers;Lorg/eclipse/jetty/io/EndPoint;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->d:[B

    .line 47
    iput-object p1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->a:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    .line 48
    iput-object p2, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->b:Lorg/eclipse/jetty/io/EndPoint;

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->g:Lorg/eclipse/jetty/websocket/MaskGen;

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/websocket/WebSocketBuffers;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/websocket/MaskGen;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->d:[B

    .line 54
    iput-object p1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->a:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    .line 55
    iput-object p2, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->b:Lorg/eclipse/jetty/io/EndPoint;

    .line 56
    iput-object p3, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->g:Lorg/eclipse/jetty/websocket/MaskGen;

    .line 57
    return-void
.end method

.method private declared-synchronized a()I
    .locals 2

    .prologue
    .line 199
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->b:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    new-instance v0, Lorg/eclipse/jetty/io/EofException;

    invoke-direct {v0}, Lorg/eclipse/jetty/io/EofException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 202
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->c:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->b:Lorg/eclipse/jetty/io/EndPoint;

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->c:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/EndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 205
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
    .line 210
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->c:Lorg/eclipse/jetty/io/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 211
    const/4 v0, 0x0

    .line 226
    :cond_0
    monitor-exit p0

    return v0

    .line 212
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->a()I

    move-result v0

    .line 213
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->c:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->compact()V

    .line 214
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->b:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->isBlocking()Z

    move-result v1

    if-nez v1, :cond_0

    .line 216
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->c:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v1

    if-nez v1, :cond_0

    .line 218
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->b:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1, p1, p2}, Lorg/eclipse/jetty/io/EndPoint;->blockWritable(J)Z

    move-result v1

    .line 219
    if-nez v1, :cond_2

    .line 220
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Write timeout"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 222
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 223
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->c:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->compact()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized a(B)V
    .locals 4

    .prologue
    .line 178
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->c:Lorg/eclipse/jetty/io/Buffer;

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->d:[B

    iget v2, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->e:I

    rem-int/lit8 v2, v2, 0x4

    aget-byte v1, v1, v2

    xor-int/2addr v1, p1

    int-to-byte v1, v1

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/Buffer;->put(B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    monitor-exit p0

    return-void

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a([B)V
    .locals 5

    .prologue
    .line 170
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->g:Lorg/eclipse/jetty/websocket/MaskGen;

    if-eqz v0, :cond_0

    .line 171
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 172
    aget-byte v1, p1, v0

    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->d:[B

    iget v3, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->e:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->e:I

    rem-int/lit8 v3, v3, 0x4

    aget-byte v2, v2, v3

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->c:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/io/Buffer;->put([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    monitor-exit p0

    return-void

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized addFrame(BB[BII)V
    .locals 11

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->b:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->getMaxIdleTime()I

    move-result v0

    int-to-long v8, v0

    .line 65
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->c:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->g:Lorg/eclipse/jetty/websocket/MaskGen;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->a:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    invoke-virtual {v0}, Lorg/eclipse/jetty/websocket/WebSocketBuffers;->getBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->c:Lorg/eclipse/jetty/io/Buffer;

    .line 68
    :cond_0
    invoke-static {p1}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->a(I)Z

    move-result v7

    .line 69
    and-int/lit8 v0, p1, 0xf

    shl-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0xf

    and-int/2addr v0, p2

    int-to-byte v1, v0

    .line 71
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->g:Lorg/eclipse/jetty/websocket/MaskGen;

    if-eqz v0, :cond_6

    const/16 v0, 0xe

    :goto_1
    move/from16 v5, p5

    .line 75
    :goto_2
    iget-boolean v2, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->f:Z

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    .line 76
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->f:Z

    .line 79
    add-int v2, v5, v0

    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->c:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v3

    if-le v2, v3, :cond_7

    .line 82
    and-int/lit8 v1, v1, 0x7f

    int-to-byte v1, v1

    .line 83
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->c:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v2

    sub-int v4, v2, v0

    move v6, v1

    .line 89
    :goto_3
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->c:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v1

    if-gt v1, v0, :cond_2

    .line 90
    invoke-direct {p0, v8, v9}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->a(J)I

    .line 93
    :cond_2
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->g:Lorg/eclipse/jetty/websocket/MaskGen;

    if-eqz v1, :cond_3

    .line 95
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->g:Lorg/eclipse/jetty/websocket/MaskGen;

    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->d:[B

    invoke-interface {v1, v2}, Lorg/eclipse/jetty/websocket/MaskGen;->genMask([B)V

    .line 96
    const/4 v1, 0x0

    iput v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->e:I

    .line 97
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->c:Lorg/eclipse/jetty/io/Buffer;

    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->d:[B

    invoke-interface {v1, v2}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 101
    :cond_3
    const v1, 0xffff

    if-le v4, v1, :cond_8

    .line 103
    const/16 v1, 0xa

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte v6, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0x7f

    aput-byte v3, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput-byte v3, v1, v2

    const/4 v2, 0x3

    const/4 v3, 0x0

    aput-byte v3, v1, v2

    const/4 v2, 0x4

    const/4 v3, 0x0

    aput-byte v3, v1, v2

    const/4 v2, 0x5

    const/4 v3, 0x0

    aput-byte v3, v1, v2

    const/4 v2, 0x6

    shr-int/lit8 v3, v4, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x7

    shr-int/lit8 v3, v4, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/16 v2, 0x8

    shr-int/lit8 v3, v4, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/16 v2, 0x9

    and-int/lit16 v3, v4, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    invoke-direct {p0, v1}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->a([B)V

    :goto_4
    move v3, v4

    .line 131
    :cond_4
    :goto_5
    if-lez v3, :cond_e

    .line 133
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->c:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->compact()V

    .line 134
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->c:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v1

    if-ge v3, v1, :cond_a

    move v2, v3

    .line 136
    :goto_6
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->g:Lorg/eclipse/jetty/websocket/MaskGen;

    if-eqz v1, :cond_b

    .line 138
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v2, :cond_c

    .line 139
    sub-int v10, v4, v3

    add-int/2addr v10, p4

    add-int/2addr v10, v1

    aget-byte v10, p3, v10

    invoke-direct {p0, v10}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->a(B)V

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 66
    :cond_5
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->a:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    invoke-virtual {v0}, Lorg/eclipse/jetty/websocket/WebSocketBuffers;->getDirectBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    goto/16 :goto_0

    .line 71
    :cond_6
    const/16 v0, 0xa

    goto/16 :goto_1

    .line 85
    :cond_7
    if-eqz v7, :cond_11

    .line 86
    or-int/lit8 v1, v1, -0x80

    int-to-byte v1, v1

    move v4, v5

    move v6, v1

    goto/16 :goto_3

    .line 115
    :cond_8
    const/16 v1, 0x7e

    if-lt v4, v1, :cond_9

    .line 117
    const/4 v1, 0x4

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte v6, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0x7e

    aput-byte v3, v1, v2

    const/4 v2, 0x2

    shr-int/lit8 v3, v4, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x3

    and-int/lit16 v3, v4, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    invoke-direct {p0, v1}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->a([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 125
    :cond_9
    :try_start_1
    invoke-direct {p0, v6}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->a(B)V

    .line 126
    int-to-byte v1, v4

    invoke-direct {p0, v1}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->a(B)V

    goto :goto_4

    .line 134
    :cond_a
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->c:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v1

    move v2, v1

    goto :goto_6

    .line 142
    :cond_b
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->c:Lorg/eclipse/jetty/io/Buffer;

    sub-int v10, v4, v3

    add-int/2addr v10, p4

    invoke-interface {v1, p3, v10, v2}, Lorg/eclipse/jetty/io/Buffer;->put([BII)I

    .line 144
    :cond_c
    sub-int/2addr v3, v2

    .line 145
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->c:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v1

    if-lez v1, :cond_d

    .line 148
    invoke-direct {p0}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->a()I

    goto :goto_5

    .line 153
    :cond_d
    invoke-direct {p0, v8, v9}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->a(J)I

    .line 154
    if-nez v3, :cond_4

    .line 157
    invoke-direct {p0}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->a()I

    goto/16 :goto_5

    .line 161
    :cond_e
    add-int/2addr p4, v4

    .line 162
    sub-int/2addr v5, v4

    .line 164
    if-gtz v5, :cond_10

    .line 165
    if-nez v7, :cond_f

    const/4 v0, 0x1

    :goto_8
    iput-boolean v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->f:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    monitor-exit p0

    return-void

    .line 165
    :cond_f
    const/4 v0, 0x0

    goto :goto_8

    :cond_10
    move v1, v6

    goto/16 :goto_2

    :cond_11
    move v4, v5

    move v6, v1

    goto/16 :goto_3
.end method

.method public declared-synchronized flush()I
    .locals 3

    .prologue
    .line 188
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->a()I

    move-result v0

    .line 189
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->c:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->c:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 191
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->a:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->c:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/websocket/WebSocketBuffers;->returnBuffer(Lorg/eclipse/jetty/io/Buffer;)V

    .line 192
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->c:Lorg/eclipse/jetty/io/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    :cond_0
    monitor-exit p0

    return v0

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush(I)I
    .locals 2

    .prologue
    .line 183
    monitor-enter p0

    int-to-long v0, p1

    :try_start_0
    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->a(J)I
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
    .line 231
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->c:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;->c:Lorg/eclipse/jetty/io/Buffer;

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
