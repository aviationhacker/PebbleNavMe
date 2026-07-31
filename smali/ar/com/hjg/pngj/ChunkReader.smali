.class public abstract Lar/com/hjg/pngj/ChunkReader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;
    }
.end annotation


# instance fields
.field private final a:Lar/com/hjg/pngj/chunks/ChunkRaw;

.field private b:Z

.field private c:I

.field public final mode:Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

.field protected read:I


# direct methods
.method public constructor <init>(ILjava/lang/String;JLar/com/hjg/pngj/ChunkReader$ChunkReaderMode;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput v2, p0, Lar/com/hjg/pngj/ChunkReader;->read:I

    .line 28
    iput v2, p0, Lar/com/hjg/pngj/ChunkReader;->c:I

    .line 57
    if-eqz p5, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    if-gez p1, :cond_1

    .line 58
    :cond_0
    new-instance v0, Lar/com/hjg/pngj/PngjExceptionInternal;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad chunk paramenters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjExceptionInternal;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_1
    iput-object p5, p0, Lar/com/hjg/pngj/ChunkReader;->mode:Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

    .line 60
    new-instance v3, Lar/com/hjg/pngj/chunks/ChunkRaw;

    sget-object v0, Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;->BUFFER:Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

    if-ne p5, v0, :cond_2

    move v0, v1

    :goto_0
    invoke-direct {v3, p1, p2, v0}, Lar/com/hjg/pngj/chunks/ChunkRaw;-><init>(ILjava/lang/String;Z)V

    iput-object v3, p0, Lar/com/hjg/pngj/ChunkReader;->a:Lar/com/hjg/pngj/chunks/ChunkRaw;

    .line 61
    iget-object v0, p0, Lar/com/hjg/pngj/ChunkReader;->a:Lar/com/hjg/pngj/chunks/ChunkRaw;

    invoke-virtual {v0, p3, p4}, Lar/com/hjg/pngj/chunks/ChunkRaw;->setOffset(J)V

    .line 62
    sget-object v0, Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;->SKIP:Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

    if-ne p5, v0, :cond_3

    :goto_1
    iput-boolean v2, p0, Lar/com/hjg/pngj/ChunkReader;->b:Z

    .line 63
    return-void

    :cond_2
    move v0, v2

    .line 60
    goto :goto_0

    :cond_3
    move v2, v1

    .line 62
    goto :goto_1
.end method


# virtual methods
.method protected abstract chunkDone()V
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 191
    if-ne p0, p1, :cond_1

    .line 203
    :cond_0
    :goto_0
    return v0

    .line 193
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 194
    goto :goto_0

    .line 195
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 196
    goto :goto_0

    .line 197
    :cond_3
    check-cast p1, Lar/com/hjg/pngj/ChunkReader;

    .line 198
    iget-object v2, p0, Lar/com/hjg/pngj/ChunkReader;->a:Lar/com/hjg/pngj/chunks/ChunkRaw;

    if-nez v2, :cond_4

    .line 199
    iget-object v2, p1, Lar/com/hjg/pngj/ChunkReader;->a:Lar/com/hjg/pngj/chunks/ChunkRaw;

    if-eqz v2, :cond_0

    move v0, v1

    .line 200
    goto :goto_0

    .line 201
    :cond_4
    iget-object v2, p0, Lar/com/hjg/pngj/ChunkReader;->a:Lar/com/hjg/pngj/chunks/ChunkRaw;

    iget-object v3, p1, Lar/com/hjg/pngj/ChunkReader;->a:Lar/com/hjg/pngj/chunks/ChunkRaw;

    invoke-virtual {v2, v3}, Lar/com/hjg/pngj/chunks/ChunkRaw;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 202
    goto :goto_0
.end method

.method public final feedBytes([BII)I
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v1, 0x0

    .line 87
    if-nez p3, :cond_0

    .line 137
    :goto_0
    return v1

    .line 89
    :cond_0
    if-gez p3, :cond_1

    .line 90
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    const-string v1, "negative length??"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_1
    iget v0, p0, Lar/com/hjg/pngj/ChunkReader;->read:I

    if-nez v0, :cond_2

    iget v0, p0, Lar/com/hjg/pngj/ChunkReader;->c:I

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lar/com/hjg/pngj/ChunkReader;->b:Z

    if-eqz v0, :cond_2

    .line 92
    iget-object v0, p0, Lar/com/hjg/pngj/ChunkReader;->a:Lar/com/hjg/pngj/chunks/ChunkRaw;

    iget-object v2, p0, Lar/com/hjg/pngj/ChunkReader;->a:Lar/com/hjg/pngj/chunks/ChunkRaw;

    iget-object v2, v2, Lar/com/hjg/pngj/chunks/ChunkRaw;->idbytes:[B

    invoke-virtual {v0, v2, v1, v5}, Lar/com/hjg/pngj/chunks/ChunkRaw;->updateCrc([BII)V

    .line 93
    :cond_2
    iget-object v0, p0, Lar/com/hjg/pngj/ChunkReader;->a:Lar/com/hjg/pngj/chunks/ChunkRaw;

    iget v0, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->len:I

    iget v2, p0, Lar/com/hjg/pngj/ChunkReader;->read:I

    sub-int/2addr v0, v2

    .line 94
    if-le v0, p3, :cond_e

    move v2, p3

    .line 97
    :goto_1
    if-gtz v2, :cond_3

    iget v0, p0, Lar/com/hjg/pngj/ChunkReader;->c:I

    if-nez v0, :cond_6

    .line 99
    :cond_3
    iget-boolean v0, p0, Lar/com/hjg/pngj/ChunkReader;->b:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lar/com/hjg/pngj/ChunkReader;->mode:Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

    sget-object v3, Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;->BUFFER:Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

    if-eq v0, v3, :cond_4

    if-lez v2, :cond_4

    .line 100
    iget-object v0, p0, Lar/com/hjg/pngj/ChunkReader;->a:Lar/com/hjg/pngj/chunks/ChunkRaw;

    invoke-virtual {v0, p1, p2, v2}, Lar/com/hjg/pngj/chunks/ChunkRaw;->updateCrc([BII)V

    .line 102
    :cond_4
    iget-object v0, p0, Lar/com/hjg/pngj/ChunkReader;->mode:Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

    sget-object v3, Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;->BUFFER:Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

    if-ne v0, v3, :cond_c

    .line 104
    iget-object v0, p0, Lar/com/hjg/pngj/ChunkReader;->a:Lar/com/hjg/pngj/chunks/ChunkRaw;

    iget-object v0, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    if-eq v0, p1, :cond_5

    if-lez v2, :cond_5

    .line 106
    iget-object v0, p0, Lar/com/hjg/pngj/ChunkReader;->a:Lar/com/hjg/pngj/chunks/ChunkRaw;

    iget-object v0, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    iget v3, p0, Lar/com/hjg/pngj/ChunkReader;->read:I

    invoke-static {p1, p2, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    :cond_5
    :goto_2
    iget v0, p0, Lar/com/hjg/pngj/ChunkReader;->read:I

    add-int/2addr v0, v2

    iput v0, p0, Lar/com/hjg/pngj/ChunkReader;->read:I

    .line 114
    add-int/2addr p2, v2

    .line 115
    sub-int/2addr p3, v2

    .line 118
    :cond_6
    iget v0, p0, Lar/com/hjg/pngj/ChunkReader;->read:I

    iget-object v3, p0, Lar/com/hjg/pngj/ChunkReader;->a:Lar/com/hjg/pngj/chunks/ChunkRaw;

    iget v3, v3, Lar/com/hjg/pngj/chunks/ChunkRaw;->len:I

    if-ne v0, v3, :cond_d

    .line 119
    iget v0, p0, Lar/com/hjg/pngj/ChunkReader;->c:I

    rsub-int/lit8 v0, v0, 0x4

    .line 120
    if-le v0, p3, :cond_7

    move v0, p3

    .line 122
    :cond_7
    if-lez v0, :cond_b

    .line 123
    iget-object v3, p0, Lar/com/hjg/pngj/ChunkReader;->a:Lar/com/hjg/pngj/chunks/ChunkRaw;

    iget-object v3, v3, Lar/com/hjg/pngj/chunks/ChunkRaw;->crcval:[B

    if-eq p1, v3, :cond_8

    .line 124
    iget-object v3, p0, Lar/com/hjg/pngj/ChunkReader;->a:Lar/com/hjg/pngj/chunks/ChunkRaw;

    iget-object v3, v3, Lar/com/hjg/pngj/chunks/ChunkRaw;->crcval:[B

    iget v4, p0, Lar/com/hjg/pngj/ChunkReader;->c:I

    invoke-static {p1, p2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    :cond_8
    iget v3, p0, Lar/com/hjg/pngj/ChunkReader;->c:I

    add-int/2addr v3, v0

    iput v3, p0, Lar/com/hjg/pngj/ChunkReader;->c:I

    .line 126
    iget v3, p0, Lar/com/hjg/pngj/ChunkReader;->c:I

    if-ne v3, v5, :cond_b

    .line 127
    iget-boolean v3, p0, Lar/com/hjg/pngj/ChunkReader;->b:Z

    if-eqz v3, :cond_a

    .line 128
    iget-object v3, p0, Lar/com/hjg/pngj/ChunkReader;->mode:Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

    sget-object v4, Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;->BUFFER:Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

    if-ne v3, v4, :cond_9

    .line 129
    iget-object v3, p0, Lar/com/hjg/pngj/ChunkReader;->a:Lar/com/hjg/pngj/chunks/ChunkRaw;

    iget-object v4, p0, Lar/com/hjg/pngj/ChunkReader;->a:Lar/com/hjg/pngj/chunks/ChunkRaw;

    iget-object v4, v4, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    iget-object v5, p0, Lar/com/hjg/pngj/ChunkReader;->a:Lar/com/hjg/pngj/chunks/ChunkRaw;

    iget v5, v5, Lar/com/hjg/pngj/chunks/ChunkRaw;->len:I

    invoke-virtual {v3, v4, v1, v5}, Lar/com/hjg/pngj/chunks/ChunkRaw;->updateCrc([BII)V

    .line 131
    :cond_9
    iget-object v1, p0, Lar/com/hjg/pngj/ChunkReader;->a:Lar/com/hjg/pngj/chunks/ChunkRaw;

    invoke-virtual {v1}, Lar/com/hjg/pngj/chunks/ChunkRaw;->checkCrc()V

    .line 133
    :cond_a
    invoke-virtual {p0}, Lar/com/hjg/pngj/ChunkReader;->chunkDone()V

    .line 137
    :cond_b
    :goto_3
    add-int v1, v2, v0

    goto/16 :goto_0

    .line 108
    :cond_c
    iget-object v0, p0, Lar/com/hjg/pngj/ChunkReader;->mode:Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

    sget-object v3, Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;->PROCESS:Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

    if-ne v0, v3, :cond_5

    .line 109
    iget v0, p0, Lar/com/hjg/pngj/ChunkReader;->read:I

    invoke-virtual {p0, v0, p1, p2, v2}, Lar/com/hjg/pngj/ChunkReader;->processData(I[BII)V

    goto :goto_2

    :cond_d
    move v0, v1

    goto :goto_3

    :cond_e
    move v2, v0

    goto/16 :goto_1
.end method

.method public getChunkRaw()Lar/com/hjg/pngj/chunks/ChunkRaw;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lar/com/hjg/pngj/ChunkReader;->a:Lar/com/hjg/pngj/chunks/ChunkRaw;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 180
    .line 182
    iget-object v0, p0, Lar/com/hjg/pngj/ChunkReader;->a:Lar/com/hjg/pngj/chunks/ChunkRaw;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 183
    return v0

    .line 182
    :cond_0
    iget-object v0, p0, Lar/com/hjg/pngj/ChunkReader;->a:Lar/com/hjg/pngj/chunks/ChunkRaw;

    invoke-virtual {v0}, Lar/com/hjg/pngj/chunks/ChunkRaw;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final isDone()Z
    .locals 2

    .prologue
    .line 146
    iget v0, p0, Lar/com/hjg/pngj/ChunkReader;->c:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract processData(I[BII)V
.end method

.method public setCrcCheck(Z)V
    .locals 2

    .prologue
    .line 155
    iget v0, p0, Lar/com/hjg/pngj/ChunkReader;->read:I

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lar/com/hjg/pngj/ChunkReader;->b:Z

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    const-string v1, "too late!"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_0
    iput-boolean p1, p0, Lar/com/hjg/pngj/ChunkReader;->b:Z

    .line 158
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lar/com/hjg/pngj/ChunkReader;->a:Lar/com/hjg/pngj/chunks/ChunkRaw;

    invoke-virtual {v0}, Lar/com/hjg/pngj/chunks/ChunkRaw;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
