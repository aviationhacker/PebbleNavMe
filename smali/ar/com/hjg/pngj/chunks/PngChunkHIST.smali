.class public Lar/com/hjg/pngj/chunks/PngChunkHIST;
.super Lar/com/hjg/pngj/chunks/PngChunkSingle;
.source "SourceFile"


# static fields
.field public static final ID:Ljava/lang/String; = "hIST"


# instance fields
.field private a:[I


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/ImageInfo;)V
    .locals 1

    .prologue
    .line 19
    const-string v0, "hIST"

    invoke-direct {p0, v0, p1}, Lar/com/hjg/pngj/chunks/PngChunkSingle;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/ImageInfo;)V

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkHIST;->a:[I

    .line 20
    return-void
.end method


# virtual methods
.method public createRawChunk()Lar/com/hjg/pngj/chunks/ChunkRaw;
    .locals 5

    .prologue
    .line 40
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkHIST;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    const-string v1, "only indexed images accept a HIST chunk"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkHIST;->a:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lar/com/hjg/pngj/chunks/PngChunkHIST;->createEmptyChunk(IZ)Lar/com/hjg/pngj/chunks/ChunkRaw;

    move-result-object v1

    .line 44
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lar/com/hjg/pngj/chunks/PngChunkHIST;->a:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 45
    iget-object v2, p0, Lar/com/hjg/pngj/chunks/PngChunkHIST;->a:[I

    aget v2, v2, v0

    iget-object v3, v1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    mul-int/lit8 v4, v0, 0x2

    invoke-static {v2, v3, v4}, Lar/com/hjg/pngj/PngHelperInternal;->writeInt2tobytes(I[BI)V

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    :cond_1
    return-object v1
.end method

.method public getHist()[I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkHIST;->a:[I

    return-object v0
.end method

.method public getOrderingConstraint()Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->AFTER_PLTE_BEFORE_IDAT:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    return-object v0
.end method

.method public parseFromRaw(Lar/com/hjg/pngj/chunks/ChunkRaw;)V
    .locals 4

    .prologue
    .line 29
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkHIST;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    const-string v1, "only indexed images accept a HIST chunk"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_0
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    .line 32
    new-array v0, v0, [I

    iput-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkHIST;->a:[I

    .line 33
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lar/com/hjg/pngj/chunks/PngChunkHIST;->a:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 34
    iget-object v1, p0, Lar/com/hjg/pngj/chunks/PngChunkHIST;->a:[I

    iget-object v2, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    mul-int/lit8 v3, v0, 0x2

    invoke-static {v2, v3}, Lar/com/hjg/pngj/PngHelperInternal;->readInt2fromBytes([BI)I

    move-result v2

    aput v2, v1, v0

    .line 33
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    :cond_1
    return-void
.end method

.method public setHist([I)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lar/com/hjg/pngj/chunks/PngChunkHIST;->a:[I

    .line 56
    return-void
.end method
