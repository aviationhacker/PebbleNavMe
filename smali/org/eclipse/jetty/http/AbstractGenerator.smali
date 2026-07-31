.class public abstract Lorg/eclipse/jetty/http/AbstractGenerator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/http/Generator;


# static fields
.field public static final NO_BYTES:[B

.field public static final STATE_CONTENT:I = 0x2

.field public static final STATE_END:I = 0x4

.field public static final STATE_FLUSHING:I = 0x3

.field public static final STATE_HEADER:I

.field private static final a:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field protected _buffer:Lorg/eclipse/jetty/io/Buffer;

.field protected final _buffers:Lorg/eclipse/jetty/io/Buffers;

.field protected _content:Lorg/eclipse/jetty/io/Buffer;

.field protected _contentLength:J

.field protected _contentWritten:J

.field protected _date:Lorg/eclipse/jetty/io/Buffer;

.field protected final _endp:Lorg/eclipse/jetty/io/EndPoint;

.field protected _head:Z

.field protected _header:Lorg/eclipse/jetty/io/Buffer;

.field protected _last:Z

.field protected _method:Lorg/eclipse/jetty/io/Buffer;

.field protected _noContent:Z

.field protected _persistent:Ljava/lang/Boolean;

.field protected _reason:Lorg/eclipse/jetty/io/Buffer;

.field protected _state:I

.field protected _status:I

.field protected _uri:Ljava/lang/String;

.field protected _version:I

.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lorg/eclipse/jetty/http/AbstractGenerator;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/AbstractGenerator;->a:Lorg/eclipse/jetty/util/log/Logger;

    .line 51
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/eclipse/jetty/http/AbstractGenerator;->NO_BYTES:[B

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/EndPoint;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput v2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_state:I

    .line 60
    iput v2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_status:I

    .line 61
    const/16 v0, 0xb

    iput v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_version:I

    .line 66
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_contentWritten:J

    .line 67
    const-wide/16 v0, -0x3

    iput-wide v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_contentLength:J

    .line 68
    iput-boolean v2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_last:Z

    .line 69
    iput-boolean v2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_head:Z

    .line 70
    iput-boolean v2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_noContent:Z

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_persistent:Ljava/lang/Boolean;

    .line 91
    iput-object p1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    .line 92
    iput-object p2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    .line 93
    return-void
.end method


# virtual methods
.method public blockForOutput(J)V
    .locals 3

    .prologue
    .line 503
    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->isBlocking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/AbstractGenerator;->flushBuffer()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    :goto_0
    return-void

    .line 509
    :catch_0
    move-exception v0

    .line 511
    iget-object v1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    .line 512
    throw v0

    .line 517
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0, p1, p2}, Lorg/eclipse/jetty/io/EndPoint;->blockWritable(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 519
    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    .line 520
    new-instance v0, Lorg/eclipse/jetty/io/EofException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/io/EofException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 523
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/AbstractGenerator;->flushBuffer()I

    goto :goto_0
.end method

.method public complete()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 416
    iget v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_state:I

    if-nez v0, :cond_0

    .line 418
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "State==HEADER"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 421
    :cond_0
    iget-wide v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_contentLength:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    iget-wide v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_contentLength:J

    iget-wide v2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_contentWritten:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_head:Z

    if-nez v0, :cond_2

    .line 423
    sget-object v0, Lorg/eclipse/jetty/http/AbstractGenerator;->a:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 424
    sget-object v0, Lorg/eclipse/jetty/http/AbstractGenerator;->a:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContentLength written=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_contentWritten:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != contentLength=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_contentLength:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 425
    :cond_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_persistent:Ljava/lang/Boolean;

    .line 427
    :cond_2
    return-void
.end method

.method public abstract completeHeader(Lorg/eclipse/jetty/http/HttpFields;Z)V
.end method

.method public completeUncheckedAddContent()V
    .locals 4

    .prologue
    .line 367
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_noContent:Z

    if-eqz v0, :cond_1

    .line 369
    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 374
    :cond_1
    iget-wide v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_contentWritten:J

    iget-object v2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_contentWritten:J

    .line 375
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_head:Z

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    goto :goto_0
.end method

.method public flush(J)V
    .locals 7

    .prologue
    .line 437
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 438
    add-long v2, v0, p1

    .line 439
    iget-object v4, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    .line 440
    iget-object v5, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 441
    if-eqz v4, :cond_0

    invoke-interface {v4}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v6

    if-gtz v6, :cond_2

    :cond_0
    if-eqz v5, :cond_1

    invoke-interface {v5}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v6

    if-gtz v6, :cond_2

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/AbstractGenerator;->isBufferFull()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 443
    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/AbstractGenerator;->flushBuffer()I

    .line 445
    :goto_0
    cmp-long v6, v0, v2

    if-gez v6, :cond_5

    if-eqz v4, :cond_3

    invoke-interface {v4}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v6

    if-gtz v6, :cond_4

    :cond_3
    if-eqz v5, :cond_5

    invoke-interface {v5}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v6

    if-lez v6, :cond_5

    :cond_4
    iget-object v6, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/EndPoint;->isOutputShutdown()Z

    move-result v6

    if-nez v6, :cond_5

    .line 447
    sub-long v0, v2, v0

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/http/AbstractGenerator;->blockForOutput(J)V

    .line 448
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0

    .line 451
    :cond_5
    return-void
.end method

.method public abstract flushBuffer()I
.end method

.method public getContentBufferSize()I
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffers;->getBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 165
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v0

    return v0
.end method

.method public getContentWritten()J
    .locals 2

    .prologue
    .line 495
    iget-wide v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_contentWritten:J

    return-wide v0
.end method

.method public getSendServerVersion()Z
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->b:Z

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_state:I

    return v0
.end method

.method public getUncheckedBuffer()Lorg/eclipse/jetty/io/Buffer;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 295
    iget v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_version:I

    return v0
.end method

.method public increaseContentBufferSize(I)V
    .locals 3

    .prologue
    .line 174
    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffers;->getBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 176
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 178
    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/io/Buffers;->getBuffer(I)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    .line 179
    iget-object v1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 180
    iget-object v1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    iget-object v2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1, v2}, Lorg/eclipse/jetty/io/Buffers;->returnBuffer(Lorg/eclipse/jetty/io/Buffer;)V

    .line 181
    iput-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 183
    :cond_1
    return-void
.end method

.method public isAllContentWritten()Z
    .locals 4

    .prologue
    .line 402
    iget-wide v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_contentLength:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_contentWritten:J

    iget-wide v2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_contentLength:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBufferFull()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 383
    iget-object v2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v2

    if-nez v2, :cond_3

    .line 385
    iget-object v2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->isImmutable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 386
    iget-object v2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->compact()V

    .line 387
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v2

    if-nez v2, :cond_2

    .line 390
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 387
    goto :goto_0

    .line 390
    :cond_3
    iget-object v2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public isCommitted()Z
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_state:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isComplete()Z
    .locals 2

    .prologue
    .line 218
    iget v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHead()Z
    .locals 1

    .prologue
    .line 239
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_head:Z

    return v0
.end method

.method public isIdle()Z
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_state:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_method:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_0

    iget v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_status:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v0

    return v0
.end method

.method public isPersistent()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 267
    iget-object v1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_persistent:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_persistent:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/AbstractGenerator;->isRequest()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_version:I

    const/16 v2, 0xa

    if-gt v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract isRequest()Z
.end method

.method public abstract isResponse()Z
.end method

.method public isState(I)Z
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_state:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWritten()Z
    .locals 4

    .prologue
    .line 396
    iget-wide v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_contentWritten:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract prepareUncheckedAddContent()I
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 110
    iput v1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_state:I

    .line 111
    iput v1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_status:I

    .line 112
    const/16 v0, 0xb

    iput v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_version:I

    .line 113
    iput-object v2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_reason:Lorg/eclipse/jetty/io/Buffer;

    .line 114
    iput-boolean v1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_last:Z

    .line 115
    iput-boolean v1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_head:Z

    .line 116
    iput-boolean v1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_noContent:Z

    .line 117
    iput-object v2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_persistent:Ljava/lang/Boolean;

    .line 118
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_contentWritten:J

    .line 119
    const-wide/16 v0, -0x3

    iput-wide v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_contentLength:J

    .line 120
    iput-object v2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_date:Lorg/eclipse/jetty/io/Buffer;

    .line 122
    iput-object v2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    .line 123
    iput-object v2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_method:Lorg/eclipse/jetty/io/Buffer;

    .line 124
    return-void
.end method

.method public resetBuffer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 145
    iget v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_state:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 146
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Flushed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_last:Z

    .line 149
    iput-object v2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_persistent:Ljava/lang/Boolean;

    .line 150
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_contentWritten:J

    .line 151
    const-wide/16 v0, -0x3

    iput-wide v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_contentLength:J

    .line 152
    iput-object v2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    .line 153
    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    .line 155
    :cond_1
    return-void
.end method

.method public returnBuffers()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 129
    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    iget-object v1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/Buffers;->returnBuffer(Lorg/eclipse/jetty/io/Buffer;)V

    .line 132
    iput-object v2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 135
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 137
    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    iget-object v1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/Buffers;->returnBuffer(Lorg/eclipse/jetty/io/Buffer;)V

    .line 138
    iput-object v2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    .line 140
    :cond_1
    return-void
.end method

.method public sendError(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 466
    if-eqz p4, :cond_0

    .line 467
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_persistent:Ljava/lang/Boolean;

    .line 468
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/AbstractGenerator;->isCommitted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 470
    sget-object v0, Lorg/eclipse/jetty/http/AbstractGenerator;->a:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "sendError on committed: {} {}"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object p2, v2, v5

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 487
    :goto_0
    return-void

    .line 474
    :cond_1
    sget-object v0, Lorg/eclipse/jetty/http/AbstractGenerator;->a:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "sendError: {} {}"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object p2, v2, v5

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 475
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/http/AbstractGenerator;->setResponse(ILjava/lang/String;)V

    .line 476
    if-eqz p3, :cond_2

    .line 478
    invoke-virtual {p0, v6, v4}, Lorg/eclipse/jetty/http/AbstractGenerator;->completeHeader(Lorg/eclipse/jetty/http/HttpFields;Z)V

    .line 479
    new-instance v0, Lorg/eclipse/jetty/io/View;

    new-instance v1, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-direct {v1, p3}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/io/View;-><init>(Lorg/eclipse/jetty/io/Buffer;)V

    invoke-virtual {p0, v0, v5}, Lorg/eclipse/jetty/http/AbstractGenerator;->addContent(Lorg/eclipse/jetty/io/Buffer;Z)V

    .line 485
    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/AbstractGenerator;->complete()V

    goto :goto_0

    .line 483
    :cond_2
    invoke-virtual {p0, v6, v5}, Lorg/eclipse/jetty/http/AbstractGenerator;->completeHeader(Lorg/eclipse/jetty/http/HttpFields;Z)V

    goto :goto_1
.end method

.method public setContentLength(J)V
    .locals 3

    .prologue
    .line 245
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 246
    const-wide/16 v0, -0x3

    iput-wide v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_contentLength:J

    .line 249
    :goto_0
    return-void

    .line 248
    :cond_0
    iput-wide p1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_contentLength:J

    goto :goto_0
.end method

.method public setDate(Lorg/eclipse/jetty/io/Buffer;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_date:Lorg/eclipse/jetty/io/Buffer;

    .line 305
    return-void
.end method

.method public setHead(Z)V
    .locals 0

    .prologue
    .line 257
    iput-boolean p1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_head:Z

    .line 258
    return-void
.end method

.method public setPersistent(Z)V
    .locals 1

    .prologue
    .line 275
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_persistent:Ljava/lang/Boolean;

    .line 276
    return-void
.end method

.method public setRequest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 312
    if-eqz p1, :cond_0

    const-string v0, "GET"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 313
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/http/HttpMethods;->GET_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iput-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_method:Lorg/eclipse/jetty/io/Buffer;

    .line 316
    :goto_0
    iput-object p2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_uri:Ljava/lang/String;

    .line 317
    iget v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_version:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 318
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_noContent:Z

    .line 319
    :cond_1
    return-void

    .line 315
    :cond_2
    sget-object v0, Lorg/eclipse/jetty/http/HttpMethods;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/io/BufferCache;->lookup(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_method:Lorg/eclipse/jetty/io/Buffer;

    goto :goto_0
.end method

.method public setResponse(ILjava/lang/String;)V
    .locals 4

    .prologue
    const/16 v0, 0x400

    .line 328
    iget v1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_state:I

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "STATE!=START"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_method:Lorg/eclipse/jetty/io/Buffer;

    .line 330
    iput p1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_status:I

    .line 331
    if-eqz p2, :cond_2

    .line 333
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 336
    if-le v1, v0, :cond_3

    .line 338
    :goto_0
    new-instance v1, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-direct {v1, v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(I)V

    iput-object v1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_reason:Lorg/eclipse/jetty/io/Buffer;

    .line 339
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 341
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 342
    const/16 v3, 0xd

    if-eq v2, v3, :cond_1

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    .line 343
    iget-object v3, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_reason:Lorg/eclipse/jetty/io/Buffer;

    int-to-byte v2, v2

    invoke-interface {v3, v2}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 339
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 345
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_reason:Lorg/eclipse/jetty/io/Buffer;

    const/16 v3, 0x20

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    goto :goto_2

    .line 348
    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public setSendServerVersion(Z)V
    .locals 0

    .prologue
    .line 200
    iput-boolean p1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->b:Z

    .line 201
    return-void
.end method

.method public setVersion(I)V
    .locals 3

    .prologue
    .line 285
    iget v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_state:I

    if-eqz v0, :cond_0

    .line 286
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "STATE!=START "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_0
    iput p1, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_version:I

    .line 288
    iget v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_version:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_method:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_1

    .line 289
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/http/AbstractGenerator;->_noContent:Z

    .line 290
    :cond_1
    return-void
.end method
