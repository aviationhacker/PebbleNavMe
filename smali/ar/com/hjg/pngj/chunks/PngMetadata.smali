.class public Lar/com/hjg/pngj/chunks/PngMetadata;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lar/com/hjg/pngj/chunks/ChunksList;

.field private final b:Z


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/chunks/ChunksList;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lar/com/hjg/pngj/chunks/PngMetadata;->a:Lar/com/hjg/pngj/chunks/ChunksList;

    .line 23
    instance-of v0, p1, Lar/com/hjg/pngj/chunks/ChunksListForWrite;

    if-eqz v0, :cond_0

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lar/com/hjg/pngj/chunks/PngMetadata;->b:Z

    .line 28
    :goto_0
    return-void

    .line 26
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lar/com/hjg/pngj/chunks/PngMetadata;->b:Z

    goto :goto_0
.end method

.method private a()Lar/com/hjg/pngj/chunks/ChunksListForWrite;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngMetadata;->a:Lar/com/hjg/pngj/chunks/ChunksList;

    check-cast v0, Lar/com/hjg/pngj/chunks/ChunksListForWrite;

    return-object v0
.end method


# virtual methods
.method public createPLTEChunk()Lar/com/hjg/pngj/chunks/PngChunkPLTE;
    .locals 2

    .prologue
    .line 208
    new-instance v0, Lar/com/hjg/pngj/chunks/PngChunkPLTE;

    iget-object v1, p0, Lar/com/hjg/pngj/chunks/PngMetadata;->a:Lar/com/hjg/pngj/chunks/ChunksList;

    iget-object v1, v1, Lar/com/hjg/pngj/chunks/ChunksList;->b:Lar/com/hjg/pngj/ImageInfo;

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/chunks/PngChunkPLTE;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    .line 209
    invoke-virtual {p0, v0}, Lar/com/hjg/pngj/chunks/PngMetadata;->queueChunk(Lar/com/hjg/pngj/chunks/PngChunk;)V

    .line 210
    return-object v0
.end method

.method public createTRNSChunk()Lar/com/hjg/pngj/chunks/PngChunkTRNS;
    .locals 2

    .prologue
    .line 227
    new-instance v0, Lar/com/hjg/pngj/chunks/PngChunkTRNS;

    iget-object v1, p0, Lar/com/hjg/pngj/chunks/PngMetadata;->a:Lar/com/hjg/pngj/chunks/ChunksList;

    iget-object v1, v1, Lar/com/hjg/pngj/chunks/ChunksList;->b:Lar/com/hjg/pngj/ImageInfo;

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/chunks/PngChunkTRNS;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    .line 228
    invoke-virtual {p0, v0}, Lar/com/hjg/pngj/chunks/PngMetadata;->queueChunk(Lar/com/hjg/pngj/chunks/PngChunk;)V

    .line 229
    return-object v0
.end method

.method public getDpi()[D
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngMetadata;->a:Lar/com/hjg/pngj/chunks/ChunksList;

    const-string v1, "pHYs"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lar/com/hjg/pngj/chunks/ChunksList;->getById1(Ljava/lang/String;Z)Lar/com/hjg/pngj/chunks/PngChunk;

    move-result-object v0

    .line 67
    if-nez v0, :cond_0

    .line 68
    const/4 v0, 0x2

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    .line 70
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lar/com/hjg/pngj/chunks/PngChunkPHYS;

    invoke-virtual {v0}, Lar/com/hjg/pngj/chunks/PngChunkPHYS;->getAsDpi2()[D

    move-result-object v0

    goto :goto_0

    .line 68
    nop

    :array_0
    .array-data 8
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
    .end array-data
.end method

.method public getPLTE()Lar/com/hjg/pngj/chunks/PngChunkPLTE;
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngMetadata;->a:Lar/com/hjg/pngj/chunks/ChunksList;

    const-string v1, "PLTE"

    invoke-virtual {v0, v1}, Lar/com/hjg/pngj/chunks/ChunksList;->getById1(Ljava/lang/String;)Lar/com/hjg/pngj/chunks/PngChunk;

    move-result-object v0

    check-cast v0, Lar/com/hjg/pngj/chunks/PngChunkPLTE;

    return-object v0
.end method

.method public getTRNS()Lar/com/hjg/pngj/chunks/PngChunkTRNS;
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngMetadata;->a:Lar/com/hjg/pngj/chunks/ChunksList;

    const-string v1, "tRNS"

    invoke-virtual {v0, v1}, Lar/com/hjg/pngj/chunks/ChunksList;->getById1(Ljava/lang/String;)Lar/com/hjg/pngj/chunks/PngChunk;

    move-result-object v0

    check-cast v0, Lar/com/hjg/pngj/chunks/PngChunkTRNS;

    return-object v0
.end method

.method public getTime()Lar/com/hjg/pngj/chunks/PngChunkTIME;
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngMetadata;->a:Lar/com/hjg/pngj/chunks/ChunksList;

    const-string v1, "tIME"

    invoke-virtual {v0, v1}, Lar/com/hjg/pngj/chunks/ChunksList;->getById1(Ljava/lang/String;)Lar/com/hjg/pngj/chunks/PngChunk;

    move-result-object v0

    check-cast v0, Lar/com/hjg/pngj/chunks/PngChunkTIME;

    return-object v0
.end method

.method public getTimeAsString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    invoke-virtual {p0}, Lar/com/hjg/pngj/chunks/PngMetadata;->getTime()Lar/com/hjg/pngj/chunks/PngChunkTIME;

    move-result-object v0

    .line 124
    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lar/com/hjg/pngj/chunks/PngChunkTIME;->getAsString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTxtForKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 185
    invoke-virtual {p0, p1}, Lar/com/hjg/pngj/chunks/PngMetadata;->getTxtsForKey(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 186
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    const-string v0, ""

    .line 191
    :goto_0
    return-object v0

    .line 188
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lar/com/hjg/pngj/chunks/PngChunkTextVar;

    .line 190
    invoke-virtual {v0}, Lar/com/hjg/pngj/chunks/PngChunkTextVar;->getVal()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 191
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTxtsForKey(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lar/com/hjg/pngj/chunks/PngChunkTextVar;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 173
    iget-object v1, p0, Lar/com/hjg/pngj/chunks/PngMetadata;->a:Lar/com/hjg/pngj/chunks/ChunksList;

    const-string v2, "tEXt"

    invoke-virtual {v1, v2, p1}, Lar/com/hjg/pngj/chunks/ChunksList;->getById(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 174
    iget-object v1, p0, Lar/com/hjg/pngj/chunks/PngMetadata;->a:Lar/com/hjg/pngj/chunks/ChunksList;

    const-string v2, "zTXt"

    invoke-virtual {v1, v2, p1}, Lar/com/hjg/pngj/chunks/ChunksList;->getById(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 175
    iget-object v1, p0, Lar/com/hjg/pngj/chunks/PngMetadata;->a:Lar/com/hjg/pngj/chunks/ChunksList;

    const-string v2, "iTXt"

    invoke-virtual {v1, v2, p1}, Lar/com/hjg/pngj/chunks/ChunksList;->getById(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 176
    return-object v0
.end method

.method public queueChunk(Lar/com/hjg/pngj/chunks/PngChunk;)V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lar/com/hjg/pngj/chunks/PngMetadata;->queueChunk(Lar/com/hjg/pngj/chunks/PngChunk;Z)V

    .line 52
    return-void
.end method

.method public queueChunk(Lar/com/hjg/pngj/chunks/PngChunk;Z)V
    .locals 3

    .prologue
    .line 37
    invoke-direct {p0}, Lar/com/hjg/pngj/chunks/PngMetadata;->a()Lar/com/hjg/pngj/chunks/ChunksListForWrite;

    move-result-object v0

    .line 38
    iget-boolean v1, p0, Lar/com/hjg/pngj/chunks/PngMetadata;->b:Z

    if-eqz v1, :cond_0

    .line 39
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    const-string v1, "cannot set chunk : readonly metadata"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    if-eqz p2, :cond_1

    .line 41
    invoke-virtual {v0}, Lar/com/hjg/pngj/chunks/ChunksListForWrite;->getQueuedChunks()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lar/com/hjg/pngj/chunks/PngMetadata$1;

    invoke-direct {v2, p0, p1}, Lar/com/hjg/pngj/chunks/PngMetadata$1;-><init>(Lar/com/hjg/pngj/chunks/PngMetadata;Lar/com/hjg/pngj/chunks/PngChunk;)V

    invoke-static {v1, v2}, Lar/com/hjg/pngj/chunks/ChunkHelper;->trimList(Ljava/util/List;Lar/com/hjg/pngj/chunks/ChunkPredicate;)I

    .line 47
    :cond_1
    invoke-virtual {v0, p1}, Lar/com/hjg/pngj/chunks/ChunksListForWrite;->queue(Lar/com/hjg/pngj/chunks/PngChunk;)Z

    .line 48
    return-void
.end method

.method public setDpi(D)V
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0, p1, p2, p1, p2}, Lar/com/hjg/pngj/chunks/PngMetadata;->setDpi(DD)V

    .line 75
    return-void
.end method

.method public setDpi(DD)V
    .locals 3

    .prologue
    .line 78
    new-instance v0, Lar/com/hjg/pngj/chunks/PngChunkPHYS;

    iget-object v1, p0, Lar/com/hjg/pngj/chunks/PngMetadata;->a:Lar/com/hjg/pngj/chunks/ChunksList;

    iget-object v1, v1, Lar/com/hjg/pngj/chunks/ChunksList;->b:Lar/com/hjg/pngj/ImageInfo;

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/chunks/PngChunkPHYS;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    .line 79
    invoke-virtual {v0, p1, p2, p3, p4}, Lar/com/hjg/pngj/chunks/PngChunkPHYS;->setAsDpi2(DD)V

    .line 80
    invoke-virtual {p0, v0}, Lar/com/hjg/pngj/chunks/PngMetadata;->queueChunk(Lar/com/hjg/pngj/chunks/PngChunk;)V

    .line 81
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)Lar/com/hjg/pngj/chunks/PngChunkTextVar;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 159
    invoke-virtual {p0, p1, p2, v0, v0}, Lar/com/hjg/pngj/chunks/PngMetadata;->setText(Ljava/lang/String;Ljava/lang/String;ZZ)Lar/com/hjg/pngj/chunks/PngChunkTextVar;

    move-result-object v0

    return-object v0
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;ZZ)Lar/com/hjg/pngj/chunks/PngChunkTextVar;
    .locals 2

    .prologue
    .line 140
    if-eqz p4, :cond_0

    if-nez p3, :cond_0

    .line 141
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    const-string v1, "cannot compress non latin text"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_0
    if-eqz p3, :cond_2

    .line 144
    if-eqz p4, :cond_1

    .line 145
    new-instance v1, Lar/com/hjg/pngj/chunks/PngChunkZTXT;

    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngMetadata;->a:Lar/com/hjg/pngj/chunks/ChunksList;

    iget-object v0, v0, Lar/com/hjg/pngj/chunks/ChunksList;->b:Lar/com/hjg/pngj/ImageInfo;

    invoke-direct {v1, v0}, Lar/com/hjg/pngj/chunks/PngChunkZTXT;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    .line 153
    :goto_0
    invoke-virtual {v1, p1, p2}, Lar/com/hjg/pngj/chunks/PngChunkTextVar;->setKeyVal(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lar/com/hjg/pngj/chunks/PngMetadata;->queueChunk(Lar/com/hjg/pngj/chunks/PngChunk;Z)V

    .line 155
    return-object v1

    .line 147
    :cond_1
    new-instance v1, Lar/com/hjg/pngj/chunks/PngChunkTEXT;

    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngMetadata;->a:Lar/com/hjg/pngj/chunks/ChunksList;

    iget-object v0, v0, Lar/com/hjg/pngj/chunks/ChunksList;->b:Lar/com/hjg/pngj/ImageInfo;

    invoke-direct {v1, v0}, Lar/com/hjg/pngj/chunks/PngChunkTEXT;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    goto :goto_0

    .line 150
    :cond_2
    new-instance v1, Lar/com/hjg/pngj/chunks/PngChunkITXT;

    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngMetadata;->a:Lar/com/hjg/pngj/chunks/ChunksList;

    iget-object v0, v0, Lar/com/hjg/pngj/chunks/ChunksList;->b:Lar/com/hjg/pngj/ImageInfo;

    invoke-direct {v1, v0}, Lar/com/hjg/pngj/chunks/PngChunkITXT;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    move-object v0, v1

    .line 151
    check-cast v0, Lar/com/hjg/pngj/chunks/PngChunkITXT;

    invoke-virtual {v0, p1}, Lar/com/hjg/pngj/chunks/PngChunkITXT;->setLangtag(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setTimeNow()Lar/com/hjg/pngj/chunks/PngChunkTIME;
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lar/com/hjg/pngj/chunks/PngMetadata;->setTimeNow(I)Lar/com/hjg/pngj/chunks/PngChunkTIME;

    move-result-object v0

    return-object v0
.end method

.method public setTimeNow(I)Lar/com/hjg/pngj/chunks/PngChunkTIME;
    .locals 2

    .prologue
    .line 92
    new-instance v0, Lar/com/hjg/pngj/chunks/PngChunkTIME;

    iget-object v1, p0, Lar/com/hjg/pngj/chunks/PngMetadata;->a:Lar/com/hjg/pngj/chunks/ChunksList;

    iget-object v1, v1, Lar/com/hjg/pngj/chunks/ChunksList;->b:Lar/com/hjg/pngj/ImageInfo;

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/chunks/PngChunkTIME;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    .line 93
    invoke-virtual {v0, p1}, Lar/com/hjg/pngj/chunks/PngChunkTIME;->setNow(I)V

    .line 94
    invoke-virtual {p0, v0}, Lar/com/hjg/pngj/chunks/PngMetadata;->queueChunk(Lar/com/hjg/pngj/chunks/PngChunk;)V

    .line 95
    return-object v0
.end method

.method public setTimeYMDHMS(IIIIII)Lar/com/hjg/pngj/chunks/PngChunkTIME;
    .locals 7

    .prologue
    .line 109
    new-instance v0, Lar/com/hjg/pngj/chunks/PngChunkTIME;

    iget-object v1, p0, Lar/com/hjg/pngj/chunks/PngMetadata;->a:Lar/com/hjg/pngj/chunks/ChunksList;

    iget-object v1, v1, Lar/com/hjg/pngj/chunks/ChunksList;->b:Lar/com/hjg/pngj/ImageInfo;

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/chunks/PngChunkTIME;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 110
    invoke-virtual/range {v0 .. v6}, Lar/com/hjg/pngj/chunks/PngChunkTIME;->setYMDHMS(IIIIII)V

    .line 111
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lar/com/hjg/pngj/chunks/PngMetadata;->queueChunk(Lar/com/hjg/pngj/chunks/PngChunk;Z)V

    .line 112
    return-object v0
.end method
