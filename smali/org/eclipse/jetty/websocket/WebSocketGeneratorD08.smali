.class public Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;
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
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;-><init>(Lorg/eclipse/jetty/websocket/WebSocketBuffers;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/websocket/MaskGen;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/websocket/WebSocketBuffers;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/websocket/MaskGen;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->a:Ljava/util/concurrent/locks/Lock;

    .line 38
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->d:[B

    .line 52
    iput-object p1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->b:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    .line 53
    iput-object p2, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->c:Lorg/eclipse/jetty/io/EndPoint;

    .line 54
    iput-object p3, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->e:Lorg/eclipse/jetty/websocket/MaskGen;

    .line 55
    return-void
.end method


# virtual methods
.method public addFrame(BB[BII)V
    .locals 15

    .prologue
    .line 72
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 75
    :try_start_0
    iget-boolean v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->i:Z

    if-eqz v1, :cond_0

    .line 76
    new-instance v1, Lorg/eclipse/jetty/io/EofException;

    const-string v2, "Closed"

    invoke-direct {v1, v2}, Lorg/eclipse/jetty/io/EofException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1

    .line 77
    :cond_0
    const/16 v1, 0x8

    move/from16 v0, p2

    if-ne v0, v1, :cond_1

    .line 78
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->i:Z

    .line 80
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->e:Lorg/eclipse/jetty/websocket/MaskGen;

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    move v8, v1

    .line 82
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->f:Lorg/eclipse/jetty/io/Buffer;

    if-nez v1, :cond_2

    .line 83
    if-eqz v8, :cond_8

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->b:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    invoke-virtual {v1}, Lorg/eclipse/jetty/websocket/WebSocketBuffers;->getBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->f:Lorg/eclipse/jetty/io/Buffer;

    .line 85
    :cond_2
    invoke-static/range {p1 .. p1}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->a(B)Z

    move-result v9

    .line 87
    if-eqz v8, :cond_9

    const/16 v1, 0xe

    :goto_2
    move/from16 v6, p5

    move/from16 v2, p2

    .line 91
    :goto_3
    iget-boolean v3, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->h:Z

    if-eqz v3, :cond_3

    const/4 v2, 0x0

    .line 92
    :cond_3
    and-int/lit8 v3, p1, 0xf

    shl-int/lit8 v3, v3, 0x4

    and-int/lit8 v2, v2, 0xf

    add-int/2addr v2, v3

    int-to-byte v2, v2

    .line 93
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->h:Z

    .line 96
    add-int v3, v6, v1

    iget-object v4, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->f:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v4}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v4

    if-le v3, v4, :cond_a

    .line 99
    and-int/lit8 v2, v2, 0x7f

    int-to-byte v2, v2

    .line 100
    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->f:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v3

    sub-int v5, v3, v1

    move v7, v2

    .line 106
    :goto_4
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->f:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v2

    if-gt v2, v1, :cond_4

    .line 108
    invoke-virtual {p0}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->flushBuffer()I

    .line 109
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->f:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v2

    if-gt v2, v1, :cond_4

    .line 110
    invoke-virtual {p0}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->flush()I

    .line 114
    :cond_4
    const v2, 0xffff

    if-le v5, v2, :cond_c

    .line 116
    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->f:Lorg/eclipse/jetty/io/Buffer;

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

    .line 144
    :goto_6
    if-eqz v8, :cond_5

    .line 146
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->e:Lorg/eclipse/jetty/websocket/MaskGen;

    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->d:[B

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/websocket/MaskGen;->genMask([B)V

    .line 147
    const/4 v2, 0x0

    iput v2, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->g:I

    .line 148
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->f:Lorg/eclipse/jetty/io/Buffer;

    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->d:[B

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    :cond_5
    move v4, v5

    .line 153
    :cond_6
    :goto_7
    if-lez v4, :cond_14

    .line 155
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->f:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->compact()V

    .line 156
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->f:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v2

    if-ge v4, v2, :cond_10

    move v3, v4

    .line 158
    :goto_8
    if-eqz v8, :cond_11

    .line 160
    const/4 v2, 0x0

    :goto_9
    if-ge v2, v3, :cond_12

    .line 161
    iget-object v10, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->f:Lorg/eclipse/jetty/io/Buffer;

    sub-int v11, v5, v4

    add-int v11, v11, p4

    add-int/2addr v11, v2

    aget-byte v11, p3, v11

    iget-object v12, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->d:[B

    iget v13, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->g:I

    add-int/lit8 v14, v13, 0x1

    iput v14, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->g:I

    rem-int/lit8 v13, v13, 0x4

    aget-byte v12, v12, v13

    xor-int/2addr v11, v12

    int-to-byte v11, v11

    invoke-interface {v10, v11}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 160
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 80
    :cond_7
    const/4 v1, 0x0

    move v8, v1

    goto/16 :goto_0

    .line 83
    :cond_8
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->b:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    invoke-virtual {v1}, Lorg/eclipse/jetty/websocket/WebSocketBuffers;->getDirectBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    goto/16 :goto_1

    .line 87
    :cond_9
    const/16 v1, 0xa

    goto/16 :goto_2

    .line 102
    :cond_a
    if-eqz v9, :cond_18

    .line 103
    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    move v5, v6

    move v7, v2

    goto/16 :goto_4

    .line 116
    :cond_b
    const/16 v2, 0x7f

    goto/16 :goto_5

    .line 128
    :cond_c
    const/16 v2, 0x7e

    if-lt v5, v2, :cond_e

    .line 130
    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->f:Lorg/eclipse/jetty/io/Buffer;

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

    .line 138
    :cond_e
    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->f:Lorg/eclipse/jetty/io/Buffer;

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

    .line 156
    :cond_10
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->f:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v2

    move v3, v2

    goto/16 :goto_8

    .line 164
    :cond_11
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->f:Lorg/eclipse/jetty/io/Buffer;

    sub-int v10, v5, v4

    add-int v10, v10, p4

    move-object/from16 v0, p3

    invoke-interface {v2, v0, v10, v3}, Lorg/eclipse/jetty/io/Buffer;->put([BII)I

    .line 166
    :cond_12
    sub-int/2addr v4, v3

    .line 167
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->f:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v2

    if-lez v2, :cond_13

    .line 170
    invoke-virtual {p0}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->flushBuffer()I

    goto/16 :goto_7

    .line 175
    :cond_13
    invoke-virtual {p0}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->flush()I

    .line 176
    if-nez v4, :cond_6

    .line 179
    invoke-virtual {p0}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->flushBuffer()I

    goto/16 :goto_7

    .line 183
    :cond_14
    add-int p4, p4, v5

    .line 184
    sub-int/2addr v6, v5

    .line 186
    if-gtz v6, :cond_17

    .line 187
    if-nez v9, :cond_16

    const/4 v1, 0x1

    :goto_c
    iput-boolean v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->h:Z

    .line 189
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->f:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->f:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    if-nez v1, :cond_15

    .line 191
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->b:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->f:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/websocket/WebSocketBuffers;->returnBuffer(Lorg/eclipse/jetty/io/Buffer;)V

    .line 192
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->f:Lorg/eclipse/jetty/io/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    :cond_15
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 199
    return-void

    .line 187
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

    .line 229
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v1

    if-nez v1, :cond_0

    .line 261
    :goto_0
    return v0

    .line 234
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->f:Lorg/eclipse/jetty/io/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 261
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 237
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->flushBuffer()I

    move-result v0

    .line 238
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->c:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->isBlocking()Z

    move-result v1

    if-nez v1, :cond_4

    .line 240
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 241
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->c:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->getMaxIdleTime()I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v4, v2

    .line 242
    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->f:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 244
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->c:Lorg/eclipse/jetty/io/EndPoint;

    sub-long v6, v4, v2

    invoke-interface {v1, v6, v7}, Lorg/eclipse/jetty/io/EndPoint;->blockWritable(J)Z

    move-result v1

    .line 245
    if-nez v1, :cond_3

    .line 247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 248
    cmp-long v1, v2, v4

    if-ltz v1, :cond_2

    .line 250
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Write timeout"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 261
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 253
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->flushBuffer()I

    move-result v1

    add-int/2addr v0, v1

    .line 254
    goto :goto_1

    .line 256
    :cond_4
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->f:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->compact()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 261
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0
.end method

.method public flushBuffer()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 203
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v1

    if-nez v1, :cond_0

    .line 223
    :goto_0
    return v0

    .line 208
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->c:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v1

    if-nez v1, :cond_1

    .line 209
    new-instance v0, Lorg/eclipse/jetty/io/EofException;

    invoke-direct {v0}, Lorg/eclipse/jetty/io/EofException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 211
    :cond_1
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->f:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v1, :cond_4

    .line 213
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->f:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->c:Lorg/eclipse/jetty/io/EndPoint;

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->f:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/EndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v0

    .line 214
    :cond_2
    iget-boolean v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->i:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->f:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 215
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->c:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->shutdownOutput()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    :cond_3
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0
.end method

.method public getBuffer()Lorg/eclipse/jetty/io/Buffer;
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 62
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->f:Lorg/eclipse/jetty/io/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public isBufferEmpty()Z
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 270
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->f:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->f:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 274
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    .line 270
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 274
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public returnBuffer()V
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 283
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->f:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->f:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 285
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->b:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->f:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/websocket/WebSocketBuffers;->returnBuffer(Lorg/eclipse/jetty/io/Buffer;)V

    .line 286
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->f:Lorg/eclipse/jetty/io/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 293
    return-void

    .line 291
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 301
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->f:Lorg/eclipse/jetty/io/Buffer;

    .line 302
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

    iget-boolean v4, p0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->i:Z

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
