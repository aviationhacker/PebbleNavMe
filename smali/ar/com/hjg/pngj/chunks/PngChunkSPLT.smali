.class public Lar/com/hjg/pngj/chunks/PngChunkSPLT;
.super Lar/com/hjg/pngj/chunks/PngChunkMultiple;
.source "SourceFile"


# static fields
.field public static final ID:Ljava/lang/String; = "sPLT"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:[I


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/ImageInfo;)V
    .locals 1

    .prologue
    .line 25
    const-string v0, "sPLT"

    invoke-direct {p0, v0, p1}, Lar/com/hjg/pngj/chunks/PngChunkMultiple;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/ImageInfo;)V

    .line 26
    return-void
.end method


# virtual methods
.method public createRawChunk()Lar/com/hjg/pngj/chunks/ChunkRaw;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 36
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 37
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkSPLT;->a:Ljava/lang/String;

    invoke-static {v0}, Lar/com/hjg/pngj/chunks/ChunkHelper;->toBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 38
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 39
    iget v0, p0, Lar/com/hjg/pngj/chunks/PngChunkSPLT;->b:I

    int-to-byte v0, v0

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 40
    invoke-virtual {p0}, Lar/com/hjg/pngj/chunks/PngChunkSPLT;->getNentries()I

    move-result v4

    move v2, v1

    .line 41
    :goto_0
    if-ge v2, v4, :cond_2

    move v0, v1

    .line 42
    :goto_1
    const/4 v5, 0x4

    if-ge v0, v5, :cond_1

    .line 43
    iget v5, p0, Lar/com/hjg/pngj/chunks/PngChunkSPLT;->b:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    .line 44
    iget-object v5, p0, Lar/com/hjg/pngj/chunks/PngChunkSPLT;->c:[I

    mul-int/lit8 v6, v2, 0x5

    add-int/2addr v6, v0

    aget v5, v5, v6

    int-to-byte v5, v5

    invoke-static {v3, v5}, Lar/com/hjg/pngj/PngHelperInternal;->writeByte(Ljava/io/OutputStream;B)V

    .line 42
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 46
    :cond_0
    iget-object v5, p0, Lar/com/hjg/pngj/chunks/PngChunkSPLT;->c:[I

    mul-int/lit8 v6, v2, 0x5

    add-int/2addr v6, v0

    aget v5, v5, v6

    invoke-static {v3, v5}, Lar/com/hjg/pngj/PngHelperInternal;->writeInt2(Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 54
    :catch_0
    move-exception v0

    .line 55
    new-instance v1, Lar/com/hjg/pngj/PngjException;

    invoke-direct {v1, v0}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 48
    :cond_1
    :try_start_1
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkSPLT;->c:[I

    mul-int/lit8 v5, v2, 0x5

    add-int/lit8 v5, v5, 0x4

    aget v0, v0, v5

    invoke-static {v3, v0}, Lar/com/hjg/pngj/PngHelperInternal;->writeInt2(Ljava/io/OutputStream;I)V

    .line 41
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 51
    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lar/com/hjg/pngj/chunks/PngChunkSPLT;->createEmptyChunk(IZ)Lar/com/hjg/pngj/chunks/ChunkRaw;

    move-result-object v1

    .line 52
    iput-object v0, v1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 53
    return-object v1
.end method

.method public getNentries()I
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkSPLT;->c:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x5

    return v0
.end method

.method public getOrderingConstraint()Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->BEFORE_IDAT:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    return-object v0
.end method

.method public getPalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkSPLT;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getPalette()[I
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkSPLT;->c:[I

    return-object v0
.end method

.method public getSampledepth()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lar/com/hjg/pngj/chunks/PngChunkSPLT;->b:I

    return v0
.end method

.method public parseFromRaw(Lar/com/hjg/pngj/chunks/ChunkRaw;)V
    .locals 12

    .prologue
    const/16 v11, 0x8

    const/4 v1, 0x0

    .line 61
    const/4 v2, -0x1

    move v0, v1

    .line 62
    :goto_0
    iget-object v3, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    array-length v3, v3

    if-ge v0, v3, :cond_6

    .line 63
    iget-object v3, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    aget-byte v3, v3, v0

    if-nez v3, :cond_1

    .line 68
    :goto_1
    if-lez v0, :cond_0

    iget-object v2, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x2

    if-le v0, v2, :cond_2

    .line 69
    :cond_0
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    const-string v1, "bad sPLT chunk: no separator found"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_2
    iget-object v2, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    invoke-static {v2, v1, v0}, Lar/com/hjg/pngj/chunks/ChunkHelper;->toString([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lar/com/hjg/pngj/chunks/PngChunkSPLT;->a:Ljava/lang/String;

    .line 71
    iget-object v2, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, v3}, Lar/com/hjg/pngj/PngHelperInternal;->readInt1fromByte([BI)I

    move-result v2

    iput v2, p0, Lar/com/hjg/pngj/chunks/PngChunkSPLT;->b:I

    .line 72
    add-int/lit8 v2, v0, 0x2

    .line 73
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    array-length v0, v0

    sub-int v3, v0, v2

    iget v0, p0, Lar/com/hjg/pngj/chunks/PngChunkSPLT;->b:I

    if-ne v0, v11, :cond_3

    const/4 v0, 0x6

    :goto_2
    div-int v7, v3, v0

    .line 74
    mul-int/lit8 v0, v7, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkSPLT;->c:[I

    move v5, v1

    move v6, v1

    move v0, v2

    .line 77
    :goto_3
    if-ge v5, v7, :cond_5

    .line 78
    iget v1, p0, Lar/com/hjg/pngj/chunks/PngChunkSPLT;->b:I

    if-ne v1, v11, :cond_4

    .line 79
    iget-object v1, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v0}, Lar/com/hjg/pngj/PngHelperInternal;->readInt1fromByte([BI)I

    move-result v3

    .line 80
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    add-int/lit8 v1, v2, 0x1

    invoke-static {v0, v2}, Lar/com/hjg/pngj/PngHelperInternal;->readInt1fromByte([BI)I

    move-result v2

    .line 81
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    add-int/lit8 v8, v1, 0x1

    invoke-static {v0, v1}, Lar/com/hjg/pngj/PngHelperInternal;->readInt1fromByte([BI)I

    move-result v1

    .line 82
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    add-int/lit8 v4, v8, 0x1

    invoke-static {v0, v8}, Lar/com/hjg/pngj/PngHelperInternal;->readInt1fromByte([BI)I

    move-result v0

    .line 93
    :goto_4
    iget-object v8, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    invoke-static {v8, v4}, Lar/com/hjg/pngj/PngHelperInternal;->readInt2fromBytes([BI)I

    move-result v8

    .line 94
    add-int/lit8 v4, v4, 0x2

    .line 95
    iget-object v9, p0, Lar/com/hjg/pngj/chunks/PngChunkSPLT;->c:[I

    add-int/lit8 v10, v6, 0x1

    aput v3, v9, v6

    .line 96
    iget-object v3, p0, Lar/com/hjg/pngj/chunks/PngChunkSPLT;->c:[I

    add-int/lit8 v6, v10, 0x1

    aput v2, v3, v10

    .line 97
    iget-object v2, p0, Lar/com/hjg/pngj/chunks/PngChunkSPLT;->c:[I

    add-int/lit8 v3, v6, 0x1

    aput v1, v2, v6

    .line 98
    iget-object v1, p0, Lar/com/hjg/pngj/chunks/PngChunkSPLT;->c:[I

    add-int/lit8 v2, v3, 0x1

    aput v0, v1, v3

    .line 99
    iget-object v1, p0, Lar/com/hjg/pngj/chunks/PngChunkSPLT;->c:[I

    add-int/lit8 v0, v2, 0x1

    aput v8, v1, v2

    .line 77
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v6, v0

    move v0, v4

    goto :goto_3

    .line 73
    :cond_3
    const/16 v0, 0xa

    goto :goto_2

    .line 84
    :cond_4
    iget-object v1, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    invoke-static {v1, v0}, Lar/com/hjg/pngj/PngHelperInternal;->readInt2fromBytes([BI)I

    move-result v3

    .line 85
    add-int/lit8 v0, v0, 0x2

    .line 86
    iget-object v1, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    invoke-static {v1, v0}, Lar/com/hjg/pngj/PngHelperInternal;->readInt2fromBytes([BI)I

    move-result v2

    .line 87
    add-int/lit8 v0, v0, 0x2

    .line 88
    iget-object v1, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    invoke-static {v1, v0}, Lar/com/hjg/pngj/PngHelperInternal;->readInt2fromBytes([BI)I

    move-result v1

    .line 89
    add-int/lit8 v4, v0, 0x2

    .line 90
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    invoke-static {v0, v4}, Lar/com/hjg/pngj/PngHelperInternal;->readInt2fromBytes([BI)I

    move-result v0

    .line 91
    add-int/lit8 v4, v4, 0x2

    goto :goto_4

    .line 101
    :cond_5
    return-void

    :cond_6
    move v0, v2

    goto/16 :goto_1
.end method

.method public setPalName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lar/com/hjg/pngj/chunks/PngChunkSPLT;->a:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setPalette([I)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lar/com/hjg/pngj/chunks/PngChunkSPLT;->c:[I

    .line 129
    return-void
.end method

.method public setSampledepth(I)V
    .locals 0

    .prologue
    .line 120
    iput p1, p0, Lar/com/hjg/pngj/chunks/PngChunkSPLT;->b:I

    .line 121
    return-void
.end method
