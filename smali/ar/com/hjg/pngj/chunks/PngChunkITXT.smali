.class public Lar/com/hjg/pngj/chunks/PngChunkITXT;
.super Lar/com/hjg/pngj/chunks/PngChunkTextVar;
.source "SourceFile"


# static fields
.field public static final ID:Ljava/lang/String; = "iTXt"


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/ImageInfo;)V
    .locals 1

    .prologue
    .line 23
    const-string v0, "iTXt"

    invoke-direct {p0, v0, p1}, Lar/com/hjg/pngj/chunks/PngChunkTextVar;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/ImageInfo;)V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lar/com/hjg/pngj/chunks/PngChunkITXT;->a:Z

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkITXT;->b:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkITXT;->c:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public createRawChunk()Lar/com/hjg/pngj/chunks/ChunkRaw;
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 28
    iget-object v2, p0, Lar/com/hjg/pngj/chunks/PngChunkITXT;->key:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lar/com/hjg/pngj/chunks/PngChunkITXT;->key:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 29
    :cond_0
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    const-string v1, "Text chunk key must be non empty"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 32
    iget-object v3, p0, Lar/com/hjg/pngj/chunks/PngChunkITXT;->key:Ljava/lang/String;

    invoke-static {v3}, Lar/com/hjg/pngj/chunks/ChunkHelper;->toBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 33
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 34
    iget-boolean v3, p0, Lar/com/hjg/pngj/chunks/PngChunkITXT;->a:Z

    if-eqz v3, :cond_3

    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 35
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 36
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkITXT;->b:Ljava/lang/String;

    invoke-static {v0}, Lar/com/hjg/pngj/chunks/ChunkHelper;->toBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 37
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 38
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkITXT;->c:Ljava/lang/String;

    invoke-static {v0}, Lar/com/hjg/pngj/chunks/ChunkHelper;->toBytesUTF8(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 39
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 40
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkITXT;->val:Ljava/lang/String;

    invoke-static {v0}, Lar/com/hjg/pngj/chunks/ChunkHelper;->toBytesUTF8(Ljava/lang/String;)[B

    move-result-object v0

    .line 41
    iget-boolean v1, p0, Lar/com/hjg/pngj/chunks/PngChunkITXT;->a:Z

    if-eqz v1, :cond_2

    .line 42
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lar/com/hjg/pngj/chunks/ChunkHelper;->compressBytes([BZ)[B

    move-result-object v0

    .line 44
    :cond_2
    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 45
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 46
    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lar/com/hjg/pngj/chunks/PngChunkITXT;->createEmptyChunk(IZ)Lar/com/hjg/pngj/chunks/ChunkRaw;

    move-result-object v1

    .line 47
    iput-object v0, v1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    return-object v1

    :cond_3
    move v0, v1

    .line 34
    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    new-instance v1, Lar/com/hjg/pngj/PngjException;

    invoke-direct {v1, v0}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getLangtag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkITXT;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getTranslatedTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkITXT;->c:Ljava/lang/String;

    return-object v0
.end method

.method public isCompressed()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lar/com/hjg/pngj/chunks/PngChunkITXT;->a:Z

    return v0
.end method

.method public parseFromRaw(Lar/com/hjg/pngj/chunks/ChunkRaw;)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x3

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 56
    .line 57
    new-array v4, v6, [I

    move v0, v1

    move v2, v1

    .line 58
    :goto_0
    iget-object v5, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    array-length v5, v5

    if-ge v0, v5, :cond_3

    .line 59
    iget-object v5, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    aget-byte v5, v5, v0

    if-eqz v5, :cond_1

    .line 58
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :cond_1
    aput v0, v4, v2

    .line 62
    add-int/lit8 v2, v2, 0x1

    .line 63
    if-ne v2, v3, :cond_2

    .line 64
    add-int/lit8 v0, v0, 0x2

    .line 65
    :cond_2
    if-ne v2, v6, :cond_0

    .line 68
    :cond_3
    if-eq v2, v6, :cond_4

    .line 69
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    const-string v1, "Bad formed PngChunkITXT chunk"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_4
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    aget v2, v4, v1

    invoke-static {v0, v1, v2}, Lar/com/hjg/pngj/chunks/ChunkHelper;->toString([BII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkITXT;->key:Ljava/lang/String;

    .line 71
    aget v0, v4, v1

    add-int/lit8 v2, v0, 0x1

    .line 72
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    aget-byte v0, v0, v2

    if-nez v0, :cond_5

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lar/com/hjg/pngj/chunks/PngChunkITXT;->a:Z

    .line 73
    add-int/lit8 v0, v2, 0x1

    .line 74
    iget-boolean v2, p0, Lar/com/hjg/pngj/chunks/PngChunkITXT;->a:Z

    if-eqz v2, :cond_6

    iget-object v2, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    aget-byte v2, v2, v0

    if-eqz v2, :cond_6

    .line 75
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    const-string v1, "Bad formed PngChunkITXT chunk - bad compression method "

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move v0, v3

    .line 72
    goto :goto_1

    .line 76
    :cond_6
    iget-object v2, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    aget v5, v4, v3

    sub-int/2addr v5, v0

    invoke-static {v2, v0, v5}, Lar/com/hjg/pngj/chunks/ChunkHelper;->toString([BII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkITXT;->b:Ljava/lang/String;

    .line 77
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    aget v2, v4, v3

    add-int/lit8 v2, v2, 0x1

    aget v5, v4, v7

    aget v3, v4, v3

    sub-int v3, v5, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v2, v3}, Lar/com/hjg/pngj/chunks/ChunkHelper;->toStringUTF8([BII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkITXT;->c:Ljava/lang/String;

    .line 79
    aget v0, v4, v7

    add-int/lit8 v0, v0, 0x1

    .line 80
    iget-boolean v2, p0, Lar/com/hjg/pngj/chunks/PngChunkITXT;->a:Z

    if-eqz v2, :cond_7

    .line 81
    iget-object v2, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    iget-object v3, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    array-length v3, v3

    sub-int/2addr v3, v0

    invoke-static {v2, v0, v3, v1}, Lar/com/hjg/pngj/chunks/ChunkHelper;->compressBytes([BIIZ)[B

    move-result-object v0

    .line 82
    invoke-static {v0}, Lar/com/hjg/pngj/chunks/ChunkHelper;->toStringUTF8([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkITXT;->val:Ljava/lang/String;

    .line 86
    :goto_2
    return-void

    .line 84
    :cond_7
    iget-object v1, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    iget-object v2, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    array-length v2, v2

    sub-int/2addr v2, v0

    invoke-static {v1, v0, v2}, Lar/com/hjg/pngj/chunks/ChunkHelper;->toStringUTF8([BII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkITXT;->val:Ljava/lang/String;

    goto :goto_2
.end method

.method public setCompressed(Z)V
    .locals 0

    .prologue
    .line 93
    iput-boolean p1, p0, Lar/com/hjg/pngj/chunks/PngChunkITXT;->a:Z

    .line 94
    return-void
.end method

.method public setLangtag(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lar/com/hjg/pngj/chunks/PngChunkITXT;->b:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setTranslatedTag(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lar/com/hjg/pngj/chunks/PngChunkITXT;->c:Ljava/lang/String;

    .line 110
    return-void
.end method
