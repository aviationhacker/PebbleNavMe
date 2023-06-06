.class public abstract Lar/com/hjg/pngj/chunks/PngChunk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;
    }
.end annotation


# instance fields
.field private a:Z

.field protected chunkGroup:I

.field public final crit:Z

.field public final id:Ljava/lang/String;

.field protected final imgInfo:Lar/com/hjg/pngj/ImageInfo;

.field public final pub:Z

.field protected raw:Lar/com/hjg/pngj/chunks/ChunkRaw;

.field public final safe:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lar/com/hjg/pngj/ImageInfo;)V
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lar/com/hjg/pngj/chunks/PngChunk;->a:Z

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lar/com/hjg/pngj/chunks/PngChunk;->chunkGroup:I

    .line 102
    iput-object p1, p0, Lar/com/hjg/pngj/chunks/PngChunk;->id:Ljava/lang/String;

    .line 103
    iput-object p2, p0, Lar/com/hjg/pngj/chunks/PngChunk;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    .line 104
    invoke-static {p1}, Lar/com/hjg/pngj/chunks/ChunkHelper;->isCritical(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lar/com/hjg/pngj/chunks/PngChunk;->crit:Z

    .line 105
    invoke-static {p1}, Lar/com/hjg/pngj/chunks/ChunkHelper;->isPublic(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lar/com/hjg/pngj/chunks/PngChunk;->pub:Z

    .line 106
    invoke-static {p1}, Lar/com/hjg/pngj/chunks/ChunkHelper;->isSafeToCopy(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lar/com/hjg/pngj/chunks/PngChunk;->safe:Z

    .line 107
    return-void
.end method


# virtual methods
.method final a(I)V
    .locals 0

    .prologue
    .line 128
    iput p1, p0, Lar/com/hjg/pngj/chunks/PngChunk;->chunkGroup:I

    .line 129
    return-void
.end method

.method a(Lar/com/hjg/pngj/chunks/ChunkRaw;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lar/com/hjg/pngj/chunks/PngChunk;->raw:Lar/com/hjg/pngj/chunks/ChunkRaw;

    .line 174
    return-void
.end method

.method final a(Ljava/io/OutputStream;)V
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunk;->raw:Lar/com/hjg/pngj/chunks/ChunkRaw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunk;->raw:Lar/com/hjg/pngj/chunks/ChunkRaw;

    iget-object v0, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    if-nez v0, :cond_1

    .line 141
    :cond_0
    invoke-virtual {p0}, Lar/com/hjg/pngj/chunks/PngChunk;->createRawChunk()Lar/com/hjg/pngj/chunks/ChunkRaw;

    move-result-object v0

    iput-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunk;->raw:Lar/com/hjg/pngj/chunks/ChunkRaw;

    .line 142
    :cond_1
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunk;->raw:Lar/com/hjg/pngj/chunks/ChunkRaw;

    if-nez v0, :cond_2

    .line 143
    new-instance v0, Lar/com/hjg/pngj/PngjExceptionInternal;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "null chunk ! creation failed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjExceptionInternal;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_2
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunk;->raw:Lar/com/hjg/pngj/chunks/ChunkRaw;

    invoke-virtual {v0, p1}, Lar/com/hjg/pngj/chunks/ChunkRaw;->writeChunk(Ljava/io/OutputStream;)V

    .line 145
    return-void
.end method

.method protected abstract allowsMultiple()Z
.end method

.method protected final createEmptyChunk(IZ)Lar/com/hjg/pngj/chunks/ChunkRaw;
    .locals 2

    .prologue
    .line 110
    new-instance v0, Lar/com/hjg/pngj/chunks/ChunkRaw;

    iget-object v1, p0, Lar/com/hjg/pngj/chunks/PngChunk;->id:Ljava/lang/String;

    invoke-static {v1}, Lar/com/hjg/pngj/chunks/ChunkHelper;->toBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, p1, v1, p2}, Lar/com/hjg/pngj/chunks/ChunkRaw;-><init>(I[BZ)V

    .line 111
    return-object v0
.end method

.method protected abstract createRawChunk()Lar/com/hjg/pngj/chunks/ChunkRaw;
.end method

.method public final getChunkGroup()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lar/com/hjg/pngj/chunks/PngChunk;->chunkGroup:I

    return v0
.end method

.method public getLen()I
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunk;->raw:Lar/com/hjg/pngj/chunks/ChunkRaw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunk;->raw:Lar/com/hjg/pngj/chunks/ChunkRaw;

    iget v0, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->len:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getOffset()J
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunk;->raw:Lar/com/hjg/pngj/chunks/ChunkRaw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunk;->raw:Lar/com/hjg/pngj/chunks/ChunkRaw;

    invoke-virtual {v0}, Lar/com/hjg/pngj/chunks/ChunkRaw;->getOffset()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public abstract getOrderingConstraint()Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;
.end method

.method public getRaw()Lar/com/hjg/pngj/chunks/ChunkRaw;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunk;->raw:Lar/com/hjg/pngj/chunks/ChunkRaw;

    return-object v0
.end method

.method public hasPriority()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lar/com/hjg/pngj/chunks/PngChunk;->a:Z

    return v0
.end method

.method public invalidateRawData()V
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunk;->raw:Lar/com/hjg/pngj/chunks/ChunkRaw;

    .line 197
    return-void
.end method

.method protected abstract parseFromRaw(Lar/com/hjg/pngj/chunks/ChunkRaw;)V
.end method

.method public setPriority(Z)V
    .locals 0

    .prologue
    .line 136
    iput-boolean p1, p0, Lar/com/hjg/pngj/chunks/PngChunk;->a:Z

    .line 137
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chunk id= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lar/com/hjg/pngj/chunks/PngChunk;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lar/com/hjg/pngj/chunks/PngChunk;->getLen()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lar/com/hjg/pngj/chunks/PngChunk;->getOffset()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
