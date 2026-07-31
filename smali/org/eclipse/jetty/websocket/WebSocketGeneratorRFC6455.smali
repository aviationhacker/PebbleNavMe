.class public Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/websocket/WebSocketGenerator;


# instance fields
.field private final a:Ljava/util/concurrent/locks/Lock;

.field private final b:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

.field private final c:Lorg/eclipse/jetty/io/EndPoint;

.field private final d:[B

.field private final e:Lorg/eclipse/jetty/websocket/MaskGen;

.field private f:Lorg/eclipse/jetty/io/Buffer;

.field private g:I

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/websocket/WebSocketBuffers;Lorg/eclipse/jetty/io/EndPoint;)V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;-><init>(Lorg/eclipse/jetty/websocket/WebSocketBuffers;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/websocket/MaskGen;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/websocket/WebSocketBuffers;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/websocket/MaskGen;)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->a:Ljava/util/concurrent/locks/Lock;

    .line 42
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->d:[B

    .line 56
    iput-object p1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->b:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    .line 57
    iput-object p2, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->c:Lorg/eclipse/jetty/io/EndPoint;

    .line 58
    iput-object p3, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->e:Lorg/eclipse/jetty/websocket/MaskGen;

    .line 59
    return-void
.end method


# virtual methods
.method public addFrame(BB[BII)V
    .locals 15

    .prologue
    .line 76
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 79
    :try_start_0
    iget-boolean v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->i:Z

    if-eqz v1, :cond_0

    .line 80
    new-instance v1, Lorg/eclipse/jetty/io/EofException;

    const-string v2, "Closed"

    invoke-direct {v1, v2}, Lorg/eclipse/jetty/io/EofException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1

    .line 81
    :cond_0
    const/16 v1, 0x8

    move/from16 v0, p2

    if-ne v0, v1, :cond_1

    .line 82
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->i:Z

    .line 84
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->e:Lorg/eclipse/jetty/websocket/MaskGen;

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    move v8, v1

    .line 86
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->f:Lorg/eclipse/jetty/io/Buffer;

    if-nez v1, :cond_2

    .line 87
    if-eqz v8, :cond_8

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->b:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    invoke-virtual {v1}, Lorg/eclipse/jetty/websocket/WebSocketBuffers;->getBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->f:Lorg/eclipse/jetty/io/Buffer;

    .line 89
    :cond_2
    invoke-static/range {p1 .. p1}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->a(B)Z

    move-result v9

    .line 91
    if-eqz v8, :cond_9

    const/16 v1, 0xe

    :goto_2
    move/from16 v6, p5

    move/from16 v2, p2

    .line 95
    :goto_3
    iget-boolean v3, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->h:Z

    if-eqz v3, :cond_3

    const/4 v2, 0x0

    .line 96
    :cond_3
    and-int/lit8 v3, p1, 0xf

    shl-int/lit8 v3, v3, 0x4

    and-int/lit8 v2, v2, 0xf

    add-int/2addr v2, v3

    int-to-byte v2, v2

    .line 97
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->h:Z

    .line 100
    add-int v3, v6, v1

    iget-object v4, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->f:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v4}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v4

    if-le v3, v4, :cond_a

    .line 103
    and-int/lit8 v2, v2, 0x7f

    int-to-byte v2, v2

    .line 104
    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->f:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v3

    sub-int v5, v3, v1

    move v7, v2

    .line 110
    :goto_4
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->f:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v2

    if-gt v2, v1, :cond_4

    .line 112
    invoke-virtual {p0}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->flushBuffer()I

    .line 113
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->f:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v2

    if-gt v2, v1, :cond_4

    .line 114
    invoke-virtual {p0}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->flush()I

    .line 118
    :cond_4
    const v2, 0xffff

    if-le v5, v2, :cond_c

    .line 120
    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->f:Lorg/eclipse/jetty/io/Buffer;

    const/16 v2, 0xa

    new-array v4, v2, [B

    const/4 v2, 0x0

    aput-byte v7, v4, v2

    const/4 v10, 0x1

    if-eqz v8, :cond_b

    const/4 v2, -0x1

    :goto_5
    aput-byte v2, v4, v10

    const/4 v2, 0x2

    const/4 v10, 0x0

    aput-byte v10, v4, v2

    const/4 v2, 0x3

    const/4 v10, 0x0

    aput-byte v10, v4, v2

    const/4 v2, 0x4

    const/4 v10, 0x0

    aput-byte v10, v4, v2

    const/4 v2, 0x5

    const/4 v10, 0x0

    aput-byte v10, v4, v2

    const/4 v2, 0x6

    shr-int/lit8 v10, v5, 0x18

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v4, v2

    const/4 v2, 0x7

    shr-int/lit8 v10, v5, 0x10

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v4, v2

    const/16 v2, 0x8

    shr-int/lit8 v10, v5, 0x8

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v4, v2

    const/16 v2, 0x9

    and-int/lit16 v10, v5, 0xff

    int-to-byte v10, v10

    aput-byte v10, v4, v2

    invoke-interface {v3, v4}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 148
    :goto_6
    if-eqz v8, :cond_5

    .line 150
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->e:Lorg/eclipse/jetty/websocket/MaskGen;

    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->d:[B

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/websocket/MaskGen;->genMask([B)V

    .line 151
    const/4 v2, 0x0

    iput v2, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->g:I

    .line 152
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->f:Lorg/eclipse/jetty/io/Buffer;

    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->d:[B

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    :cond_5
    move v4, v5

    .line 157
    :cond_6
    :goto_7
    if-lez v4, :cond_14

    .line 159
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->f:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->compact()V

    .line 160
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->f:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v2

    if-ge v4, v2, :cond_10

    move v3, v4

    .line 162
    :goto_8
    if-eqz v8, :cond_11

    .line 164
    const/4 v2, 0x0

    :goto_9
    if-ge v2, v3, :cond_12

    .line 165
    iget-object v10, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->f:Lorg/eclipse/jetty/io/Buffer;

    sub-int v11, v5, v4

    add-int v11, v11, p4

    add-int/2addr v11, v2

    aget-byte v11, p3, v11

    iget-object v12, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->d:[B

    iget v13, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->g:I

    add-int/lit8 v14, v13, 0x1

    iput v14, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->g:I

    rem-int/lit8 v13, v13, 0x4

    aget-byte v12, v12, v13

    xor-int/2addr v11, v12

    int-to-byte v11, v11

    invoke-interface {v10, v11}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 164
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 84
    :cond_7
    const/4 v1, 0x0

    move v8, v1

    goto/16 :goto_0

    .line 87
    :cond_8
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->b:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    invoke-virtual {v1}, Lorg/eclipse/jetty/websocket/WebSocketBuffers;->getDirectBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    goto/16 :goto_1

    .line 91
    :cond_9
    const/16 v1, 0xa

    goto/16 :goto_2

    .line 106
    :cond_a
    if-eqz v9, :cond_18

    .line 107
    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    move v5, v6

    move v7, v2

    goto/16 :goto_4

    .line 120
    :cond_b
    const/16 v2, 0x7f

    goto/16 :goto_5

    .line 132
    :cond_c
    const/16 v2, 0x7e

    if-lt v5, v2, :cond_e

    .line 134
    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->f:Lorg/eclipse/jetty/io/Buffer;

    const/4 v2, 0x4

    new-array v4, v2, [B

    const/4 v2, 0x0

    aput-byte v7, v4, v2

    const/4 v10, 0x1

    if-eqz v8, :cond_d

    const/4 v2, -0x2

    :goto_a
    aput-byte v2, v4, v10

    const/4 v2, 0x2

    shr-int/lit8 v10, v5, 0x8

    int-to-byte v10, v10

    aput-byte v10, v4, v2

    const/4 v2, 0x3

    and-int/lit16 v10, v5, 0xff

    int-to-byte v10, v10

    aput-byte v10, v4, v2

    invoke-interface {v3, v4}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    goto/16 :goto_6

    :cond_d
    const/16 v2, 0x7e

    goto :goto_a

    .line 142
    :cond_e
    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->f:Lorg/eclipse/jetty/io/Buffer;

    const/4 v2, 0x2

    new-array v4, v2, [B

    const/4 v2, 0x0

    aput-byte v7, v4, v2

    const/4 v10, 0x1

    if-eqz v8, :cond_f

    or-int/lit16 v2, v5, 0x80

    :goto_b
    int-to-byte v2, v2

    aput-byte v2, v4, v10

    invoke-interface {v3, v4}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    goto/16 :goto_6

    :cond_f
    move v2, v5

    goto :goto_b

    .line 160
    :cond_10
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->f:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v2

    move v3, v2

    goto/16 :goto_8

    .line 168
    :cond_11
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->f:Lorg/eclipse/jetty/io/Buffer;

    sub-int v10, v5, v4

    add-int v10, v10, p4

    move-object/from16 v0, p3

    invoke-interface {v2, v0, v10, v3}, Lorg/eclipse/jetty/io/Buffer;->put([BII)I

    .line 170
    :cond_12
    sub-int/2addr v4, v3

    .line 171
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->f:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v2

    if-lez v2, :cond_13

    .line 174
    invoke-virtual {p0}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->flushBuffer()I

    goto/16 :goto_7

    .line 179
    :cond_13
    invoke-virtual {p0}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->flush()I

    .line 180
    if-nez v4, :cond_6

    .line 183
    invoke-virtual {p0}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->flushBuffer()I

    goto/16 :goto_7

    .line 187
    :cond_14
    add-int p4, p4, v5

    .line 188
    sub-int/2addr v6, v5

    .line 190
    if-gtz v6, :cond_17

    .line 191
    if-nez v9, :cond_16

    const/4 v1, 0x1

    :goto_c
    iput-boolean v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->h:Z

    .line 193
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->f:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->f:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    if-nez v1, :cond_15

    .line 195
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->b:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->f:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/websocket/WebSocketBuffers;->returnBuffer(Lorg/eclipse/jetty/io/Buffer;)V

    .line 196
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->f:Lorg/eclipse/jetty/io/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    :cond_15
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 203
    return-void

    .line 191
    :cond_16
    const/4 v1, 0x0

    goto :goto_c

    :cond_17
    move v2, v7

    goto/16 :goto_3

    :cond_18
    move v5, v6

    move v7, v2

    goto/16 :goto_4
.end method

.method public flush()I
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 233
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v1

    if-nez v1, :cond_0

    .line 265
    :goto_0
    return v0

    .line 238
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->f:Lorg/eclipse/jetty/io/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 265
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 241
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->flushBuffer()I

    move-result v0

    .line 242
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->c:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->isBlocking()Z

    move-result v1

    if-nez v1, :cond_4

    .line 244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 245
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->c:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->getMaxIdleTime()I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v4, v2

    .line 246
    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->f:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 248
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->c:Lorg/eclipse/jetty/io/EndPoint;

    sub-long v6, v4, v2

    invoke-interface {v1, v6, v7}, Lorg/eclipse/jetty/io/EndPoint;->blockWritable(J)Z

    move-result v1

    .line 249
    if-nez v1, :cond_3

    .line 251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 252
    cmp-long v1, v2, v4

    if-ltz v1, :cond_2

    .line 254
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Write timeout"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 257
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->flushBuffer()I

    move-result v1

    add-int/2addr v0, v1

    .line 258
    goto :goto_1

    .line 260
    :cond_4
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->f:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->compact()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 265
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0
.end method

.method public flushBuffer()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 207
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v1

    if-nez v1, :cond_0

    .line 227
    :goto_0
    return v0

    .line 212
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->c:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v1

    if-nez v1, :cond_1

    .line 213
    new-instance v0, Lorg/eclipse/jetty/io/EofException;

    invoke-direct {v0}, Lorg/eclipse/jetty/io/EofException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 215
    :cond_1
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->f:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v1, :cond_4

    .line 217
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->f:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->c:Lorg/eclipse/jetty/io/EndPoint;

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->f:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/EndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v0

    .line 218
    :cond_2
    iget-boolean v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->i:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->f:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 219
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->c:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->shutdownOutput()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    :cond_3
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0
.end method

.method public getBuffer()Lorg/eclipse/jetty/io/Buffer;
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 66
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->f:Lorg/eclipse/jetty/io/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public isBufferEmpty()Z
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 274
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->f:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->f:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 278
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    .line 274
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 278
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public returnBuffer()V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 287
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->f:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->f:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 289
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->b:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->f:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/websocket/WebSocketBuffers;->returnBuffer(Lorg/eclipse/jetty/io/Buffer;)V

    .line 290
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->f:Lorg/eclipse/jetty/io/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 297
    return-void

    .line 295
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 305
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->f:Lorg/eclipse/jetty/io/Buffer;

    .line 306
    const-string v1, "%s@%x closed=%b buffer=%d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-boolean v4, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->i:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    goto :goto_0
.end method
