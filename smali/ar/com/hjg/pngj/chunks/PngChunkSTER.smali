.class public Lar/com/hjg/pngj/chunks/PngChunkSTER;
.super Lar/com/hjg/pngj/chunks/PngChunkSingle;
.source "SourceFile"


# static fields
.field public static final ID:Ljava/lang/String; = "sTER"


# instance fields
.field private a:B


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/ImageInfo;)V
    .locals 1

    .prologue
    .line 18
    const-string v0, "sTER"

    invoke-direct {p0, v0, p1}, Lar/com/hjg/pngj/chunks/PngChunkSingle;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/ImageInfo;)V

    .line 19
    return-void
.end method


# virtual methods
.method public createRawChunk()Lar/com/hjg/pngj/chunks/ChunkRaw;
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 28
    invoke-virtual {p0, v0, v0}, Lar/com/hjg/pngj/chunks/PngChunkSTER;->createEmptyChunk(IZ)Lar/com/hjg/pngj/chunks/ChunkRaw;

    move-result-object v0

    .line 29
    iget-object v1, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/4 v2, 0x0

    iget-byte v3, p0, Lar/com/hjg/pngj/chunks/PngChunkSTER;->a:B

    aput-byte v3, v1, v2

    .line 30
    return-object v0
.end method

.method public getMode()B
    .locals 1

    .prologue
    .line 44
    iget-byte v0, p0, Lar/com/hjg/pngj/chunks/PngChunkSTER;->a:B

    return v0
.end method

.method public getOrderingConstraint()Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->BEFORE_IDAT:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    return-object v0
.end method

.method public parseFromRaw(Lar/com/hjg/pngj/chunks/ChunkRaw;)V
    .locals 3

    .prologue
    .line 35
    iget v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->len:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 36
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

    .line 37
    :cond_0
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lar/com/hjg/pngj/chunks/PngChunkSTER;->a:B

    .line 38
    return-void
.end method

.method public setMode(B)V
    .locals 0

    .prologue
    .line 51
    iput-byte p1, p0, Lar/com/hjg/pngj/chunks/PngChunkSTER;->a:B

    .line 52
    return-void
.end method
