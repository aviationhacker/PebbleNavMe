.class public Lar/com/hjg/pngj/ChunkSeqSkipping;
.super Lar/com/hjg/pngj/ChunkSeqReader;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lar/com/hjg/pngj/chunks/ChunkRaw;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lar/com/hjg/pngj/ChunkSeqSkipping;-><init>(Z)V

    .line 30
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 24
    invoke-direct {p0, v1}, Lar/com/hjg/pngj/ChunkSeqReader;-><init>(Z)V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lar/com/hjg/pngj/ChunkSeqSkipping;->a:Ljava/util/List;

    .line 18
    iput-boolean v1, p0, Lar/com/hjg/pngj/ChunkSeqSkipping;->b:Z

    .line 25
    iput-boolean p1, p0, Lar/com/hjg/pngj/ChunkSeqSkipping;->b:Z

    .line 26
    return-void
.end method


# virtual methods
.method protected createChunkReaderForNewChunk(Ljava/lang/String;IJZ)Lar/com/hjg/pngj/ChunkReader;
    .locals 7

    .prologue
    .line 33
    new-instance v0, Lar/com/hjg/pngj/ChunkSeqSkipping$1;

    if-eqz p5, :cond_0

    sget-object v6, Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;->SKIP:Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

    :goto_0
    move-object v1, p0

    move v2, p2

    move-object v3, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v6}, Lar/com/hjg/pngj/ChunkSeqSkipping$1;-><init>(Lar/com/hjg/pngj/ChunkSeqSkipping;ILjava/lang/String;JLar/com/hjg/pngj/ChunkReader$ChunkReaderMode;)V

    return-object v0

    :cond_0
    sget-object v6, Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;->PROCESS:Lar/com/hjg/pngj/ChunkReader$ChunkReaderMode;

    goto :goto_0
.end method

.method public getChunks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lar/com/hjg/pngj/chunks/ChunkRaw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lar/com/hjg/pngj/ChunkSeqSkipping;->a:Ljava/util/List;

    return-object v0
.end method

.method protected isIdatKind(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method protected postProcessChunk(Lar/com/hjg/pngj/ChunkReader;)V
    .locals 2

    .prologue
    .line 53
    invoke-super {p0, p1}, Lar/com/hjg/pngj/ChunkSeqReader;->postProcessChunk(Lar/com/hjg/pngj/ChunkReader;)V

    .line 54
    iget-object v0, p0, Lar/com/hjg/pngj/ChunkSeqSkipping;->a:Ljava/util/List;

    invoke-virtual {p1}, Lar/com/hjg/pngj/ChunkReader;->getChunkRaw()Lar/com/hjg/pngj/chunks/ChunkRaw;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method

.method protected processChunkContent(Lar/com/hjg/pngj/chunks/ChunkRaw;I[BII)V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method protected shouldSkipContent(ILjava/lang/String;)Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lar/com/hjg/pngj/ChunkSeqSkipping;->b:Z

    return v0
.end method
