.class public Lorg/eclipse/jetty/websocket/WebSocketParserD06;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/websocket/WebSocketParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/websocket/WebSocketParserD06$1;,
        Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;
    }
.end annotation


# static fields
.field private static final a:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private final b:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

.field private final c:Lorg/eclipse/jetty/io/EndPoint;

.field private final d:Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;

.field private final e:Z

.field private f:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

.field private g:Lorg/eclipse/jetty/io/Buffer;

.field private h:B

.field private i:B

.field private j:I

.field private k:J

.field private final l:[B

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->a:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/websocket/WebSocketBuffers;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;Z)V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->l:[B

    .line 82
    iput-object p1, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->b:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    .line 83
    iput-object p2, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->c:Lorg/eclipse/jetty/io/EndPoint;

    .line 84
    iput-object p3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->d:Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;

    .line 85
    iput-boolean p4, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->e:Z

    .line 86
    sget-object v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;->START:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->f:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    .line 87
    return-void
.end method


# virtual methods
.method public fill(Lorg/eclipse/jetty/io/Buffer;)V
    .locals 1

    .prologue
    .line 301
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 303
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->g:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_0

    .line 304
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->b:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    invoke-virtual {v0}, Lorg/eclipse/jetty/websocket/WebSocketBuffers;->getBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->g:Lorg/eclipse/jetty/io/Buffer;

    .line 305
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 306
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    .line 308
    :cond_1
    return-void
.end method

.method public getBuffer()Lorg/eclipse/jetty/io/Buffer;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->g:Lorg/eclipse/jetty/io/Buffer;

    return-object v0
.end method

.method public isBufferEmpty()Z
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->g:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->g:Lorg/eclipse/jetty/io/Buffer;

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
    .locals 11

    .prologue
    .line 111
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->g:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->b:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    invoke-virtual {v0}, Lorg/eclipse/jetty/websocket/WebSocketBuffers;->getBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->g:Lorg/eclipse/jetty/io/Buffer;

    .line 114
    :cond_0
    const/4 v1, 0x0

    .line 115
    const/4 v0, 0x0

    .line 120
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    .line 123
    :goto_0
    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->f:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    sget-object v4, Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;->SKIP:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    :goto_1
    if-ge v2, v3, :cond_8

    .line 126
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->compact()V

    .line 129
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v2

    if-nez v2, :cond_3

    .line 130
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FULL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->f:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_2
    iget v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->j:I

    goto :goto_1

    .line 135
    :cond_3
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->c:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->c:Lorg/eclipse/jetty/io/EndPoint;

    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/EndPoint;->fill(Lorg/eclipse/jetty/io/Buffer;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 136
    :goto_2
    if-gtz v2, :cond_6

    .line 137
    add-int v3, v1, v0

    if-lez v3, :cond_5

    add-int/2addr v0, v1

    .line 293
    :goto_3
    return v0

    .line 135
    :cond_4
    const/4 v2, -0x1

    goto :goto_2

    :cond_5
    move v0, v2

    .line 137
    goto :goto_3

    .line 138
    :cond_6
    add-int/2addr v2, v1

    .line 139
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->length()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    move v10, v1

    move v1, v2

    move v2, v10

    .line 145
    goto :goto_0

    .line 141
    :catch_0
    move-exception v2

    move-object v10, v2

    move v2, v1

    move-object v1, v10

    .line 143
    :goto_4
    sget-object v3, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->a:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 144
    add-int v1, v2, v0

    if-lez v1, :cond_7

    add-int/2addr v0, v2

    goto :goto_3

    :cond_7
    const/4 v0, -0x1

    goto :goto_3

    .line 152
    :cond_8
    :goto_5
    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->f:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    sget-object v4, Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;->DATA:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    if-eq v3, v4, :cond_12

    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->f:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    sget-object v4, Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;->SKIP:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    if-ne v3, v4, :cond_9

    const/4 v3, 0x1

    :goto_6
    if-lt v2, v3, :cond_12

    .line 154
    sget-object v3, Lorg/eclipse/jetty/websocket/WebSocketParserD06$1;->a:[I

    iget-object v4, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->f:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    invoke-virtual {v4}, Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_5

    .line 157
    :pswitch_0
    iget-boolean v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->e:Z

    if-eqz v3, :cond_a

    sget-object v3, Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;->MASK:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    :goto_7
    iput-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->f:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    .line 158
    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->f:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    invoke-virtual {v3}, Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;->a()I

    move-result v3

    iput v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->j:I

    goto :goto_5

    .line 152
    :cond_9
    iget v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->j:I

    goto :goto_6

    .line 157
    :cond_a
    sget-object v3, Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;->OPCODE:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    goto :goto_7

    .line 162
    :pswitch_1
    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->g:Lorg/eclipse/jetty/io/Buffer;

    iget-object v4, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->l:[B

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-interface {v3, v4, v5, v6}, Lorg/eclipse/jetty/io/Buffer;->get([BII)I

    .line 163
    add-int/lit8 v2, v2, -0x4

    .line 164
    sget-object v3, Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;->OPCODE:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    iput-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->f:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    .line 165
    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->f:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    invoke-virtual {v3}, Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;->a()I

    move-result v3

    iput v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->j:I

    .line 166
    const/4 v3, 0x0

    iput v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->m:I

    goto :goto_5

    .line 170
    :pswitch_2
    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v3

    .line 171
    add-int/lit8 v2, v2, -0x1

    .line 172
    iget-boolean v4, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->e:Z

    if-eqz v4, :cond_b

    .line 173
    iget-object v4, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->l:[B

    iget v5, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->m:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->m:I

    rem-int/lit8 v5, v5, 0x4

    aget-byte v4, v4, v5

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    .line 174
    :cond_b
    and-int/lit8 v4, v3, 0xf

    int-to-byte v4, v4

    iput-byte v4, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->i:B

    .line 175
    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    iput-byte v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->h:B

    .line 177
    iget-byte v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->i:B

    invoke-static {v3}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->b(I)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-byte v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->h:B

    invoke-static {v3}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->a(I)Z

    move-result v3

    if-nez v3, :cond_c

    .line 179
    sget-object v3, Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;->SKIP:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    iput-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->f:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    .line 180
    add-int/lit8 v0, v0, 0x1

    .line 181
    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->d:Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;

    const/16 v4, 0x3ea

    const-string v5, "fragmented control"

    invoke-interface {v3, v4, v5}, Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;->close(ILjava/lang/String;)V

    .line 186
    :goto_8
    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->f:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    invoke-virtual {v3}, Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;->a()I

    move-result v3

    iput v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->j:I

    goto/16 :goto_5

    .line 184
    :cond_c
    sget-object v3, Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;->LENGTH_7:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    iput-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->f:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    goto :goto_8

    .line 190
    :pswitch_3
    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v3

    .line 191
    add-int/lit8 v2, v2, -0x1

    .line 192
    iget-boolean v4, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->e:Z

    if-eqz v4, :cond_d

    .line 193
    iget-object v4, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->l:[B

    iget v5, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->m:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->m:I

    rem-int/lit8 v5, v5, 0x4

    aget-byte v4, v4, v5

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    .line 194
    :cond_d
    packed-switch v3, :pswitch_data_1

    .line 207
    and-int/lit8 v3, v3, 0x7f

    int-to-long v4, v3

    iput-wide v4, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->k:J

    .line 208
    iget-wide v4, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->k:J

    long-to-int v3, v4

    iput v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->j:I

    .line 209
    sget-object v3, Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;->DATA:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    iput-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->f:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    goto/16 :goto_5

    .line 197
    :pswitch_4
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->k:J

    .line 198
    sget-object v3, Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;->LENGTH_63:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    iput-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->f:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    .line 199
    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->f:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    invoke-virtual {v3}, Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;->a()I

    move-result v3

    iput v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->j:I

    goto/16 :goto_5

    .line 202
    :pswitch_5
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->k:J

    .line 203
    sget-object v3, Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;->LENGTH_16:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    iput-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->f:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    .line 204
    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->f:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    invoke-virtual {v3}, Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;->a()I

    move-result v3

    iput v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->j:I

    goto/16 :goto_5

    .line 214
    :pswitch_6
    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v3

    .line 215
    add-int/lit8 v2, v2, -0x1

    .line 216
    iget-boolean v4, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->e:Z

    if-eqz v4, :cond_e

    .line 217
    iget-object v4, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->l:[B

    iget v5, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->m:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->m:I

    rem-int/lit8 v5, v5, 0x4

    aget-byte v4, v4, v5

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    .line 218
    :cond_e
    iget-wide v4, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->k:J

    const-wide/16 v6, 0x100

    mul-long/2addr v4, v6

    and-int/lit16 v3, v3, 0xff

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->k:J

    .line 219
    iget v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->j:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->j:I

    if-nez v3, :cond_8

    .line 221
    iget-wide v4, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->k:J

    long-to-int v3, v4

    iput v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->j:I

    .line 222
    iget-wide v4, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->k:J

    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v3

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-lez v3, :cond_f

    .line 224
    sget-object v3, Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;->SKIP:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    iput-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->f:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    .line 225
    add-int/lit8 v0, v0, 0x1

    .line 226
    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->d:Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;

    const/16 v4, 0x3ec

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "frame size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->k:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;->close(ILjava/lang/String;)V

    goto/16 :goto_5

    .line 230
    :cond_f
    sget-object v3, Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;->DATA:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    iput-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->f:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    goto/16 :goto_5

    .line 236
    :pswitch_7
    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v3

    .line 237
    add-int/lit8 v2, v2, -0x1

    .line 238
    iget-boolean v4, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->e:Z

    if-eqz v4, :cond_10

    .line 239
    iget-object v4, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->l:[B

    iget v5, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->m:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->m:I

    rem-int/lit8 v5, v5, 0x4

    aget-byte v4, v4, v5

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    .line 240
    :cond_10
    iget-wide v4, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->k:J

    const-wide/16 v6, 0x100

    mul-long/2addr v4, v6

    and-int/lit16 v3, v3, 0xff

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->k:J

    .line 241
    iget v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->j:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->j:I

    if-nez v3, :cond_8

    .line 243
    iget-wide v4, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->k:J

    long-to-int v3, v4

    iput v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->j:I

    .line 244
    iget-wide v4, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->k:J

    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v3

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-ltz v3, :cond_11

    .line 246
    sget-object v3, Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;->SKIP:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    iput-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->f:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    .line 247
    add-int/lit8 v0, v0, 0x1

    .line 248
    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->d:Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;

    const/16 v4, 0x3ec

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "frame size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->k:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v6}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;->close(ILjava/lang/String;)V

    goto/16 :goto_5

    .line 252
    :cond_11
    sget-object v3, Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;->DATA:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    iput-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->f:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    goto/16 :goto_5

    .line 258
    :pswitch_8
    iget v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->j:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 259
    iget-object v4, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v4, v3}, Lorg/eclipse/jetty/io/Buffer;->skip(I)I

    .line 260
    sub-int/2addr v2, v3

    .line 261
    iget v4, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->j:I

    sub-int v3, v4, v3

    iput v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->j:I

    .line 262
    iget v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->j:I

    if-nez v3, :cond_8

    .line 263
    sget-object v3, Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;->START:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    iput-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->f:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    goto/16 :goto_5

    .line 268
    :cond_12
    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->f:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    sget-object v4, Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;->DATA:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    if-ne v3, v4, :cond_1

    iget v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->j:I

    if-lt v2, v3, :cond_1

    .line 270
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->g:Lorg/eclipse/jetty/io/Buffer;

    iget v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->j:I

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->get(I)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v2

    .line 271
    iget-boolean v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->e:Z

    if-eqz v3, :cond_14

    .line 273
    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v3

    if-nez v3, :cond_13

    .line 274
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->asMutableBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v2

    .line 275
    :cond_13
    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v4

    .line 276
    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->putIndex()I

    move-result v5

    .line 277
    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v3

    :goto_9
    if-ge v3, v5, :cond_14

    .line 278
    aget-byte v6, v4, v3

    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->l:[B

    iget v8, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->m:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->m:I

    rem-int/lit8 v8, v8, 0x4

    aget-byte v7, v7, v8

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v4, v3

    .line 277
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 282
    :cond_14
    add-int/lit8 v0, v0, 0x1

    .line 283
    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->d:Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;

    iget-byte v4, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->h:B

    iget-byte v5, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->i:B

    invoke-interface {v3, v4, v5, v2}, Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;->onFrame(BBLorg/eclipse/jetty/io/Buffer;)V

    .line 284
    const/4 v2, 0x0

    iput v2, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->j:I

    .line 285
    sget-object v2, Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;->START:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    iput-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->f:Lorg/eclipse/jetty/websocket/WebSocketParserD06$State;

    .line 287
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    if-nez v2, :cond_15

    .line 289
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->b:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v2, v3}, Lorg/eclipse/jetty/websocket/WebSocketBuffers;->returnBuffer(Lorg/eclipse/jetty/io/Buffer;)V

    .line 290
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;->g:Lorg/eclipse/jetty/io/Buffer;

    .line 293
    :cond_15
    add-int/2addr v0, v1

    goto/16 :goto_3

    .line 141
    :catch_1
    move-exception v1

    goto/16 :goto_4

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 194
    :pswitch_data_1
    .packed-switch 0x7e
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
