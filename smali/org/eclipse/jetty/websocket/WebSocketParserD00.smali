.class public Lorg/eclipse/jetty/websocket/WebSocketParserD00;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/websocket/WebSocketParser;


# static fields
.field public static final STATE_DATA:I = 0x3

.field public static final STATE_LENGTH:I = 0x2

.field public static final STATE_SENTINEL_DATA:I = 0x1

.field public static final STATE_START:I

.field private static final a:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private final b:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

.field private final c:Lorg/eclipse/jetty/io/EndPoint;

.field private final d:Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;

.field private e:I

.field private f:Lorg/eclipse/jetty/io/Buffer;

.field private g:B

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->a:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/websocket/WebSocketBuffers;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->b:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    .line 66
    iput-object p2, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->c:Lorg/eclipse/jetty/io/EndPoint;

    .line 67
    iput-object p3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->d:Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;

    .line 68
    return-void
.end method


# virtual methods
.method public fill(Lorg/eclipse/jetty/io/Buffer;)V
    .locals 1

    .prologue
    .line 203
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 205
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->f:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->b:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    invoke-virtual {v0}, Lorg/eclipse/jetty/websocket/WebSocketBuffers;->getBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->f:Lorg/eclipse/jetty/io/Buffer;

    .line 207
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->f:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 208
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    .line 210
    :cond_1
    return-void
.end method

.method public getBuffer()Lorg/eclipse/jetty/io/Buffer;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->f:Lorg/eclipse/jetty/io/Buffer;

    return-object v0
.end method

.method public isBufferEmpty()Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->f:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->f:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parseNext()I
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x3

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 92
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->f:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->b:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    invoke-virtual {v0}, Lorg/eclipse/jetty/websocket/WebSocketBuffers;->getBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->f:Lorg/eclipse/jetty/io/Buffer;

    :cond_0
    move v0, v1

    .line 100
    :cond_1
    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->f:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v3

    .line 103
    if-eqz v3, :cond_2

    iget v4, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->e:I

    if-ne v4, v7, :cond_7

    iget v4, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->h:I

    if-ge v3, v4, :cond_7

    .line 106
    :cond_2
    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->f:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->compact()V

    .line 109
    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->f:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v3

    if-nez v3, :cond_3

    .line 110
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FULL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_3
    :try_start_0
    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->c:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->c:Lorg/eclipse/jetty/io/EndPoint;

    iget-object v4, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->f:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3, v4}, Lorg/eclipse/jetty/io/EndPoint;->fill(Lorg/eclipse/jetty/io/Buffer;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 116
    :goto_0
    if-gtz v3, :cond_6

    .line 194
    :cond_4
    :goto_1
    return v0

    :cond_5
    move v3, v2

    .line 115
    goto :goto_0

    .line 118
    :cond_6
    add-int/2addr v3, v0

    .line 119
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->f:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    move v9, v0

    move v0, v3

    move v3, v9

    .line 131
    :cond_7
    :goto_2
    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_1

    .line 133
    iget v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->e:I

    packed-switch v3, :pswitch_data_0

    move v3, v4

    .line 194
    goto :goto_2

    .line 121
    :catch_0
    move-exception v1

    .line 123
    :goto_3
    sget-object v3, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->a:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 124
    if-gtz v0, :cond_4

    move v0, v2

    goto :goto_1

    .line 136
    :pswitch_0
    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->f:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v3

    .line 137
    iput-byte v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->g:B

    .line 138
    iget-byte v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->g:B

    if-gez v3, :cond_8

    .line 140
    iput v1, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->h:I

    .line 141
    const/4 v3, 0x2

    iput v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->e:I

    move v3, v4

    goto :goto_2

    .line 145
    :cond_8
    const/4 v3, 0x1

    iput v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->e:I

    .line 146
    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->f:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3, v1}, Lorg/eclipse/jetty/io/Buffer;->mark(I)V

    move v3, v4

    .line 148
    goto :goto_2

    .line 151
    :pswitch_1
    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->f:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v3

    .line 152
    and-int/lit16 v3, v3, 0xff

    const/16 v5, 0xff

    if-ne v3, v5, :cond_a

    .line 154
    iput v1, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->e:I

    .line 155
    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->f:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v3

    iget-object v4, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->f:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v4}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    .line 156
    add-int/lit8 v0, v0, 0x1

    .line 157
    iget-object v4, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->d:Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;

    iget-byte v5, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->g:B

    iget-object v6, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->f:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v6, v3}, Lorg/eclipse/jetty/io/Buffer;->sliceFromMark(I)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v3

    invoke-interface {v4, v1, v5, v3}, Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;->onFrame(BBLorg/eclipse/jetty/io/Buffer;)V

    .line 158
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->f:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1, v2}, Lorg/eclipse/jetty/io/Buffer;->setMarkIndex(I)V

    .line 159
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->f:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 161
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->b:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->f:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/websocket/WebSocketBuffers;->returnBuffer(Lorg/eclipse/jetty/io/Buffer;)V

    .line 162
    iput-object v8, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->f:Lorg/eclipse/jetty/io/Buffer;

    goto/16 :goto_1

    .line 169
    :pswitch_2
    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->f:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v3

    .line 170
    iget v5, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->h:I

    shl-int/lit8 v5, v5, 0x7

    and-int/lit8 v6, v3, 0x7f

    or-int/2addr v5, v6

    iput v5, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->h:I

    .line 171
    if-ltz v3, :cond_a

    .line 173
    iput v7, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->e:I

    .line 174
    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->f:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3, v1}, Lorg/eclipse/jetty/io/Buffer;->mark(I)V

    move v3, v4

    goto/16 :goto_2

    .line 179
    :pswitch_3
    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->f:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v3

    if-gez v3, :cond_9

    .line 180
    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->f:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v3

    iget v4, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->h:I

    if-lt v3, v4, :cond_1

    .line 182
    :cond_9
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->f:Lorg/eclipse/jetty/io/Buffer;

    iget v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->h:I

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->sliceFromMark(I)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v2

    .line 183
    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->f:Lorg/eclipse/jetty/io/Buffer;

    iget v4, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->h:I

    invoke-interface {v3, v4}, Lorg/eclipse/jetty/io/Buffer;->skip(I)I

    .line 184
    iput v1, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->e:I

    .line 185
    add-int/lit8 v0, v0, 0x1

    .line 186
    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->d:Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;

    iget-byte v4, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->g:B

    invoke-interface {v3, v1, v4, v2}, Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;->onFrame(BBLorg/eclipse/jetty/io/Buffer;)V

    .line 188
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->f:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 190
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->b:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->f:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/websocket/WebSocketBuffers;->returnBuffer(Lorg/eclipse/jetty/io/Buffer;)V

    .line 191
    iput-object v8, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD00;->f:Lorg/eclipse/jetty/io/Buffer;

    goto/16 :goto_1

    .line 121
    :catch_1
    move-exception v0

    move-object v1, v0

    move v0, v3

    goto/16 :goto_3

    :cond_a
    move v3, v4

    goto/16 :goto_2

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
