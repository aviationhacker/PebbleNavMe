.class public Lar/com/hjg/pngj/chunks/PngChunkPLTE;
.super Lar/com/hjg/pngj/chunks/PngChunkSingle;
.source "SourceFile"


# static fields
.field public static final ID:Ljava/lang/String; = "PLTE"


# instance fields
.field private a:I

.field private b:[I


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/ImageInfo;)V
    .locals 1

    .prologue
    .line 24
    const-string v0, "PLTE"

    invoke-direct {p0, v0, p1}, Lar/com/hjg/pngj/chunks/PngChunkSingle;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/ImageInfo;)V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lar/com/hjg/pngj/chunks/PngChunkPLTE;->a:I

    .line 25
    return-void
.end method


# virtual methods
.method public createRawChunk()Lar/com/hjg/pngj/chunks/ChunkRaw;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 34
    iget v0, p0, Lar/com/hjg/pngj/chunks/PngChunkPLTE;->a:I

    mul-int/lit8 v0, v0, 0x3

    .line 35
    const/4 v2, 0x3

    new-array v3, v2, [I

    .line 36
    invoke-virtual {p0, v0, v8}, Lar/com/hjg/pngj/chunks/PngChunkPLTE;->createEmptyChunk(IZ)Lar/com/hjg/pngj/chunks/ChunkRaw;

    move-result-object v4

    move v0, v1

    move v2, v1

    .line 37
    :goto_0
    iget v5, p0, Lar/com/hjg/pngj/chunks/PngChunkPLTE;->a:I

    if-ge v2, v5, :cond_0

    .line 38
    invoke-virtual {p0, v2, v3}, Lar/com/hjg/pngj/chunks/PngChunkPLTE;->getEntryRgb(I[I)V

    .line 39
    iget-object v5, v4, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    add-int/lit8 v6, v0, 0x1

    aget v7, v3, v1

    int-to-byte v7, v7

    aput-byte v7, v5, v0

    .line 40
    iget-object v0, v4, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    add-int/lit8 v5, v6, 0x1

    aget v7, v3, v8

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    .line 41
    iget-object v6, v4, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    add-int/lit8 v0, v5, 0x1

    const/4 v7, 0x2

    aget v7, v3, v7

    int-to-byte v7, v7

    aput-byte v7, v6, v5

    .line 37
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 43
    :cond_0
    return-object v4
.end method

.method public getEntry(I)I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkPLTE;->b:[I

    aget v0, v0, p1

    return v0
.end method

.method public getEntryRgb(I[I)V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lar/com/hjg/pngj/chunks/PngChunkPLTE;->getEntryRgb(I[II)V

    .line 78
    return-void
.end method

.method public getEntryRgb(I[II)V
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkPLTE;->b:[I

    aget v0, v0, p1

    .line 82
    add-int/lit8 v1, p3, 0x0

    const/high16 v2, 0xff0000

    and-int/2addr v2, v0

    shr-int/lit8 v2, v2, 0x10

    aput v2, p2, v1

    .line 83
    add-int/lit8 v1, p3, 0x1

    const v2, 0xff00

    and-int/2addr v2, v0

    shr-int/lit8 v2, v2, 0x8

    aput v2, p2, v1

    .line 84
    add-int/lit8 v1, p3, 0x2

    and-int/lit16 v0, v0, 0xff

    aput v0, p2, v1

    .line 85
    return-void
.end method

.method public getNentries()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lar/com/hjg/pngj/chunks/PngChunkPLTE;->a:I

    return v0
.end method

.method public getOrderingConstraint()Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->NA:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    return-object v0
.end method

.method public minBitDepth()I
    .locals 3

    .prologue
    const/4 v1, 0x4

    const/4 v0, 0x2

    .line 88
    iget v2, p0, Lar/com/hjg/pngj/chunks/PngChunkPLTE;->a:I

    if-gt v2, v0, :cond_1

    .line 89
    const/4 v0, 0x1

    .line 95
    :cond_0
    :goto_0
    return v0

    .line 90
    :cond_1
    iget v2, p0, Lar/com/hjg/pngj/chunks/PngChunkPLTE;->a:I

    if-le v2, v1, :cond_0

    .line 92
    iget v0, p0, Lar/com/hjg/pngj/chunks/PngChunkPLTE;->a:I

    const/16 v2, 0x10

    if-gt v0, v2, :cond_2

    move v0, v1

    .line 93
    goto :goto_0

    .line 95
    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public parseFromRaw(Lar/com/hjg/pngj/chunks/ChunkRaw;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 48
    iget v1, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->len:I

    div-int/lit8 v1, v1, 0x3

    invoke-virtual {p0, v1}, Lar/com/hjg/pngj/chunks/PngChunkPLTE;->setNentries(I)V

    move v1, v0

    .line 49
    :goto_0
    iget v2, p0, Lar/com/hjg/pngj/chunks/PngChunkPLTE;->a:I

    if-ge v1, v2, :cond_0

    .line 50
    iget-object v2, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    and-int/lit16 v2, v0, 0xff

    iget-object v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    add-int/lit8 v4, v3, 0x1

    aget-byte v0, v0, v3

    and-int/lit16 v3, v0, 0xff

    iget-object v5, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    add-int/lit8 v0, v4, 0x1

    aget-byte v4, v5, v4

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {p0, v1, v2, v3, v4}, Lar/com/hjg/pngj/chunks/PngChunkPLTE;->setEntry(IIII)V

    .line 49
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    :cond_0
    return-void
.end method

.method public setEntry(IIII)V
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkPLTE;->b:[I

    shl-int/lit8 v1, p2, 0x10

    shl-int/lit8 v2, p3, 0x8

    or-int/2addr v1, v2

    or-int/2addr v1, p4

    aput v1, v0, p1

    .line 70
    return-void
.end method

.method public setNentries(I)V
    .locals 3

    .prologue
    .line 56
    iput p1, p0, Lar/com/hjg/pngj/chunks/PngChunkPLTE;->a:I

    .line 57
    iget v0, p0, Lar/com/hjg/pngj/chunks/PngChunkPLTE;->a:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget v0, p0, Lar/com/hjg/pngj/chunks/PngChunkPLTE;->a:I

    const/16 v1, 0x100

    if-le v0, v1, :cond_1

    .line 58
    :cond_0
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid pallette - nentries="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lar/com/hjg/pngj/chunks/PngChunkPLTE;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_1
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkPLTE;->b:[I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkPLTE;->b:[I

    array-length v0, v0

    iget v1, p0, Lar/com/hjg/pngj/chunks/PngChunkPLTE;->a:I

    if-eq v0, v1, :cond_3

    .line 60
    :cond_2
    iget v0, p0, Lar/com/hjg/pngj/chunks/PngChunkPLTE;->a:I

    new-array v0, v0, [I

    iput-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkPLTE;->b:[I

    .line 62
    :cond_3
    return-void
.end method
