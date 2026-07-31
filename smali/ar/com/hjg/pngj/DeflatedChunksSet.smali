.class public Lar/com/hjg/pngj/DeflatedChunksSet;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lar/com/hjg/pngj/DeflatedChunksSet$a;
    }
.end annotation


# instance fields
.field a:Lar/com/hjg/pngj/DeflatedChunksSet$a;

.field private b:I

.field private c:I

.field public final chunkid:Ljava/lang/String;

.field private d:I

.field private e:Ljava/util/zip/Inflater;

.field private final f:Z

.field private g:Lar/com/hjg/pngj/DeflatedChunkReader;

.field private h:Z

.field private i:J

.field private j:J

.field protected row:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 112
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lar/com/hjg/pngj/DeflatedChunksSet;-><init>(Ljava/lang/String;IILjava/util/zip/Inflater;[B)V

    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/util/zip/Inflater;[B)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sget-object v0, Lar/com/hjg/pngj/DeflatedChunksSet$a;->a:Lar/com/hjg/pngj/DeflatedChunksSet$a;

    iput-object v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->a:Lar/com/hjg/pngj/DeflatedChunksSet$a;

    .line 72
    iput-boolean v1, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->h:Z

    .line 73
    iput-wide v2, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->i:J

    .line 74
    iput-wide v2, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->j:J

    .line 89
    iput-object p1, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->chunkid:Ljava/lang/String;

    .line 90
    iput p2, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->c:I

    .line 91
    if-lt p2, v1, :cond_0

    if-ge p3, p2, :cond_1

    .line 92
    :cond_0
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad inital row len "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_1
    if-eqz p4, :cond_2

    .line 94
    iput-object p4, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->e:Ljava/util/zip/Inflater;

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->f:Z

    .line 100
    :goto_0
    if-eqz p5, :cond_3

    array-length v0, p5

    if-lt v0, p2, :cond_3

    :goto_1
    iput-object p5, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->row:[B

    .line 101
    const/4 v0, -0x1

    iput v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->d:I

    .line 102
    sget-object v0, Lar/com/hjg/pngj/DeflatedChunksSet$a;->a:Lar/com/hjg/pngj/DeflatedChunksSet$a;

    iput-object v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->a:Lar/com/hjg/pngj/DeflatedChunksSet$a;

    .line 104
    :try_start_0
    invoke-virtual {p0, p2}, Lar/com/hjg/pngj/DeflatedChunksSet;->prepareForNextRow(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    return-void

    .line 97
    :cond_2
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    iput-object v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->e:Ljava/util/zip/Inflater;

    .line 98
    iput-boolean v1, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->f:Z

    goto :goto_0

    .line 100
    :cond_3
    new-array p5, p3, [B

    goto :goto_1

    .line 105
    :catch_0
    move-exception v0

    .line 106
    invoke-virtual {p0}, Lar/com/hjg/pngj/DeflatedChunksSet;->close()V

    .line 107
    throw v0
.end method

.method private a()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 165
    :try_start_0
    iget-object v1, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->a:Lar/com/hjg/pngj/DeflatedChunksSet$a;

    sget-object v2, Lar/com/hjg/pngj/DeflatedChunksSet$a;->b:Lar/com/hjg/pngj/DeflatedChunksSet$a;

    if-ne v1, v2, :cond_0

    .line 166
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    const-string v1, "invalid state"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    invoke-virtual {p0}, Lar/com/hjg/pngj/DeflatedChunksSet;->close()V

    .line 198
    throw v0

    .line 167
    :cond_0
    :try_start_1
    iget-object v1, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->a:Lar/com/hjg/pngj/DeflatedChunksSet$a;

    invoke-virtual {v1}, Lar/com/hjg/pngj/DeflatedChunksSet$a;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 200
    :cond_1
    :goto_0
    return v0

    .line 170
    :cond_2
    iget-object v1, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->row:[B

    if-eqz v1, :cond_3

    iget-object v1, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->row:[B

    array-length v1, v1

    iget v2, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->c:I

    if-ge v1, v2, :cond_4

    .line 171
    :cond_3
    iget v1, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->c:I

    new-array v1, v1, [B

    iput-object v1, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->row:[B

    .line 172
    :cond_4
    iget v1, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->b:I

    iget v2, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->c:I

    if-ge v1, v2, :cond_5

    iget-object v1, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->e:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->finished()Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-nez v1, :cond_5

    .line 174
    :try_start_2
    iget-object v1, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->e:Ljava/util/zip/Inflater;

    iget-object v2, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->row:[B

    iget v3, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->b:I

    iget v4, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->c:I

    iget v5, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->b:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/zip/Inflater;->inflate([BII)I
    :try_end_2
    .catch Ljava/util/zip/DataFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    .line 178
    :try_start_3
    iget v2, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->b:I

    add-int/2addr v2, v1

    iput v2, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->b:I

    .line 179
    iget-wide v2, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->j:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->j:J

    .line 182
    :cond_5
    iget v1, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->b:I

    iget v2, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->c:I

    if-ne v1, v2, :cond_6

    .line 183
    sget-object v1, Lar/com/hjg/pngj/DeflatedChunksSet$a;->b:Lar/com/hjg/pngj/DeflatedChunksSet$a;

    .line 191
    :goto_1
    iput-object v1, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->a:Lar/com/hjg/pngj/DeflatedChunksSet$a;

    .line 192
    iget-object v1, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->a:Lar/com/hjg/pngj/DeflatedChunksSet$a;

    sget-object v2, Lar/com/hjg/pngj/DeflatedChunksSet$a;->b:Lar/com/hjg/pngj/DeflatedChunksSet$a;

    if-ne v1, v2, :cond_1

    .line 193
    invoke-virtual {p0}, Lar/com/hjg/pngj/DeflatedChunksSet;->preProcessRow()V

    .line 194
    const/4 v0, 0x1

    goto :goto_0

    .line 175
    :catch_1
    move-exception v0

    .line 176
    new-instance v1, Lar/com/hjg/pngj/PngjInputException;

    const-string v2, "error decompressing zlib stream "

    invoke-direct {v1, v2, v0}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 184
    :cond_6
    iget-object v1, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->e:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->finished()Z

    move-result v1

    if-nez v1, :cond_7

    .line 185
    sget-object v1, Lar/com/hjg/pngj/DeflatedChunksSet$a;->a:Lar/com/hjg/pngj/DeflatedChunksSet$a;

    goto :goto_1

    .line 186
    :cond_7
    iget v1, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->b:I

    if-lez v1, :cond_8

    .line 187
    sget-object v1, Lar/com/hjg/pngj/DeflatedChunksSet$a;->b:Lar/com/hjg/pngj/DeflatedChunksSet$a;

    goto :goto_1

    .line 189
    :cond_8
    sget-object v1, Lar/com/hjg/pngj/DeflatedChunksSet$a;->c:Lar/com/hjg/pngj/DeflatedChunksSet$a;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public ackNextChunkId(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 301
    iget-object v2, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->a:Lar/com/hjg/pngj/DeflatedChunksSet$a;

    invoke-virtual {v2}, Lar/com/hjg/pngj/DeflatedChunksSet$a;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 316
    :cond_0
    :goto_0
    return v0

    .line 303
    :cond_1
    iget-object v2, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->chunkid:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 304
    goto :goto_0

    .line 306
    :cond_2
    invoke-virtual {p0, p1}, Lar/com/hjg/pngj/DeflatedChunksSet;->allowOtherChunksInBetween(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 307
    iget-object v1, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->a:Lar/com/hjg/pngj/DeflatedChunksSet$a;

    invoke-virtual {v1}, Lar/com/hjg/pngj/DeflatedChunksSet$a;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 308
    invoke-virtual {p0}, Lar/com/hjg/pngj/DeflatedChunksSet;->isTerminated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 309
    invoke-virtual {p0}, Lar/com/hjg/pngj/DeflatedChunksSet;->terminate()V

    goto :goto_0

    .line 312
    :cond_3
    new-instance v0, Lar/com/hjg/pngj/PngjInputException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected chunk "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " while "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->chunkid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " set is not done"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move v0, v1

    .line 316
    goto :goto_0
.end method

.method public allowOtherChunksInBetween(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 383
    const/4 v0, 0x0

    return v0
.end method

.method protected appendNewChunk(Lar/com/hjg/pngj/DeflatedChunkReader;)V
    .locals 3

    .prologue
    .line 117
    iget-object v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->chunkid:Ljava/lang/String;

    invoke-virtual {p1}, Lar/com/hjg/pngj/DeflatedChunkReader;->getChunkRaw()Lar/com/hjg/pngj/chunks/ChunkRaw;

    move-result-object v1

    iget-object v1, v1, Lar/com/hjg/pngj/chunks/ChunkRaw;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Lar/com/hjg/pngj/PngjInputException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad chunk inside IdatSet, id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lar/com/hjg/pngj/DeflatedChunkReader;->getChunkRaw()Lar/com/hjg/pngj/chunks/ChunkRaw;

    move-result-object v2

    iget-object v2, v2, Lar/com/hjg/pngj/chunks/ChunkRaw;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->chunkid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    iput-object p1, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->g:Lar/com/hjg/pngj/DeflatedChunkReader;

    .line 121
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 330
    :try_start_0
    iget-object v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->a:Lar/com/hjg/pngj/DeflatedChunksSet$a;

    invoke-virtual {v0}, Lar/com/hjg/pngj/DeflatedChunksSet$a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 331
    sget-object v0, Lar/com/hjg/pngj/DeflatedChunksSet$a;->d:Lar/com/hjg/pngj/DeflatedChunksSet$a;

    iput-object v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->a:Lar/com/hjg/pngj/DeflatedChunksSet$a;

    .line 333
    :cond_0
    iget-boolean v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->e:Ljava/util/zip/Inflater;

    if-eqz v0, :cond_1

    .line 334
    iget-object v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->e:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 335
    const/4 v0, 0x0

    iput-object v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->e:Ljava/util/zip/Inflater;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    :cond_1
    :goto_0
    return-void

    .line 337
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public done()V
    .locals 1

    .prologue
    .line 346
    invoke-virtual {p0}, Lar/com/hjg/pngj/DeflatedChunksSet;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 347
    sget-object v0, Lar/com/hjg/pngj/DeflatedChunksSet$a;->c:Lar/com/hjg/pngj/DeflatedChunksSet$a;

    iput-object v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->a:Lar/com/hjg/pngj/DeflatedChunksSet$a;

    .line 348
    :cond_0
    return-void
.end method

.method public getBytesIn()J
    .locals 2

    .prologue
    .line 399
    iget-wide v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->i:J

    return-wide v0
.end method

.method public getBytesOut()J
    .locals 2

    .prologue
    .line 404
    iget-wide v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->j:J

    return-wide v0
.end method

.method public getInflatedRow()[B
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->row:[B

    return-object v0
.end method

.method public getRowFilled()I
    .locals 1

    .prologue
    .line 360
    iget v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->b:I

    return v0
.end method

.method public getRowLen()I
    .locals 1

    .prologue
    .line 355
    iget v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->c:I

    return v0
.end method

.method public getRown()I
    .locals 1

    .prologue
    .line 371
    iget v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->d:I

    return v0
.end method

.method public isCallbackMode()Z
    .locals 1

    .prologue
    .line 390
    iget-boolean v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->h:Z

    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->a:Lar/com/hjg/pngj/DeflatedChunksSet$a;

    invoke-virtual {v0}, Lar/com/hjg/pngj/DeflatedChunksSet$a;->a()Z

    move-result v0

    return v0
.end method

.method public isRowReady()Z
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->a:Lar/com/hjg/pngj/DeflatedChunksSet$a;

    sget-object v1, Lar/com/hjg/pngj/DeflatedChunksSet$a;->b:Lar/com/hjg/pngj/DeflatedChunksSet$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTerminated()Z
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->a:Lar/com/hjg/pngj/DeflatedChunksSet$a;

    invoke-virtual {v0}, Lar/com/hjg/pngj/DeflatedChunksSet$a;->b()Z

    move-result v0

    return v0
.end method

.method public isWaitingForMoreInput()Z
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->a:Lar/com/hjg/pngj/DeflatedChunksSet$a;

    sget-object v1, Lar/com/hjg/pngj/DeflatedChunksSet$a;->a:Lar/com/hjg/pngj/DeflatedChunksSet$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected preProcessRow()V
    .locals 0

    .prologue
    .line 208
    return-void
.end method

.method public prepareForNextRow(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 248
    iput v1, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->b:I

    .line 249
    iget v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->d:I

    .line 250
    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    .line 251
    iput v1, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->c:I

    .line 252
    invoke-virtual {p0}, Lar/com/hjg/pngj/DeflatedChunksSet;->done()V

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    iget-object v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->e:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->finished()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 254
    iput v1, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->c:I

    .line 255
    invoke-virtual {p0}, Lar/com/hjg/pngj/DeflatedChunksSet;->done()V

    goto :goto_0

    .line 257
    :cond_2
    sget-object v0, Lar/com/hjg/pngj/DeflatedChunksSet$a;->a:Lar/com/hjg/pngj/DeflatedChunksSet$a;

    iput-object v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->a:Lar/com/hjg/pngj/DeflatedChunksSet$a;

    .line 258
    iput p1, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->c:I

    .line 259
    iget-boolean v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->h:Z

    if-nez v0, :cond_0

    .line 260
    invoke-direct {p0}, Lar/com/hjg/pngj/DeflatedChunksSet;->a()Z

    goto :goto_0
.end method

.method protected processBytes([BII)V
    .locals 4

    .prologue
    .line 134
    iget-wide v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->i:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->i:J

    .line 136
    const/4 v0, 0x1

    if-lt p3, v0, :cond_0

    iget-object v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->a:Lar/com/hjg/pngj/DeflatedChunksSet$a;

    invoke-virtual {v0}, Lar/com/hjg/pngj/DeflatedChunksSet$a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    iget-object v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->a:Lar/com/hjg/pngj/DeflatedChunksSet$a;

    sget-object v1, Lar/com/hjg/pngj/DeflatedChunksSet$a;->b:Lar/com/hjg/pngj/DeflatedChunksSet$a;

    if-ne v0, v1, :cond_2

    .line 139
    new-instance v0, Lar/com/hjg/pngj/PngjInputException;

    const-string v1, "this should only be called if waitingForMoreInput"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_2
    iget-object v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->e:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->e:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v0

    if-nez v0, :cond_4

    .line 141
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "should not happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_4
    iget-object v0, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->e:Ljava/util/zip/Inflater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 145
    invoke-virtual {p0}, Lar/com/hjg/pngj/DeflatedChunksSet;->isCallbackMode()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 146
    :cond_5
    :goto_1
    invoke-direct {p0}, Lar/com/hjg/pngj/DeflatedChunksSet;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p0}, Lar/com/hjg/pngj/DeflatedChunksSet;->processRowCallback()I

    move-result v0

    .line 148
    invoke-virtual {p0, v0}, Lar/com/hjg/pngj/DeflatedChunksSet;->prepareForNextRow(I)V

    .line 149
    invoke-virtual {p0}, Lar/com/hjg/pngj/DeflatedChunksSet;->isDone()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 150
    invoke-virtual {p0}, Lar/com/hjg/pngj/DeflatedChunksSet;->processDoneCallback()V

    goto :goto_1

    .line 153
    :cond_6
    invoke-direct {p0}, Lar/com/hjg/pngj/DeflatedChunksSet;->a()Z

    goto :goto_0
.end method

.method protected processDoneCallback()V
    .locals 0

    .prologue
    .line 227
    return-void
.end method

.method protected processRowCallback()I
    .locals 2

    .prologue
    .line 218
    new-instance v0, Lar/com/hjg/pngj/PngjInputException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCallbackMode(Z)V
    .locals 0

    .prologue
    .line 394
    iput-boolean p1, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->h:Z

    .line 395
    return-void
.end method

.method protected terminate()V
    .locals 0

    .prologue
    .line 321
    invoke-virtual {p0}, Lar/com/hjg/pngj/DeflatedChunksSet;->close()V

    .line 322
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "idatSet : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->g:Lar/com/hjg/pngj/DeflatedChunkReader;

    invoke-virtual {v2}, Lar/com/hjg/pngj/DeflatedChunkReader;->getChunkRaw()Lar/com/hjg/pngj/chunks/ChunkRaw;

    move-result-object v2

    iget-object v2, v2, Lar/com/hjg/pngj/chunks/ChunkRaw;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->a:Lar/com/hjg/pngj/DeflatedChunksSet$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rows="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->i:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lar/com/hjg/pngj/DeflatedChunksSet;->j:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 412
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
