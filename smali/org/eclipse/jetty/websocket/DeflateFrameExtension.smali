.class public Lorg/eclipse/jetty/websocket/DeflateFrameExtension;
.super Lorg/eclipse/jetty/websocket/AbstractExtension;
.source "SourceFile"


# static fields
.field private static final a:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private b:I

.field private c:Ljava/util/zip/Deflater;

.field private d:Ljava/util/zip/Inflater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lorg/eclipse/jetty/websocket/DeflateFrameExtension;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/websocket/DeflateFrameExtension;->a:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "x-deflate-frame"

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/websocket/AbstractExtension;-><init>(Ljava/lang/String;)V

    .line 39
    const/16 v0, 0x8

    iput v0, p0, Lorg/eclipse/jetty/websocket/DeflateFrameExtension;->b:I

    .line 46
    return-void
.end method


# virtual methods
.method public addFrame(BB[BII)V
    .locals 7

    .prologue
    const/16 v6, 0x7e

    const/4 v0, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 118
    invoke-virtual {p0}, Lorg/eclipse/jetty/websocket/DeflateFrameExtension;->getConnection()Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    move-result-object v2

    invoke-interface {v2, p2}, Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;->isControl(B)Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lorg/eclipse/jetty/websocket/DeflateFrameExtension;->b:I

    if-ge p5, v2, :cond_1

    .line 120
    :cond_0
    invoke-virtual {p0, p1, v1}, Lorg/eclipse/jetty/websocket/DeflateFrameExtension;->clearFlag(BI)B

    move-result v1

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-super/range {v0 .. v5}, Lorg/eclipse/jetty/websocket/AbstractExtension;->addFrame(BB[BII)V

    .line 163
    :goto_0
    return-void

    .line 125
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/DeflateFrameExtension;->c:Ljava/util/zip/Deflater;

    invoke-virtual {v2}, Ljava/util/zip/Deflater;->reset()V

    .line 126
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/DeflateFrameExtension;->c:Ljava/util/zip/Deflater;

    invoke-virtual {v2, p3, p4, p5}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 127
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/DeflateFrameExtension;->c:Ljava/util/zip/Deflater;

    invoke-virtual {v2}, Ljava/util/zip/Deflater;->finish()V

    .line 130
    new-array v3, p5, [B

    .line 134
    const v2, 0xffff

    if-le p5, v2, :cond_2

    .line 136
    const/16 v2, 0x7f

    aput-byte v2, v3, v4

    .line 137
    aput-byte v4, v3, v1

    .line 138
    aput-byte v4, v3, v5

    .line 139
    const/4 v2, 0x4

    aput-byte v4, v3, v0

    .line 140
    const/4 v0, 0x5

    aput-byte v4, v3, v2

    .line 141
    const/4 v2, 0x6

    shr-int/lit8 v5, p5, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v0

    .line 142
    const/4 v0, 0x7

    shr-int/lit8 v5, p5, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v2

    .line 143
    const/16 v2, 0x8

    shr-int/lit8 v5, p5, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v0

    .line 144
    const/16 v0, 0x9

    and-int/lit16 v5, p5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v2

    .line 157
    :goto_1
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/DeflateFrameExtension;->c:Ljava/util/zip/Deflater;

    sub-int v5, p5, v0

    invoke-virtual {v2, v3, v0, v5}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v2

    .line 159
    iget-object v5, p0, Lorg/eclipse/jetty/websocket/DeflateFrameExtension;->c:Ljava/util/zip/Deflater;

    invoke-virtual {v5}, Ljava/util/zip/Deflater;->finished()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 160
    invoke-virtual {p0, p1, v1}, Lorg/eclipse/jetty/websocket/DeflateFrameExtension;->setFlag(BI)B

    move-result v1

    add-int v5, v2, v0

    move-object v0, p0

    move v2, p2

    invoke-super/range {v0 .. v5}, Lorg/eclipse/jetty/websocket/AbstractExtension;->addFrame(BB[BII)V

    goto :goto_0

    .line 146
    :cond_2
    if-lt p5, v6, :cond_3

    .line 148
    aput-byte v6, v3, v4

    .line 149
    shr-int/lit8 v2, p5, 0x8

    int-to-byte v2, v2

    aput-byte v2, v3, v1

    .line 150
    and-int/lit16 v2, p5, 0xff

    int-to-byte v2, v2

    aput-byte v2, v3, v5

    goto :goto_1

    .line 154
    :cond_3
    and-int/lit8 v0, p5, 0x7f

    int-to-byte v0, v0

    aput-byte v0, v3, v4

    move v0, v1

    goto :goto_1

    .line 162
    :cond_4
    invoke-virtual {p0, p1, v1}, Lorg/eclipse/jetty/websocket/DeflateFrameExtension;->clearFlag(BI)B

    move-result v1

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-super/range {v0 .. v5}, Lorg/eclipse/jetty/websocket/AbstractExtension;->addFrame(BB[BII)V

    goto/16 :goto_0
.end method

.method public init(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 51
    const-string v0, "minLength"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    const-string v0, "minLength"

    iget v1, p0, Lorg/eclipse/jetty/websocket/DeflateFrameExtension;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_0
    invoke-super {p0, p1}, Lorg/eclipse/jetty/websocket/AbstractExtension;->init(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    const-string v0, "minLength"

    iget v1, p0, Lorg/eclipse/jetty/websocket/DeflateFrameExtension;->b:I

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/websocket/DeflateFrameExtension;->getInitParameter(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jetty/websocket/DeflateFrameExtension;->b:I

    .line 57
    new-instance v0, Ljava/util/zip/Deflater;

    invoke-direct {v0}, Ljava/util/zip/Deflater;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/DeflateFrameExtension;->c:Ljava/util/zip/Deflater;

    .line 58
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/DeflateFrameExtension;->d:Ljava/util/zip/Inflater;

    .line 60
    const/4 v0, 0x1

    .line 62
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFrame(BBLorg/eclipse/jetty/io/Buffer;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 71
    invoke-virtual {p0}, Lorg/eclipse/jetty/websocket/DeflateFrameExtension;->getConnection()Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;->isControl(B)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, v1}, Lorg/eclipse/jetty/websocket/DeflateFrameExtension;->isFlag(BI)Z

    move-result v0

    if-nez v0, :cond_1

    .line 73
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jetty/websocket/AbstractExtension;->onFrame(BBLorg/eclipse/jetty/io/Buffer;)V

    .line 110
    :goto_0
    return-void

    .line 77
    :cond_1
    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v0

    if-nez v0, :cond_2

    .line 78
    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->asMutableBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object p3

    .line 80
    :cond_2
    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 81
    const/16 v1, 0x7e

    if-lt v0, v1, :cond_4

    .line 83
    const/16 v1, 0x7f

    if-ne v0, v1, :cond_3

    const/16 v0, 0x8

    .line 84
    :goto_1
    const/4 v1, 0x0

    move v5, v0

    move v0, v1

    move v1, v5

    .line 85
    :goto_2
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_4

    .line 86
    mul-int/lit16 v0, v0, 0x100

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    move v1, v2

    goto :goto_2

    .line 83
    :cond_3
    const/4 v0, 0x2

    goto :goto_1

    .line 91
    :cond_4
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/DeflateFrameExtension;->d:Ljava/util/zip/Inflater;

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v2

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v3

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 92
    new-instance v1, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-direct {v1, v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(I)V

    .line 95
    :goto_3
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/DeflateFrameExtension;->d:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v0

    if-lez v0, :cond_6

    .line 97
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/DeflateFrameExtension;->d:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->putIndex()I

    move-result v3

    invoke-virtual {v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->space()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    .line 98
    if-nez v0, :cond_5

    .line 99
    new-instance v0, Ljava/util/zip/DataFormatException;

    const-string v1, "insufficient data"

    invoke-direct {v0, v1}, Ljava/util/zip/DataFormatException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :catch_0
    move-exception v0

    .line 107
    sget-object v1, Lorg/eclipse/jetty/websocket/DeflateFrameExtension;->a:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    .line 108
    invoke-virtual {p0}, Lorg/eclipse/jetty/websocket/DeflateFrameExtension;->getConnection()Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    move-result-object v1

    const/16 v2, 0x3ef

    invoke-virtual {v0}, Ljava/util/zip/DataFormatException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;->close(ILjava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_5
    :try_start_1
    invoke-virtual {v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->putIndex()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->setPutIndex(I)V

    goto :goto_3

    .line 103
    :cond_6
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/websocket/DeflateFrameExtension;->clearFlag(BI)B

    move-result v0

    invoke-super {p0, v0, p2, v1}, Lorg/eclipse/jetty/websocket/AbstractExtension;->onFrame(BBLorg/eclipse/jetty/io/Buffer;)V
    :try_end_1
    .catch Ljava/util/zip/DataFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
