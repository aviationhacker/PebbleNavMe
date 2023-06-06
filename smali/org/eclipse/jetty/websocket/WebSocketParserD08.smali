.class public Lorg/eclipse/jetty/websocket/WebSocketParserD08;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/websocket/WebSocketParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/websocket/WebSocketParserD08$1;,
        Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;
    }
.end annotation


# static fields
.field private static final a:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private final b:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

.field private final c:Lorg/eclipse/jetty/io/EndPoint;

.field private final d:Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;

.field private final e:Z

.field private f:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

.field private g:Lorg/eclipse/jetty/io/Buffer;

.field private h:B

.field private i:B

.field private j:I

.field private k:J

.field private l:Z

.field private final m:[B

.field private n:I

.field private o:Z

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->a:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/websocket/WebSocketBuffers;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;Z)V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->m:[B

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->p:Z

    .line 84
    iput-object p1, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->b:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    .line 85
    iput-object p2, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->c:Lorg/eclipse/jetty/io/EndPoint;

    .line 86
    iput-object p3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->d:Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;

    .line 87
    iput-boolean p4, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->e:Z

    .line 88
    sget-object v0, Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;->START:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->f:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    .line 89
    return-void
.end method


# virtual methods
.method public fill(Lorg/eclipse/jetty/io/Buffer;)V
    .locals 1

    .prologue
    .line 364
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 366
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->g:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_0

    .line 367
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->b:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    invoke-virtual {v0}, Lorg/eclipse/jetty/websocket/WebSocketBuffers;->getBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->g:Lorg/eclipse/jetty/io/Buffer;

    .line 369
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 370
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    .line 372
    :cond_1
    return-void
.end method

.method public getBuffer()Lorg/eclipse/jetty/io/Buffer;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->g:Lorg/eclipse/jetty/io/Buffer;

    return-object v0
.end method

.method public isBufferEmpty()Z
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->g:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->g:Lorg/eclipse/jetty/io/Buffer;

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

.method public isFakeFragments()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->p:Z

    return v0
.end method

.method public parseNext()I
    .locals 14

    .prologue
    const/16 v13, 0x3eb

    const/16 v12, 0x3ea

    const/4 v4, -0x1

    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 131
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->g:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->b:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    invoke-virtual {v0}, Lorg/eclipse/jetty/websocket/WebSocketBuffers;->getBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->g:Lorg/eclipse/jetty/io/Buffer;

    :cond_0
    move v1, v4

    move v2, v6

    .line 138
    :cond_1
    if-nez v2, :cond_1d

    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->c:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->isInputShutdown()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-lez v0, :cond_1d

    .line 140
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    .line 143
    :cond_3
    iget-object v5, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->f:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    sget-object v7, Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;->SKIP:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    if-ne v5, v7, :cond_5

    move v5, v3

    :goto_0
    if-ge v0, v5, :cond_9

    .line 146
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->compact()V

    .line 149
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v1

    if-nez v1, :cond_8

    .line 152
    iget-boolean v1, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->p:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->f:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    sget-object v5, Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;->DATA:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    if-ne v1, v5, :cond_7

    .line 154
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->g:Lorg/eclipse/jetty/io/Buffer;

    div-int/lit8 v2, v0, 0x4

    mul-int/lit8 v2, v2, 0x4

    invoke-interface {v1, v2}, Lorg/eclipse/jetty/io/Buffer;->get(I)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    .line 155
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->compact()V

    .line 156
    iget-boolean v2, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->l:Z

    if-eqz v2, :cond_6

    .line 158
    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v2

    if-nez v2, :cond_4

    .line 159
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->asMutableBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    .line 160
    :cond_4
    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v5

    .line 161
    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->putIndex()I

    move-result v7

    .line 162
    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v2

    :goto_1
    if-ge v2, v7, :cond_6

    .line 163
    aget-byte v8, v5, v2

    iget-object v9, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->m:[B

    iget v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->n:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->n:I

    rem-int/lit8 v10, v10, 0x4

    aget-byte v9, v9, v10

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v5, v2

    .line 162
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 143
    :cond_5
    iget v5, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->j:I

    goto :goto_0

    .line 167
    :cond_6
    iget v2, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->j:I

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v5

    sub-int/2addr v2, v5

    iput v2, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->j:I

    .line 169
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->d:Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;

    iget-byte v5, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->h:B

    and-int/lit16 v5, v5, 0xf7

    int-to-byte v5, v5

    iget-byte v7, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->i:B

    invoke-interface {v2, v5, v7, v1}, Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;->onFrame(BBLorg/eclipse/jetty/io/Buffer;)V

    .line 171
    iput-byte v6, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->i:B

    move v2, v3

    .line 174
    :cond_7
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v1

    if-nez v1, :cond_8

    .line 175
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FULL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->f:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_8
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->c:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->isInputShutdown()Z

    move-result v1

    if-eqz v1, :cond_a

    move v1, v4

    .line 182
    :goto_2
    iget-object v5, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v5}, Lorg/eclipse/jetty/io/Buffer;->length()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 184
    if-gtz v1, :cond_3

    .line 195
    :cond_9
    :goto_3
    iget-object v5, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->f:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    sget-object v7, Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;->SKIP:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    if-ne v5, v7, :cond_b

    move v5, v3

    :goto_4
    if-ge v0, v5, :cond_c

    move v0, v1

    .line 358
    :goto_5
    if-eqz v2, :cond_1b

    :goto_6
    return v3

    .line 181
    :cond_a
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->c:Lorg/eclipse/jetty/io/EndPoint;

    iget-object v5, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1, v5}, Lorg/eclipse/jetty/io/EndPoint;->fill(Lorg/eclipse/jetty/io/Buffer;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_2

    .line 187
    :catch_0
    move-exception v1

    .line 189
    sget-object v5, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->a:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v5, v1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    move v1, v4

    .line 191
    goto :goto_3

    .line 195
    :cond_b
    iget v5, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->j:I

    goto :goto_4

    .line 201
    :cond_c
    :goto_7
    :pswitch_0
    iget-object v5, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->f:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    sget-object v7, Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;->DATA:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    if-eq v5, v7, :cond_17

    iget-object v5, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->f:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    sget-object v7, Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;->SKIP:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    if-ne v5, v7, :cond_d

    move v5, v3

    :goto_8
    if-lt v0, v5, :cond_17

    .line 203
    sget-object v5, Lorg/eclipse/jetty/websocket/WebSocketParserD08$1;->a:[I

    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->f:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    invoke-virtual {v7}, Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;->ordinal()I

    move-result v7

    aget v5, v5, v7

    packed-switch v5, :pswitch_data_0

    goto :goto_7

    .line 206
    :pswitch_1
    iput-boolean v6, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->o:Z

    .line 207
    iget-byte v5, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->i:B

    const/16 v7, 0x8

    if-ne v5, v7, :cond_e

    sget-object v5, Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;->SEEK_EOF:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    :goto_9
    iput-object v5, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->f:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    .line 208
    iget-object v5, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->f:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    invoke-virtual {v5}, Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;->a()I

    move-result v5

    iput v5, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->j:I

    goto :goto_7

    .line 201
    :cond_d
    iget v5, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->j:I

    goto :goto_8

    .line 207
    :cond_e
    sget-object v5, Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;->OPCODE:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    goto :goto_9

    .line 212
    :pswitch_2
    iget-object v5, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v5}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v5

    .line 213
    add-int/lit8 v0, v0, -0x1

    .line 214
    and-int/lit8 v7, v5, 0xf

    int-to-byte v7, v7

    iput-byte v7, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->i:B

    .line 215
    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0xf

    int-to-byte v5, v5

    iput-byte v5, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->h:B

    .line 217
    iget-byte v5, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->i:B

    invoke-static {v5}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->b(B)Z

    move-result v5

    if-eqz v5, :cond_f

    iget-byte v5, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->h:B

    invoke-static {v5}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->a(B)Z

    move-result v5

    if-nez v5, :cond_f

    .line 219
    sget-object v2, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->a:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fragmented Control from "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->c:Lorg/eclipse/jetty/io/EndPoint;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v7, v6, [Ljava/lang/Object;

    invoke-interface {v2, v5, v7}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->d:Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;

    const-string v5, "Fragmented control"

    invoke-interface {v2, v12, v5}, Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;->close(ILjava/lang/String;)V

    .line 222
    iput-boolean v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->o:Z

    move v2, v3

    .line 225
    :cond_f
    sget-object v5, Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;->LENGTH_7:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    iput-object v5, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->f:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    .line 226
    iget-object v5, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->f:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    invoke-virtual {v5}, Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;->a()I

    move-result v5

    iput v5, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->j:I

    goto/16 :goto_7

    .line 231
    :pswitch_3
    iget-object v5, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v5}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v7

    .line 232
    add-int/lit8 v0, v0, -0x1

    .line 233
    and-int/lit16 v5, v7, 0x80

    if-eqz v5, :cond_10

    move v5, v3

    :goto_a
    iput-boolean v5, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->l:Z

    .line 234
    and-int/lit8 v5, v7, 0x7f

    int-to-byte v5, v5

    .line 236
    packed-switch v5, :pswitch_data_1

    .line 247
    and-int/lit8 v5, v5, 0x7f

    int-to-long v8, v5

    iput-wide v8, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->k:J

    .line 248
    iget-boolean v5, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->l:Z

    if-eqz v5, :cond_11

    sget-object v5, Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;->MASK:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    :goto_b
    iput-object v5, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->f:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    .line 250
    :goto_c
    iget-object v5, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->f:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    invoke-virtual {v5}, Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;->a()I

    move-result v5

    iput v5, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->j:I

    goto/16 :goto_7

    :cond_10
    move v5, v6

    .line 233
    goto :goto_a

    .line 239
    :pswitch_4
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->k:J

    .line 240
    sget-object v5, Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;->LENGTH_63:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    iput-object v5, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->f:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    goto :goto_c

    .line 243
    :pswitch_5
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->k:J

    .line 244
    sget-object v5, Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;->LENGTH_16:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    iput-object v5, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->f:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    goto :goto_c

    .line 248
    :cond_11
    sget-object v5, Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;->PAYLOAD:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    goto :goto_b

    .line 254
    :pswitch_6
    iget-object v5, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v5}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v5

    .line 255
    add-int/lit8 v0, v0, -0x1

    .line 256
    iget-wide v8, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->k:J

    const-wide/16 v10, 0x100

    mul-long/2addr v8, v10

    and-int/lit16 v5, v5, 0xff

    int-to-long v10, v5

    add-long/2addr v8, v10

    iput-wide v8, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->k:J

    .line 257
    iget v5, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->j:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->j:I

    if-nez v5, :cond_c

    .line 259
    iget-wide v8, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->k:J

    iget-object v5, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v5}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v5

    int-to-long v10, v5

    cmp-long v5, v8, v10

    if-lez v5, :cond_12

    iget-boolean v5, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->p:Z

    if-nez v5, :cond_12

    .line 262
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->d:Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "frame size "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v8, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->k:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ">"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v7}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v13, v5}, Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;->close(ILjava/lang/String;)V

    .line 263
    iput-boolean v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->o:Z

    move v2, v3

    .line 266
    :cond_12
    iget-boolean v5, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->l:Z

    if-eqz v5, :cond_13

    sget-object v5, Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;->MASK:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    :goto_d
    iput-object v5, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->f:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    .line 267
    iget-object v5, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->f:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    invoke-virtual {v5}, Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;->a()I

    move-result v5

    iput v5, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->j:I

    goto/16 :goto_7

    .line 266
    :cond_13
    sget-object v5, Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;->PAYLOAD:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    goto :goto_d

    .line 272
    :pswitch_7
    iget-object v5, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v5}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v5

    .line 273
    add-int/lit8 v0, v0, -0x1

    .line 274
    iget-wide v8, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->k:J

    const-wide/16 v10, 0x100

    mul-long/2addr v8, v10

    and-int/lit16 v5, v5, 0xff

    int-to-long v10, v5

    add-long/2addr v8, v10

    iput-wide v8, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->k:J

    .line 275
    iget v5, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->j:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->j:I

    if-nez v5, :cond_c

    .line 277
    iget-wide v8, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->k:J

    long-to-int v5, v8

    iput v5, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->j:I

    .line 278
    iget-wide v8, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->k:J

    iget-object v5, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v5}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v5

    int-to-long v10, v5

    cmp-long v5, v8, v10

    if-ltz v5, :cond_14

    iget-boolean v5, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->p:Z

    if-nez v5, :cond_14

    .line 281
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->d:Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "frame size "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v8, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->k:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ">"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v7}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v13, v5}, Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;->close(ILjava/lang/String;)V

    .line 282
    iput-boolean v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->o:Z

    move v2, v3

    .line 285
    :cond_14
    iget-boolean v5, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->l:Z

    if-eqz v5, :cond_15

    sget-object v5, Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;->MASK:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    :goto_e
    iput-object v5, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->f:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    .line 286
    iget-object v5, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->f:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    invoke-virtual {v5}, Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;->a()I

    move-result v5

    iput v5, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->j:I

    goto/16 :goto_7

    .line 285
    :cond_15
    sget-object v5, Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;->PAYLOAD:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    goto :goto_e

    .line 291
    :pswitch_8
    iget-object v5, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->g:Lorg/eclipse/jetty/io/Buffer;

    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->m:[B

    const/4 v8, 0x4

    invoke-interface {v5, v7, v6, v8}, Lorg/eclipse/jetty/io/Buffer;->get([BII)I

    .line 292
    iput v6, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->n:I

    .line 293
    add-int/lit8 v0, v0, -0x4

    .line 294
    sget-object v5, Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;->PAYLOAD:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    iput-object v5, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->f:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    .line 295
    iget-object v5, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->f:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    invoke-virtual {v5}, Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;->a()I

    move-result v5

    iput v5, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->j:I

    goto/16 :goto_7

    .line 299
    :pswitch_9
    iget-wide v8, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->k:J

    long-to-int v5, v8

    iput v5, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->j:I

    .line 300
    iget-boolean v5, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->o:Z

    if-eqz v5, :cond_16

    sget-object v5, Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;->SKIP:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    :goto_f
    iput-object v5, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->f:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    goto/16 :goto_7

    :cond_16
    sget-object v5, Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;->DATA:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    goto :goto_f

    .line 307
    :pswitch_a
    iget v2, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->j:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 309
    iget-object v5, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v5, v2}, Lorg/eclipse/jetty/io/Buffer;->skip(I)I

    .line 310
    sub-int/2addr v0, v2

    .line 311
    iget v5, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->j:I

    sub-int v2, v5, v2

    iput v2, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->j:I

    .line 312
    iget v2, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->j:I

    if-nez v2, :cond_1c

    .line 313
    sget-object v2, Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;->START:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    iput-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->f:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    move v2, v3

    goto/16 :goto_7

    .line 318
    :pswitch_b
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2, v0}, Lorg/eclipse/jetty/io/Buffer;->skip(I)I

    move v0, v6

    move v2, v3

    .line 319
    goto/16 :goto_7

    .line 324
    :cond_17
    iget-object v5, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->f:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    sget-object v7, Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;->DATA:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    if-ne v5, v7, :cond_1

    iget v5, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->j:I

    if-lt v0, v5, :cond_1

    .line 326
    iget-boolean v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->l:Z

    iget-boolean v2, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->e:Z

    if-eq v0, v2, :cond_18

    .line 328
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->g:Lorg/eclipse/jetty/io/Buffer;

    iget v2, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->j:I

    invoke-interface {v0, v2}, Lorg/eclipse/jetty/io/Buffer;->skip(I)I

    .line 329
    sget-object v0, Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;->START:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->f:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    .line 331
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->d:Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;

    const-string v2, "bad mask"

    invoke-interface {v0, v12, v2}, Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;->close(ILjava/lang/String;)V

    move v0, v1

    move v2, v3

    goto/16 :goto_5

    .line 335
    :cond_18
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->g:Lorg/eclipse/jetty/io/Buffer;

    iget v2, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->j:I

    invoke-interface {v0, v2}, Lorg/eclipse/jetty/io/Buffer;->get(I)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    .line 336
    iget-boolean v2, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->l:Z

    if-eqz v2, :cond_1a

    .line 338
    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v2

    if-nez v2, :cond_19

    .line 339
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->asMutableBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    .line 340
    :cond_19
    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v4

    .line 341
    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->putIndex()I

    move-result v5

    .line 342
    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v2

    :goto_10
    if-ge v2, v5, :cond_1a

    .line 343
    aget-byte v7, v4, v2

    iget-object v8, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->m:[B

    iget v9, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->n:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->n:I

    rem-int/lit8 v9, v9, 0x4

    aget-byte v8, v8, v9

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v4, v2

    .line 342
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 349
    :cond_1a
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->d:Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;

    iget-byte v4, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->h:B

    iget-byte v5, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->i:B

    invoke-interface {v2, v4, v5, v0}, Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;->onFrame(BBLorg/eclipse/jetty/io/Buffer;)V

    .line 350
    iput v6, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->j:I

    .line 351
    sget-object v0, Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;->START:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->f:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    move v0, v1

    move v2, v3

    .line 354
    goto/16 :goto_5

    :cond_1b
    move v3, v0

    .line 358
    goto/16 :goto_6

    :cond_1c
    move v2, v3

    goto/16 :goto_7

    :cond_1d
    move v0, v1

    goto/16 :goto_5

    .line 203
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 236
    :pswitch_data_1
    .packed-switch 0x7e
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public returnBuffer()V
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->g:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 379
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->b:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/websocket/WebSocketBuffers;->returnBuffer(Lorg/eclipse/jetty/io/Buffer;)V

    .line 380
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->g:Lorg/eclipse/jetty/io/Buffer;

    .line 382
    :cond_0
    return-void
.end method

.method public setFakeFragments(Z)V
    .locals 0

    .prologue
    .line 106
    iput-boolean p1, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->p:Z

    .line 107
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 388
    const-string v0, "%s@%x state=%s buffer=%s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->f:Lorg/eclipse/jetty/websocket/WebSocketParserD08$State;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->g:Lorg/eclipse/jetty/io/Buffer;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
