.class public Lar/com/hjg/pngj/chunks/PngChunkBKGD;
.super Lar/com/hjg/pngj/chunks/PngChunkSingle;
.source "SourceFile"


# static fields
.field public static final ID:Ljava/lang/String; = "bKGD"


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
    .line 22
    const-string v0, "bKGD"

    invoke-direct {p0, v0, p1}, Lar/com/hjg/pngj/chunks/PngChunkSingle;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/ImageInfo;)V

    .line 23
    return-void
.end method


# virtual methods
.method public createRawChunk()Lar/com/hjg/pngj/chunks/ChunkRaw;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 32
    .line 33
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkBKGD;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->greyscale:Z

    if-eqz v0, :cond_0

    .line 34
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lar/com/hjg/pngj/chunks/PngChunkBKGD;->createEmptyChunk(IZ)Lar/com/hjg/pngj/chunks/ChunkRaw;

    move-result-object v0

    .line 35
    iget v1, p0, Lar/com/hjg/pngj/chunks/PngChunkBKGD;->a:I

    iget-object v2, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    invoke-static {v1, v2, v3}, Lar/com/hjg/pngj/PngHelperInternal;->writeInt2tobytes(I[BI)V

    .line 45
    :goto_0
    return-object v0

    .line 36
    :cond_0
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkBKGD;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    if-eqz v0, :cond_1

    .line 37
    invoke-virtual {p0, v1, v1}, Lar/com/hjg/pngj/chunks/PngChunkBKGD;->createEmptyChunk(IZ)Lar/com/hjg/pngj/chunks/ChunkRaw;

    move-result-object v0

    .line 38
    iget-object v1, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    iget v2, p0, Lar/com/hjg/pngj/chunks/PngChunkBKGD;->e:I

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    goto :goto_0

    .line 40
    :cond_1
    const/4 v0, 0x6

    invoke-virtual {p0, v0, v1}, Lar/com/hjg/pngj/chunks/PngChunkBKGD;->createEmptyChunk(IZ)Lar/com/hjg/pngj/chunks/ChunkRaw;

    move-result-object v0

    .line 41
    iget v1, p0, Lar/com/hjg/pngj/chunks/PngChunkBKGD;->b:I

    iget-object v2, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    invoke-static {v1, v2, v3}, Lar/com/hjg/pngj/PngHelperInternal;->writeInt2tobytes(I[BI)V

    .line 42
    iget v1, p0, Lar/com/hjg/pngj/chunks/PngChunkBKGD;->c:I

    iget-object v2, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    invoke-static {v1, v2, v3}, Lar/com/hjg/pngj/PngHelperInternal;->writeInt2tobytes(I[BI)V

    .line 43
    iget v1, p0, Lar/com/hjg/pngj/chunks/PngChunkBKGD;->d:I

    iget-object v2, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    invoke-static {v1, v2, v3}, Lar/com/hjg/pngj/PngHelperInternal;->writeInt2tobytes(I[BI)V

    goto :goto_0
.end method

.method public getGray()I
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkBKGD;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->greyscale:Z

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    const-string v1, "only gray images support this"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    iget v0, p0, Lar/com/hjg/pngj/chunks/PngChunkBKGD;->a:I

    return v0
.end method

.method public getOrderingConstraint()Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->AFTER_PLTE_BEFORE_IDAT:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    return-object v0
.end method

.method public getPaletteIndex()I
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkBKGD;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    const-string v1, "only indexed (pallete) images support this"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    iget v0, p0, Lar/com/hjg/pngj/chunks/PngChunkBKGD;->e:I

    return v0
.end method

.method public getRGB()[I
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkBKGD;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->greyscale:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkBKGD;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    if-eqz v0, :cond_1

    .line 108
    :cond_0
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    const-string v1, "only rgb or rgba images support this"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_1
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lar/com/hjg/pngj/chunks/PngChunkBKGD;->b:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lar/com/hjg/pngj/chunks/PngChunkBKGD;->c:I

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lar/com/hjg/pngj/chunks/PngChunkBKGD;->d:I

    aput v2, v0, v1

    return-object v0
.end method

.method public parseFromRaw(Lar/com/hjg/pngj/chunks/ChunkRaw;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkBKGD;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->greyscale:Z

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    invoke-static {v0, v1}, Lar/com/hjg/pngj/PngHelperInternal;->readInt2fromBytes([BI)I

    move-result v0

    iput v0, p0, Lar/com/hjg/pngj/chunks/PngChunkBKGD;->a:I

    .line 59
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkBKGD;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lar/com/hjg/pngj/chunks/PngChunkBKGD;->e:I

    goto :goto_0

    .line 55
    :cond_1
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    invoke-static {v0, v1}, Lar/com/hjg/pngj/PngHelperInternal;->readInt2fromBytes([BI)I

    move-result v0

    iput v0, p0, Lar/com/hjg/pngj/chunks/PngChunkBKGD;->b:I

    .line 56
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lar/com/hjg/pngj/PngHelperInternal;->readInt2fromBytes([BI)I

    move-result v0

    iput v0, p0, Lar/com/hjg/pngj/chunks/PngChunkBKGD;->c:I

    .line 57
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lar/com/hjg/pngj/PngHelperInternal;->readInt2fromBytes([BI)I

    move-result v0

    iput v0, p0, Lar/com/hjg/pngj/chunks/PngChunkBKGD;->d:I

    goto :goto_0
.end method

.method public setGray(I)V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkBKGD;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->greyscale:Z

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    const-string v1, "only gray images support this"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    iput p1, p0, Lar/com/hjg/pngj/chunks/PngChunkBKGD;->a:I

    .line 70
    return-void
.end method

.method public setPaletteIndex(I)V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkBKGD;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    const-string v1, "only indexed (pallete) images support this"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    iput p1, p0, Lar/com/hjg/pngj/chunks/PngChunkBKGD;->e:I

    .line 86
    return-void
.end method

.method public setRGB(III)V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkBKGD;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->greyscale:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkBKGD;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    if-eqz v0, :cond_1

    .line 100
    :cond_0
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    const-string v1, "only rgb or rgba images support this"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_1
    iput p1, p0, Lar/com/hjg/pngj/chunks/PngChunkBKGD;->b:I

    .line 102
    iput p2, p0, Lar/com/hjg/pngj/chunks/PngChunkBKGD;->c:I

    .line 103
    iput p3, p0, Lar/com/hjg/pngj/chunks/PngChunkBKGD;->d:I

    .line 104
    return-void
.end method
