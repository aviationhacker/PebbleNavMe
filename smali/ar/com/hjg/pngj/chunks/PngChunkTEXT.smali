.class public Lar/com/hjg/pngj/chunks/PngChunkTEXT;
.super Lar/com/hjg/pngj/chunks/PngChunkTextVar;
.source "SourceFile"


# static fields
.field public static final ID:Ljava/lang/String; = "tEXt"


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/ImageInfo;)V
    .locals 1

    .prologue
    .line 15
    const-string v0, "tEXt"

    invoke-direct {p0, v0, p1}, Lar/com/hjg/pngj/chunks/PngChunkTextVar;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/ImageInfo;)V

    .line 16
    return-void
.end method


# virtual methods
.method public createRawChunk()Lar/com/hjg/pngj/chunks/ChunkRaw;
    .locals 3

    .prologue
    .line 20
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkTEXT;->key:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkTEXT;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 21
    :cond_0
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    const-string v1, "Text chunk key must be non empty"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lar/com/hjg/pngj/chunks/PngChunkTEXT;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u0000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lar/com/hjg/pngj/chunks/PngChunkTEXT;->val:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lar/com/hjg/pngj/chunks/ChunkHelper;->toBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 23
    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lar/com/hjg/pngj/chunks/PngChunkTEXT;->createEmptyChunk(IZ)Lar/com/hjg/pngj/chunks/ChunkRaw;

    move-result-object v1

    .line 24
    iput-object v0, v1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    .line 25
    return-object v1
.end method

.method public parseFromRaw(Lar/com/hjg/pngj/chunks/ChunkRaw;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 31
    move v0, v1

    :goto_0
    iget-object v2, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 32
    iget-object v2, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    aget-byte v2, v2, v0

    if-nez v2, :cond_1

    .line 34
    :cond_0
    iget-object v2, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    invoke-static {v2, v1, v0}, Lar/com/hjg/pngj/chunks/ChunkHelper;->toString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lar/com/hjg/pngj/chunks/PngChunkTEXT;->key:Ljava/lang/String;

    .line 35
    add-int/lit8 v0, v0, 0x1

    .line 36
    iget-object v1, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    iget-object v2, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    array-length v2, v2

    sub-int/2addr v2, v0

    invoke-static {v1, v0, v2}, Lar/com/hjg/pngj/chunks/ChunkHelper;->toString([BII)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkTEXT;->val:Ljava/lang/String;

    .line 37
    return-void

    .line 31
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    :cond_2
    const-string v0, ""

    goto :goto_1
.end method
