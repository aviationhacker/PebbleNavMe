.class public Lar/com/hjg/pngj/ChunkSeqReaderPng;
.super Lar/com/hjg/pngj/ChunkSeqReader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lar/com/hjg/pngj/ChunkSeqReaderPng$1;
    }
.end annotation


# instance fields
.field private a:J

.field private b:Z

.field private c:Z

.field protected final callbackMode:Z

.field protected chunksList:Lar/com/hjg/pngj/chunks/ChunksList;

.field protected currentChunkGroup:I

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected deinterlacer:Lar/com/hjg/pngj/Deinterlacer;

.field private e:J

.field private f:J

.field private g:J

.field private h:Lar/com/hjg/pngj/IChunkFactory;

.field private i:Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;

.field protected imageInfo:Lar/com/hjg/pngj/ImageInfo;


# direct methods
.method public constructor <init>(Z)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 50
    invoke-direct {p0}, Lar/com/hjg/pngj/ChunkSeqReader;-><init>()V

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->currentChunkGroup:I

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->chunksList:Lar/com/hjg/pngj/chunks/ChunksList;

    .line 35
    iput-wide v2, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->a:J

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->b:Z

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->c:Z

    .line 42
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->d:Ljava/util/Set;

    .line 43
    iput-wide v2, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->e:J

    .line 44
    iput-wide v2, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->f:J

    .line 45
    iput-wide v2, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->g:J

    .line 47
    sget-object v0, Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;->LOAD_CHUNK_ALWAYS:Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;

    iput-object v0, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->i:Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;

    .line 51
    iput-boolean p1, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->callbackMode:Z

    .line 52
    new-instance v0, Lar/com/hjg/pngj/chunks/ChunkFactory;

    invoke-direct {v0}, Lar/com/hjg/pngj/chunks/ChunkFactory;-><init>()V

    iput-object v0, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->h:Lar/com/hjg/pngj/IChunkFactory;

    .line 53
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x4

    const/4 v1, 0x1

    .line 56
    const-string v0, "IHDR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    iget v0, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->currentChunkGroup:I

    if-gez v0, :cond_0

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->currentChunkGroup:I

    .line 84
    :goto_0
    return-void

    .line 60
    :cond_0
    new-instance v0, Lar/com/hjg/pngj/PngjInputException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected chunk "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_1
    const-string v0, "PLTE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 62
    iget v0, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->currentChunkGroup:I

    if-eqz v0, :cond_2

    iget v0, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->currentChunkGroup:I

    if-ne v0, v1, :cond_3

    .line 63
    :cond_2
    const/4 v0, 0x2

    iput v0, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->currentChunkGroup:I

    goto :goto_0

    .line 65
    :cond_3
    new-instance v0, Lar/com/hjg/pngj/PngjInputException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected chunk "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_4
    const-string v0, "IDAT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 67
    iget v0, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->currentChunkGroup:I

    if-ltz v0, :cond_5

    iget v0, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->currentChunkGroup:I

    if-gt v0, v2, :cond_5

    .line 68
    iput v2, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->currentChunkGroup:I

    goto :goto_0

    .line 70
    :cond_5
    new-instance v0, Lar/com/hjg/pngj/PngjInputException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected chunk "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_6
    const-string v0, "IEND"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 72
    iget v0, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->currentChunkGroup:I

    if-lt v0, v2, :cond_7

    .line 73
    const/4 v0, 0x6

    iput v0, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->currentChunkGroup:I

    goto/16 :goto_0

    .line 75
    :cond_7
    new-instance v0, Lar/com/hjg/pngj/PngjInputException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected chunk "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_8
    iget v0, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->currentChunkGroup:I

    if-gt v0, v1, :cond_9

    .line 78
    iput v1, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->currentChunkGroup:I

    goto/16 :goto_0

    .line 79
    :cond_9
    iget v0, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->currentChunkGroup:I

    if-gt v0, v3, :cond_a

    .line 80
    iput v3, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->currentChunkGroup:I

    goto/16 :goto_0

    .line 82
    :cond_a
    const/4 v0, 0x5

    iput v0, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->currentChunkGroup:I

    goto/16 :goto_0
.end method


# virtual methods
.method public addChunkToSkip(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 130
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 225
    iget v0, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->currentChunkGroup:I

    if-eq v0, v1, :cond_0

    .line 226
    iput v1, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->currentChunkGroup:I

    .line 227
    :cond_0
    invoke-super {p0}, Lar/com/hjg/pngj/ChunkSeqReader;->close()V

    .line 228
    return-void
.end method

.method public consume([BII)I
    .locals 1

    .prologue
    .line 185
    invoke-super {p0, p1, p2, p3}, Lar/com/hjg/pngj/ChunkSeqReader;->consume([BII)I

    move-result v0

    return v0
.end method

.method protected createIdatSet(Ljava/lang/String;)Lar/com/hjg/pngj/DeflatedChunksSet;
    .locals 3

    .prologue
    .line 168
    new-instance v0, Lar/com/hjg/pngj/IdatSet;

    iget-object v1, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->imageInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-object v2, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->deinterlacer:Lar/com/hjg/pngj/Deinterlacer;

    invoke-direct {v0, p1, v1, v2}, Lar/com/hjg/pngj/IdatSet;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/ImageInfo;Lar/com/hjg/pngj/Deinterlacer;)V

    .line 169
    iget-boolean v1, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->callbackMode:Z

    invoke-virtual {v0, v1}, Lar/com/hjg/pngj/IdatSet;->setCallbackMode(Z)V

    .line 170
    return-object v0
.end method

.method public firstChunksNotYetRead()Z
    .locals 2

    .prologue
    .line 133
    invoke-virtual {p0}, Lar/com/hjg/pngj/ChunkSeqReaderPng;->getCurrentChunkGroup()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBytesChunksLoaded()J
    .locals 2

    .prologue
    .line 115
    iget-wide v0, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->a:J

    return-wide v0
.end method

.method public getChunks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lar/com/hjg/pngj/chunks/PngChunk;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    iget-object v0, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->chunksList:Lar/com/hjg/pngj/chunks/ChunksList;

    invoke-virtual {v0}, Lar/com/hjg/pngj/chunks/ChunksList;->getChunks()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getChunksToSkip()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 276
    iget-object v0, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->d:Ljava/util/Set;

    return-object v0
.end method

.method public getCurrentChunkGroup()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->currentChunkGroup:I

    return v0
.end method

.method public getDeinterlacer()Lar/com/hjg/pngj/Deinterlacer;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->deinterlacer:Lar/com/hjg/pngj/Deinterlacer;

    return-object v0
.end method

.method public getIdatSet()Lar/com/hjg/pngj/IdatSet;
    .locals 2

    .prologue
    .line 174
    invoke-virtual {p0}, Lar/com/hjg/pngj/ChunkSeqReaderPng;->getCurReaderDeflatedSet()Lar/com/hjg/pngj/DeflatedChunksSet;

    move-result-object v0

    .line 175
    instance-of v1, v0, Lar/com/hjg/pngj/IdatSet;

    if-eqz v1, :cond_0

    check-cast v0, Lar/com/hjg/pngj/IdatSet;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImageInfo()Lar/com/hjg/pngj/ImageInfo;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->imageInfo:Lar/com/hjg/pngj/ImageInfo;

    return-object v0
.end method

.method public getMaxBytesMetadata()J
    .locals 2

    .prologue
    .line 247
    iget-wide v0, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->g:J

    return-wide v0
.end method

.method public getMaxTotalBytesRead()J
    .locals 2

    .prologue
    .line 255
    iget-wide v0, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->e:J

    return-wide v0
.end method

.method public getSkipChunkMaxSize()J
    .locals 2

    .prologue
    .line 239
    iget-wide v0, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->f:J

    return-wide v0
.end method

.method public isCallbackMode()Z
    .locals 1

    .prologue
    .line 272
    iget-boolean v0, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->callbackMode:Z

    return v0
.end method

.method public isCheckCrc()Z
    .locals 1

    .prologue
    .line 264
    iget-boolean v0, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->b:Z

    return v0
.end method

.method protected isIdatKind(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 180
    const-string v0, "IDAT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isInterlaced()Z
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->deinterlacer:Lar/com/hjg/pngj/Deinterlacer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected postProcessChunk(Lar/com/hjg/pngj/ChunkReader;)V
    .locals 3

    .prologue
    .line 138
    invoke-super {p0, p1}, Lar/com/hjg/pngj/ChunkSeqReader;->postProcessChunk(Lar/com/hjg/pngj/ChunkReader;)V

    .line 139
    invoke-virtual {p1}, Lar/com/hjg/pngj/ChunkReader;->getChunkRaw()Lar/com/hjg/pngj/chunks/ChunkRaw;

    move-result-object v0

    iget-object v0, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->id:Ljava/lang/String;

    const-string v1, "IHDR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    new-instance v0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/chunks/PngChunkIHDR;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    .line 141
    invoke-virtual {p1}, Lar/com/hjg/pngj/ChunkReader;->getChunkRaw()Lar/com/hjg/pngj/chunks/ChunkRaw;

    move-result-object v1

    invoke-virtual {v0, v1}, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->parseFromRaw(Lar/com/hjg/pngj/chunks/ChunkRaw;)V

    .line 142
    invoke-virtual {v0}, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->createImageInfo()Lar/com/hjg/pngj/ImageInfo;

    move-result-object v1

    iput-object v1, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->imageInfo:Lar/com/hjg/pngj/ImageInfo;

    .line 143
    invoke-virtual {v0}, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->isInterlaced()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    new-instance v0, Lar/com/hjg/pngj/Deinterlacer;

    iget-object v1, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->imageInfo:Lar/com/hjg/pngj/ImageInfo;

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/Deinterlacer;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    iput-object v0, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->deinterlacer:Lar/com/hjg/pngj/Deinterlacer;

    .line 145
    :cond_0
    new-instance v0, Lar/com/hjg/pngj/chunks/ChunksList;

    iget-object v1, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->imageInfo:Lar/com/hjg/pngj/ImageInfo;

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/chunks/ChunksList;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    iput-object v0, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->chunksList:Lar/com/hjg/pngj/chunks/ChunksList;

    .line 147
    :cond_1
    iget-object v0, p1, Lar/com/hjg/pngj/ChunkReader;->mode:Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

    sget-object v1, Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;->BUFFER:Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

    if-eq v0, v1, :cond_2

    iget-boolean v0, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->c:Z

    if-eqz v0, :cond_3

    .line 148
    :cond_2
    iget-object v0, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->h:Lar/com/hjg/pngj/IChunkFactory;

    invoke-virtual {p1}, Lar/com/hjg/pngj/ChunkReader;->getChunkRaw()Lar/com/hjg/pngj/chunks/ChunkRaw;

    move-result-object v1

    invoke-virtual {p0}, Lar/com/hjg/pngj/ChunkSeqReaderPng;->getImageInfo()Lar/com/hjg/pngj/ImageInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lar/com/hjg/pngj/IChunkFactory;->createChunk(Lar/com/hjg/pngj/chunks/ChunkRaw;Lar/com/hjg/pngj/ImageInfo;)Lar/com/hjg/pngj/chunks/PngChunk;

    move-result-object v0

    .line 149
    iget-object v1, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->chunksList:Lar/com/hjg/pngj/chunks/ChunksList;

    iget v2, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->currentChunkGroup:I

    invoke-virtual {v1, v0, v2}, Lar/com/hjg/pngj/chunks/ChunksList;->appendReadChunk(Lar/com/hjg/pngj/chunks/PngChunk;I)V

    .line 151
    :cond_3
    invoke-virtual {p0}, Lar/com/hjg/pngj/ChunkSeqReaderPng;->isDone()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 152
    invoke-virtual {p0}, Lar/com/hjg/pngj/ChunkSeqReaderPng;->processEndPng()V

    .line 154
    :cond_4
    return-void
.end method

.method protected processEndPng()V
    .locals 0

    .prologue
    .line 203
    return-void
.end method

.method public setCheckCrc(Z)V
    .locals 0

    .prologue
    .line 268
    iput-boolean p1, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->b:Z

    .line 269
    return-void
.end method

.method public setChunkFactory(Lar/com/hjg/pngj/IChunkFactory;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->h:Lar/com/hjg/pngj/IChunkFactory;

    .line 196
    return-void
.end method

.method public setChunkLoadBehaviour(Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->i:Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;

    .line 281
    return-void
.end method

.method public varargs setChunksToSkip([Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 123
    iget-object v0, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 124
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 125
    iget-object v3, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->d:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :cond_0
    return-void
.end method

.method public setIncludeNonBufferedChunks(Z)V
    .locals 0

    .prologue
    .line 294
    iput-boolean p1, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->c:Z

    .line 295
    return-void
.end method

.method public setMaxBytesMetadata(J)V
    .locals 1

    .prologue
    .line 251
    iput-wide p1, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->g:J

    .line 252
    return-void
.end method

.method public setMaxTotalBytesRead(J)V
    .locals 1

    .prologue
    .line 235
    iput-wide p1, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->e:J

    .line 236
    return-void
.end method

.method public setSkipChunkMaxSize(J)V
    .locals 1

    .prologue
    .line 243
    iput-wide p1, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->f:J

    .line 244
    return-void
.end method

.method protected shouldCheckCrc(ILjava/lang/String;)Z
    .locals 1

    .prologue
    .line 260
    iget-boolean v0, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->b:Z

    return v0
.end method

.method public shouldSkipContent(ILjava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    const-wide/16 v6, 0x0

    const/4 v0, 0x1

    .line 88
    invoke-super {p0, p1, p2}, Lar/com/hjg/pngj/ChunkSeqReader;->shouldSkipContent(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 111
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 90
    :cond_1
    invoke-static {p2}, Lar/com/hjg/pngj/chunks/ChunkHelper;->isCritical(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 91
    goto :goto_0

    .line 92
    :cond_2
    iget-wide v2, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->e:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_3

    int-to-long v2, p1

    invoke-virtual {p0}, Lar/com/hjg/pngj/ChunkSeqReaderPng;->getBytesCount()J

    move-result-wide v4

    add-long/2addr v2, v4

    iget-wide v4, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->e:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 93
    new-instance v0, Lar/com/hjg/pngj/PngjInputException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Maximum total bytes to read exceeeded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->e:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " offset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lar/com/hjg/pngj/ChunkSeqReaderPng;->getBytesCount()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_3
    iget-object v2, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->d:Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 97
    iget-wide v2, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->f:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_4

    int-to-long v2, p1

    iget-wide v4, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->f:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 99
    :cond_4
    iget-wide v2, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->g:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_5

    int-to-long v2, p1

    iget-wide v4, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->g:J

    iget-wide v6, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->a:J

    sub-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 101
    :cond_5
    sget-object v2, Lar/com/hjg/pngj/ChunkSeqReaderPng$1;->a:[I

    iget-object v3, p0, Lar/com/hjg/pngj/ChunkSeqReaderPng;->i:Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;

    invoke-virtual {v3}, Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :cond_6
    move v0, v1

    .line 111
    goto/16 :goto_0

    .line 103
    :pswitch_1
    invoke-static {p2}, Lar/com/hjg/pngj/chunks/ChunkHelper;->isSafeToCopy(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    goto/16 :goto_0

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected startNewChunk(ILjava/lang/String;J)V
    .locals 1

    .prologue
    .line 219
    invoke-direct {p0, p2}, Lar/com/hjg/pngj/ChunkSeqReaderPng;->a(Ljava/lang/String;)V

    .line 220
    invoke-super {p0, p1, p2, p3, p4}, Lar/com/hjg/pngj/ChunkSeqReader;->startNewChunk(ILjava/lang/String;J)V

    .line 221
    return-void
.end method
