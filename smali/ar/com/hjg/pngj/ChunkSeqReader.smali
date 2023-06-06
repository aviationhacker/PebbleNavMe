.class public Lar/com/hjg/pngj/ChunkSeqReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lar/com/hjg/pngj/IBytesConsumer;


# static fields
.field protected static final SIGNATURE_LEN:I = 0x8


# instance fields
.field private a:[B

.field private b:I

.field private c:Z

.field private d:Z

.field private e:I

.field private f:J

.field private g:Lar/com/hjg/pngj/DeflatedChunksSet;

.field private h:Lar/com/hjg/pngj/ChunkReader;

.field private i:J

.field protected final withSignature:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lar/com/hjg/pngj/ChunkSeqReader;-><init>(Z)V

    .line 44
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/16 v1, 0x8

    new-array v1, v1, [B

    iput-object v1, p0, Lar/com/hjg/pngj/ChunkSeqReader;->a:[B

    .line 23
    iput v0, p0, Lar/com/hjg/pngj/ChunkSeqReader;->b:I

    .line 25
    iput-boolean v0, p0, Lar/com/hjg/pngj/ChunkSeqReader;->c:Z

    .line 26
    iput-boolean v0, p0, Lar/com/hjg/pngj/ChunkSeqReader;->d:Z

    .line 28
    iput v0, p0, Lar/com/hjg/pngj/ChunkSeqReader;->e:I

    .line 30
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lar/com/hjg/pngj/ChunkSeqReader;->f:J

    .line 50
    iput-boolean p1, p0, Lar/com/hjg/pngj/ChunkSeqReader;->withSignature:Z

    .line 51
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lar/com/hjg/pngj/ChunkSeqReader;->c:Z

    .line 52
    return-void
.end method


# virtual methods
.method protected checkSignature([B)V
    .locals 2

    .prologue
    .line 260
    invoke-static {}, Lar/com/hjg/pngj/PngHelperInternal;->getPngIdSignature()[B

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    new-instance v0, Lar/com/hjg/pngj/PngjInputException;

    const-string v1, "Bad PNG signature"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_0
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lar/com/hjg/pngj/ChunkSeqReader;->g:Lar/com/hjg/pngj/DeflatedChunksSet;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lar/com/hjg/pngj/ChunkSeqReader;->g:Lar/com/hjg/pngj/DeflatedChunksSet;

    invoke-virtual {v0}, Lar/com/hjg/pngj/DeflatedChunksSet;->close()V

    .line 316
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lar/com/hjg/pngj/ChunkSeqReader;->d:Z

    .line 317
    return-void
.end method

.method public consume([BII)I
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x4

    const/4 v2, 0x0

    .line 73
    iget-boolean v0, p0, Lar/com/hjg/pngj/ChunkSeqReader;->d:Z

    if-eqz v0, :cond_0

    .line 74
    const/4 v0, -0x1

    .line 117
    :goto_0
    return v0

    .line 75
    :cond_0
    if-nez p3, :cond_1

    move v0, v2

    .line 76
    goto :goto_0

    .line 77
    :cond_1
    if-gez p3, :cond_2

    .line 78
    new-instance v0, Lar/com/hjg/pngj/PngjInputException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad len: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_2
    iget-boolean v0, p0, Lar/com/hjg/pngj/ChunkSeqReader;->c:Z

    if-eqz v0, :cond_7

    .line 81
    iget-object v0, p0, Lar/com/hjg/pngj/ChunkSeqReader;->h:Lar/com/hjg/pngj/ChunkReader;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lar/com/hjg/pngj/ChunkSeqReader;->h:Lar/com/hjg/pngj/ChunkReader;

    invoke-virtual {v0}, Lar/com/hjg/pngj/ChunkReader;->isDone()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 82
    :cond_3
    iget v0, p0, Lar/com/hjg/pngj/ChunkSeqReader;->b:I

    rsub-int/lit8 v0, v0, 0x8

    .line 83
    if-le v0, p3, :cond_4

    move v0, p3

    .line 85
    :cond_4
    iget-object v1, p0, Lar/com/hjg/pngj/ChunkSeqReader;->a:[B

    iget v3, p0, Lar/com/hjg/pngj/ChunkSeqReader;->b:I

    invoke-static {p1, p2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    iget v1, p0, Lar/com/hjg/pngj/ChunkSeqReader;->b:I

    add-int/2addr v1, v0

    iput v1, p0, Lar/com/hjg/pngj/ChunkSeqReader;->b:I

    .line 87
    add-int v1, v2, v0

    .line 88
    iget-wide v4, p0, Lar/com/hjg/pngj/ChunkSeqReader;->f:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lar/com/hjg/pngj/ChunkSeqReader;->f:J

    .line 89
    sub-int v3, p3, v0

    .line 90
    add-int/2addr v0, p2

    .line 91
    iget v0, p0, Lar/com/hjg/pngj/ChunkSeqReader;->b:I

    if-ne v0, v9, :cond_5

    .line 92
    iget v0, p0, Lar/com/hjg/pngj/ChunkSeqReader;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lar/com/hjg/pngj/ChunkSeqReader;->e:I

    .line 93
    iget-object v0, p0, Lar/com/hjg/pngj/ChunkSeqReader;->a:[B

    invoke-static {v0, v2}, Lar/com/hjg/pngj/PngHelperInternal;->readInt4fromBytes([BI)I

    move-result v0

    .line 94
    iget-object v3, p0, Lar/com/hjg/pngj/ChunkSeqReader;->a:[B

    invoke-static {v3, v8, v8}, Lar/com/hjg/pngj/chunks/ChunkHelper;->toString([BII)Ljava/lang/String;

    move-result-object v3

    .line 95
    iget-wide v4, p0, Lar/com/hjg/pngj/ChunkSeqReader;->f:J

    const-wide/16 v6, 0x8

    sub-long/2addr v4, v6

    invoke-virtual {p0, v0, v3, v4, v5}, Lar/com/hjg/pngj/ChunkSeqReader;->startNewChunk(ILjava/lang/String;J)V

    .line 96
    iput v2, p0, Lar/com/hjg/pngj/ChunkSeqReader;->b:I

    :cond_5
    move v0, v1

    .line 98
    goto :goto_0

    .line 99
    :cond_6
    iget-object v0, p0, Lar/com/hjg/pngj/ChunkSeqReader;->h:Lar/com/hjg/pngj/ChunkReader;

    invoke-virtual {v0, p1, p2, p3}, Lar/com/hjg/pngj/ChunkReader;->feedBytes([BII)I

    move-result v1

    .line 100
    add-int v0, v2, v1

    .line 101
    iget-wide v2, p0, Lar/com/hjg/pngj/ChunkSeqReader;->f:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lar/com/hjg/pngj/ChunkSeqReader;->f:J

    goto :goto_0

    .line 104
    :cond_7
    iget v0, p0, Lar/com/hjg/pngj/ChunkSeqReader;->b:I

    rsub-int/lit8 v0, v0, 0x8

    .line 105
    if-le v0, p3, :cond_9

    .line 107
    :goto_1
    iget-object v0, p0, Lar/com/hjg/pngj/ChunkSeqReader;->a:[B

    iget v1, p0, Lar/com/hjg/pngj/ChunkSeqReader;->b:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    iget v0, p0, Lar/com/hjg/pngj/ChunkSeqReader;->b:I

    add-int/2addr v0, p3

    iput v0, p0, Lar/com/hjg/pngj/ChunkSeqReader;->b:I

    .line 109
    iget v0, p0, Lar/com/hjg/pngj/ChunkSeqReader;->b:I

    if-ne v0, v9, :cond_8

    .line 110
    iget-object v0, p0, Lar/com/hjg/pngj/ChunkSeqReader;->a:[B

    invoke-virtual {p0, v0}, Lar/com/hjg/pngj/ChunkSeqReader;->checkSignature([B)V

    .line 111
    iput v2, p0, Lar/com/hjg/pngj/ChunkSeqReader;->b:I

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lar/com/hjg/pngj/ChunkSeqReader;->c:Z

    .line 114
    :cond_8
    add-int v0, v2, p3

    .line 115
    iget-wide v2, p0, Lar/com/hjg/pngj/ChunkSeqReader;->f:J

    int-to-long v4, p3

    add-long/2addr v2, v4

    iput-wide v2, p0, Lar/com/hjg/pngj/ChunkSeqReader;->f:J

    goto/16 :goto_0

    :cond_9
    move p3, v0

    goto :goto_1
.end method

.method protected createChunkReaderForNewChunk(Ljava/lang/String;IJZ)Lar/com/hjg/pngj/ChunkReader;
    .locals 7

    .prologue
    .line 190
    new-instance v0, Lar/com/hjg/pngj/ChunkSeqReader$2;

    if-eqz p5, :cond_0

    sget-object v6, Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;->SKIP:Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

    :goto_0
    move-object v1, p0

    move v2, p2

    move-object v3, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v6}, Lar/com/hjg/pngj/ChunkSeqReader$2;-><init>(Lar/com/hjg/pngj/ChunkSeqReader;ILjava/lang/String;JLar/com/hjg/pngj/ChunkReader$ChunkReaderMode;)V

    return-object v0

    :cond_0
    sget-object v6, Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;->BUFFER:Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

    goto :goto_0
.end method

.method protected createIdatSet(Ljava/lang/String;)Lar/com/hjg/pngj/DeflatedChunksSet;
    .locals 2

    .prologue
    const/16 v1, 0x400

    .line 225
    new-instance v0, Lar/com/hjg/pngj/DeflatedChunksSet;

    invoke-direct {v0, p1, v1, v1}, Lar/com/hjg/pngj/DeflatedChunksSet;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method

.method protected endChunkId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 351
    const-string v0, "IEND"

    return-object v0
.end method

.method public feedAll([BII)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 128
    :goto_0
    if-lez p3, :cond_0

    .line 129
    invoke-virtual {p0, p1, p2, p3}, Lar/com/hjg/pngj/ChunkSeqReader;->consume([BII)I

    move-result v1

    .line 130
    if-ge v1, v0, :cond_1

    .line 131
    const/4 v0, 0x0

    .line 135
    :cond_0
    return v0

    .line 132
    :cond_1
    sub-int/2addr p3, v1

    .line 133
    add-int/2addr p2, v1

    .line 134
    goto :goto_0
.end method

.method public feedFromFile(Ljava/io/File;)V
    .locals 2

    .prologue
    .line 359
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lar/com/hjg/pngj/ChunkSeqReader;->feedFromInputStream(Ljava/io/InputStream;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    return-void

    .line 360
    :catch_0
    move-exception v0

    .line 361
    new-instance v1, Lar/com/hjg/pngj/PngjInputException;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public feedFromInputStream(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 384
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lar/com/hjg/pngj/ChunkSeqReader;->feedFromInputStream(Ljava/io/InputStream;Z)V

    .line 385
    return-void
.end method

.method public feedFromInputStream(Ljava/io/InputStream;Z)V
    .locals 2

    .prologue
    .line 372
    new-instance v1, Lar/com/hjg/pngj/BufferedStreamFeeder;

    invoke-direct {v1, p1}, Lar/com/hjg/pngj/BufferedStreamFeeder;-><init>(Ljava/io/InputStream;)V

    .line 373
    invoke-virtual {v1, p2}, Lar/com/hjg/pngj/BufferedStreamFeeder;->setCloseStream(Z)V

    .line 375
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Lar/com/hjg/pngj/BufferedStreamFeeder;->hasMoreToFeed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    invoke-virtual {v1, p0}, Lar/com/hjg/pngj/BufferedStreamFeeder;->feed(Lar/com/hjg/pngj/IBytesConsumer;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 378
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lar/com/hjg/pngj/ChunkSeqReader;->close()V

    .line 379
    invoke-virtual {v1}, Lar/com/hjg/pngj/BufferedStreamFeeder;->close()V

    throw v0

    .line 378
    :cond_0
    invoke-virtual {p0}, Lar/com/hjg/pngj/ChunkSeqReader;->close()V

    .line 379
    invoke-virtual {v1}, Lar/com/hjg/pngj/BufferedStreamFeeder;->close()V

    .line 381
    return-void
.end method

.method protected firstChunkId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    const-string v0, "IHDR"

    return-object v0
.end method

.method public getBytesCount()J
    .locals 2

    .prologue
    .line 284
    iget-wide v0, p0, Lar/com/hjg/pngj/ChunkSeqReader;->f:J

    return-wide v0
.end method

.method public getChunkCount()I
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lar/com/hjg/pngj/ChunkSeqReader;->e:I

    return v0
.end method

.method public getCurChunkReader()Lar/com/hjg/pngj/ChunkReader;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lar/com/hjg/pngj/ChunkSeqReader;->h:Lar/com/hjg/pngj/ChunkReader;

    return-object v0
.end method

.method public getCurReaderDeflatedSet()Lar/com/hjg/pngj/DeflatedChunksSet;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lar/com/hjg/pngj/ChunkSeqReader;->g:Lar/com/hjg/pngj/DeflatedChunksSet;

    return-object v0
.end method

.method public getIdatBytes()J
    .locals 2

    .prologue
    .line 342
    iget-wide v0, p0, Lar/com/hjg/pngj/ChunkSeqReader;->i:J

    return-wide v0
.end method

.method public isAtChunkBoundary()Z
    .locals 4

    .prologue
    .line 323
    iget-wide v0, p0, Lar/com/hjg/pngj/ChunkSeqReader;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lar/com/hjg/pngj/ChunkSeqReader;->f:J

    const-wide/16 v2, 0x8

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lar/com/hjg/pngj/ChunkSeqReader;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lar/com/hjg/pngj/ChunkSeqReader;->h:Lar/com/hjg/pngj/ChunkReader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lar/com/hjg/pngj/ChunkSeqReader;->h:Lar/com/hjg/pngj/ChunkReader;

    invoke-virtual {v0}, Lar/com/hjg/pngj/ChunkReader;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 277
    iget-boolean v0, p0, Lar/com/hjg/pngj/ChunkSeqReader;->d:Z

    return v0
.end method

.method protected isIdatKind(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    return v0
.end method

.method public isSignatureDone()Z
    .locals 1

    .prologue
    .line 270
    iget-boolean v0, p0, Lar/com/hjg/pngj/ChunkSeqReader;->c:Z

    return v0
.end method

.method protected postProcessChunk(Lar/com/hjg/pngj/ChunkReader;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 211
    iget v0, p0, Lar/com/hjg/pngj/ChunkSeqReader;->e:I

    if-ne v0, v2, :cond_0

    .line 212
    invoke-virtual {p0}, Lar/com/hjg/pngj/ChunkSeqReader;->firstChunkId()Ljava/lang/String;

    move-result-object v0

    .line 213
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lar/com/hjg/pngj/ChunkReader;->getChunkRaw()Lar/com/hjg/pngj/chunks/ChunkRaw;

    move-result-object v1

    iget-object v1, v1, Lar/com/hjg/pngj/chunks/ChunkRaw;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Lar/com/hjg/pngj/PngjInputException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad first chunk: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lar/com/hjg/pngj/ChunkReader;->getChunkRaw()Lar/com/hjg/pngj/chunks/ChunkRaw;

    move-result-object v2

    iget-object v2, v2, Lar/com/hjg/pngj/chunks/ChunkRaw;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lar/com/hjg/pngj/ChunkSeqReader;->firstChunkId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_0
    invoke-virtual {p1}, Lar/com/hjg/pngj/ChunkReader;->getChunkRaw()Lar/com/hjg/pngj/chunks/ChunkRaw;

    move-result-object v0

    iget-object v0, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->id:Ljava/lang/String;

    invoke-virtual {p0}, Lar/com/hjg/pngj/ChunkSeqReader;->endChunkId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    iput-boolean v2, p0, Lar/com/hjg/pngj/ChunkSeqReader;->d:Z

    .line 219
    :cond_1
    return-void
.end method

.method protected shouldCheckCrc(ILjava/lang/String;)Z
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x1

    return v0
.end method

.method protected shouldSkipContent(ILjava/lang/String;)Z
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x0

    return v0
.end method

.method protected startNewChunk(ILjava/lang/String;J)V
    .locals 13

    .prologue
    .line 150
    const-string v0, "IDAT"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-wide v0, p0, Lar/com/hjg/pngj/ChunkSeqReader;->i:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lar/com/hjg/pngj/ChunkSeqReader;->i:J

    .line 152
    :cond_0
    invoke-virtual {p0, p1, p2}, Lar/com/hjg/pngj/ChunkSeqReader;->shouldCheckCrc(ILjava/lang/String;)Z

    move-result v5

    .line 153
    invoke-virtual {p0, p1, p2}, Lar/com/hjg/pngj/ChunkSeqReader;->shouldSkipContent(ILjava/lang/String;)Z

    move-result v12

    .line 154
    invoke-virtual {p0, p2}, Lar/com/hjg/pngj/ChunkSeqReader;->isIdatKind(Ljava/lang/String;)Z

    move-result v1

    .line 156
    const/4 v0, 0x0

    .line 157
    iget-object v2, p0, Lar/com/hjg/pngj/ChunkSeqReader;->g:Lar/com/hjg/pngj/DeflatedChunksSet;

    if-eqz v2, :cond_1

    .line 158
    iget-object v0, p0, Lar/com/hjg/pngj/ChunkSeqReader;->g:Lar/com/hjg/pngj/DeflatedChunksSet;

    invoke-virtual {v0, p2}, Lar/com/hjg/pngj/DeflatedChunksSet;->ackNextChunkId(Ljava/lang/String;)Z

    move-result v0

    .line 159
    :cond_1
    if-eqz v1, :cond_5

    if-nez v12, :cond_5

    .line 160
    if-nez v0, :cond_3

    .line 161
    iget-object v0, p0, Lar/com/hjg/pngj/ChunkSeqReader;->g:Lar/com/hjg/pngj/DeflatedChunksSet;

    if-eqz v0, :cond_2

    .line 162
    new-instance v0, Lar/com/hjg/pngj/PngjInputException;

    const-string v1, "too many IDAT (or idatlike) chunks"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_2
    invoke-virtual {p0, p2}, Lar/com/hjg/pngj/ChunkSeqReader;->createIdatSet(Ljava/lang/String;)Lar/com/hjg/pngj/DeflatedChunksSet;

    move-result-object v0

    iput-object v0, p0, Lar/com/hjg/pngj/ChunkSeqReader;->g:Lar/com/hjg/pngj/DeflatedChunksSet;

    .line 165
    :cond_3
    new-instance v1, Lar/com/hjg/pngj/ChunkSeqReader$1;

    iget-object v8, p0, Lar/com/hjg/pngj/ChunkSeqReader;->g:Lar/com/hjg/pngj/DeflatedChunksSet;

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-wide/from16 v6, p3

    invoke-direct/range {v1 .. v8}, Lar/com/hjg/pngj/ChunkSeqReader$1;-><init>(Lar/com/hjg/pngj/ChunkSeqReader;ILjava/lang/String;ZJLar/com/hjg/pngj/DeflatedChunksSet;)V

    iput-object v1, p0, Lar/com/hjg/pngj/ChunkSeqReader;->h:Lar/com/hjg/pngj/ChunkReader;

    .line 176
    :cond_4
    :goto_0
    return-void

    :cond_5
    move-object v7, p0

    move-object v8, p2

    move v9, p1

    move-wide/from16 v10, p3

    .line 172
    invoke-virtual/range {v7 .. v12}, Lar/com/hjg/pngj/ChunkSeqReader;->createChunkReaderForNewChunk(Ljava/lang/String;IJZ)Lar/com/hjg/pngj/ChunkReader;

    move-result-object v0

    iput-object v0, p0, Lar/com/hjg/pngj/ChunkSeqReader;->h:Lar/com/hjg/pngj/ChunkReader;

    .line 173
    if-nez v5, :cond_4

    .line 174
    iget-object v0, p0, Lar/com/hjg/pngj/ChunkSeqReader;->h:Lar/com/hjg/pngj/ChunkReader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lar/com/hjg/pngj/ChunkReader;->setCrcCheck(Z)V

    goto :goto_0
.end method
