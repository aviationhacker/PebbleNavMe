.class public Lar/com/hjg/pngj/chunks/PngChunkZTXT;
.super Lar/com/hjg/pngj/chunks/PngChunkTextVar;
.source "SourceFile"


# static fields
.field public static final ID:Ljava/lang/String; = "zTXt"


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/ImageInfo;)V
    .locals 1

    .prologue
    .line 19
    const-string v0, "zTXt"

    invoke-direct {p0, v0, p1}, Lar/com/hjg/pngj/chunks/PngChunkTextVar;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/ImageInfo;)V

    .line 20
    return-void
.end method


# virtual methods
.method public createRawChunk()Lar/com/hjg/pngj/chunks/ChunkRaw;
    .locals 3

    .prologue
    .line 24
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkZTXT;->key:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkZTXT;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 25
    :cond_0
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    const-string v1, "Text chunk key must be non empty"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 28
    iget-object v1, p0, Lar/com/hjg/pngj/chunks/PngChunkZTXT;->key:Ljava/lang/String;

    invoke-static {v1}, Lar/com/hjg/pngj/chunks/ChunkHelper;->toBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 29
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 30
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 31
    iget-object v1, p0, Lar/com/hjg/pngj/chunks/PngChunkZTXT;->val:Ljava/lang/String;

    invoke-static {v1}, Lar/com/hjg/pngj/chunks/ChunkHelper;->toBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lar/com/hjg/pngj/chunks/ChunkHelper;->compressBytes([BZ)[B

    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 33
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 34
    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lar/com/hjg/pngj/chunks/PngChunkZTXT;->createEmptyChunk(IZ)Lar/com/hjg/pngj/chunks/ChunkRaw;

    move-result-object v1

    .line 35
    iput-object v0, v1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    return-object v1

    .line 37
    :catch_0
    move-exception v0

    .line 38
    new-instance v1, Lar/com/hjg/pngj/PngjException;

    invoke-direct {v1, v0}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public parseFromRaw(Lar/com/hjg/pngj/chunks/ChunkRaw;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 44
    const/4 v2, -0x1

    move v0, v1

    .line 45
    :goto_0
    iget-object v3, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 46
    iget-object v3, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    aget-byte v3, v3, v0

    if-eqz v3, :cond_1

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 51
    :cond_1
    if-ltz v0, :cond_2

    iget-object v2, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x2

    if-le v0, v2, :cond_3

    .line 52
    :cond_2
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    const-string v1, "bad zTXt chunk: no separator found"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_3
    iget-object v2, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    invoke-static {v2, v1, v0}, Lar/com/hjg/pngj/chunks/ChunkHelper;->toString([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lar/com/hjg/pngj/chunks/PngChunkZTXT;->key:Ljava/lang/String;

    .line 54
    iget-object v2, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v2, v2, v3

    .line 55
    if-eqz v2, :cond_4

    .line 56
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    const-string v1, "bad zTXt chunk: unknown compression method"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_4
    iget-object v2, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    add-int/lit8 v3, v0, 0x2

    iget-object v4, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    array-length v4, v4

    sub-int v0, v4, v0

    add-int/lit8 v0, v0, -0x2

    invoke-static {v2, v3, v0, v1}, Lar/com/hjg/pngj/chunks/ChunkHelper;->compressBytes([BIIZ)[B

    move-result-object v0

    .line 59
    invoke-static {v0}, Lar/com/hjg/pngj/chunks/ChunkHelper;->toString([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkZTXT;->val:Ljava/lang/String;

    .line 60
    return-void
.end method
