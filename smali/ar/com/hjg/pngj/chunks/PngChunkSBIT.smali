.class public Lar/com/hjg/pngj/chunks/PngChunkSBIT;
.super Lar/com/hjg/pngj/chunks/PngChunkSingle;
.source "SourceFile"


# static fields
.field public static final ID:Ljava/lang/String; = "sBIT"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/ImageInfo;)V
    .locals 1

    .prologue
    .line 23
    const-string v0, "sBIT"

    invoke-direct {p0, v0, p1}, Lar/com/hjg/pngj/chunks/PngChunkSingle;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/ImageInfo;)V

    .line 24
    return-void
.end method

.method private a()I
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->greyscale:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 33
    :goto_0
    iget-object v1, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v1, v1, Lar/com/hjg/pngj/ImageInfo;->alpha:Z

    if-eqz v1, :cond_0

    .line 34
    add-int/lit8 v0, v0, 0x1

    .line 35
    :cond_0
    return v0

    .line 32
    :cond_1
    const/4 v0, 0x3

    goto :goto_0
.end method


# virtual methods
.method public createRawChunk()Lar/com/hjg/pngj/chunks/ChunkRaw;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 57
    .line 58
    invoke-direct {p0}, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->a()I

    move-result v0

    invoke-virtual {p0, v0, v3}, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->createEmptyChunk(IZ)Lar/com/hjg/pngj/chunks/ChunkRaw;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v1, v1, Lar/com/hjg/pngj/ImageInfo;->greyscale:Z

    if-eqz v1, :cond_1

    .line 60
    iget-object v1, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    iget v2, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->a:I

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    .line 61
    iget-object v1, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v1, v1, Lar/com/hjg/pngj/ImageInfo;->alpha:Z

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    iget v2, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->b:I

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    .line 70
    :cond_0
    :goto_0
    return-object v0

    .line 64
    :cond_1
    iget-object v1, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    iget v2, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->c:I

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    .line 65
    iget-object v1, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    iget v2, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->d:I

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    .line 66
    iget-object v1, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/4 v2, 0x2

    iget v3, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->e:I

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 67
    iget-object v1, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v1, v1, Lar/com/hjg/pngj/ImageInfo;->alpha:Z

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/4 v2, 0x3

    iget v3, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->b:I

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    goto :goto_0
.end method

.method public getAlphasb()I
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->alpha:Z

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    const-string v1, "only images with alpha support this"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    iget v0, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->b:I

    return v0
.end method

.method public getGraysb()I
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->greyscale:Z

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    const-string v1, "only greyscale images support this"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    iget v0, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->a:I

    return v0
.end method

.method public getOrderingConstraint()Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->BEFORE_PLTE_AND_IDAT:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    return-object v0
.end method

.method public getRGB()[I
    .locals 3

    .prologue
    .line 110
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->greyscale:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    if-eqz v0, :cond_1

    .line 111
    :cond_0
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    const-string v1, "only rgb or rgba images support this"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_1
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->c:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->d:I

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->e:I

    aput v2, v0, v1

    return-object v0
.end method

.method public parseFromRaw(Lar/com/hjg/pngj/chunks/ChunkRaw;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    iget v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->len:I

    invoke-direct {p0}, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->a()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 41
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad chunk length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->greyscale:Z

    if-eqz v0, :cond_2

    .line 43
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    invoke-static {v0, v2}, Lar/com/hjg/pngj/PngHelperInternal;->readInt1fromByte([BI)I

    move-result v0

    iput v0, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->a:I

    .line 44
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->alpha:Z

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    invoke-static {v0, v3}, Lar/com/hjg/pngj/PngHelperInternal;->readInt1fromByte([BI)I

    move-result v0

    iput v0, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->b:I

    .line 53
    :cond_1
    :goto_0
    return-void

    .line 47
    :cond_2
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    invoke-static {v0, v2}, Lar/com/hjg/pngj/PngHelperInternal;->readInt1fromByte([BI)I

    move-result v0

    iput v0, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->c:I

    .line 48
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    invoke-static {v0, v3}, Lar/com/hjg/pngj/PngHelperInternal;->readInt1fromByte([BI)I

    move-result v0

    iput v0, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->d:I

    .line 49
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lar/com/hjg/pngj/PngHelperInternal;->readInt1fromByte([BI)I

    move-result v0

    iput v0, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->e:I

    .line 50
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->alpha:Z

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lar/com/hjg/pngj/PngHelperInternal;->readInt1fromByte([BI)I

    move-result v0

    iput v0, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->b:I

    goto :goto_0
.end method

.method public setAlphasb(I)V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->alpha:Z

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    const-string v1, "only images with alpha support this"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    iput p1, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->b:I

    .line 89
    return-void
.end method

.method public setGraysb(I)V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->greyscale:Z

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    const-string v1, "only greyscale images support this"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    iput p1, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->a:I

    .line 77
    return-void
.end method

.method public setRGB(III)V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->greyscale:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    if-eqz v0, :cond_1

    .line 103
    :cond_0
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    const-string v1, "only rgb or rgba images support this"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_1
    iput p1, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->c:I

    .line 105
    iput p2, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->d:I

    .line 106
    iput p3, p0, Lar/com/hjg/pngj/chunks/PngChunkSBIT;->e:I

    .line 107
    return-void
.end method
